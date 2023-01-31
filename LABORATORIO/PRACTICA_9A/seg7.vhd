library ieee;
use ieee.std_logic_1164.all;

entity seg7 is
	port( entrada: integer;
			--entrada: in std_logic_vector (3 downto 0);
			salida: out std_logic_vector(6 downto 0));
end seg7;

architecture arq of seg7 is
	begin
		with entrada select
			salida<= 
				"1000000" when 0,
				"0111111" when 1,
				"0000110" when 2,
				"1100111" when 3,
				"1100110" when 4,
				"1101101" when 5,
				"1111101" when 6,
				"0000111" when 7,
				"1111111" when 8,
				"1110011" when 9,
				"0000000" when others;
end arq;