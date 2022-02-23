library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;


entity ShiftRegister_Demo is

		generic(N : positive := 8);
		
		port(CLOCK_50	:	in 	STD_Logic;
				SW			:	in		STD_Logic_Vector(0 downto 0);
				LEDR		:	out	STD_Logic_Vector(N-1 downto 0));

end ShiftRegister_Demo;					

architecture behavioral of ShiftRegister_Demo is

signal clkIn 	:	std_logic;

begin

		freq:entity work.freqDivider(Behavioral) 
		generic map(DIV_FACTOR => 25E6)
		
		port map(clkIn	=>CLOCK_50,
					clkOut => clkIn);
		
		desl:entity work.ShiftRegisterN(Behavioral) 
					
					generic map (N	=>	8)
					
		port map(s_In 		=> SW(0),
					clk		=>clkIn,
					dataOut	=>LEDR(N-1 downto 0));
					
					
end	behavioral;				
					