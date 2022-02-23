LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY xor_2Bit IS
	PORT (dIn_1, dIn_2:	IN STD_LOGIC;
			dOut:				OUT STD_LOGIC);
END xor_2Bit;

ARCHITECTURE xor_2Bit_struct OF xor_2Bit IS
BEGIN
	dOut <= dIn_1 XOR dIn_2;
END xor_2Bit_struct;