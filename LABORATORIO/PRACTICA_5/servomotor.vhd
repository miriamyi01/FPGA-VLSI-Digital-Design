library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity servomotor is
port(clk: in std_logic;
	  sel: in std_logic_vector(4 downto 0);
	  control: buffer std_logic);
end;

architecture arqser of servomotor is
signal clkl, clkl1: std_logic;
signal duty: integer:=75;
begin 
	u1: entity work.divf(arqdivf) generic map(500) port map(clk,clkl);
	u2: entity work.divf(arqdivf) generic map(12500000) port map(clk,clkl1);
	u3: entity work.movimiento(arqmov) port map(clkl1,sel,duty);
	u4: entity work.senal(arqs) port map(clkl,duty,control);
end;
	