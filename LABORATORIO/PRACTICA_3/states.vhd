library ieee;
use ieee.std_logic_1164.all;

entity STATES is
	port(clk, estacion, alto, emergencia,
		  direccion: in std_logic;
		  alto2, alto1, izquierda, derecha: 
		  out std_logic);
end entity;

architecture arqSTATES of STATES is
	subtype estados is std_logic; --type subtype
	constant s0: estados := '0';
	constant s1: estados := '1';
	signal estado_actual, estado_siguiente: estados;
	
	begin
		process(clk)
			begin
				if(rising_edge(clk)) then
					estado_actual <= estado_siguiente;
				end if;
		end process;
		
		process(estado_actual)
			begin
				case estado_actual is
					when s0 =>
						if(estacion = '1') then
							estado_siguiente <= s1;
							alto2 <= '1';
							alto1 <= '0';
						else
							estado_siguiente <= s0;
							alto2 <= '0';
							alto1 <= '0';
						end if;
					
					when s1 =>
						if(alto = '1') then
							estado_siguiente <= s1;
							alto2 <= '1';
							alto1 <= '0';
						elsif (emergencia = '1') then
							alto2 <= '1';
							alto1 <= '1';
							estado_siguiente <= s1;
						elsif (direccion = '1') then
							izquierda <= '1';
							derecha <= '0';
							alto2 <= '0';
							alto1 <= '0';
							estado_siguiente <= s0;
						elsif (direccion = '0') then
							izquierda <= '0';
							derecha <= '1';
							alto2 <= '0';
							alto1 <= '0';
							estado_siguiente <= s0;
						end if;
				end case;
		end process;
end architecture;		