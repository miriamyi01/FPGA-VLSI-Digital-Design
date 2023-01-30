library ieee;
use ieee.std_logic_1164.all;

entity estados is 
port(clk: in std_logic;
	  dir: in integer;
	  a: out std_logic_vector(1 downto 0));
end;

architecture arqest of estados is
subtype estado is std_logic_vector(1 downto 0);
constant e0: estado:="00";
constant e1: estado:="01";
constant e2: estado:="10";
constant e3: estado:="11";

signal estado_actual, estado_siguiente: estado;
begin

process(clk)
begin
	if(rising_edge(clk)) then
		estado_actual <= estado_siguiente;
	end if;
end process;

process(estado_actual)
begin
	if(dir=1) then
		case estado_actual is
			when e3 => estado_siguiente <= e2;
			when e2 => estado_siguiente <= e1;
			when e1 => estado_siguiente <= e0;
			when others => estado_siguiente <= e3;
		end case;
	else
		case estado_actual is
			when e0 => estado_siguiente <= e1;
			when e1 => estado_siguiente <= e2;
			when e2 => estado_siguiente <= e3;
			when others => estado_siguiente <= e0;
		end case;
	end if;
	a <= estado_actual;
end process;


end;