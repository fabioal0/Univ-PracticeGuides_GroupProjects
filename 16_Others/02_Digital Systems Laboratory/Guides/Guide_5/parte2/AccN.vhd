library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity AccN is
		generic(n	:	positive	:=	8);	
		
	port(	clka		:	in		STD_Logic;
			reset		:	in		STD_Logic;
			enable	:	in		STD_Logic;
			d			:	in		STD_Logic_Vector(n-1 downto 0);
			m			:	out	STD_Logic_Vector(n-1 downto 0));
	
end AccN;

architecture Structural of AccN is

	signal saidaentrada,final :std_logic_vector(n-1 downto 0);

begin

	m<=final;
	
bit0: entity work.AdderN(Behavioral)
			
			generic map( n => 8)

			port map(s	=> saidaentrada,
						a	=>	d,
						b	=> final);
				
			
				
bit1: entity work.RegisterN(Shell)
		
			generic map( n => 8)
			
			port map(set	=>	enable,
						clk	=>	clka,
						reset => reset,
						k 		=> final,
						d 		=> saidaentrada);	
				
			


end Structural;			


