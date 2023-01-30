--Reyes Mendoza Miriam Guadalupe
--Guerrero Prado Issac Alexander
--No. Cuenta 315569131
--No. Cuenta 317231117

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

entity unionSuma is
port (
		a,b: in std_logic_vector(2 downto 0);
		cin: in std_logic;
		sel: in std_logic_vector(1 downto 0);
		cout: out std_logic;
		salsum: out std_logic_vector(2 downto 0)
);
end;

architecture arq of unionsuma is
	signal salmuxb: std_logic_vector(2 downto 0);
	begin
		u1: entity work.mul2x1sum(arq) port map (b, sel, salmuxb);
		u2: entity work.suma(arq) port map (a,salmuxb, cin, cout, salsum);
end;