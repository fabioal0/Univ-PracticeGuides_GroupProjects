library IEEE;
use IEEE.STD_logic_1164.all;

entity GateDemo is
	
	port(	SW 	: in 	STD_logic_vector	(1 downto 0);
			LEDR	: out STD_logic_vector	(0 downto 0));

end GateDemo ;

architecture shell of GateDemo is
begin

	System_core: entity work.AND2Gate(Behavioral)
			port map(	inPort0	=>		SW(0)		,
							inPort1	=>		SW(1)		,
							outPort	=>		LEDR(0)	);

end shell; 