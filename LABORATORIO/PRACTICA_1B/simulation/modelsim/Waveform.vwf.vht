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
-- Generated on "09/14/2022 00:58:43"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          conta3display
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY conta3display_vhd_vec_tst IS
END conta3display_vhd_vec_tst;
ARCHITECTURE conta3display_arch OF conta3display_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL banderaSalY : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL ssg2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL ssg3 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL ssg4 : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT conta3display
	PORT (
	banderaSalY : BUFFER STD_LOGIC;
	clk : IN STD_LOGIC;
	ssg2 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	ssg3 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	ssg4 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : conta3display
	PORT MAP (
-- list connections between master ports and signals
	banderaSalY => banderaSalY,
	clk => clk,
	ssg2 => ssg2,
	ssg3 => ssg3,
	ssg4 => ssg4
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;
END conta3display_arch;
