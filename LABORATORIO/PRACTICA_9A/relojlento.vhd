library ieee;
use ieee.std_logic_arith.all;
use ieee.std_logic_1164.all;

entity relojlento is
	port(clkl: in std_logic;
		  led: buffer std_logic:= '0' );
end relojlento;

architecture behavior of relojlento is
	signal conteo: integer range 0 to 2500000;
	begin
		process(clkl)
		begin
			if(clkl' event and clkl='1') then
				conteo<=conteo+1;
				if(conteo=2500000) then
					conteo<=0;
					led<=not(led);
				end if;
			end if;
		end process;
end behavior;