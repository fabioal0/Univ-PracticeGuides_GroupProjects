library IEEE;
use IEEE.STD_Logic_1164.all;

entity Dec2_4En is

		port(	enable	:	in		STD_Logic;
				inputs	:	in		STD_Logic_Vector(1 downto 0);
				outputs	:	out	STD_Logic_Vector(3 downto 0));

end Dec2_4En;

architecture	BehavEquacions	of	Dec2_4En	is
begin
					outputs(0)	<=		enable	and	(	not	inputs(1)	)		and	(	not	inputs(0)	);
					outputs(1)	<=		enable	and	(	not	inputs(1)	)		and	(			inputs(0)	);
					outputs(2)	<=		enable	and	(			inputs(1)	)		and	(	not	inputs(0)	);
					outputs(3)	<=		enable	and	(			inputs(1)	)		and	(			inputs(0)	);
					
end BehavEquacions;					

architecture	BehavAssign	of	Dec2_4En	is
begin

		outputs<="0000"when	(enable	=	'0')	else
					"0001"when	(inputs	=	"00")	else
					"0010"when	(inputs	=	"01")	else
					"0100"when	(inputs	=	"10")	else
					"1000";

end BehavAssign;

architecture BehavProc of	Dec2_4En	is

begin

	process(inputs,enable)

		if		(enable = 0)	then
		
		outputs<="0000";
		
		else	
		
			if(inputs = "00") then
					
					outputs<="0001";
			
			elsif(inputs = "01") then
					
					outputs<="0010";
			
			elsif(inputs = "10")	then
					
					outputs<="0100";
			
			else
					
					outputs<="1000";
		
		end if;	

	end process;
	
end BehavProc;