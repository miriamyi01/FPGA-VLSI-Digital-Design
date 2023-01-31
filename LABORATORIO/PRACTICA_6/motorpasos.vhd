library ieee;
use ieee.std_logic_1164.all;

entity motorpasos is
port(clk: in std_logic;
	  stat: in std_logic_vector(3 downto 0);
	  snlo: out std_logic_vector(3 downto 0));
end;

architecture arqmp of motorpasos is 
signal clk1,clk2,clkl: std_logic;
signal estado: std_logic_vector(1 downto 0);
signal dir: integer;

begin
u1: entity work.divfm(arqdivfm) generic map(280000) port map(clk,clk1);
u2: entity work.divfm(arqdivfm) generic map(550000) port map(clk,clk2);
u3: entity work.entrada(arqen) port map(stat, clk1, clk2, dir,clkl);
u4: entity work.estados(arqest) port map(clkl, dir, estado);
u5: entity work.movimiento(arqmov) port map(estado, snlo);
end;

