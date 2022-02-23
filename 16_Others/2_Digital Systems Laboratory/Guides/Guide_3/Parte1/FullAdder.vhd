Library IEEE;
use IEEE.STD_Logic_1164.all;
use IEEE.Numeric_STD.all;

entity FullAdder is
		generic(N: positive:=4);
port (sel: in STD_Logic;
		op1: in STD_Logic_vector(N-1 downto 0);
		op2: in STD_Logic_vector(N-1 downto 0);
		result: out STD_Logic_vector(N-1 downto 0);
		carryout: out STD_Logic);
end FullAdder;

architecture proc of FullAdder is

signal ope1,ope2,res:unsigned(N downto 0);

begin

ope1<='0'& unsigned (op1);
ope2<='0' & unsigned (op2);
res<= (ope1 + ope2) when (sel='0') else (ope1 - ope2);
result<=STD_Logic_vector(res(N-1 downto 0));
carryout<=STD_Logic(res(N));


end proc;