library ieee;
use ieee.std_logic_1164.all; 

entity combinacional is 
	port(Q0,Q1,Q2: in std_logic;
        DO,D1,D2: out std_logic);
end combinacional;

architecture arq of combinacional is 
	begin
		D2 <= ((Q2 AND(NOT Q0)) 
				OR (Q2 AND(NOT Q1)) 
				OR ((Q0 AND Q1) AND(NOT Q2)));
		D1 <= (Q1 XOR Q0);
		DO <= (NOT Q0);
end architecture arq;