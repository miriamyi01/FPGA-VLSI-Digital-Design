LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY IMAGEN IS
  GENERIC(
   pixels_y :  INTEGER := 478;
   pixels_x :  INTEGER := 600);
	
  PORT(
	 disp_ena :  IN   STD_LOGIC;
    row      :  IN   INTEGER;
    column   :  IN   INTEGER;
    red      :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0) := (OTHERS => '0');
    green    :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0) := (OTHERS => '0');
    blue     :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0) := (OTHERS => '0');
	 dipsw 	 :  IN	STD_LOGIC_VECTOR(1 DOWNTO 0);
	 reloj 	 :  IN   STD_LOGIC);
END ENTITY;

ARCHITECTURE arqIMAGEN OF IMAGEN IS

	begin   
		process(disp_ena, row, column)
		begin
			if(disp_ena = '1') THEN 
				if ((row > 428 and (row <478)) and (column>0 and (column<50))) THEN
					red <= (OTHERS => '0');
					green<=(OTHERS => '0');
					blue<=(OTHERS => '1');
					
				elsif ((row > 0 and (row <50)) and (column>0 and (column<50))) THEN
					red <= (OTHERS => '0');
					green<=(OTHERS => '1');
					blue<=(OTHERS => '0');
					
				elsif ((row > 428 and (row <478)) and (column>550 and (column<600))) THEN
					red <= (OTHERS => '1');
					green<=(OTHERS => '0');
					blue<=(OTHERS => '0');
				
				elsif ((row > 0 and (row <50)) and (column>550 and (column<600))) THEN
					red <= (OTHERS => '1');
					green<=(OTHERS => '1');
					blue<=(OTHERS => '1');
				
				--FONDO--		
				else		
						red <= (OTHERS => '0');
						green	<= (OTHERS => '0');
						blue <= (OTHERS => '0');
				end if;
			END IF;
		END PROCESS;
 
END ARCHITECTURE;