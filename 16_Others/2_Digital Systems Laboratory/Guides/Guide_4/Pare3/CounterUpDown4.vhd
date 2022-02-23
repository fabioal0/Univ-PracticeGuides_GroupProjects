library IEEE;
use	IEEE.STD_Logic_1164.all;
use IEEE.Numeric_STD.all;

entity CounterUpDown4 is
		port(	clk		:	in		STD_Logic;
				reset		:	in 	STD_Logic;
				upDown	:	in 	STD_Logic;
				count		:	out	STD_Logic_Vector(3 downto 0));
				
end CounterUpDown4;

architecture Behavioral of CounterUpDown4 is
					
		signal s_count: unsigned(3 downto 0);
begin
process(clk)
begin
			if(rising_edge(clk))then

				if(reset= '1')then
				s_count<="0000";	
			
				if(upDown='1')then
				s_count<=s_count-1;
				
				elsif(upDown='0')then
				s_count<=s_count+1;
				
			
end if;
end if;				
end if;		
end process;

			count<=STD_Logic_Vector(s_count)	;
end Behavioral;