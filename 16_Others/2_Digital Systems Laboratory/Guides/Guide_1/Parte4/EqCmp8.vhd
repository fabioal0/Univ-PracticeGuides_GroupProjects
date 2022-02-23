library IEEE;
use IEEE.STD_logic_1164.all;

entity EqCmp8 is

			port(	input0	:	in		STD_Logic_Vector(7 downTo 0);
					input1	:	in		STD_Logic_Vector(7 downTo 0);
					cmpOut	:	out	STD_Logic						);
					
end EqCmp8;

architecture proc of EqCmp8 is
begin

		cmpOut<='1'	when	(input0	=	input1)	else	'0';

end proc;					