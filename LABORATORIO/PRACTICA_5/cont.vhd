library ieee;
use ieee.std_logic_1164.all;

entity cont is
generic(i: integer:=50;
		  f: integer:=100);
		  
port(clk: in std_logic;
	  conteo: buffer integer:=i;
	  c: std_logic:='1');
end;

architecture arqcont of cont is
begin
	process(clk)
		begin
			if(rising_edge(clk)) then
				if(c='1') then
					if(conteo=f) then
						conteo<=i;
					else
						if(f=100) then
							conteo<=conteo+1;
						else
							conteo<=conteo-1;
					end if;
				end if;
			else
				conteo<=i;
			end if;
		end if;
	end process;
end architecture;
					