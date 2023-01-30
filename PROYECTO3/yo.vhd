library ieee;
USE ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity yo is
Port (
		reset, echo: in std_logic;
		salaluLed: out std_logic_vector(2 downto 0);
		trig: out std_logic;
		salstatLed: out std_logic_vector(3 downto 0);
		B, sel: std_logic_vector(2 downto 0);
		Co: out std_logic;
		snlo: out std_logic_vector(3 downto 0);
		clk: in std_logic
		--cout2: out std_logic;
		);
end;

architecture arq of yo is
signal UA: std_logic_vector(2 downto 0);
signal UL: std_logic_vector(2 downto 0);
signal A: std_logic_vector(2 downto 0):="100";
signal salalu: std_logic_vector(3 downto 0);
signal cout: std_logic;
signal salA: std_logic_vector(3 downto 0);
signal clk1,clk2,clkl, clkl1, clkl2: std_logic;
signal estado: std_logic_vector(1 downto 0);
signal velocidad: integer := 250000;
signal dir: integer;
signal stat: std_logic_vector(3 downto 0):="0000";
signal control: std_logic:= '0'; 
signal stop, tr: std_logic;

begin


u1:entity work.unionSuma(arq) port map (A,B,sel(2),sel(1 downto 0),salalu(3),UA);

u2: entity work.UL(arq) port map (A,B,UL,sel(1 downto 0));   

u3: entity work.mul2x1(arq) port map (UA,UL,sel(2), salalu(2 downto 0));

process(sel)
begin

if (sel(2) = '0') then

	velocidad<=to_integer(signed(salalu));
	
	if(velocidad >= 6) then
	
		stat(3)<='1';
		
	else
	
		stat(3)<='0';
	end if;
	

else
	stat<=stat;
	
end if;
end process;

process(sel)
begin
	
if (sel(2) = '1') then

	stat(2 downto 0)<=salalu(2 downto 0);
	
else
	stat<=stat;
	
end if;
end process;

u4: entity work.divfm(arqdivfm) generic map(280000) port map(clk,clk1);

u5: entity work.divfm(arqdivfm) generic map(550000) port map(clk,clk2);

u6: entity work.entrada(arqen) port map(stat, clk1, clk2, dir,clkl);

u7: entity work.estados(arqest) port map(clkl, reset, stop, dir, estado);

u8: entity work.movimiento(arqmov) port map(estado, snlo);

u9: entity work.divf3(arqdivf) generic map(25) port map(clk, clkl1); --1Mhz -> 1us

salaluled<=salalu(2 downto 0);
salstatled<=stat;

u10: entity work.senal(arqsenal) port map(clk, clkl2); --pwm

u11: entity work.trigger(arqtrigger) port map(clkl2, reset, echo, tr);
trig<=tr;
u12: entity work.contador(arqcontador) port map(echo, clkl1, tr, stop);

end;