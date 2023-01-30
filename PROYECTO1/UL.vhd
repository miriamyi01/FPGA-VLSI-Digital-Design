--Reyes Mendoza Miriam Guadalupe
--Guerrero Prado Issac Alexander
--No. Cuenta 315569131
--No. Cuenta 317231117

library ieee;
USE ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity UL is
Port (
		A,B: in std_logic_vector(2 downto 0);
		F1: out std_logic_vector(2 downto 0);
		--cout: out std_logic;
		S: in std_logic_vector(1 downto 0));
end;

architecture arq of UL is
	signal sand, sor, sxor, snot: std_logic_vector(2 downto 0);
	begin
		sand <= A AND B;
		sor <= A OR B;
		sxor <= A XOR B;
		SNOT <= NOT A;
		
		with S select F1 <= (sand) when "00",
								  (sor) when "01",
								  (sxor) when "10",
								  (snot) when "11";
end;