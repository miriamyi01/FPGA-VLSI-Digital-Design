library ieee;
use ieee.std_logic_1164.all;

entity MOORE is
port(clk,cont,direc: in std_logic;
	  inicio:in std_logic_vector(2 downto 0);
	  sal: out std_logic);
end entity;

architecture arqMOORE of MOORE is
	subtype state is std_logic_vector(2 downto 0);
	signal present_state, next_state: state;
	constant e0: state:= "000";
	constant e1: state:= "001";
	constant e2: state:= "010";
	constant e3: state:= "011";
	constant e4: state:= "100";
	constant e5: state:= "101";
	signal bandera: std_logic := '1';

	begin
		process(clk)
			begin
			if rising_edge(clk) and cont='0' then
				if bandera='0' then
					present_state <= next_state;
				else 
					present_state <= inicio;	
					bandera <= '0';
				end if;
			end if;
		end process;

		process(present_state)
		begin
			if direc='1' then
				case present_state is 
					when e0 => next_state <= e1;
						sal <= '0';
					when e1 => next_state <= e2;
						sal <= '1';
					when e2 => next_state <= e3;
						sal <= '1';
					when e3 => next_state <= e4;
						sal <= '1';
					when e4 => next_state <= e5;
						sal <= '1';
					when others => next_state <= e0;
						sal <= '1';
				end case;
			else
				case present_state is 
					when e0 => next_state <= e5;
						sal <= '0';
					when e1 => next_state <= e0;
						sal <= '1';
					when e2 => next_state <= e1;
						sal <= '1';
					when e3 => next_state <= e2;
						sal <= '1';
					when e4 => next_state <= e3;
						sal <= '1';
					when others => next_state <= e4;
						sal <= '1';
				end case;
			end if;
		end process;
end architecture;