library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity ALU_AUTO is
port (a,b: in std_logic_vector(2 downto 0);
		clk: in std_logic;
		reset: in std_logic;
		pause: in std_logic;
		salAUTO: buffer std_logic_vector(2 downto 0);
		cout: out std_logic;
		SS0,SS1,SS2,SS3,SS4,SS5: out std_logic_vector(6 downto 0));
end entity ALU_AUTO;

architecture arqALU_AUTO of ALU_AUTO is
signal salCONTADOR: std_logic_vector(3 downto 0);
	begin
		u0: entity work.CONTADOR(arqCONTADOR) port map (clk,reset,pause,salCONTADOR);
		u1: entity work.ALU(arqALU) port map (a,b,salCONTADOR(3),salCONTADOR(2 downto 0),salAUTO,cout);
		u2: entity work.SS7(arqSS7) port map (salAUTO,SS0);
		u3: entity work.SS7(arqSS7) port map (a,SS1);
		u4: entity work.SS7(arqSS7) port map (b,SS2);
		u5: entity work.SS7_4(arqSS7_4) port map (salCONTADOR,SS3,SS4,SS5);
end architecture arqALU_AUTO;