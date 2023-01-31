LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY VGA_CORE IS
  GENERIC(
    h_pulse  :  INTEGER   := 96;
    h_bp     :  INTEGER   := 48;
    h_pixels :  INTEGER   := 640;
    h_fp     :  INTEGER   := 16;
    h_pol    :  STD_LOGIC := '0';
    v_pulse  :  INTEGER   := 2;
    v_bp     :  INTEGER   := 33;
    v_pixels :  INTEGER   := 480;
    v_fp     :  INTEGER   := 10;
    v_pol    :  STD_LOGIC := '0');
  PORT(
    pixel_clk :  IN   STD_LOGIC;
    reset_n   :  IN   STD_LOGIC;
    h_sync    :  OUT  STD_LOGIC;
    v_sync    :  OUT  STD_LOGIC;
    disp_ena  :  OUT  STD_LOGIC;
    column    :  OUT  INTEGER;
    row       :  OUT  INTEGER);
END ENTITY;


ARCHITECTURE arqVGA_CORE OF VGA_CORE IS
  CONSTANT  h_period  :  INTEGER := h_pulse + h_bp + h_pixels + h_fp;
  CONSTANT  v_period  :  INTEGER := v_pulse + v_bp + v_pixels + v_fp;
BEGIN
  
  PROCESS(pixel_clk, reset_n)
    VARIABLE h_count  :  INTEGER RANGE 0 TO h_period - 1 := 0;
    VARIABLE v_count  :  INTEGER RANGE 0 TO v_period - 1 := 0;
  BEGIN
  
    IF(reset_n = '0') THEN
      h_count := 0;
      v_count := 0;
      h_sync <= h_pol;
      v_sync <= v_pol;
      disp_ena <= '0';
      column <= 0;
      row <= 0;
      
    ELSIF(pixel_clk'EVENT AND pixel_clk = '1') THEN

-- Contadores de pixeles horizontales y verticales. Se recorre por renglon 
-- cuando se acbada el renglón se pasa al siguiente renglon.
     
	  IF(h_count < h_period - 1) THEN
        h_count := h_count + 1;
      ELSE
        h_count := 0;
        IF(v_count < v_period - 1) THEN
          v_count := v_count + 1;
        ELSE
          v_count := 0;
        END IF;
      END IF;

		
      --Sincronización horizontal
      IF(h_count < h_pixels + h_fp OR h_count > h_pixels + h_fp + h_pulse) THEN
        h_sync <= NOT h_pol;
      ELSE
        h_sync <= h_pol;
      END IF;
      
		
     --Sincronización vertical
      IF(v_count < v_pixels + v_fp OR v_count > v_pixels + v_fp + v_pulse) THEN
        v_sync <= NOT v_pol;
      ELSE
        v_sync <= v_pol;
      END IF;
      
		
		--Renombramiento
      IF(h_count < h_pixels) THEN
        column <= h_count;
      END IF;
      IF(v_count < v_pixels) THEN
        row <= v_count;
      END IF;

		
      --Habilitar imagen
      IF(h_count < h_pixels AND v_count < v_pixels) THEN
        disp_ena <= '1';
      ELSE
        disp_ena <= '0';                                
      END IF;

    END IF;
  END PROCESS;

END ARCHITECTURE;