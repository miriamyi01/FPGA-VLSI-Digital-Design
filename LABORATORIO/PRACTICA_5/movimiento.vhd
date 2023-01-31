library ieee;
use ieee.std_logic_1164.all;

entity movimiento is
port(clk: in std_logic;
	  sel: in std_logic_vector(4 downto 0);
	  ancho: buffer integer);
end;

architecture arqmov of movimiento is
signal valor: integer := 75;
signal ancho1, ancho2: integer;
signal c: std_logic := '0';

begin
	u1: entity work.cont(arqcont) generic map(50,100) port map(clk,ancho1,c);
	u2: entity work.cont(arqcont) generic map(100,50) port map(clk,ancho2,c);

	process (sel)
		begin
			case sel is
				
				when "00001" =>
				c<='0';
				ancho<=50;
				valor<=50;
				
				when "00010" =>
				c<='0';
				ancho<=90;
				valor<=100;
				
				when "00100" =>
				c<='1';
				ancho<=ancho1;
				valor<=ancho;
				
				when "01000" =>
				c<='1';
				ancho<=ancho2;
				valor<=ancho;
				
				when "10000" =>
				c<='0';
				ancho<=75;
				valor<=75;
				
				when others =>
				c<='0';
				ancho<=valor;
				
		end case;
	end process;
end;
