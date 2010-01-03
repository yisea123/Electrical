library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity XBeeReceiver is
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
end entity XBeeReceiver;

architecture Behavioural of XBeeReceiver is
	signal SerialData : std_ulogic_vector(7 downto 0);
	signal SerialGood : std_ulogic;
	signal SerialFErr : std_ulogic;
	signal ByteFErr : std_ulogic;
	signal ByteData : std_ulogic_vector(7 downto 0);
	signal ByteGood : std_ulogic;
	signal ByteSOP : std_ulogic;
begin
	SerialReceiverInstance : entity work.SerialReceiver(Behavioural)
	port map(
		Clock => Clock,
		Serial => Serial,
		Data => SerialData,
		Good => SerialGood,
		FErr => SerialFErr
	);

	XBeeByteReceiverInstance : entity work.XBeeByteReceiver(Behavioural)
	port map(
		Clock => Clock,
		SerialData => SerialData,
		SerialGood => SerialGood,
		SerialFErr => SerialFErr,
		FErr => ByteFErr,
		Data => ByteData,
		Good => ByteGood,
		SOP => ByteSOP
	);

	XBeePacketReceiverInstance : entity work.XBeePacketReceiver(Behavioural)
	port map(
		Clock => Clock,
		ByteFErr => ByteFErr,
		ByteData => ByteData,
		ByteGood => ByteGood,
		ByteSOP => ByteSOP,
		Good => Good,
		Address => Address,
		RSSI => RSSI,
		FeedbackFlag => FeedbackFlag,
		DirectDriveFlag => DirectDriveFlag,
		Drive1 => Drive1,
		Drive2 => Drive2,
		Drive3 => Drive3,
		Drive4 => Drive4,
		Dribble => Dribble,
		CommandSeq => CommandSeq,
		Command => Command,
		CommandData => CommandData
	);
end architecture Behavioural;
