library ieee;
use ieee.std_logic_1164.all;

entity SS7_4 is
port(a: in std_logic_vector(3 downto 0);
	  b,c,d: out std_logic_vector(6 downto 0));
end entity SS7_4;

architecture arqSS7_4 of SS7_4 is
	begin
		with a select
		b <= "1000000" when "0000", ---0
			  "1111001" when "0001", ---1
			  "0100100" when "0010", ---2
			  "0110000" when "0011", ---3
			  "0011001" when "0100", ---4
			  "0010010" when "0101", ---5
			  "0000010" when "0110", ---6
			  "1111000" when "0111", ---7
			  "0000000" when "1000", ---8
			  "0010000" when "1001", ---9
			  "0001000" when "1010", ---A
			  "0000000" when "1011", ---B
			  "1000110" when "1100", ---C
			  "1000000" when "1101", ---D
			  "0000110" when "1110", ---E
			  "0001110" when "1111", ---F
			  "1111111" when others;
		
		with a select		 
		c <= "0110111" when others;
		
		with a select		 
		d <= "0110111" when "0000", ---0
			  "0010010" when "0001", ---1
			  "0010010" when "0010", ---2
			  "0111111" when "0011", ---3
			  "0001000" when "0100", ---4
			  "1000000" when "0101", ---5
			  "0100010" when "0110", ---6
			  "1001000" when "0111", ---7
			  "0010010" when "1000", ---8
			  "0111111" when "1001", ---9
			  "0010010" when "1010", ---10
			  "0110111" when "1011", ---11
			  "0001000" when "1100", ---12
			  "1000000" when "1101", ---13
			  "0100010" when "1110", ---14
			  "1001000" when "1111", ---15
			  "1111111" when others;
		
end architecture arqSS7_4;