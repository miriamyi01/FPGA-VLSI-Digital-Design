-- Copyright (C) 2019  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "09/13/2022 23:42:25"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          conta2display
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY conta2display_vhd_vec_tst IS
END conta2display_vhd_vec_tst;
ARCHITECTURE conta2display_arch OF conta2display_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL banderaSal : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL ssg0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL ssg1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT conta2display
	PORT (
	banderaSal : BUFFER STD_LOGIC;
	clk : IN STD_LOGIC;
	ssg0 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	ssg1 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : conta2display
	PORT MAP (
-- list connections between master ports and signals
	banderaSal => banderaSal,
	clk => clk,
	ssg0 => ssg0,
	ssg1 => ssg1
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;
END conta2display_arch;
