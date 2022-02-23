library IEEE;
use IEEE.STD_logic_1164.all;

entity NotGate is
	
	port(	inPort	:	in		STD_logic	;
			outPort	:	out	STD_logic)	;

end NotGate;

architecture Behavioral of NotGate is
begin

	outPort	<=	not	inPort;		

end Behavioral;