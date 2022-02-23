library	IEEE;
use	IEEE.STD_Logic_1164.all;

entity	FlipFlopD	is

		port(	clk	:	in		STD_Logic	;
				set	:	in		STD_Logic	;
				reset	:	in		STD_logic	;
				d		:	in		STD_Logic	;
				q		:	out	STD_Logic	);

end	FlipFlopD;				

architecture Behavioral	of	FlipFlopD	is
begin

	process (clk)
		
		begin
			
			if(rising_edge(clk))	then	
			
			
			if	(reset	=	'1')	then
				q<='0';
			
			
			elsif	(set	=	'1')		then
				q<=d;
			
			end	if;
	
		end	if;
	
	end	process;	

end	Behavioral;