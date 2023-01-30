--Reyes Mendoza Miriam Guadalupe
--Guerrero Prado Issac Alexander
--No. Cuenta 315569131
--No. Cuenta 317231117

library ieee;
use ieee.std_logic_1164.all;

entity entrada is
port(stat: in std_logic_vector(3 downto 0);
	  clk1,clk2: in std_logic;
	  dir: out integer;
	  clkl: out std_logic);
end;

architecture arqen of entrada is
	begin
	with stat select
		dir <= 1 when "0001",
				 2 when "0010",
				 1 when "0101",
				 2 when "1000",
				 0 when others;
	with stat select
		clkl <= clk1 when "0001",
				  clk1 when "0011",
				  clk2 when "0100",
				  clk2 when "1000",
				  '0' when others;
end;