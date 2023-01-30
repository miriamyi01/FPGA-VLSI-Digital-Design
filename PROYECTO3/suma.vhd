--Reyes Mendoza Miriam Guadalupe
--Guerrero Prado Issac Alexander
--No. Cuenta 315569131
--No. Cuenta 317231117

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

entity suma is
port (
		a,b: in std_logic_vector(2 downto 0);
		cin: in std_logic;
		cout: out std_logic;
		salsum: out std_logic_vector(2 downto 0)
);
end;

architecture arq of suma is
	signal mid: std_logic_vector(3 downto 0);
		begin
		mid<= ('0' & a) + ('0' & b) + cin;
		cout<= mid(3);
		salsum<= mid(2 downto 0);	
end;