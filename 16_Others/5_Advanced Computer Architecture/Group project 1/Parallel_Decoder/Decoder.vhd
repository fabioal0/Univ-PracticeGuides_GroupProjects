LIBRARY ieee;
LIBRARY simpleLogic;
USE ieee.std_logic_1164.STD_LOGIC, ieee.std_logic_1164.STD_LOGIC_VECTOR;
USE simpleLogic.all;

ENTITY Decoder IS
  PORT (d: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
        c: OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
		  valid: OUT STD_LOGIC);
END Decoder;

ARCHITECTURE structure OF Decoder IS
  SIGNAL l1: STD_LOGIC_VECTOR (11 DOWNTO 0);
  SIGNAL l2: STD_LOGIC_VECTOR (13 DOWNTO 0);
  SIGNAL l3: STD_LOGIC_VECTOR (11 DOWNTO 0);
  SIGNAL l4: STD_LOGIC_VECTOR (5 DOWNTO 0);
  SIGNAL l5: STD_LOGIC_VECTOR (2 DOWNTO 0);
  SIGNAL l6: STD_LOGIC_VECTOR (1 DOWNTO 0);
  SIGNAL l7: STD_LOGIC;

  COMPONENT xor_2bit
	PORT (a, b: IN STD_LOGIC;
        res:   OUT STD_LOGIC);
	END COMPONENT;

	COMPONENT and_2bit 
	PORT (a, b: IN STD_LOGIC;
        res:   OUT STD_LOGIC);
	END COMPONENT;

	COMPONENT or_2bit
	  PORT (a, b: IN STD_LOGIC;
			  res:  OUT STD_LOGIC);
	END COMPONENT;
			
	COMPONENT nand_2bit 
	  PORT (a, b: IN STD_LOGIC;
			  res:   OUT STD_LOGIC);
	END COMPONENT;

	COMPONENT nor_2bit
	  PORT (a, b: IN STD_LOGIC;
			  res:   OUT STD_LOGIC);
	END COMPONENT;
	
BEGIN

--	Level 1

  m1_xor1: 		xor_2bit PORT MAP (d(7), d(6),l1(0));
  m1_xor2: 		xor_2bit PORT MAP (d(5), d(4),l1(1));
  m1_xor3: 		xor_2bit PORT MAP (d(3), d(2),l1(2));
  m1_xor4: 		xor_2bit PORT MAP (d(1), d(0),l1(3));
  
  m2_xor1: 		xor_2bit PORT MAP (d(7), d(5),l1(4));
  m2_xor2: 		xor_2bit PORT MAP (d(6), d(4),l1(5));
  m2_xor3: 		xor_2bit PORT MAP (d(3), d(1),l1(6));
  m2_xor4: 		xor_2bit PORT MAP (d(2), d(0),l1(7));
  
  m3_xor1: 		xor_2bit PORT MAP (d(7), d(3),l1(8));
  m3_xor2: 		xor_2bit PORT MAP (d(6), d(2),l1(9));
  m3_xor3: 		xor_2bit PORT MAP (d(5), d(1),l1(10));
  m3_xor4: 		xor_2bit PORT MAP (d(4), d(0),l1(11));
  
--	Level 2
 
  m1_and1: 		and_2bit PORT MAP (l1(3),l1(2), l2(0));
  m1_and2: 		and_2bit PORT MAP (l1(1),l1(0), l2(1));
  m1_or1	: 		or_2bit  PORT MAP (l1(3),l1(2), l2(2));
  m1_or2	: 		or_2bit  PORT MAP (l1(1),l1(0), l2(3));
  
  m2_and1: 		and_2bit PORT MAP (l1(7),l1(6), l2(4));
  m2_and2: 		and_2bit PORT MAP (l1(5),l1(4), l2(5));
  m2_or1	: 		or_2bit  PORT MAP (l1(7),l1(6), l2(6));
  m2_or2	: 		or_2bit  PORT MAP (l1(5),l1(4), l2(7));
  
  m3_and1: 		and_2bit PORT MAP (l1(11),l1(10), l2(8));
  m3_and2: 		and_2bit PORT MAP (l1(9),l1(8), l2(9));
  m3_or1	: 		or_2bit  PORT MAP (l1(11),l1(10), l2(10));
  m3_or2	: 		or_2bit  PORT MAP (l1(9),l1(8), l2(11));
  
  m4_xor1:  		xor_2bit PORT MAP (l1(1),l1(2),l2(12));
  m4_xor2:  		xor_2bit PORT MAP (l1(5), l1(6),l2(13));

-- Level 3

  m1_and3: 		and_2bit PORT MAP (l2(0),l2(3), l3(0));
  m1_and4: 		and_2bit PORT MAP (l2(1),l2(2), l3(1));
  m1_or3:  		or_2bit  PORT MAP (l2(3),l2(0), l3(2));
  m1_or4:  		or_2bit  PORT MAP (l2(2),l2(1), l3(3));

  m2_and3: 		and_2bit PORT MAP (l2(4),l2(7), l3(4));
  m2_and4: 		and_2bit PORT MAP (l2(5),l2(6), l3(5));
  m2_or3:  		or_2bit  PORT MAP (l2(4),l2(7), l3(6));
  m2_or4:  		or_2bit  PORT MAP (l2(5),l2(6), l3(7));
  
  m3_and3: 		and_2bit PORT MAP (l2(8),l2(11), l3(8));
  m3_and4: 		and_2bit PORT MAP (l2(9),l2(10), l3(9));
  
  m4_xor3:  		xor_2bit PORT MAP (l2(12),l1(3),l3(10));
  m4_xor4:  		xor_2bit PORT MAP (l2(13),l1(7),l3(11));
  
-- Level 4
  
  m1_or5:  		or_2bit  PORT MAP (l3(0),l3(1),l4(0));
  m1_nand1: 	nand_2bit PORT MAP (l3(2),l3(3),l4(1));
  
  m2_or5:  		or_2bit  PORT MAP (l3(4),l3(5),l4(2));
  m2_nand1: 	nand_2bit PORT MAP (l3(6),l3(7),l4(3));
  
  m3_or5:  		or_2bit  PORT MAP (l3(8),l3(9),l4(4));

  m4_nor1:  	nor_2bit  PORT MAP (l3(10),l3(11),l4(5));

-- Level 5  
    
  m1_or6:  		or_2bit  PORT MAP (l4(0),l4(1),l5(0));
  
  m2_or6:  		or_2bit  PORT MAP (l4(2),l4(3),l5(1));
    
  m4_xor5:		xor_2bit PORT MAP (l1(0),l4(0),l5(2));
  
-- Level 6

  m1m2_and1: 	and_2bit PORT MAP (l5(0),l5(1),l6(0));
  
  m4_and1:		and_2bit PORT MAP (l4(5),l5(2),l6(1));
  
-- Level 7
  
  m4_xor6: 		xor_2bit PORT MAP (d(7),l6(1),l7);

  
  valid <= l6(0);
  c(3)  <= l4(0);
  c(2)  <= l4(2);
  c(1)  <= l4(4); 
  c(0)  <= l7;
  
END structure;
