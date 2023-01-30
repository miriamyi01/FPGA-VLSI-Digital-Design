--Reyes Mendoza Miriam Guadalupe
--Guerrero Prado Issac Alexander
--No. Cuenta 315569131
--No. Cuenta 317231117

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity mul2x1 is
port(
		ua,ul: in std_logic_vector(2 downto 0);
		sel: in std_logic;
		salmux: out std_logic_vector(2 downto 0)
);
end;

architecture arq of mul2x1 is
begin
with sel select
		salmux<=ua when '0',
				  ul when '1';

end;