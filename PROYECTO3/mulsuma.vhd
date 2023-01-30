--Reyes Mendoza Miriam Guadalupe
--Guerrero Prado Issac Alexander
--No. Cuenta 315569131
--No. Cuenta 317231117

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

entity mul2x1sum is
port(
		b: in std_logic_vector(2 downto 0);
		sel: in std_logic_vector(1 downto 0);
		salmux: out std_logic_vector(2 downto 0)

);
end;

architecture arq of mul2x1sum is
	begin
	with sel select

		salmux<="000" when "00",
						b when "10",
				  not b when "01",
				  "111" when "11";			  
end;