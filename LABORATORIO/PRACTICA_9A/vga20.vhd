library ieee;
use ieee.std_logic_1164.all;

entity vga20 is
	port(
		input_clk: in std_logic;  --for this example is 50MHz
		pixel_clk: out std_logic;  --monitor del reloj a 25MHz
	
		R: out std_logic_vector (3 downto 0);
		G: out std_logic_vector (3 downto 0);
		B: out std_logic_vector (3 downto 0);
		--dipsw: in std_logic_vector (3 downto 0);
		
		HS: out std_logic;
		VS: out std_logic);
end;

architecture behavioral of vga20 is
	signal pix_clock: STD_LOGIC;
	signal clkl		 : STD_LOGIC;
	signal disp_ena : STD_LOGIC;  --display enable ('1' = display time, '0' = blanking time)
	signal column   : INTEGER;    --horizontal pixel coordinate
	signal row      : INTEGER;    --vertical pixel coordinate
	signal reset,cs : std_logic;
	signal reloj	 : std_logic;
	--signal dip		 : std_logic_vector (6 downto 0);
	signal cont	 	 : integer range 0 to 9;
	signal salida	 : std_logic_vector (6 downto 0);
	
	
	begin

	pixel_clk<=pix_clock;
	reset<='1';
	cs<='1';


	u1: entity work.Gen25MHz(behavior) port map(input_clk,pix_clock);
													
	u2: entity work.vga_controller (behavior) port map 
		 (pix_clock, '1', HS, VS, disp_ena, column,row);
																			
	u3: entity work.hw_image_generator (behavior) port map 
		 --(disp_ena, row, column, R, G, B, reloj);
		 --(disp_ena, row, column, R, G, B, dip, reloj);
		 (disp_ena, row, column, R, G, B, salida, reloj);	

	u4: entity work.relojlento (behavior) port map 
		 (input_clk,reloj);
		 
	--u5: entity work.seg7(arq) port map(dipsw,dip);
	
	u5: entity work.divf(arqdivf) port map(input_clk,clkl);
	
	u6: entity work.cont(arqcont) port map(clkl,cont);

	u7: entity work.seg7(arq) port map(cont,salida);
end;