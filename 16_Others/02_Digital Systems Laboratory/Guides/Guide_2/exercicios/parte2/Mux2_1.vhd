library IEEE;
use IEEE.STD_LoGIC_1164.all;

entity Mux2_1 is

		port(sel     : in std_logic;
			  dataln0  : in std_logic;
			  dataln1  : in std_logic;
			  dataOut  : out std_logic);
end Mux2_1;

architecture BehavEquations of Mux2_1 is

signal s_and0Out, s_and1Out : std_logic; 

begin
				
 s_and0Out <=   not sel and dataln0;
 s_and1Out <= 		  sel and dataln1;     
 dataOut    <= s_and0Out or s_and1Out;
		
end BehavEquations;		