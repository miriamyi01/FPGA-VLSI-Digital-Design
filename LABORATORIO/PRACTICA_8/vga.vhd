library ieee;
use ieee.std_logic_1164.all;

entity VGA is
	port(
		input_clk: in std_logic;
		pixel_clk: out std_logic;
	
		R: out std_logic_vector (3 downto 0);
		G: out std_logic_vector (3 downto 0);
		B: out std_logic_vector (3 downto 0);
		dipsw: in std_logic_vector (1 downto 0);
		
		HS: out std_logic;
		VS: out std_logic);
end entity;

architecture arqVGA of vga is
	signal pix_clock: STD_LOGIC;
	signal disp_ena : STD_LOGIC;
	signal column   : INTEGER;
	signal row      : INTEGER;
	signal reset,cs : std_logic;
	signal reloj	 : std_logic;
	
	begin

	pixel_clk<=pix_clock;
	reset<='1';
	cs<='1';


	u1: entity work.Gen25MHz(arqGEN25MHz) port map(input_clk,pix_clock);
													
	u2: entity work.VGA_CORE (arqVGA_CORE) port map 
		 (pix_clock, '1', HS, VS, disp_ena, column,row);
																			
	u3: entity work.IMAGEN (arqIMAGEN) port map 
		 (disp_ena, row, column, R, G, B, dipsw, reloj);	

	u4: entity work.DIVF (arqDIVF) port map 
		 (input_clk,reloj);		 
end architecture;