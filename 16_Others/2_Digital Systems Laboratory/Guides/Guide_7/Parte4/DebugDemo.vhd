library IEEE;
use IEEE.STD_Logic_1164.all;

entity DebugDemo is
		port(CLOCK_50	: 	IN	STD_LOGIC;
				SW			:	IN	STD_LOGIC_VECTOR(1 DOWNTO 0);
				LEDR		:	OUT STD_LOGIC_VECTOR(17 DOWNTO 0));
end DebugDemo;

architecture Shell of DebugDemo is
begin

					system_core	:	entity work.CntUp(Behavioral)
									port map(clk						=>CLOCK_50,
												reset						=>SW(0),
												enable					=>SW(1),
												cntVal(29 downto 12)	=>LEDR);
end Shell;												