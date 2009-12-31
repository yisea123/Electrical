library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SerialReceiver is
	port(
		Clock : in std_logic;

		Serial : in std_logic;

		Data : out std_logic_vector(7 downto 0);
		Good : out std_logic;
		FErr : out std_logic := '0'
	);
end entity SerialReceiver;

architecture Behavioural of SerialReceiver is
	signal DBuf : std_logic_vector(9 downto 0) := "0000000000";
	signal BitClocks : natural range 0 to 199 := 0;
	signal BitValue : integer range -63 to 63 := 0;
	signal FErrBuf : std_logic := '0';
begin
	Data <= DBuf(8 downto 1);
	FErr <= FErrBuf;

	process(Clock)
	begin
		if rising_edge(Clock) then
			Good <= '0';
			if DBuf(0) = '0' then
				-- Not receiving right now.
				if Serial = '0' then
					-- Start bit of new byte.
					FErrBuf <= '0';
					DBuf <= "1111111111";
					BitClocks <= 199;
					BitValue <= 0;
				end if;
			else
				-- Receive in progress. What do we do with the current bit?
				if BitClocks > 131 then
					-- Too early in the bit to take a stable sample. Do nothing.
					BitClocks <= BitClocks - 1;
				elsif BitClocks > 68 then
					-- Middle 63 clocks. Sample.
					if Serial = '1' then
						BitValue <= BitValue + 1;
					else
						BitValue <= BitValue - 1;
					end if;
					BitClocks <= BitClocks - 1;
				elsif BitClocks > 0 then
					-- Too late in the bit to take a stable sample. Do nothing.
					BitClocks <= BitClocks - 1;
				else
					-- End of bit. See what our sampling achieved.
					if BitValue >= 22 then
						-- Overwhelmingly high. Accept bit.
						DBuf <= '1' & DBuf(9 downto 1);
					elsif BitValue <= -22 then
						-- Overwhelmingly low. Accept bit.
						DBuf <= '0' & DBuf(9 downto 1);
					else
						-- Unstable. Reject whole byte.
						FErrBuf <= '1';
						-- Still need to push the shift register to keep things moving.
						DBuf <= '1' & DBuf(9 downto 1);
					end if;
					-- Note: DBuf is a signal, so reflects the **OLD** value, in
					-- which what is now DBuf(0) was then DBuf(1)!
					if DBuf(1) = '1' then
						-- We have more bits to receive. Set up the clock.
						BitClocks <= 199;
						BitValue <= 0;
					else
						-- We have finished receiving a full byte. Check polarity of stop bit.
						if FErrBuf = '0' and BitValue >= 22 then
							Good <= '1';
						else
							FErrBuf <= '1';
						end if;
					end if;
				end if;
			end if;
		end if;
	end process;
end architecture Behavioural;
