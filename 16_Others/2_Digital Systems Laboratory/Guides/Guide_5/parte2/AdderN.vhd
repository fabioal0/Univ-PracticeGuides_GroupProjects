library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.Numeric_Std.all;

entity AdderN is
		generic(n	:	positive	:=	8);	
	port(a,b		:in std_logic_vector(n-1 downto 0);
			s  	:out std_logic_vector(n-1 downto 0));
end AdderN;

architecture Behavioral of AdderN is
begin

		s<=	std_logic_vector(unsigned(a) + unsigned(b));
		
end Behavioral;			

