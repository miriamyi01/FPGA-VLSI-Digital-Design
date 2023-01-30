library ieee;
use ieee.std_logic_1164.all;

entity CONTADOR is
port(clk, reset: in std_logic;
	  pause: in std_logic;
	  salida: out std_logic_vector(3 downto 0));
end entity CONTADOR;

architecture arqCONTADOR of CONTADOR is
	signal clkl: std_logic;
	
	begin
		u1: entity work.DIVF(arqDIVF) port map(clk,clkl);
		u2: entity work.CONT(arqCONT) port map(clkl,reset,pause,salida);
end architecture arqCONTADOR;