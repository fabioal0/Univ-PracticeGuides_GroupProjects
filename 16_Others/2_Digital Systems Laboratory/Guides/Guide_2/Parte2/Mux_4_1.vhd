Library IEEE;
use IEEE.STD_Logic_1164.all;

entity mux_4_1 is
		
		port(inputs: in STD_Logic_Vector(3 downto 0);
				sel:	in STD_Logic_Vector(1 downto 0);
				enable: in STD_Logic;
				output: out STD_Logic);

end mux_4_1;

architecture equacional of mux_4_1 is
		
		signal ina:STD_Logic_vector(3 downto 0);
		
begin
	
	ina(0)<=inputs(0) and not sel(0) and not  sel(1); 
	ina(1)<=inputs(1) and not sel(0) and 		sel(1); 
	ina(2)<=inputs(2) and  	  sel(0) and not  sel(1); 
	ina(3)<=inputs(3) and  	  sel(0) and  		sel(1); 

	output<= ina(0) or ina(1) or ina(2) or ina(3);
	
end equacional; 	

architecture assign of mux_4_1 is

begin

output<= inputs(0) when (sel="00") else
			inputs(1) when (sel="01") else
			inputs(2) when (sel="10") else
			inputs(3); 
			
end assign;	

architecture proc of mux_4_1 is
begin
process(inputs,sel)
begin
if(sel="00")then
		output<=inputs(0);
elsif(sel="01")then
		output<=inputs(1);
elsif(sel="10")then
		output<=inputs(2);
else
		output<=inputs(3);
		
end if;
end process;
end proc;		