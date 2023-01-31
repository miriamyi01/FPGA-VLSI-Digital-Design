library ieee;
use ieee.std_logic_1164.all;

entity controlTREN is
	port(clk, estacion, alto, emergencia, direccion: in std_logic;
		  alto2, alto1, izquierda, derecha: out std_logic;
		  hex5,hex4,hex3,hex2,hex1,hex0: out std_logic);
end entity;

architecture arqTREN of controlTREN is
		signal clkl,cont: std_logic;
	
	begin
		u1: entity work.DIVF(arqDIVF) port map(clk,clkl);
		u2: entity work.STATES(arqSTATES) port map (clkl,estacion,alto,emergencia, 
													 direccion,cont,alto2,alto1,izquierda,derecha);
		u3: entity work.MOORE(arqMOORE) port map (clkl,cont,direccion,"000",hex5);
		u4: entity work.MOORE(arqMOORE) port map (clkl,cont,direccion,"001",hex4);
		u5: entity work.MOORE(arqMOORE) port map (clkl,cont,direccion,"010",hex3);
		u6: entity work.MOORE(arqMOORE) port map (clkl,cont,direccion,"011",hex2);
		u7: entity work.MOORE(arqMOORE) port map (clkl,cont,direccion,"100",hex1);
		u8: entity work.MOORE(arqMOORE) port map (clkl,cont,direccion,"101",hex0);
end architecture;