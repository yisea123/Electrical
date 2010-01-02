library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library unisim;
use unisim.vcomponents.all;

entity Main is
	port(
		-- The 50MHz canned oscillator.
		Oscillator : in std_ulogic;

		-- Serial lines to and from the XBee.
		XBeeRX : in std_ulogic;
		XBeeTX : out std_ulogic;

		-- SPI lines to and from the PIC.
		AppSS : in std_ulogic;
		AppOut : out std_ulogic;
		AppIn : in std_ulogic;
		AppClk : in std_ulogic;

		-- Control lines to and from the motor controllers.
		Brake : out std_ulogic;
		PWM1 : out std_ulogic;
		PWM2 : out std_ulogic;
		PWM3 : out std_ulogic;
		PWM4 : out std_ulogic;
		PWM5 : out std_ulogic;
		Dir1 : out std_ulogic;
		Dir2 : out std_ulogic;
		Dir3 : out std_ulogic;
		Dir4 : out std_ulogic;
		Dir5 : out std_ulogic;
		Fault1 : in std_ulogic;
		Fault2 : in std_ulogic;
		Fault3 : in std_ulogic;
		Fault4 : in std_ulogic;
		Fault5 : in std_ulogic;
		DSense : in std_ulogic;

		-- Control lines to the chicker.
		Kick : out std_ulogic;
		Chip : out std_ulogic;
		Charge : out std_ulogic
	);
end entity Main;

architecture Behavioural of Main is
	component ADC is
		port(
			Clock : in std_ulogic;
			SPICK : in std_ulogic;
			SPIDT : in std_ulogic;
			SPISS : in std_ulogic;
			Channel0 : out unsigned(9 downto 0);
			Channel1 : out unsigned(9 downto 0);
			Channel2 : out unsigned(9 downto 0);
			Channel3 : out unsigned(9 downto 0);
			Channel4 : out unsigned(9 downto 0);
			Channel5 : out unsigned(9 downto 0);
			Channel6 : out unsigned(9 downto 0);
			Channel7 : out unsigned(9 downto 0);
			Channel8 : out unsigned(9 downto 0);
			Channel9 : out unsigned(9 downto 0);
			Channel10 : out unsigned(9 downto 0);
			Channel11 : out unsigned(9 downto 0);
			Channel12 : out unsigned(9 downto 0);
			Good : out std_ulogic
		);
	end component;

	component ClockGen is
		port(
			Oscillator : in std_ulogic;
			Clock : out std_ulogic
		);
	end component;
	
	component GrayCounter is
		generic (
			Width : positive
		);
		port (
			Clock : in std_ulogic;
			A : in std_ulogic;
			B : in std_ulogic;
			Reset : in std_ulogic;
			Count : out signed(Width - 1 downto 0)
		);
	end component GrayCounter;

	component PWM is
		generic(
			Width : positive;
			Invert : boolean
		);
		port(
			Clock : in std_ulogic;
			DutyCycle : in unsigned(9 downto 0);
			PWM : out std_ulogic
		);
	end component;

	component XBeeReceiver is
		port(
			Clock : in std_ulogic;
			Good : out std_ulogic;
			Address : out std_ulogic_vector(63 downto 0);
			RSSI : out std_ulogic_vector(7 downto 0);
			FeedbackFlag : out std_ulogic;
			DirectDriveFlag : out std_ulogic;
			Drive1 : out signed(15 downto 0);
			Drive2 : out signed(15 downto 0);
			Drive3 : out signed(15 downto 0);
			Drive4 : out signed(15 downto 0);
			Dribble : out signed(15 downto 0);
			CommandSeq : out std_ulogic_vector(7 downto 0);
			Command : out std_ulogic_vector(7 downto 0);
			CommandData : out std_ulogic_vector(15 downto 0);
			Serial : in std_ulogic
		);
	end component XBeeReceiver;

	component XBeeTransmitter is
		port(
			Clock : in std_ulogic;
			Start : in std_ulogic;
			Busy : out std_ulogic;
			Address : in std_ulogic_vector(63 downto 0);
			RSSI : in std_ulogic_vector(7 downto 0);
			DribblerSpeed : in unsigned(15 downto 0);
			BatteryLevel : in unsigned(15 downto 0);
			Fault1 : in std_ulogic;
			Fault2 : in std_ulogic;
			Fault3 : in std_ulogic;
			Fault4 : in std_ulogic;
			Fault5 : in std_ulogic;
			CommandAck : in std_ulogic_vector(7 downto 0);
			Serial : out std_ulogic
		);
	end component XBeeTransmitter;

	-- The clock generated by the DCM from Oscillator.
	signal Clock : std_ulogic;

	-- Latched versions of all input pins other than Oscillator.
	signal XBeeRXL : std_ulogic := '1';
	signal AppSSL : std_ulogic := '1';
	signal AppInL : std_ulogic := '0';
	signal AppClkL : std_ulogic := '0';
	signal Fault1L : std_ulogic := '1';
	signal Fault2L : std_ulogic := '1';
	signal Fault3L : std_ulogic := '1';
	signal Fault4L : std_ulogic := '1';
	signal Fault5L : std_ulogic := '1';

	-- Tristate controls for the Dir* pins.
	signal Dir1T : std_ulogic := '0';
	signal Dir2T : std_ulogic := '0';
	signal Dir3T : std_ulogic := '0';
	signal Dir4T : std_ulogic := '0';
	signal Dir5T : std_ulogic := '0';

	-- XBee-related stuff.
	signal XBeeGood : std_ulogic;
	signal XBeeAddress : std_ulogic_vector(63 downto 0);
	signal XBeeRSSI : std_ulogic_vector(7 downto 0);
	signal XBeeCommandSeq : std_ulogic_vector(7 downto 0);
	signal XBeeStartTransmitter : std_ulogic;

	-- Mode flags from the XBee.
	signal FeedbackFlag : std_ulogic;
	signal DirectDriveFlag : std_ulogic;

	-- Drive levels from the XBee.
	signal Drive1 : signed(15 downto 0);
	signal Drive2 : signed(15 downto 0);
	signal Drive3 : signed(15 downto 0);
	signal Drive4 : signed(15 downto 0);

	-- Dribble speed from the XBee.
	signal Dribble : signed(15 downto 0);

	-- Signed duty cycles.
	signal Motor1 : signed(10 downto 0);
	signal Motor2 : signed(10 downto 0);
	signal Motor3 : signed(10 downto 0);
	signal Motor4 : signed(10 downto 0);
	signal Motor5 : signed(10 downto 0);

	-- Duty cycles for the PWM generators.
	signal DutyCycle1 : unsigned(9 downto 0);
	signal DutyCycle2 : unsigned(9 downto 0);
	signal DutyCycle3 : unsigned(9 downto 0);
	signal DutyCycle4 : unsigned(9 downto 0);
	signal DutyCycle5 : unsigned(9 downto 0);
begin
	-- Pass the Oscillator pin through a DCM to get Clock.
	ClockGenInstance : ClockGen
	port map(
		Oscillator => Oscillator,
		Clock => Clock
	);

	-- Latch the inputs into the local signals.
	process(Clock)
	begin
		if rising_edge(Clock) then
			XBeeRXL <= XBeeRX;
			AppSSL <= AppSS;
			AppInL <= AppIn;
			AppClkL <= AppClk;
			Fault1L <= Fault1;
			Fault2L <= Fault2;
			Fault3L <= Fault3;
			Fault4L <= Fault4;
			Fault5L <= Fault5;
		end if;
	end process;

	-- Serial communication hardware.
	XBeeReceiverInstance : XBeeReceiver
	port map(
		Clock => Clock,
		Good => XBeeGood,
		Address => XBeeAddress,
		RSSI => XBeeRSSI,
		FeedbackFlag => FeedbackFlag,
		DirectDriveFlag => DirectDriveFlag,
		Drive1 => Drive1,
		Drive2 => Drive2,
		Drive3 => Drive3,
		Drive4 => Drive4,
		Dribble => Dribble,
		CommandSeq => XBeeCommandSeq,
		Command => open,
		CommandData => open,
		Serial => XBeeRXL
	);

	XBeeStartTransmitter <= XBeeGood and FeedbackFlag;

	XBeeTransmitterInstance : XBeeTransmitter
	port map(
		Clock => Clock,
		Start => XBeeStartTransmitter,
		Busy => open,
		Address => XBeeAddress,
		RSSI => XBeeRSSI,
		DribblerSpeed => to_unsigned(0, 16),
		BatteryLevel => to_unsigned(0, 16),
		Fault1 => Fault1L,
		Fault2 => Fault2L,
		Fault3 => Fault3L,
		Fault4 => Fault4L,
		Fault5 => Fault5L,
		CommandAck => XBeeCommandSeq,
		Serial => XBeeTX
	);

	-- PWM generators for the wheels and dribbler.
	PWM1Instance : PWM
	generic map(
		Width => 10,
		Invert => true
	)
	port map(
		Clock => Clock,
		DutyCycle => DutyCycle1,
		PWM => PWM1
	);
	PWM2Instance : PWM
	generic map(
		Width => 10,
		Invert => true
	)
	port map(
		Clock => Clock,
		DutyCycle => DutyCycle2,
		PWM => PWM2
	);
	PWM3Instance : PWM
	generic map(
		Width => 10,
		Invert => true
	)
	port map(
		Clock => Clock,
		DutyCycle => DutyCycle3,
		PWM => PWM3
	);
	PWM4Instance : PWM
	generic map(
		Width => 10,
		Invert => true
	)
	port map(
		Clock => Clock,
		DutyCycle => DutyCycle4,
		PWM => PWM4
	);
	PWM5Instance : PWM
	generic map(
		Width => 10,
		Invert => true
	)
	port map(
		Clock => Clock,
		DutyCycle => DutyCycle5,
		PWM => PWM5
	);

	-- Tristate drivers for the Dir* pins.
	Dir1 <= 'Z' when Dir1T = '1' else '0';
	Dir2 <= 'Z' when Dir2T = '1' else '0';
	Dir3 <= 'Z' when Dir3T = '1' else '0';
	Dir4 <= 'Z' when Dir4T = '1' else '0';
	Dir5 <= 'Z' when Dir5T = '1' else '0';

	-- The SPI receiver for the analogue to digital converters.
	ADCInstance : ADC
	port map(
		Clock => Clock,
		SPICK => AppClkL,
		SPIDT => AppInL,
		SPISS => AppSSL,
		Channel0 => open,
		Channel1 => open,
		Channel2 => open,
		Channel3 => open,
		Channel4 => open,
		Channel5 => open,
		Channel6 => open,
		Channel7 => open,
		Channel8 => open,
		Channel9 => open,
		Channel10 => open,
		Channel11 => open,
		Channel12 => open,
		Good => open
	);

	-- Push drive through the system.
	process(Clock)
	begin
		if rising_edge(Clock) then
			if DirectDriveFlag = '1' then
				-- Direct drive passes transmitted values directly to PWMs.
				Motor1 <= Drive1(10 downto 0);
				Motor2 <= Drive2(10 downto 0);
				Motor3 <= Drive3(10 downto 0);
				Motor4 <= Drive4(10 downto 0);
				Motor5 <= Dribble(10 downto 0);
				Brake <= '0';
			else
				Motor1 <= to_signed(0, 11);
				Motor2 <= to_signed(0, 11);
				Motor3 <= to_signed(0, 11);
				Motor4 <= to_signed(0, 11);
				Motor5 <= to_signed(0, 11);
				Brake <= '1';
			end if;
		end if;
	end process;

	-- Decode the signed values into sign-magnitude.
	DutyCycle1 <= to_unsigned(to_integer(Motor1), 10) when Motor1 >= 0 else to_unsigned(-to_integer(Motor1), 10);
	DutyCycle2 <= to_unsigned(to_integer(Motor2), 10) when Motor1 >= 0 else to_unsigned(-to_integer(Motor2), 10);
	DutyCycle3 <= to_unsigned(to_integer(Motor3), 10) when Motor1 >= 0 else to_unsigned(-to_integer(Motor3), 10);
	DutyCycle4 <= to_unsigned(to_integer(Motor4), 10) when Motor1 >= 0 else to_unsigned(-to_integer(Motor4), 10);
	DutyCycle5 <= to_unsigned(to_integer(Motor5), 10) when Motor1 >= 0 else to_unsigned(-to_integer(Motor5), 10);
	Dir1T <= '1' when Motor1 < 0 else '0';
	Dir2T <= '1' when Motor2 < 0 else '0';
	Dir3T <= '1' when Motor3 < 0 else '0';
	Dir4T <= '1' when Motor4 < 0 else '0';
	Dir5T <= '1' when Motor5 < 0 else '0';

	AppOut <= '0';
	Kick <= '1';
	Chip <= '1';
	Charge <= '1';
end architecture Behavioural;
