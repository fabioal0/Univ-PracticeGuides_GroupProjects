library IEEE;
use IEEE.STD_Logic_1164.all;
use IEEE.Numeric_Std.all;

entity CmpN is
		generic(N	:	positive	:=	8);
		
			port(	input0			:	in 	std_logic_vector(N-1 downto 0);
					input1			:	in		std_logic_vector(N-1 downto 0);
					equal				:	out	std_logic;
					notEqual			:	out	std_logic;
					ltSigned			:	out	std_logic;
					ltUnssigned		:	out	std_logic);
					
end CmpN;

architecture Behavioral of	CmpN is				
begin 

	equal				<=	'1'	when	(input0	=	input1)	else
							'0';
	notEqual			<=	'1'	when	(input0	/=	input1)	else
							'0';
	ltSigned			<=	'1'	when	(signed(input0)	<	signed(input1))	else
							'0';
	ltUnssigned		<=	'1'	when	(signed(input0)	<	signed(input1))	else
							'0';
						
end Behavioral;						