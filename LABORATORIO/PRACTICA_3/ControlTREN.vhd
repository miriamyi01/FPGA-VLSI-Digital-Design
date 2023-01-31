library ieee;
use ieee.std_logic_1164.all;

entity controlTREN is
	port(clk, estacion, alto, emergencia, direccion: in std_logic;
		  alto2, alto1, izquierda, derecha: out std_logic;
		  HEX:out std_logic_vector(6 downto 0));
end entity;

architecture arqTREN of controlTREN is
		signal clkl, sal: std_logic;
	
	begin
		u1: entity work.DIVF(a) port map (clk,clkl);
		u2: entity work.states(arqsts) port map (clkl,estacion,alto,emergencia,direccion,s,alto2,alto1,izq,der);
		u3: entity work.MOORE(arqMOORE) port map (clkl,sal,direccion,"000",HEX);
		u4: entity work.MOORE(arqMOORE) port map (clkl,sal,direccion,"001",HEX);
		u5: entity work.MOORE(arqMOORE) port map (clkl,sal,direccion,"010",HEX);
		u6: entity work.MOORE(arqMOORE) port map (clkl,sal,direccion,"011",HEX);
		u7: entity work.MOORE(arqMOORE) port map (clkl,sal,direccion,"100",HEX);
		u8: entity work.MOORE(arqMOORE) port map (clkl,sal,direccion,"101",HEX);
end architecture;