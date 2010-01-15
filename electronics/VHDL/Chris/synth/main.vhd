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
		BrakeDrive : out std_ulogic;
		BrakeDribbler : out std_ulogic;
		PWM1 : out std_ulogic;
		PWM2 : out std_ulogic;
		PWM3 : out std_ulogic;
		PWM4 : out std_ulogic;
		PWMD : out std_ulogic;
		Dir1 : out std_ulogic;
		Dir2 : out std_ulogic;
		Dir3 : out std_ulogic;
		Dir4 : out std_ulogic;
		DirD : out std_ulogic;
		Fault1 : in std_ulogic;
		Fault2 : in std_ulogic;
		Fault3 : in std_ulogic;
		Fault4 : in std_ulogic;
		FaultD : in std_ulogic;
		DSense : in std_ulogic;

		-- Control lines to the chicker.
		Kick : out std_ulogic;
		Chip : out std_ulogic;
		Charge : out std_ulogic
	);
end entity Main;

architecture Behavioural of Main is
	-- The clocks generated by the DCM from Oscillator.
	signal Clock1 : std_ulogic;
	signal Clock10 : std_ulogic;
	signal Clock100 : std_ulogic;

	-- Latched versions of all input pins other than Oscillator.
	signal XBeeRXL : std_ulogic := '1';
	signal AppSSL : std_ulogic := '1';
	signal AppInL : std_ulogic := '0';
	signal AppClkL : std_ulogic := '0';
	signal Fault1L : std_ulogic := '1';
	signal Fault2L : std_ulogic := '1';
	signal Fault3L : std_ulogic := '1';
	signal Fault4L : std_ulogic := '1';
	signal FaultDL : std_ulogic := '1';

	-- XBee-related stuff.
	signal XBeeRXStrobe : std_ulogic;
	signal XBeeAddress : std_ulogic_vector(63 downto 0);
	signal XBeeRSSI : std_ulogic_vector(7 downto 0);
	signal XBeeCommandSeq : std_ulogic_vector(7 downto 0);
	signal XBeeTXStrobe : std_ulogic;

	-- Mode flags from the XBee.
	signal FeedbackFlag : std_ulogic;
	signal DirectDriveFlag : std_ulogic;
	signal ControlledDriveFlag : std_ulogic;
	signal DribbleFlag : std_ulogic;

	-- Drive levels from the XBee.
	signal Drive1 : signed(10 downto 0);
	signal Drive2 : signed(10 downto 0);
	signal Drive3 : signed(10 downto 0);
	signal Drive4 : signed(10 downto 0);

	-- Controller outputs.
	signal ControlM1 : signed(10 downto 0);
	signal ControlM2 : signed(10 downto 0);
	signal ControlM3 : signed(10 downto 0);
	signal ControlM4 : signed(10 downto 0);

	-- Motor powers from the controller or direct drive.
	signal Motor1 : signed(10 downto 0);
	signal Motor2 : signed(10 downto 0);
	signal Motor3 : signed(10 downto 0);
	signal Motor4 : signed(10 downto 0);

	-- Duty cycles from the sign-magnitude converters.
	signal DutyCycle1 : unsigned(9 downto 0);
	signal DutyCycle2 : unsigned(9 downto 0);
	signal DutyCycle3 : unsigned(9 downto 0);
	signal DutyCycle4 : unsigned(9 downto 0);

	-- Directions from the sign-magnitude converters.
	signal Dir1T : std_ulogic := '0';
	signal Dir2T : std_ulogic := '0';
	signal Dir3T : std_ulogic := '0';
	signal Dir4T : std_ulogic := '0';

	-- Dribbler stuff.
	signal Dribble : signed(10 downto 0);
	signal DutyCycleD : unsigned(9 downto 0);
	signal DirDT : std_ulogic := '0';

	-- Battery voltage.
	signal VMon : unsigned(9 downto 0);
begin
	-- Pass the Oscillator pin through a DCM to get the final clocks.
	ClockGenInstance : entity work.ClockGen(Behavioural)
	port map(
		Oscillator => Oscillator,
		Clock100 => Clock100,
		Clock10 => Clock10,
		Clock1 => Clock1
	);

	-- Latch the inputs into the local signals.
	process(Clock1)
	begin
		if rising_edge(Clock1) then
			-- Fault signals stay asserted until consumed by XBeeTransmitter.
			if XBeeTXStrobe = '1' then
				Fault1L <= '0';
				Fault2L <= '0';
				Fault3L <= '0';
				Fault4L <= '0';
				FaultDL <= '0';
			else
				Fault1L <= Fault1L or not Fault1;
				Fault2L <= Fault2L or not Fault2;
				Fault3L <= Fault3L or not Fault3;
				Fault4L <= Fault4L or not Fault4;
				FaultDL <= FaultDL or not FaultD;
			end if;
		end if;
	end process;
	process(Clock10)
	begin
		if rising_edge(Clock10) then
			AppSSL <= AppSS;
			AppInL <= AppIn;
			AppClkL <= AppClk;
		end if;
	end process;
	process(Clock100)
	begin
		if rising_edge(Clock100) then
			XBeeRXL <= XBeeRX;
		end if;
	end process;

	-- Serial communication hardware.
	XBeeReceiverInstance : entity work.XBeeReceiver(Behavioural)
	port map(
		Clock1 => Clock1,
		Clock100 => Clock100,
		Strobe => XBeeRXStrobe,
		Address => XBeeAddress,
		RSSI => XBeeRSSI,
		FeedbackFlag => FeedbackFlag,
		DirectDriveFlag => DirectDriveFlag,
		ControlledDriveFlag => ControlledDriveFlag,
		DribbleFlag => DribbleFlag,
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

	XBeeTXStrobe <= XBeeRXStrobe and FeedbackFlag;

	XBeeTransmitterInstance : entity work.XBeeTransmitter(Behavioural)
	port map(
		Clock1 => Clock1,
		Start => XBeeTXStrobe,
		Address => XBeeAddress,
		RSSI => XBeeRSSI,
		DribblerSpeed => to_unsigned(0, 16),
		BatteryLevel => VMon,
		Fault1 => Fault1L,
		Fault2 => Fault2L,
		Fault3 => Fault3L,
		Fault4 => Fault4L,
		FaultD => FaultDL,
		CommandAck => XBeeCommandSeq,
		Serial => XBeeTX
	);

	-- Braking stuff.
	BrakeDrive <= '0' when DirectDriveFlag = '1' or ControlledDriveFlag = '1' else '1';
	BrakeDribbler <= '0' when DribbleFlag = '1' else '1';

	-- Wheel stuff.
	ControllerInstance : entity work.Controller(Behavioural)
	port map(
		Clock1 => Clock1,
		Clock100 => Clock100,
		ControlledDriveFlag => ControlledDriveFlag,
		Drive1 => Drive1(9 downto 0),
		Drive2 => Drive2(9 downto 0),
		Drive3 => Drive3(9 downto 0),
		Drive4 => Drive4(9 downto 0),
		Encoder1 => to_signed(0, 10),
		Encoder2 => to_signed(0, 10),
		Encoder3 => to_signed(0, 10),
		Encoder4 => to_signed(0, 10),
		Motor1 => ControlM1,
		Motor2 => ControlM2,
		Motor3 => ControlM3,
		Motor4 => ControlM4
	);
	process(DirectDriveFlag, ControlledDriveFlag, ControlM1, ControlM2, ControlM3, ControlM4, Drive1, Drive2, Drive3, Drive4)
	begin
		if DirectDriveFlag = '1' then
			Motor1 <= Drive1;
			Motor2 <= Drive2;
			Motor3 <= Drive3;
			Motor4 <= Drive4;
		elsif ControlledDriveFlag = '1' then
			Motor1 <= ControlM1;
			Motor2 <= ControlM2;
			Motor3 <= ControlM3;
			Motor4 <= ControlM4;
		else
			Motor1 <= to_signed(0, 11);
			Motor2 <= to_signed(0, 11);
			Motor3 <= to_signed(0, 11);
			Motor4 <= to_signed(0, 11);
		end if;
	end process;
	SignMagnitude1Instance : entity work.SignMagnitude(Behavioural)
	generic map(
		Width => 11
	)
	port map(
		Value => Motor1,
		Absolute => DutyCycle1,
		Sign => Dir1T
	);
	PWM1Instance : entity work.PWM(Behavioural)
	generic map(
		Width => 10,
		Modulus => 1023,
		Invert => true
	)
	port map(
		Clock100 => Clock100,
		DutyCycle => DutyCycle1,
		PWM => PWM1
	);
	SignMagnitude2Instance : entity work.SignMagnitude(Behavioural)
	generic map(
		Width => 11
	)
	port map(
		Value => Motor2,
		Absolute => DutyCycle2,
		Sign => Dir2T
	);
	PWM2Instance : entity work.PWM(Behavioural)
	generic map(
		Width => 10,
		Modulus => 1023,
		Invert => true
	)
	port map(
		Clock100 => Clock100,
		DutyCycle => DutyCycle2,
		PWM => PWM2
	);
	SignMagnitude3Instance : entity work.SignMagnitude(Behavioural)
	generic map(
		Width => 11
	)
	port map(
		Value => Motor3,
		Absolute => DutyCycle3,
		Sign => Dir3T
	);
	PWM3Instance : entity work.PWM(Behavioural)
	generic map(
		Width => 10,
		Modulus => 1023,
		Invert => true
	)
	port map(
		Clock100 => Clock100,
		DutyCycle => DutyCycle3,
		PWM => PWM3
	);
	SignMagnitude4Instance : entity work.SignMagnitude(Behavioural)
	generic map(
		Width => 11
	)
	port map(
		Value => Motor4,
		Absolute => DutyCycle4,
		Sign => Dir4T
	);
	PWM4Instance : entity work.PWM(Behavioural)
	generic map(
		Width => 10,
		Modulus => 1023,
		Invert => true
	)
	port map(
		Clock100 => Clock100,
		DutyCycle => DutyCycle4,
		PWM => PWM4
	);
	Dir1 <= 'Z' when Dir1T = '1' else '0';
	Dir2 <= 'Z' when Dir2T = '1' else '0';
	Dir3 <= 'Z' when Dir3T = '1' else '0';
	Dir4 <= 'Z' when Dir4T = '1' else '0';

	-- Dribbler stuff.
	SMDInstance : entity work.SignMagnitude(Behavioural)
	generic map(
		Width => 11
	)
	port map(
		Value => Dribble,
		Absolute => DutyCycleD,
		Sign => DirDT
	);
	PWMDInstance : entity work.PWM(Behavioural)
	generic map(
		Width => 10,
		Modulus => 1023,
		Invert => true
	)
	port map(
		Clock100 => Clock100,
		DutyCycle => DutyCycleD,
		PWM => PWMD
	);
	DirD <= 'Z' when DirDT = '1' else '0';

	-- The SPI receiver for the analogue to digital converters.
	ADCInstance : entity work.ADC(Behavioural)
	port map(
		Clock10 => Clock10,
		SPICK => AppClkL,
		SPIDT => AppInL,
		SPISS => AppSSL,
		VMon => VMon
	);

	AppOut <= '0';
	Kick <= '1';
	Chip <= '1';
	Charge <= '1';
end architecture Behavioural;
