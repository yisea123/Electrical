library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ADC is
	port(
		Clock : in std_logic;

		SPICK : in std_logic;
		SPIDT : in std_logic;
		SPISS : in std_logic;

		Channel0  : out unsigned(9 downto 0) := to_unsigned(0, 10);
		Channel1  : out unsigned(9 downto 0) := to_unsigned(0, 10);
		Channel2  : out unsigned(9 downto 0) := to_unsigned(0, 10);
		Channel3  : out unsigned(9 downto 0) := to_unsigned(0, 10);
		Channel4  : out unsigned(9 downto 0) := to_unsigned(0, 10);
		Channel5  : out unsigned(9 downto 0) := to_unsigned(0, 10);
		Channel6  : out unsigned(9 downto 0) := to_unsigned(0, 10);
		Channel7  : out unsigned(9 downto 0) := to_unsigned(0, 10);
		Channel8  : out unsigned(9 downto 0) := to_unsigned(0, 10);
		Channel9  : out unsigned(9 downto 0) := to_unsigned(0, 10);
		Channel10 : out unsigned(9 downto 0) := to_unsigned(0, 10);
		Channel11 : out unsigned(9 downto 0) := to_unsigned(0, 10);
		Channel12 : out unsigned(9 downto 0) := to_unsigned(0, 10);
		Good : out std_logic := '0'
	);
end entity ADC;

architecture Behavioural of ADC is
	signal Bits : std_logic_vector(201 downto 0);
	signal BitsLeft : unsigned(7 downto 0) := to_unsigned(0, 8);
	signal PrevSPICK : std_logic := '0';
begin
	process(Clock)
	begin
		if rising_edge(Clock) then
			if SPISS = '1' then
				-- Slave select deasserted.
				-- If all is good, copy out.
				if BitsLeft = to_unsigned(0, 8) then
					-- There is padding in the bitstream.
					Channel0 <= unsigned(Bits(201 downto 192));
					Channel1 <= unsigned(Bits(185 downto 176));
					Channel2 <= unsigned(Bits(169 downto 160));
					Channel3 <= unsigned(Bits(153 downto 144));
					Channel4 <= unsigned(Bits(137 downto 128));
					Channel5 <= unsigned(Bits(121 downto 112));
					Channel6 <= unsigned(Bits(105 downto 96));
					Channel7 <= unsigned(Bits(89 downto 80));
					Channel8 <= unsigned(Bits(73 downto 64));
					Channel9 <= unsigned(Bits(57 downto 48));
					Channel10 <= unsigned(Bits(41 downto 32));
					Channel11 <= unsigned(Bits(25 downto 16));
					Channel12 <= unsigned(Bits(9 downto 0));
					Good <= '1';
				elsif BitsLeft /= to_unsigned(208, 8) then
					Good <= '0';
				end if;
				BitsLeft <= to_unsigned(208, 8);
			else
				if SPICK = '1' and PrevSPICK = '0' then
					Bits <= Bits(200 downto 0) & SPIDT;
					BitsLeft <= BitsLeft - 1;
				end if;
			end if;
			PrevSPICK <= SPICK;
		end if;
	end process;
end architecture Behavioural;
