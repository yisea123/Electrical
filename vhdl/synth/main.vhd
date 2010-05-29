library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library unisim;
use unisim.vcomponents.all;

entity Main is
	port(
		-- The 2MHz Fosc/4 line from the PIC.
		PICOscillator : in std_ulogic;

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

		-- Optical encoder phase lines.
		Encoder1A : in std_ulogic;
		Encoder1B : in std_ulogic;
		Encoder2A : in std_ulogic;
		Encoder2B : in std_ulogic;
		Encoder3A : in std_ulogic;
		Encoder3B : in std_ulogic;
		Encoder4A : in std_ulogic;
		Encoder4B : in std_ulogic;

		-- Break beam output line.
		BeamOut : out std_ulogic;

		-- Chicker control lines.
		ChickerCharge : out std_ulogic;
		ChickerDone : in std_ulogic;
		ChickerFault : in std_ulogic;
		ChickerKick : out std_ulogic;
		ChickerChip : out std_ulogic;

		-- The indicator LED.
		LED : out std_ulogic;

		-- Virtual rail lines.
		VGnd1 : out std_ulogic;
		VGnd2 : out std_ulogic;
		VGnd3 : out std_ulogic;
		VGnd4 : out std_ulogic;
		VGnd5 : out std_ulogic;
		VGnd6 : out std_ulogic;
		VGnd7 : out std_ulogic;
		VGnd8 : out std_ulogic;
		VVcc1 : out std_ulogic;
		VVcc2 : out std_ulogic;
		VVcc3 : out std_ulogic;
		VVcc4 : out std_ulogic
	);
end entity Main;

architecture Behavioural of Main is
	-- The clocks generated by the DCM from PICOscillator.
	signal Clock1 : std_ulogic;
	signal Clock10 : std_ulogic;
	signal Clock100 : std_ulogic;

	-- Latched versions of all input pins other than PICOscillator.
	signal XBeeRXL : std_ulogic := '1';
	signal AppSSL : std_ulogic := '1';
	signal AppInL : std_ulogic := '0';
	signal AppClkL : std_ulogic := '0';
	signal Fault1L : std_ulogic := '0';
	signal Fault2L : std_ulogic := '0';
	signal Fault3L : std_ulogic := '0';
	signal Fault4L : std_ulogic := '0';
	signal FaultDL : std_ulogic := '0';
	signal DSenseL : std_ulogic := '0';
	signal EncoderAL : std_ulogic_vector(1 to 4) := "0000";
	signal EncoderBL : std_ulogic_vector(1 to 4) := "0000";
	signal ChickerDoneL : std_ulogic := '1';
	signal ChickerFaultL : std_ulogic := '1';

	-- Mode flags from the XBee.
	signal DirectDriveFlag : std_ulogic;
	signal ControlledDriveFlag : std_ulogic;
	signal ChickerEnableFlag : std_ulogic;
	signal RXTimeout : std_ulogic;

	-- Drive levels from the XBee.
	signal Drive1 : signed(10 downto 0);
	signal Drive2 : signed(10 downto 0);
	signal Drive3 : signed(10 downto 0);
	signal Drive4 : signed(10 downto 0);

	-- Encoder counts from the Gray counters.
	type EncoderCountType is array(1 to 4) of signed(10 downto 0);
	signal EncoderCount : EncoderCountType;
	signal EncoderReset : std_ulogic;

	-- Controller outputs.
	signal ControlM1 : unsigned(10 downto 0);
	signal ControlM2 : unsigned(10 downto 0);
	signal ControlM3 : unsigned(10 downto 0);
	signal ControlM4 : unsigned(10 downto 0);

	-- Motor powers from the controller or direct drive.
	type MotorType is array(1 to 4) of unsigned(10 downto 0);
	signal Motor : MotorType;

	-- PWM signals from the PWM generators.
	signal PWM : std_ulogic_vector(1 to 4) := "0000";

	-- Dribbler stuff.
	signal Dribble : unsigned(10 downto 0);

	-- Chicker stuff.
	signal ChickerReadyFlag : std_ulogic;
	signal ChickerFaultFlag : std_ulogic;
	signal ChickerPower : unsigned(8 downto 0);
	signal ChipFlag : std_ulogic;

	-- Battery voltage.
	signal VMon : unsigned(9 downto 0);
begin
	-- Pass the PICOscillator pin through a DCM to get the final clocks.
	ClockGenInstance : entity work.ClockGen(Behavioural)
	port map(
		PICOscillator => PICOscillator,
		Clock100 => Clock100,
		Clock10 => Clock10,
		Clock1 => Clock1
	);

	-- Latch the inputs into the local signals.
	process(Clock1)
	begin
		if rising_edge(Clock1) then
			Fault1L <= Fault1;
			Fault2L <= Fault2;
			Fault3L <= Fault3;
			Fault4L <= Fault4;
			FaultDL <= FaultD;
			DSenseL <= DSense;
			EncoderAL(1) <= Encoder1A;
			EncoderAL(2) <= Encoder2A;
			EncoderAL(3) <= Encoder3A;
			EncoderAL(4) <= Encoder4A;
			EncoderBL(1) <= Encoder1B;
			EncoderBL(2) <= Encoder2B;
			EncoderBL(3) <= Encoder3B;
			EncoderBL(4) <= Encoder4B;
			ChickerDoneL <= ChickerDone;
			ChickerFaultL <= ChickerFault;
		end if;
	end process;
	process(Clock10)
	begin
		if rising_edge(Clock10) then
			AppSSL <= AppSS;
			AppInL <= AppIn;
			AppClkL <= AppClk;
			XBeeRXL <= XBeeRX;
		end if;
	end process;

	-- Serial communication hardware.
	XBeeInstance : entity work.XBee(Behavioural)
	port map(
		Clock1 => Clock1,
		Clock10 => Clock10,
		Clock100 => Clock100,
		DirectDriveFlag => DirectDriveFlag,
		ControlledDriveFlag => ControlledDriveFlag,
		ChickerEnableFlag => ChickerEnableFlag,
		Drive1 => Drive1,
		Drive2 => Drive2,
		Drive3 => Drive3,
		Drive4 => Drive4,
		Dribble => Dribble,
		ChickerPower => ChickerPower,
		ChipFlag => ChipFlag,
		Timeout => RXTimeout,
		DribblerSpeed => to_signed(0, 11),
		VMon => VMon,
		Fault1 => Fault1L,
		Fault2 => Fault2L,
		Fault3 => Fault3L,
		Fault4 => Fault4L,
		FaultD => FaultDL,
		ChickerReady => ChickerReadyFlag,
		ChickerFault => ChickerFaultFlag,
		SerialIn => XBeeRXL,
		SerialOut => XBeeTX
	);

	-- Braking stuff.
	BrakeDrive <= '0' when (DirectDriveFlag = '1' or ControlledDriveFlag = '1') and RXTimeout = '0' else '1';
	BrakeDribbler <= '0' when Dribble(9 downto 0) /= to_unsigned(0, 10) and RXTimeout = '0' else '1';

	-- Wheel stuff.
	GrayCounters : for I in 1 to 4 generate
	begin
		Instance : entity work.GrayCounter(Behavioural)
		generic map(
			Width => 11,
			Sign => -1
		)
		port map(
			Clock1 => Clock1,
			A => EncoderAL(I),
			B => EncoderBL(I),
			Reset => EncoderReset,
			Count => EncoderCount(I)
		);
	end generate;

	ControllerInstance : entity work.Controller(Behavioural)
	port map(
		Clock1 => Clock1,
		Clock10 => Clock10,
		ControlledDriveFlag => ControlledDriveFlag,
		Drive1 => Drive1,
		Drive2 => Drive2,
		Drive3 => Drive3,
		Drive4 => Drive4,
		Encoder1 => EncoderCount(1),
		Encoder2 => EncoderCount(2),
		Encoder3 => EncoderCount(3),
		Encoder4 => EncoderCount(4),
		EncoderReset => EncoderReset,
		Motor1 => ControlM1,
		Motor2 => ControlM2,
		Motor3 => ControlM3,
		Motor4 => ControlM4
	);

	process(DirectDriveFlag, ControlledDriveFlag, ControlM1, ControlM2, ControlM3, ControlM4, Drive1, Drive2, Drive3, Drive4)
	begin
		if DirectDriveFlag = '1' then
			Motor(1) <= unsigned(Drive1);
			Motor(2) <= unsigned(Drive2);
			Motor(3) <= unsigned(Drive3);
			Motor(4) <= unsigned(Drive4);
		elsif ControlledDriveFlag = '1' then
			Motor(1) <= ControlM1;
			Motor(2) <= ControlM2;
			Motor(3) <= ControlM3;
			Motor(4) <= ControlM4;
		else
			Motor(1) <= to_unsigned(0, 11);
			Motor(2) <= to_unsigned(0, 11);
			Motor(3) <= to_unsigned(0, 11);
			Motor(4) <= to_unsigned(0, 11);
		end if;
	end process;

	PWMs : for I in 1 to 4 generate
	begin
		Instance : entity work.PWM(Behavioural)
		generic map(
			Width => 10,
			Invert => true
		)
		port map(
			Clock100 => Clock100,
			DutyCycle => Motor(I)(9 downto 0),
			PWM => PWM(I)
		);
	end generate;
	PWM1 <= PWM(1);
	PWM2 <= PWM(2);
	PWM3 <= PWM(3);
	PWM4 <= PWM(4);

	Dir1 <= Motor(1)(10);
	Dir2 <= Motor(2)(10);
	Dir3 <= Motor(3)(10);
	Dir4 <= Motor(4)(10);

	-- Dribbler stuff.
	PWMDInstance : entity work.PWM(Behavioural)
	generic map(
		Width => 10,
		Invert => true
	)
	port map(
		Clock100 => Clock100,
		DutyCycle => Dribble(9 downto 0),
		PWM => PWMD
	);
	DirD <= Dribble(10);

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

	-- Break beam output line.
	BeamOut <= '1';

	-- Chicker control stuff.
	ChickerInstance : entity work.Chicker(Behavioural)
	port map(
		Clock1 => Clock1,
		RXTimeout => RXTimeout,
		ChickerEnableFlag => ChickerEnableFlag,
		ChipFlag => ChipFlag,
		Power => ChickerPower,
		ReadyFlag => ChickerReadyFlag,
		FaultFlag => ChickerFaultFlag,
		Charge => ChickerCharge,
		Done => ChickerDoneL,
		Fault => ChickerFaultL,
		Kick => ChickerKick,
		Chip => ChickerChip
	);

	-- The indicator LED.
	LED <= '1';

	-- Virtual rail lines.
	VGnd1 <= '0';
	VGnd2 <= '0';
	VGnd3 <= '0';
	VGnd4 <= '0';
	VGnd5 <= '0';
	VGnd6 <= '0';
	VGnd7 <= '0';
	VGnd8 <= '0';
	VVcc1 <= '1';
	VVcc2 <= '1';
	VVcc3 <= '1';
	VVcc4 <= '1';
end architecture Behavioural;
