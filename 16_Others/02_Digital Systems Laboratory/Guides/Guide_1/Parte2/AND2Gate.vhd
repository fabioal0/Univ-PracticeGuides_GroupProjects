library IEEE;
use IEEE.STD_logic_1164.all;

entity AND2Gate is
		
		port(	inPort0 : in  STD_logic ;
				inPort1 : in  STD_logic ;
				outPort : out STD_logic);
end And2Gate;				

architecture behavioral of AND2Gate is

begin

outPort <= inPort0 and inport1;

end behavioral;
