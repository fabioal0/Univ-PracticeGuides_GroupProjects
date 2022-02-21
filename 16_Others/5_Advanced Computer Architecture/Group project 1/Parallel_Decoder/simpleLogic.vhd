LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY xor_2bit IS
  PORT (a, b: IN STD_LOGIC;
        res:   OUT STD_LOGIC);
END xor_2bit;

ARCHITECTURE logicFunction OF xor_2bit IS
BEGIN
  res <= a XOR b;
END logicFunction;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY and_2bit IS
  PORT (a, b: IN STD_LOGIC;
        res:   OUT STD_LOGIC);
END and_2bit;

ARCHITECTURE logicFunction OF and_2bit IS
BEGIN
  res <= a AND b;
END logicFunction;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY or_2bit IS
  PORT (a, b: IN STD_LOGIC;
        res:   OUT STD_LOGIC);
END or_2bit;

ARCHITECTURE logicFunction OF or_2bit IS
BEGIN
  res <= a OR b;
END logicFunction;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY nand_2bit IS
  PORT (a, b: IN STD_LOGIC;
        res:   OUT STD_LOGIC);
END nand_2bit;

ARCHITECTURE logicFunction OF nand_2bit IS
BEGIN
  res <= a NAND b;
END logicFunction;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY nor_2bit IS
  PORT (a, b: IN STD_LOGIC;
        res:   OUT STD_LOGIC);
END nor_2bit;

ARCHITECTURE logicFunction OF nor_2bit IS
BEGIN
  res <= a NOR b;
END logicFunction;