library ieee;
use ieee.std_logic_1164.all;

entity contador is
port(echo, clkl1, tr: in std_logic;
	  salida, a: out std_logic:='0');
end entity;

architecture arqcontador of contador is
signal conteo: integer range 0 to 12000; -- un cero mas
begin
	process(echo, clkl1, tr, conteo)
		begin
				if(tr='1') then
					a<='1';
					conteo<= 0;
					salida <= '0';
				elsif(rising_edge(clkl1)) then
					if(echo='1') then
						conteo <= conteo+1;
					else
					   a<='1';
						if((conteo >= 0) and (conteo < 1235)) then -- 2 cm
							salida<='0';
						else
							salida<='1';
						end if;
					end if;
				end if;
		end process;
end architecture;