library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SerialTransmitter is
	port(
		Clock1 : in std_ulogic;

		Data : in std_ulogic_vector(7 downto 0);
		Load : in std_ulogic;
		Busy : out std_ulogic;

		Serial : out std_ulogic
	);
end entity SerialTransmitter;

architecture Behavioural of SerialTransmitter is
	signal DBuf : std_ulogic_vector(8 downto 0) := "111111111";
	signal Bits : natural range 0 to 10 := 0;
	subtype BitClocksType is natural range 0 to 3;
	signal BitClocks : BitClocksType := 0;
begin
	Serial <= DBuf(0);
	Busy <= '1' when Load = '1' or Bits /= 0 or BitClocks /= 0 else '0';

	process(Clock1)
	begin
		if rising_edge(Clock1) then
			if Load = '1' then
				DBuf <= Data & "0";
				Bits <= 10;
				BitClocks <= BitClocksType'high;
			elsif BitClocks /= 0 then
				BitClocks <= BitClocks - 1;
			elsif Bits /= 0 then
				Bits <= Bits - 1;
				BitClocks <= BitClocksType'high;
				DBuf <= "1" & DBuf(8 downto 1);
			end if;
		end if;
	end process;
end architecture Behavioural;
