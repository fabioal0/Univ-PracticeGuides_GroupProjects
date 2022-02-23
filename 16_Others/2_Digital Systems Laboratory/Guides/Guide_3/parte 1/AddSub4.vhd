library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity AddSub4 is
	port(a,b : in std_logic_vector(3 downto 0);
			sub	:in std_logic;
			s		:out std_logic_vector(3 downto 0);
			cout  :out std_logic);
end AddSub4;

architecture Structural of AddSub4 is

signal s_b:std_logic_vector(3 downto 0);



begin
s_b<= b when (sub ='0') else not b;

addsub: entity work.Adder4(Structural)
	port map(a 		=> a,
				b		=>	s_b,
				cout  =>cout,
				s 		=>s,
				cin	=> sub);
				


			


end Structural;			

