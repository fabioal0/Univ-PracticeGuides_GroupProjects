library IEEE;
use IEEE.STD_logic_1164.all;

entity LogicUnit is
		
		port(	input0	:	in		STD_logic;
				input1	:	in		STD_logic;
				invOut	:	out	STD_logic;	
				andOut	:	out	STD_logic;
				orOut		:	out	STD_logic;
				xorOut	:	out	STD_logic;
				nandOut	:	out	STD_logic;
				norOut	:	out	STD_logic);
				
end LogicUnit;

architecture Equacional of LogicUnit is
begin

						invOut	<=				not	input0;
						andOut	<=	input0	and	input1;
						orOut		<=	input0	or		input1;	
						xorOut	<=	input0	xor	input1;
						nandOut	<=	input0	nand	input1;
						norOut	<=	input0	nor	input1;

end Equacional;						