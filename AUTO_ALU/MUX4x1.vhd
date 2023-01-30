library ieee;
use ieee.std_logic_1164.all;

entity MUX4x1 is
	port(b: in std_logic_vector(2 downto 0);
		  sel: in std_logic_vector(1 downto 0);
		  salmux: out std_logic_vector(2 downto 0));
end entity MUX4x1;

architecture arqMUX4x1 of MUX4x1 is
	begin
		with sel select salmux <=
										 (others=>'0') when "00",
													not b when "01",
														 b when "10",
										 (others=>'1') when others;
end architecture arqMUX4x1;