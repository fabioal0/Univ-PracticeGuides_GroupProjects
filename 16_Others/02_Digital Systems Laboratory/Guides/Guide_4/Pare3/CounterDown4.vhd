library IEEE;
use IEEE.STD_Logic_1164.all;
use IEEE.Numeric_STD.all;

entity CounterDown4 is
		port(	clk		:	in		STD_Logic;
				count		:	out	STD_Logic_Vector(3 downto 0));
				
end CounterDown4;

architecture Behavioral of CounterDown4 is
					
		signal s_count: unsigned(3 downto 0):="1111";
begin
process(clk)
begin
			if(rising_edge(clk))then
				s_count<=s_count-1;
			
			
end if;		
end process;

			count<=STD_Logic_Vector(s_count)	;
end Behavioral;