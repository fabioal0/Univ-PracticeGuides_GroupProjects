Library IEEE;
use IEEE.STD_Logic_1164.all;
use IEEE.Numeric_STD.all;


entity ROM_16_8 is

	port( address: in std_logic_vector (4 downto 0);
			dataOut: out std_logic_vector (7 downto 0));
end ROM_16_8;

architecture proc of ROM_16_8 is

subtype palavra is std_logic_vector (7 downto 0);
type TROM is array (0 to 15) of palavra;

constant memory: TROM  := (X"00", X"01",X"02",X"03",X"04", X"05",X"06",X"07", X"08", X"09",X"10",X"11",X"12", X"13",X"14",X"15");

begin

dataOut <= memory (to_integer(unsigned(address)));	

end proc;