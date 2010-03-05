library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity StepTest is
	port(
		-- The 2MHz Fosc/4 line from the PIC.
		PICOscillator : in std_ulogic;

		-- Serial line to the XBee.
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
		Encoder4B : in std_ulogic
	);
end entity StepTest;

architecture Behavioural of StepTest is
	-- The address of the host XBee.
	constant HostAddress : unsigned(63 downto 0) := X"0013a2004053a24c";

	-- The state machine.
	type StateType is (Init, PreRamp, PostRamp, RecordingDone, SendSOP, SendLengthMSB, SendLengthLSB, SendAPIID, SendFrameID, SendAddress, SendOptions, SendRAMAddressMSB, SendRAMAddressLSB, LoadData, SendDataMSB, SendDataLSB, SendChecksum, Sleep);
	signal State : StateType := PreRamp;
	subtype PIDTicksType is natural range 0 to 4999;
	signal PIDTicks : PIDTicksType := 0;
	subtype StateTicksType is natural range 0 to 399;
	signal StateTicks : StateTicksType := 0;

	-- The serial transmitter stuff.
	signal Checksum : unsigned(7 downto 0);
	signal SerialData : std_ulogic_vector(7 downto 0);
	signal SerialLoad : std_ulogic;
	signal SerialBusy : std_ulogic;
	signal XBeeData : std_ulogic_vector(7 downto 0);
	signal XBeeLoad : std_ulogic;
	signal XBeeSOP : std_ulogic;
	signal XBeeBusy : std_ulogic;
	signal DataCounter : natural range 0 to 49;

	-- The RAM.
	type RAMType is array(0 to 1023) of signed(15 downto 0);
	signal RAM : RAMType;
	signal RAMIndex : natural range 0 to 1023 := 0;
	signal RAMWrite : boolean := false;
	signal RAMRData : signed(15 downto 0) := to_signed(0, 16);
	signal RAMWData : signed(15 downto 0) := to_signed(0, 16);

	-- The clocks generated by the DCM from PICOscillator.
	signal Clock1 : std_ulogic;
	signal Clock10 : std_ulogic;
	signal Clock100 : std_ulogic;

	-- Latched versions of all input pins other than PICOscillator.
	signal Encoder4AL : std_ulogic := '0';
	signal Encoder4BL : std_ulogic := '0';

	-- Encoder counts from the Gray counter.
	signal Encoder4Count : signed(10 downto 0);
	signal EncoderReset : std_ulogic;

	-- PWM duty cycle.
	signal DutyCycle4 : unsigned(9 downto 0);
begin
	-- Constant pins.
	AppOut <= '0';
	BrakeDrive <= '0' when State = PreRamp or State = PostRamp else '1';
	BrakeDribbler <= '0';
	PWM1 <= '1';
	PWM2 <= '1';
	PWM3 <= '1';
	PWMD <= '1';
	Dir1 <= '0';
	Dir2 <= '0';
	Dir3 <= '0';
	Dir4 <= '0';
	DirD <= '0';

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
			Encoder4AL <= Encoder4A;
			Encoder4BL <= Encoder4B;
		end if;
	end process;

	-- Wheel stuff.
	GrayCounterInstance4 : entity work.GrayCounter(Behavioural)
	generic map(
		Width => 11,
		Sign => -1
	)
	port map(
		Clock1 => Clock1,
		A => Encoder4AL,
		B => Encoder4BL,
		Reset => EncoderReset,
		Count => Encoder4Count
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

	-- The XBee transmitter stuff.
	XBeeByteTransmitterInstance : entity work.XBeeByteTransmitter(Behavioural)
	port map(
		Clock1 => Clock1,
		Data => XBeeData,
		Load => XBeeLoad,
		SOP => XBeeSOP,
		Busy => XBeeBusy,
		SerialData => SerialData,
		SerialLoad => SerialLoad,
		SerialBusy => SerialBusy
	);
	SerialTransmitterInstance : entity work.SerialTransmitter(Behavioural)
	port map(
		Clock1 => Clock1,
		Data => SerialData,
		Load => SerialLoad,
		Busy => SerialBusy,
		Serial => XBeeTX
	);

	-- The state machine.
	DutyCycle4 <= to_unsigned(600, 10) when State = PostRamp else to_unsigned(150, 10);
	process(Clock1)
		variable TickRAMIndex : boolean;
		variable ClearRAMIndex : boolean;
		variable ResetChecksum : boolean;
		variable DeltaChecksum : unsigned(7 downto 0);
	begin
		if rising_edge(Clock1) then
			TickRAMIndex := false;
			ClearRAMIndex := false;
			ResetChecksum := false;
			DeltaChecksum := X"00";
			RAMWrite <= false;
			XBeeLoad <= '0';
			XBeeSOP <= '0';
			if State = Init then
				State <= PreRamp;
			elsif State = PreRamp or State = PostRamp then
				if PIDTicks = PIDTicksType'high then
					if StateTicks = 0 and State = PreRamp then
						ClearRAMIndex := true;
					else
						TickRAMIndex := true;
					end if;
					if StateTicks = StateTicksType'high then
						if State = PreRamp then
							State <= PostRamp;
						elsif State = PostRamp then
							State <= RecordingDone;
						end if;
						StateTicks <= 0;
					else
						StateTicks <= StateTicks + 1;
					end if;
					RAMWrite <= true;
					RAMWData <= resize(Encoder4Count, RAMWData'length);
					EncoderReset <= '1';
					PIDTicks <= 0;
				else
					EncoderReset <= '0';
					PIDTicks <= PIDTicks + 1;
				end if;
			elsif XBeeBusy = '0' then
				if State = RecordingDone then
					ClearRAMIndex := true;
					State <= SendSOP;
				elsif State = SendSOP then
					XBeeSOP <= '1';
					State <= SendLengthMSB;
				elsif State = SendLengthMSB then
					XBeeData <= X"00";
					XBeeLoad <= '1';
					State <= SendLengthLSB;
				elsif State = SendLengthLSB then
					XBeeData <= X"6D";
					XBeeLoad <= '1';
					State <= SendAPIID;
					ResetChecksum := true;
				elsif State = SendAPIID then
					XBeeData <= X"00";
					DeltaChecksum := X"00";
					XBeeLoad <= '1';
					State <= SendFrameID;
				elsif State = SendFrameID then
					XBeeData <= X"01";
					DeltaChecksum := X"01";
					XBeeLoad <= '1';
					State <= SendAddress;
					DataCounter <= 7;
				elsif State = SendAddress then
					XBeeData <= std_ulogic_vector(HostAddress((DataCounter + 1) * 8 - 1 downto DataCounter * 8));
					DeltaChecksum := HostAddress((DataCounter + 1) * 8 - 1 downto DataCounter * 8);
					XBeeLoad <= '1';
					if DataCounter = 0 then
						State <= SendOptions;
					end if;
					DataCounter <= DataCounter - 1;
				elsif State = SendOptions then
					XBeeData <= X"00";
					DeltaChecksum := X"00";
					XBeeLoad <= '1';
					State <= SendRAMAddressMSB;
				elsif State = SendRAMAddressMSB then
					XBeeData <= std_ulogic_vector(to_unsigned(RAMIndex / 256, 8));
					DeltaChecksum := to_unsigned(RAMIndex / 256, 8);
					XBeeLoad <= '1';
					State <= SendRAMAddressLSB;
				elsif State = SendRAMAddressLSB then
					XBeeData <= std_ulogic_vector(to_unsigned(RAMIndex mod 256, 8));
					DeltaChecksum := to_unsigned(RAMIndex mod 256, 8);
					XBeeLoad <= '1';
					State <= LoadData;
					DataCounter <= 47;
				elsif State = LoadData then
					State <= SendDataMSB;
				elsif State = SendDataMSB then
					XBeeData <= std_ulogic_vector(RAMRData(15 downto 8));
					DeltaChecksum := unsigned(std_ulogic_vector(RAMRData(15 downto 8)));
					XBeeLoad <= '1';
					State <= SendDataLSB;
				elsif State = SendDataLSB then
					XBeeData <= std_ulogic_vector(RAMRData(7 downto 0));
					DeltaChecksum := unsigned(std_ulogic_vector(RAMRData(7 downto 0)));
					XBeeLoad <= '1';
					TickRAMIndex := true;
					if DataCounter = 0 then
						State <= SendChecksum;
					else
						State <= LoadData;
					end if;
					DataCounter <= DataCounter - 1;
				elsif State = SendChecksum then
					XBeeData <= std_ulogic_vector(Checksum);
					XBeeLoad <= '1';
					State <= Sleep;
					PIDTicks <= 0;
					StateTicks <= 25;
					if RAMIndex >= 800 then
						ClearRAMIndex := true;
					end if;
				elsif State = Sleep then
					if PIDTicks = 0 then
						if StateTicks = 0 then
							State <= SendSOP;
						else
							StateTicks <= StateTicks - 1;
							PIDTicks <= PIDTicksType'high;
						end if;
					else
						PIDTicks <= PIDTicks - 1;
					end if;
				end if;
			end if;
			if ClearRAMIndex then
				RAMIndex <= 0;
			elsif TickRAMIndex then
				RAMIndex <= (RAMIndex + 1) mod 1024;
			end if;
			if ResetChecksum then
				Checksum <= X"FF";
			else
				Checksum <= Checksum - DeltaChecksum;
			end if;
		end if;
	end process;

	process(Clock1)
	begin
		if rising_edge(Clock1) then
			if RAMWrite then
				RAM(RAMIndex) <= RAMWData;
			end if;
			RAMRData <= RAM(RAMIndex);
		end if;
	end process;
end architecture Behavioural;
