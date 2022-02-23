library IEEE;
use	IEEE.STD_Logic_1164.all;

entity Register8 is
		Port(	clk	:	in		STD_Logic;
				set	:in		STD_Logic;
				d	:	in		STD_Logic_Vector(7 downto 0);
				k		:	out	STD_Logic_Vector(7 downto 0));
		
end Register8;		

architecture Shell of	Register8 is
begin

process(clk)
		begin
		if(rising_edge(clk))then
		
		if(set	= '1')then
		k<=d;

end	if;
end	if;
end process;
end Shell;		