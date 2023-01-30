library ieee;
use ieee.std_logic_1164.all;

entity trigger is
port(clk,rst,echo: in std_logic;
	  salida: out std_logic);
end entity;

architecture arqtrigger of trigger is
begin

	process(clk)
		begin
			if(rst='1') then
				salida<='0';
			elsif(echo='0') then
				salida<=clk;
			end if;
		end process;
		
end architecture;