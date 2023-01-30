library ieee;
use ieee.std_logic_1164.all;

entity ffjk is 
	port(clk : in std_logic;
		  SQ2,SQ1,SQ0 :  out std_logic);
end entity;

architecture arq of ffjk is 
	signal K0,J0,K1,J1,K2,J2,Q0,Q1,Q2,
			 notQ0,notQ1,notQ2: std_logic;
	
	begin 
		u1: entity work.combinacional(arq) 
			 port map(notQ0,notQ1,notQ2,Q0,Q1,Q2,J0,J1,J2,K0,K1,K2);
		u2: entity work.mooreJK(arq) 
			 port map(clk,J0,K0,Q0,notQ0);
		u3: entity work.mooreJK(arq) 
			 port map(clk,J1,K1,Q1,notQ1);
		u4: entity work.mooreJK(arq) 
			 port map(clk,J2,K2,Q2,notQ2);
		SQ2<= Q2;
		SQ1<= Q1;
		SQ0<= Q0;
		
end architecture;