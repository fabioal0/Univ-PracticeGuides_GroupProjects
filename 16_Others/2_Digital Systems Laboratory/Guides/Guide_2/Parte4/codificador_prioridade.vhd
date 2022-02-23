Library IEEE;
use IEEE.STD_Logic_1164.all;
entity codificador_prioridade is
		
		port(input: in STD_Logic_vector(3 downto 0);
				valid: out STD_Logic;
			  output: out STD_Logic_vector(1 downto 0));
			  
end codificador_prioridade;

architecture proc of codificador_prioridade is

begin
process(input)
begin
if(input="0001") then			  
output<="00";
valid<='1';
elsif(input="0010") then
output<="01";
valid<='1';
elsif(input="0100") then
output<="10";
valid<='1';
elsif(input="1000") then
output<="11";
valid<='1';
else
output<="--";
valid<='0';
end if;
end process;
end proc;