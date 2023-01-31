library ieee;
use ieee.std_logic_arith.all;
use ieee.std_logic_1164.all;

entity DIVF is
	port(clk: in std_logic;
		  clkl: buffer std_logic:= '0' );
end entity;

architecture arqDIVF of DIVF is
	signal conteo: integer range 0 to 2500000;
	begin
		process(clk)
		begin
			if(clk' event and clk='1') then
				conteo<=conteo+1;
				if(conteo=2500000) then
					conteo<=0;
					clkl<=not(clkl);
				end if;
			end if;
		end process;
end architecture;