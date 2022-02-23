library IEEE;
use	IEEE.STD_Logic_1164.all;

entity RegisterN is
		generic(n	:	positive	:=	8);	
		Port(	clk	:	in		STD_Logic;
				set	:in		STD_Logic;
				reset	:in		STD_Logic;
				d	:	in		STD_Logic_Vector(n-1 downto 0);
				k		:	out	STD_Logic_Vector(n-1 downto 0));
		
end RegisterN;		

architecture Shell of	RegisterN is
begin

process(clk)
		begin
		
		if(rising_edge(clk))then
		
		if(reset ='1')then
		k<=(others => '0');
		
		elsif(set	= '1')then
		k<=d;
		
end	if;
end	if;
end process;
end Shell;		