library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.Numeric_STD.all;

entity RAM_1P_Demo is

	port(	KEY		:	in		STD_Logic_vector(0 downto 0);
			SW			:	in		std_logic_vector(12 downto 0);
			LEDR		:	out	std_logic_vector(7 downto 0));
			
end RAM_1P_Demo;

architecture proc of RAM_1P_Demo is

begin


atr: entity work.RAM_1_SWR_ARD(proc)

		port map(Clk	=> not KEY(0),
					enable=> SW(12),
					data	=>	SW(11 DOWNTO 4),
					adress=>	SW(3 DOWNTO 0),
					read_d=>	LEDR);
end proc;