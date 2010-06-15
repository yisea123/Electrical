library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity XBee is
	port(
		Clock1 : in std_ulogic;
		Clock10 : in std_ulogic;
		Clock100 : in std_ulogic;

		DirectDriveFlag : out std_ulogic;
		ControlledDriveFlag : out std_ulogic;
		ChickerEnableFlag : out std_ulogic;
		Drive1 : out signed(10 downto 0);
		Drive2 : out signed(10 downto 0);
		Drive3 : out signed(10 downto 0);
		Drive4 : out signed(10 downto 0);
		Dribble : out unsigned(10 downto 0);
		ChickerPower : out unsigned(8 downto 0);
		ChipFlag : out std_ulogic;
		Timeout : out std_ulogic;

		DribblerSpeed : in unsigned(10 downto 0);
		VMon : in unsigned(9 downto 0);
		Fault1 : in std_ulogic;
		Fault2 : in std_ulogic;
		Fault3 : in std_ulogic;
		Fault4 : in std_ulogic;
		FaultD : in std_ulogic;
		ChickerReady : in std_ulogic;
		ChickerChipFault : in std_ulogic;
		ChickerFault0 : in std_ulogic;
		ChickerFault150 : in std_ulogic;
		ChickerTimeout : in std_ulogic;

		SerialIn : in std_ulogic;
		SerialOut : out std_ulogic
	);
end entity XBee;

architecture Behavioural of XBee is
	signal RXStrobe : std_ulogic;
	signal RSSI : std_ulogic_vector(7 downto 0);
	signal FeedbackFlag : std_ulogic;
	signal TXStrobe : std_ulogic;
	subtype TimeoutCounterType is natural range 0 to 499999;
	signal TimeoutCounter : TimeoutCounterType := 0;
begin
	XBeeReceiverInstance : entity work.XBeeReceiver(Behavioural)
	port map(
		Clock1 => Clock1,
		Clock10 => Clock10,
		Clock100 => Clock100,
		Strobe => RXStrobe,
		RSSI => RSSI,
		FeedbackFlag => FeedbackFlag,
		DirectDriveFlag => DirectDriveFlag,
		ControlledDriveFlag => ControlledDriveFlag,
		ChickerEnableFlag => ChickerEnableFlag,
		ChipFlag => ChipFlag,
		Drive1 => Drive1,
		Drive2 => Drive2,
		Drive3 => Drive3,
		Drive4 => Drive4,
		Dribble => Dribble,
		ChickerPower => ChickerPower,
		Serial => SerialIn
	);

	XBeeTransmitterInstance : entity work.XBeeTransmitter(Behavioural)
	port map(
		Clock1 => Clock1,
		Start => TXStrobe,
		RSSI => RSSI,
		DribblerSpeed => DribblerSpeed,
		BatteryLevel => VMon,
		Fault1 => Fault1,
		Fault2 => Fault2,
		Fault3 => Fault3,
		Fault4 => Fault4,
		FaultD => FaultD,
		ChickerReady => ChickerReady,
		ChickerChipFault => ChickerChipFault,
		ChickerFault0 => ChickerFault0,
		ChickerFault150 => ChickerFault150,
		ChickerTimeout => ChickerTimeout,
		Serial => SerialOut
	);

	TXStrobe <= RXStrobe and FeedbackFlag;

	process(Clock1)
	begin
		if rising_edge(Clock1) then
			if RXStrobe = '1' then
				TimeoutCounter <= TimeoutCounterType'high;
			elsif TimeoutCounter /= 0 then
				TimeoutCounter <= TimeoutCounter - 1;
			end if;
		end if;
	end process;

	Timeout <= '1' when TimeoutCounter = 0 else '0';
end architecture Behavioural;
