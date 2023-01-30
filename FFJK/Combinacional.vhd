library ieee;
use ieee.std_logic_1164.all;

entity combinacional is
	port(notQ0,notQ1,notQ2,Q0,Q1,Q2: inout std_logic;
		  J0,J1,J2,K0,K1,K2: out std_logic);
end combinacional;

architecture arq of combinacional is
	begin
		J0 <= '1';
		K0 <= '1';
		J1 <= Q0;
		K1 <= Q0;
		J2 <= Q0 and Q1;
		K2 <= Q0 and Q1;
end architecture arq;