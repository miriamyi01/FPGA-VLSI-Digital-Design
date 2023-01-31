library ieee;
use ieee.std_logic_1164.all;

entity PWM is 
	port(
		clk	: in std_logic;
		led,led2,led3,led4,led5,led6,led7,led8,led9	: out std_logic
	);
end entity;

architecture rtl of PWM is 
	signal clkl : std_logic;
begin 
	u1	: entity work.divf(rtl) generic map (25000) port map (clk, clkl);
	u2	: entity work.senal(rtl) port map(clkl, 250, led);
	u3	: entity work.senal(rtl) port map(clkl, 450, led2);
	u4	: entity work.senal(rtl) port map(clkl, 650, led3);
	u5	: entity work.senal(rtl) port map(clkl, 850, led4);
	u6	: entity work.senal(rtl) port map(clkl, 1050, led5);
	u7	: entity work.senal(rtl) port map(clkl, 1250, led6);
	u8	: entity work.senal(rtl) port map(clkl, 1450, led7);
	u9	: entity work.senal(rtl) port map(clkl, 1650, led8);
	u10: entity work.senal(rtl) port map(clkl, 1850, led9);

end architecture;