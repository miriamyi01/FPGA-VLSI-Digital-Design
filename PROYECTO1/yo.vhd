--Reyes Mendoza Miriam Guadalupe
--Guerrero Prado Issac Alexander
--No. Cuenta 315569131
--No. Cuenta 317231117

library ieee;
USE ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity yo is
Port (
		stop: in std_logic;
		salaluLed: out std_logic_vector(2 downto 0);
		B, sel: std_logic_vector(2 downto 0);
		Co: out std_logic;
		snlo: out std_logic_vector(3 downto 0);
		clk: in std_logic;
		salstat: out std_logic_vector(3 downto 0)
		--cout: out std_logic;
		);
end;

architecture arq of yo is
	signal UA: std_logic_vector(2 downto 0);
	signal UL: std_logic_vector(2 downto 0);
	signal A: std_logic_vector(2 downto 0):="100";
	signal salalu: std_logic_vector(3 downto 0);
	signal cout: std_logic;
	signal salA: std_logic_vector(3 downto 0);
	signal clk1,clk2,clkl: std_logic;
	signal estado: std_logic_vector(1 downto 0);
	signal velocidad: integer := 250000;
	signal dir: integer;
	signal stat: std_logic_vector(3 downto 0):="0000";
	signal control: std_logic:= '0'; 

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
		u7: entity work.estados(arqest) port map(clkl, stop, dir, estado);
		u8: entity work.movimiento(arqmov) port map(estado, snlo);

		salaluled<=salalu(2 downto 0);
		salstat<=stat;
end;