library IEEE;
use IEEE.STD_Logic_1164.all;

entity FlipFlopD_Demo is
		
			port(	SW		:	in		STD_Logic_Vector(2	downto	0);
					KEY	:	in		STD_Logic_Vector(0	downto	0);
					LEDR	:	out	STD_Logic_Vector(0	downto	0));
					
end	FlipFlopD_Demo;

architecture	Shell of FlipFlopD_Demo is
begin

		ff_b:entity work.FlipFlopD(Behavioral)
					port map(	clk	=>	Key(0)	,
									set	=>	SW(1)		,
									reset	=>	SW(2)		,
									d		=>	SW(0)		,	
									q		=>	LEDR(0)	);

									

end	Shell;				