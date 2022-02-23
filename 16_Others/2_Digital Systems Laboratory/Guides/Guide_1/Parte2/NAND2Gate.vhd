library IEEE;
use IEEE.STD_logic_1164.all;

entity NAND2Gate is
	
	port(	inPort0: 	in 	STD_logic	;
			inPort1:		in		STD_logic	;
			outPort: 	out	STD_logic)	;
			
end NAND2Gate;

architecture Structural of NAND2Gate is

signal s_Andout: STD_logic;

begin				

				and_gate: entity work.AND2Gate(Behavioral)
										port map(	inport0	=> inPort0,
												inPort1	=> inPort1,
												outPort	=>	s_Andout);
										
										
				not_gate: entity work.NotGate(Behavioral)	
										port map(inport	=>	s_Andout,
												outport => outport);

end Structural;												