library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;


entity ShiftRegisterN is

		generic(N : positive := 8);

		port(	s_In		: 	in std_logic;
				clk		: 	in std_logic;
				dataOut	: 	out std_logic_vector(N-1 downto 0));

end ShiftRegisterN;

architecture Behavioral of ShiftRegisterN is

signal s_shiftReg		:	std_logic_vector(N-1 downto 0);

begin

process (clk)
begin
	if(rising_edge(clk))then
	

		s_shiftReg	<=	s_shiftReg(N-2 downto 0) & s_In;
	
	
	end if;
end process;
dataOut <=s_shiftReg;	
end Behavioral;