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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.1 Build 646 04/11/2019 SJ Lite Edition"

-- DATE "10/13/2022 17:52:28"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ffjk IS
    PORT (
	clk : IN std_logic;
	SQ2 : OUT std_logic;
	SQ1 : OUT std_logic;
	SQ0 : OUT std_logic
	);
END ffjk;

-- Design Ports Information
-- SQ2	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SQ1	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SQ0	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ffjk IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_SQ2 : std_logic;
SIGNAL ww_SQ1 : std_logic;
SIGNAL ww_SQ0 : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Q0~0_combout\ : std_logic;
SIGNAL \Q0~q\ : std_logic;
SIGNAL \Q1~q\ : std_logic;
SIGNAL \Q0~DUPLICATE_q\ : std_logic;
SIGNAL \Q1~0_combout\ : std_logic;
SIGNAL \Q1~DUPLICATE_q\ : std_logic;
SIGNAL \Q2~0_combout\ : std_logic;
SIGNAL \Q2~q\ : std_logic;
SIGNAL \ALT_INV_Q0~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Q1~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Q0~q\ : std_logic;
SIGNAL \ALT_INV_Q1~q\ : std_logic;
SIGNAL \ALT_INV_Q2~q\ : std_logic;

BEGIN

ww_clk <= clk;
SQ2 <= ww_SQ2;
SQ1 <= ww_SQ1;
SQ0 <= ww_SQ0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Q0~DUPLICATE_q\ <= NOT \Q0~DUPLICATE_q\;
\ALT_INV_Q1~DUPLICATE_q\ <= NOT \Q1~DUPLICATE_q\;
\ALT_INV_Q0~q\ <= NOT \Q0~q\;
\ALT_INV_Q1~q\ <= NOT \Q1~q\;
\ALT_INV_Q2~q\ <= NOT \Q2~q\;

-- Location: IOOBUF_X34_Y0_N76
\SQ2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Q2~q\,
	devoe => ww_devoe,
	o => ww_SQ2);

-- Location: IOOBUF_X34_Y0_N93
\SQ1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Q1~q\,
	devoe => ww_devoe,
	o => ww_SQ1);

-- Location: IOOBUF_X34_Y0_N42
\SQ0~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Q0~q\,
	devoe => ww_devoe,
	o => ww_SQ0);

-- Location: IOIBUF_X89_Y35_N61
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: MLABCELL_X34_Y2_N18
\Q0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Q0~0_combout\ = ( !\Q0~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_Q0~q\,
	combout => \Q0~0_combout\);

-- Location: FF_X34_Y2_N20
Q0 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Q0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q0~q\);

-- Location: FF_X34_Y2_N35
Q1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Q1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q1~q\);

-- Location: FF_X34_Y2_N19
\Q0~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Q0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q0~DUPLICATE_q\);

-- Location: MLABCELL_X34_Y2_N33
\Q1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Q1~0_combout\ = ( !\Q1~q\ & ( \Q0~DUPLICATE_q\ ) ) # ( \Q1~q\ & ( !\Q0~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_Q1~q\,
	dataf => \ALT_INV_Q0~DUPLICATE_q\,
	combout => \Q1~0_combout\);

-- Location: FF_X34_Y2_N34
\Q1~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Q1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q1~DUPLICATE_q\);

-- Location: MLABCELL_X34_Y2_N15
\Q2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Q2~0_combout\ = ( \Q2~q\ & ( \Q1~DUPLICATE_q\ & ( !\Q0~q\ ) ) ) # ( !\Q2~q\ & ( \Q1~DUPLICATE_q\ & ( \Q0~q\ ) ) ) # ( \Q2~q\ & ( !\Q1~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Q0~q\,
	datae => \ALT_INV_Q2~q\,
	dataf => \ALT_INV_Q1~DUPLICATE_q\,
	combout => \Q2~0_combout\);

-- Location: FF_X34_Y2_N16
Q2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Q2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q2~q\);

-- Location: LABCELL_X56_Y14_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


