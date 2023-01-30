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
-- Generated on "10/13/2022 17:52:25"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ffjk
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ffjk_vhd_vec_tst IS
END ffjk_vhd_vec_tst;
ARCHITECTURE ffjk_arch OF ffjk_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL SQ0 : STD_LOGIC;
SIGNAL SQ1 : STD_LOGIC;
SIGNAL SQ2 : STD_LOGIC;
COMPONENT ffjk
	PORT (
	clk : IN STD_LOGIC;
	SQ0 : OUT STD_LOGIC;
	SQ1 : OUT STD_LOGIC;
	SQ2 : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ffjk
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	SQ0 => SQ0,
	SQ1 => SQ1,
	SQ2 => SQ2
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 500000 ps;
	clk <= '1';
	WAIT FOR 500000 ps;
	IF (NOW >= 10000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
END ffjk_arch;
