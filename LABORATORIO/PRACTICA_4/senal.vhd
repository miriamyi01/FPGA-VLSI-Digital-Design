library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity senal is 
	port (
		clk	: in 	std_logic;
		duty	: in 	integer;
		snl	: out std_logic
	);

end entity;

architecture rtl of senal is 
	signal conteo : integer range 0 to 2000;
begin 
	process (clk)
	begin 
		if (rising_edge(clk)) then
			if(conteo <= duty) then 
				snl <= '1';
			else 
				snl <= '0';
			end if;
			
			if (conteo = 2000) then 
				conteo <= 0;
			else 
				conteo <= conteo + 1;
			end if;
		end if;
	end process;
end architecture; 