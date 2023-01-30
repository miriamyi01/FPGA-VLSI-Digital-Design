--Reyes Mendoza Miriam Guadalupe
--Guerrero Prado Issac Alexander
--No. Cuenta 315569131
--No. Cuenta 317231117

library ieee;
use ieee.std_logic_1164.all;

entity movimiento is
port(estado: in std_logic_vector(1 downto 0);
	  snlo: out std_logic_vector(3 downto 0));
end;

architecture arqmov of movimiento is
	begin 
	with estado select
	snlo <= "1100" when "00",
			  "0110" when "01",
			  "0011" when "10",
			  "1001" when "11";
end;