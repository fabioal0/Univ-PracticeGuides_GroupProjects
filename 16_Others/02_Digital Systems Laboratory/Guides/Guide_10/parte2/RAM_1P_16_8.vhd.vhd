library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.Numeric_STD.all;

entity RAM_1_SWR_ARD is

	port(	Clk		:	in		STD_Logic;
			enable	:	in		STD_Logic;
			data		:	in		std_logic_vector(7 downto 0);
			adress	:	in		std_logic_vector(3 downto 0);
			read_d	:	out	std_logic_vector(7 downto 0));
			
end RAM_1_SWR_ARD;

architecture proc of RAM_1_SWR_ARD is

subtype palavra is STD_Logic_vector(7 downto 0);
type Memory is array(0 to 7) of palavra;
signal s_memory : Memory;

begin

	process(clk)
	begin
	
		if(rising_edge(clk))then
			
			if(enable='1')then
					
				s_memory(to_integer(unsigned(adress)))	<= data;
			
			end if;
			
		end if;	
		
		end process;
		
		read_d <=s_memory(to_integer(unsigned(adress)));

end proc;			
		