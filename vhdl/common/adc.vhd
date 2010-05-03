library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ADC is
	port(
		Clock10 : in std_ulogic;

		SPICK : in std_ulogic;
		SPIDT : in std_ulogic;
		SPISS : in std_ulogic;

		VMon : out unsigned(9 downto 0) := to_unsigned(0, 10)
	);
end entity ADC;

architecture Behavioural of ADC is
	signal Bits : std_ulogic_vector(9 downto 0);
	signal PrevSPICK : std_ulogic := '0';
begin
	process(Clock10)
		variable OK : boolean;
	begin
		if rising_edge(Clock10) then
			if SPISS = '1' then
				VMon <= unsigned(Bits);
			elsif SPICK = '1' and PrevSPICK = '0' then
				Bits <= Bits(8 downto 0) & SPIDT;
			end if;
			PrevSPICK <= SPICK;
		end if;
	end process;
end architecture Behavioural;
