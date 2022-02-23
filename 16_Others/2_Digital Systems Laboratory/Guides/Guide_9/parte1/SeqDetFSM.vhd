Library IEEE;
use IEEE.STD_Logic_1164.all;

entity SeqDetFSM is

	port(	reset	:	in		STD_Logic;
			clk	:	in		STD_Logic;
			xin	:	in		STD_Logic;
			xout	:	out	STD_Logic);
		  
end SeqDetFSM;

architecture proc	of SeqDetFSM is

type fase is (E1,E2,E3,E4,E5);
signal sel, mudar : fase;

begin
process(clk)
begin

if (rising_edge(clk))then
	if(reset='1')then
	sel<=E1;
	else
	sel<=mudar;
	
end if;
end if;
end process;

process(sel,mudar,xin)
begin

case sel is

when E1  =>
	
	if (rising_edge(xin))then
	mudar<=E2;
	xout<='0';
	else 
	mudar<=E1;
	xout<='0';
	
end if;

when E2 =>

	if (xin='1')then
	mudar<=E2;
	xout<='0';
	
	else
	mudar<=E3;
	xout<='0';
	
end if;

when E3 =>
		
	if (xin='1')then
	mudar<=E2;
	xout<='0';
	
	else
	mudar<=E4;
	xout<='0';
	
end if;
	
when E4 =>

	if (xin='1')then
	mudar<=E5;
	xout<='1';
	
	else
	mudar<=E2;
	xout<='0';
	
end if;
	
when E5 =>

	if (xin='1')then
	mudar<=E2;
	xout<='0';
	
	else
	mudar<=E3;	
	xout<='0';

end if;

WHEN OTHERS => 
   xout <= 'X';
   report "Reach undefined state";	

end case;
end process;
end proc;	
		  