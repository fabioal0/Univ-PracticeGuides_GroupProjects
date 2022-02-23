library IEEE;
use IEEE.STD_Logic_1164.all;

entity Dec2_4EnDemo is

		port(	SW		:	in		STD_Logic_Vector	(2	downto	0);
				LEDG	:	out	STD_Logic_Vector	(3	downto	0));

end Dec2_4EnDemo;


architecture Shell of Dec2_4EnDemo is
begin

				System_core:entity work.Dec2_4En(BehavAssign)
				port map(	enable	=>		SW		(2)				,
								inputs	=>		SW		(1 downto 0)	,
								outputs	=>		LEDG	(3 downto 0))	;
								
end Shell;								