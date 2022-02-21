LIBRARY ieee;
LIBRARY simpleLogic;
USE ieee.std_logic_1164.STD_LOGIC, ieee.std_logic_1164.STD_LOGIC_VECTOR;
USE simpleLogic.all;

ENTITY Encoder IS
	PORT (dataIn: 	IN	 STD_LOGIC_VECTOR (3 downto 0);
			dataOut:	OUT STD_LOGIC_VECTOR (7 downto 0));
END Encoder;

ARCHITECTURE struct OF Encoder IS
	SIGNAL	s_level_1:	STD_LOGIC_VECTOR (3 downto 0);
	SIGNAL	s_level_2:	STD_LOGIC_VECTOR (3 downto 0);
	COMPONENT xor_2Bit
		PORT (dIn_1, dIn_2:	IN		STD_LOGIC;
				dOut: 			OUT	STD_LOGIC);
	END COMPONENT;
BEGIN
	
	-- dataIn(0) = m4
	-- dataIn(1) = m3
	-- dataIn(2) = m2
	-- dataIn(3) = m1

-- Level 1

	out_bit_1:		xor_2Bit	PORT MAP (dataIn(0),dataIn(3),s_level_1(0));
	out_bit_2:		xor_2Bit	PORT MAP (dataIn(0),dataIn(2),s_level_1(1));
	out_bit_4:		xor_2Bit	PORT MAP	(dataIn(0),dataIn(1),s_level_1(2));
	out_bit_7_1:	xor_2Bit	PORT MAP (dataIn(1),dataIn(3),s_level_1(3));

-- Level 2

	out_bit_3:		xor_2Bit	PORT MAP	(s_level_1(0),dataIn(2),s_level_2(0));
	out_bit_5:		xor_2Bit	PORT MAP	(s_level_1(0),dataIn(1),s_level_2(1));
	out_bit_6:		xor_2Bit	PORT MAP (s_level_1(1),dataIn(1),s_level_2(2));
	
	out_bit_7_2:	xor_2Bit	PORT MAP (s_level_1(1),s_level_1(3),s_level_2(3));
	
	
	dataOut(7) <= dataIn(0);			-- x0
	dataOut(6) <= s_level_1(0);		-- x1
	dataOut(5) <= s_level_1(1);		-- x2
	dataOut(3) <= s_level_1(2);		-- x4
	dataOut(4) <= s_level_2(0);		-- x3
	dataOut(2) <= s_level_2(1);		-- x5
	dataOut(1) <= s_level_2(2);		-- x6
	dataOut(0) <= s_level_2(3);		-- x7
	
END struct;