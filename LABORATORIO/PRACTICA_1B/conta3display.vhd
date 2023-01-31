library ieee;
use ieee.std_logic_1164.all;

entity conta3display is
port(clk: in std_logic;
	  ssg2: out std_logic_vector(6 downto 0);
	  ssg3: out std_logic_vector(6 downto 0);
	  ssg4: out std_logic_vector(6 downto 0);
	  banderaSalY: out std_logic);
end entity;

architecture b of conta3display is
	signal bandera1: std_logic;
	signal conteo1: integer range 0 to 9;
	
	begin
		u4: entity work.conta2display(a) port map(clk,ssg2,ssg3,bandera1);
		u5: entity work.cont(a) port map(bandera1,conteo1,banderaSalY);
		u6: entity work.ss7(a) port map(conteo1,ssg4);
end architecture;