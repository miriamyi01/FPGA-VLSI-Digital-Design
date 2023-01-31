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

-- DATE "09/13/2022 20:51:54"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	contador IS
    PORT (
	clk : IN std_logic;
	ssg : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END contador;

-- Design Ports Information
-- ssg[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssg[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssg[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssg[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssg[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssg[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssg[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF contador IS
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
SIGNAL ww_ssg : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u1|clkl~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \ssg[0]~output_o\ : std_logic;
SIGNAL \ssg[1]~output_o\ : std_logic;
SIGNAL \ssg[2]~output_o\ : std_logic;
SIGNAL \ssg[3]~output_o\ : std_logic;
SIGNAL \ssg[4]~output_o\ : std_logic;
SIGNAL \ssg[5]~output_o\ : std_logic;
SIGNAL \ssg[6]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \u1|Add0~0_combout\ : std_logic;
SIGNAL \u1|contador~1_combout\ : std_logic;
SIGNAL \u1|Add0~1\ : std_logic;
SIGNAL \u1|Add0~2_combout\ : std_logic;
SIGNAL \u1|Add0~3\ : std_logic;
SIGNAL \u1|Add0~4_combout\ : std_logic;
SIGNAL \u1|Add0~5\ : std_logic;
SIGNAL \u1|Add0~6_combout\ : std_logic;
SIGNAL \u1|Add0~7\ : std_logic;
SIGNAL \u1|Add0~8_combout\ : std_logic;
SIGNAL \u1|Add0~9\ : std_logic;
SIGNAL \u1|Add0~10_combout\ : std_logic;
SIGNAL \u1|Add0~11\ : std_logic;
SIGNAL \u1|Add0~12_combout\ : std_logic;
SIGNAL \u1|contador~0_combout\ : std_logic;
SIGNAL \u1|Add0~13\ : std_logic;
SIGNAL \u1|Add0~14_combout\ : std_logic;
SIGNAL \u1|Add0~15\ : std_logic;
SIGNAL \u1|Add0~16_combout\ : std_logic;
SIGNAL \u1|Add0~17\ : std_logic;
SIGNAL \u1|Add0~18_combout\ : std_logic;
SIGNAL \u1|Add0~19\ : std_logic;
SIGNAL \u1|Add0~20_combout\ : std_logic;
SIGNAL \u1|Add0~21\ : std_logic;
SIGNAL \u1|Add0~22_combout\ : std_logic;
SIGNAL \u1|contador~2_combout\ : std_logic;
SIGNAL \u1|Add0~23\ : std_logic;
SIGNAL \u1|Add0~24_combout\ : std_logic;
SIGNAL \u1|contador~3_combout\ : std_logic;
SIGNAL \u1|Add0~25\ : std_logic;
SIGNAL \u1|Add0~26_combout\ : std_logic;
SIGNAL \u1|contador~4_combout\ : std_logic;
SIGNAL \u1|Add0~27\ : std_logic;
SIGNAL \u1|Add0~28_combout\ : std_logic;
SIGNAL \u1|contador~5_combout\ : std_logic;
SIGNAL \u1|Add0~29\ : std_logic;
SIGNAL \u1|Add0~30_combout\ : std_logic;
SIGNAL \u1|Add0~31\ : std_logic;
SIGNAL \u1|Add0~32_combout\ : std_logic;
SIGNAL \u1|contador~6_combout\ : std_logic;
SIGNAL \u1|Add0~33\ : std_logic;
SIGNAL \u1|Add0~34_combout\ : std_logic;
SIGNAL \u1|Add0~35\ : std_logic;
SIGNAL \u1|Add0~36_combout\ : std_logic;
SIGNAL \u1|contador~7_combout\ : std_logic;
SIGNAL \u1|Add0~37\ : std_logic;
SIGNAL \u1|Add0~38_combout\ : std_logic;
SIGNAL \u1|contador~8_combout\ : std_logic;
SIGNAL \u1|Add0~39\ : std_logic;
SIGNAL \u1|Add0~40_combout\ : std_logic;
SIGNAL \u1|contador~10_combout\ : std_logic;
SIGNAL \u1|Add0~41\ : std_logic;
SIGNAL \u1|Add0~42_combout\ : std_logic;
SIGNAL \u1|contador~11_combout\ : std_logic;
SIGNAL \u1|Add0~43\ : std_logic;
SIGNAL \u1|Add0~44_combout\ : std_logic;
SIGNAL \u1|contador~12_combout\ : std_logic;
SIGNAL \u1|Add0~45\ : std_logic;
SIGNAL \u1|Add0~46_combout\ : std_logic;
SIGNAL \u1|Add0~47\ : std_logic;
SIGNAL \u1|Add0~48_combout\ : std_logic;
SIGNAL \u1|contador~9_combout\ : std_logic;
SIGNAL \u1|Equal0~5_combout\ : std_logic;
SIGNAL \u1|Equal0~6_combout\ : std_logic;
SIGNAL \u1|Equal0~1_combout\ : std_logic;
SIGNAL \u1|Equal0~2_combout\ : std_logic;
SIGNAL \u1|Equal0~3_combout\ : std_logic;
SIGNAL \u1|Equal0~0_combout\ : std_logic;
SIGNAL \u1|Equal0~4_combout\ : std_logic;
SIGNAL \u1|Equal0~7_combout\ : std_logic;
SIGNAL \u1|clkl~0_combout\ : std_logic;
SIGNAL \u1|clkl~feeder_combout\ : std_logic;
SIGNAL \u1|clkl~q\ : std_logic;
SIGNAL \u1|clkl~clkctrl_outclk\ : std_logic;
SIGNAL \u2|Add0~0_combout\ : std_logic;
SIGNAL \u2|Add0~1\ : std_logic;
SIGNAL \u2|Add0~2_combout\ : std_logic;
SIGNAL \u2|Add0~7\ : std_logic;
SIGNAL \u2|Add0~8_combout\ : std_logic;
SIGNAL \u2|Add0~9\ : std_logic;
SIGNAL \u2|Add0~10_combout\ : std_logic;
SIGNAL \u2|Add0~11\ : std_logic;
SIGNAL \u2|Add0~12_combout\ : std_logic;
SIGNAL \u2|Add0~13\ : std_logic;
SIGNAL \u2|Add0~14_combout\ : std_logic;
SIGNAL \u2|Add0~15\ : std_logic;
SIGNAL \u2|Add0~16_combout\ : std_logic;
SIGNAL \u2|Add0~17\ : std_logic;
SIGNAL \u2|Add0~18_combout\ : std_logic;
SIGNAL \u2|Add0~19\ : std_logic;
SIGNAL \u2|Add0~20_combout\ : std_logic;
SIGNAL \u2|Add0~21\ : std_logic;
SIGNAL \u2|Add0~22_combout\ : std_logic;
SIGNAL \u2|Add0~23\ : std_logic;
SIGNAL \u2|Add0~24_combout\ : std_logic;
SIGNAL \u2|Add0~25\ : std_logic;
SIGNAL \u2|Add0~26_combout\ : std_logic;
SIGNAL \u2|Add0~27\ : std_logic;
SIGNAL \u2|Add0~28_combout\ : std_logic;
SIGNAL \u2|Add0~29\ : std_logic;
SIGNAL \u2|Add0~30_combout\ : std_logic;
SIGNAL \u2|Add0~31\ : std_logic;
SIGNAL \u2|Add0~32_combout\ : std_logic;
SIGNAL \u2|Add0~33\ : std_logic;
SIGNAL \u2|Add0~34_combout\ : std_logic;
SIGNAL \u2|Add0~35\ : std_logic;
SIGNAL \u2|Add0~36_combout\ : std_logic;
SIGNAL \u2|Add0~37\ : std_logic;
SIGNAL \u2|Add0~38_combout\ : std_logic;
SIGNAL \u2|Add0~39\ : std_logic;
SIGNAL \u2|Add0~40_combout\ : std_logic;
SIGNAL \u2|Add0~41\ : std_logic;
SIGNAL \u2|Add0~42_combout\ : std_logic;
SIGNAL \u2|Add0~43\ : std_logic;
SIGNAL \u2|Add0~44_combout\ : std_logic;
SIGNAL \u2|Add0~45\ : std_logic;
SIGNAL \u2|Add0~46_combout\ : std_logic;
SIGNAL \u2|Equal0~6_combout\ : std_logic;
SIGNAL \u2|Equal0~3_combout\ : std_logic;
SIGNAL \u2|Equal0~1_combout\ : std_logic;
SIGNAL \u2|Equal0~2_combout\ : std_logic;
SIGNAL \u2|Equal0~0_combout\ : std_logic;
SIGNAL \u2|Equal0~4_combout\ : std_logic;
SIGNAL \u2|Equal0~5_combout\ : std_logic;
SIGNAL \u2|Add0~47\ : std_logic;
SIGNAL \u2|Add0~48_combout\ : std_logic;
SIGNAL \u2|Add0~49\ : std_logic;
SIGNAL \u2|Add0~50_combout\ : std_logic;
SIGNAL \u2|Add0~51\ : std_logic;
SIGNAL \u2|Add0~52_combout\ : std_logic;
SIGNAL \u2|Add0~53\ : std_logic;
SIGNAL \u2|Add0~54_combout\ : std_logic;
SIGNAL \u2|Add0~55\ : std_logic;
SIGNAL \u2|Add0~56_combout\ : std_logic;
SIGNAL \u2|Add0~57\ : std_logic;
SIGNAL \u2|Add0~58_combout\ : std_logic;
SIGNAL \u2|Add0~59\ : std_logic;
SIGNAL \u2|Add0~60_combout\ : std_logic;
SIGNAL \u2|Add0~61\ : std_logic;
SIGNAL \u2|Add0~62_combout\ : std_logic;
SIGNAL \u2|Equal0~8_combout\ : std_logic;
SIGNAL \u2|Equal0~7_combout\ : std_logic;
SIGNAL \u2|Equal0~9_combout\ : std_logic;
SIGNAL \u2|Equal0~10_combout\ : std_logic;
SIGNAL \u2|conteo~1_combout\ : std_logic;
SIGNAL \u2|Add0~3\ : std_logic;
SIGNAL \u2|Add0~4_combout\ : std_logic;
SIGNAL \u2|Add0~5\ : std_logic;
SIGNAL \u2|Add0~6_combout\ : std_logic;
SIGNAL \u2|conteo~0_combout\ : std_logic;
SIGNAL \u3|WideOr5~combout\ : std_logic;
SIGNAL \u3|WideOr4~4_combout\ : std_logic;
SIGNAL \u3|WideOr3~combout\ : std_logic;
SIGNAL \u3|WideOr2~0_combout\ : std_logic;
SIGNAL \u3|WideOr1~combout\ : std_logic;
SIGNAL \u3|WideOr0~combout\ : std_logic;
SIGNAL \u3|b\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \u2|conteo\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \u1|contador\ : std_logic_vector(24 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ssg <= ww_ssg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\u1|clkl~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u1|clkl~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N24
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X58_Y54_N16
\ssg[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|WideOr5~combout\,
	devoe => ww_devoe,
	o => \ssg[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\ssg[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|WideOr4~4_combout\,
	devoe => ww_devoe,
	o => \ssg[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\ssg[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|b\(2),
	devoe => ww_devoe,
	o => \ssg[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\ssg[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|WideOr3~combout\,
	devoe => ww_devoe,
	o => \ssg[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\ssg[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \ssg[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\ssg[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|WideOr1~combout\,
	devoe => ww_devoe,
	o => \ssg[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\ssg[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|WideOr0~combout\,
	devoe => ww_devoe,
	o => \ssg[6]~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G19
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X46_Y52_N8
\u1|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Add0~0_combout\ = \u1|contador\(0) $ (VCC)
-- \u1|Add0~1\ = CARRY(\u1|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(0),
	datad => VCC,
	combout => \u1|Add0~0_combout\,
	cout => \u1|Add0~1\);

-- Location: LCCOMB_X46_Y52_N6
\u1|contador~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|contador~1_combout\ = (\u1|Add0~0_combout\ & !\u1|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|Add0~0_combout\,
	datad => \u1|Equal0~7_combout\,
	combout => \u1|contador~1_combout\);

-- Location: FF_X46_Y52_N7
\u1|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|contador~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(0));

-- Location: LCCOMB_X46_Y52_N10
\u1|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Add0~2_combout\ = (\u1|contador\(1) & (!\u1|Add0~1\)) # (!\u1|contador\(1) & ((\u1|Add0~1\) # (GND)))
-- \u1|Add0~3\ = CARRY((!\u1|Add0~1\) # (!\u1|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(1),
	datad => VCC,
	cin => \u1|Add0~1\,
	combout => \u1|Add0~2_combout\,
	cout => \u1|Add0~3\);

-- Location: FF_X46_Y52_N11
\u1|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(1));

-- Location: LCCOMB_X46_Y52_N12
\u1|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Add0~4_combout\ = (\u1|contador\(2) & (\u1|Add0~3\ $ (GND))) # (!\u1|contador\(2) & (!\u1|Add0~3\ & VCC))
-- \u1|Add0~5\ = CARRY((\u1|contador\(2) & !\u1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(2),
	datad => VCC,
	cin => \u1|Add0~3\,
	combout => \u1|Add0~4_combout\,
	cout => \u1|Add0~5\);

-- Location: FF_X46_Y52_N13
\u1|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(2));

-- Location: LCCOMB_X46_Y52_N14
\u1|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Add0~6_combout\ = (\u1|contador\(3) & (!\u1|Add0~5\)) # (!\u1|contador\(3) & ((\u1|Add0~5\) # (GND)))
-- \u1|Add0~7\ = CARRY((!\u1|Add0~5\) # (!\u1|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|contador\(3),
	datad => VCC,
	cin => \u1|Add0~5\,
	combout => \u1|Add0~6_combout\,
	cout => \u1|Add0~7\);

-- Location: FF_X46_Y52_N15
\u1|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(3));

-- Location: LCCOMB_X46_Y52_N16
\u1|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Add0~8_combout\ = (\u1|contador\(4) & (\u1|Add0~7\ $ (GND))) # (!\u1|contador\(4) & (!\u1|Add0~7\ & VCC))
-- \u1|Add0~9\ = CARRY((\u1|contador\(4) & !\u1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|contador\(4),
	datad => VCC,
	cin => \u1|Add0~7\,
	combout => \u1|Add0~8_combout\,
	cout => \u1|Add0~9\);

-- Location: FF_X46_Y52_N17
\u1|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(4));

-- Location: LCCOMB_X46_Y52_N18
\u1|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Add0~10_combout\ = (\u1|contador\(5) & (!\u1|Add0~9\)) # (!\u1|contador\(5) & ((\u1|Add0~9\) # (GND)))
-- \u1|Add0~11\ = CARRY((!\u1|Add0~9\) # (!\u1|contador\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|contador\(5),
	datad => VCC,
	cin => \u1|Add0~9\,
	combout => \u1|Add0~10_combout\,
	cout => \u1|Add0~11\);

-- Location: FF_X46_Y52_N19
\u1|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(5));

-- Location: LCCOMB_X46_Y52_N20
\u1|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Add0~12_combout\ = (\u1|contador\(6) & (\u1|Add0~11\ $ (GND))) # (!\u1|contador\(6) & (!\u1|Add0~11\ & VCC))
-- \u1|Add0~13\ = CARRY((\u1|contador\(6) & !\u1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|contador\(6),
	datad => VCC,
	cin => \u1|Add0~11\,
	combout => \u1|Add0~12_combout\,
	cout => \u1|Add0~13\);

-- Location: LCCOMB_X46_Y52_N0
\u1|contador~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|contador~0_combout\ = (\u1|Add0~12_combout\ & !\u1|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|Add0~12_combout\,
	datad => \u1|Equal0~7_combout\,
	combout => \u1|contador~0_combout\);

-- Location: FF_X46_Y52_N1
\u1|contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|contador~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(6));

-- Location: LCCOMB_X46_Y52_N22
\u1|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Add0~14_combout\ = (\u1|contador\(7) & (!\u1|Add0~13\)) # (!\u1|contador\(7) & ((\u1|Add0~13\) # (GND)))
-- \u1|Add0~15\ = CARRY((!\u1|Add0~13\) # (!\u1|contador\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(7),
	datad => VCC,
	cin => \u1|Add0~13\,
	combout => \u1|Add0~14_combout\,
	cout => \u1|Add0~15\);

-- Location: FF_X46_Y52_N23
\u1|contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(7));

-- Location: LCCOMB_X46_Y52_N24
\u1|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Add0~16_combout\ = (\u1|contador\(8) & (\u1|Add0~15\ $ (GND))) # (!\u1|contador\(8) & (!\u1|Add0~15\ & VCC))
-- \u1|Add0~17\ = CARRY((\u1|contador\(8) & !\u1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|contador\(8),
	datad => VCC,
	cin => \u1|Add0~15\,
	combout => \u1|Add0~16_combout\,
	cout => \u1|Add0~17\);

-- Location: FF_X46_Y52_N25
\u1|contador[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(8));

-- Location: LCCOMB_X46_Y52_N26
\u1|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Add0~18_combout\ = (\u1|contador\(9) & (!\u1|Add0~17\)) # (!\u1|contador\(9) & ((\u1|Add0~17\) # (GND)))
-- \u1|Add0~19\ = CARRY((!\u1|Add0~17\) # (!\u1|contador\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(9),
	datad => VCC,
	cin => \u1|Add0~17\,
	combout => \u1|Add0~18_combout\,
	cout => \u1|Add0~19\);

-- Location: FF_X46_Y52_N27
\u1|contador[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(9));

-- Location: LCCOMB_X46_Y52_N28
\u1|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Add0~20_combout\ = (\u1|contador\(10) & (\u1|Add0~19\ $ (GND))) # (!\u1|contador\(10) & (!\u1|Add0~19\ & VCC))
-- \u1|Add0~21\ = CARRY((\u1|contador\(10) & !\u1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|contador\(10),
	datad => VCC,
	cin => \u1|Add0~19\,
	combout => \u1|Add0~20_combout\,
	cout => \u1|Add0~21\);

-- Location: FF_X46_Y52_N29
\u1|contador[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(10));

-- Location: LCCOMB_X46_Y52_N30
\u1|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Add0~22_combout\ = (\u1|contador\(11) & (!\u1|Add0~21\)) # (!\u1|contador\(11) & ((\u1|Add0~21\) # (GND)))
-- \u1|Add0~23\ = CARRY((!\u1|Add0~21\) # (!\u1|contador\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|contador\(11),
	datad => VCC,
	cin => \u1|Add0~21\,
	combout => \u1|Add0~22_combout\,
	cout => \u1|Add0~23\);

-- Location: LCCOMB_X46_Y52_N4
\u1|contador~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|contador~2_combout\ = (\u1|Add0~22_combout\ & !\u1|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|Add0~22_combout\,
	datad => \u1|Equal0~7_combout\,
	combout => \u1|contador~2_combout\);

-- Location: FF_X46_Y52_N5
\u1|contador[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|contador~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(11));

-- Location: LCCOMB_X46_Y51_N0
\u1|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Add0~24_combout\ = (\u1|contador\(12) & (\u1|Add0~23\ $ (GND))) # (!\u1|contador\(12) & (!\u1|Add0~23\ & VCC))
-- \u1|Add0~25\ = CARRY((\u1|contador\(12) & !\u1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(12),
	datad => VCC,
	cin => \u1|Add0~23\,
	combout => \u1|Add0~24_combout\,
	cout => \u1|Add0~25\);

-- Location: LCCOMB_X45_Y51_N16
\u1|contador~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|contador~3_combout\ = (\u1|Add0~24_combout\ & !\u1|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|Add0~24_combout\,
	datad => \u1|Equal0~7_combout\,
	combout => \u1|contador~3_combout\);

-- Location: FF_X45_Y51_N17
\u1|contador[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|contador~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(12));

-- Location: LCCOMB_X46_Y51_N2
\u1|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Add0~26_combout\ = (\u1|contador\(13) & (!\u1|Add0~25\)) # (!\u1|contador\(13) & ((\u1|Add0~25\) # (GND)))
-- \u1|Add0~27\ = CARRY((!\u1|Add0~25\) # (!\u1|contador\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(13),
	datad => VCC,
	cin => \u1|Add0~25\,
	combout => \u1|Add0~26_combout\,
	cout => \u1|Add0~27\);

-- Location: LCCOMB_X46_Y51_N30
\u1|contador~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|contador~4_combout\ = (!\u1|Equal0~7_combout\ & \u1|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Equal0~7_combout\,
	datad => \u1|Add0~26_combout\,
	combout => \u1|contador~4_combout\);

-- Location: FF_X46_Y51_N31
\u1|contador[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|contador~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(13));

-- Location: LCCOMB_X46_Y51_N4
\u1|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Add0~28_combout\ = (\u1|contador\(14) & (\u1|Add0~27\ $ (GND))) # (!\u1|contador\(14) & (!\u1|Add0~27\ & VCC))
-- \u1|Add0~29\ = CARRY((\u1|contador\(14) & !\u1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|contador\(14),
	datad => VCC,
	cin => \u1|Add0~27\,
	combout => \u1|Add0~28_combout\,
	cout => \u1|Add0~29\);

-- Location: LCCOMB_X46_Y51_N28
\u1|contador~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|contador~5_combout\ = (\u1|Add0~28_combout\ & !\u1|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|Add0~28_combout\,
	datad => \u1|Equal0~7_combout\,
	combout => \u1|contador~5_combout\);

-- Location: FF_X46_Y51_N29
\u1|contador[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|contador~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(14));

-- Location: LCCOMB_X46_Y51_N6
\u1|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Add0~30_combout\ = (\u1|contador\(15) & (!\u1|Add0~29\)) # (!\u1|contador\(15) & ((\u1|Add0~29\) # (GND)))
-- \u1|Add0~31\ = CARRY((!\u1|Add0~29\) # (!\u1|contador\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(15),
	datad => VCC,
	cin => \u1|Add0~29\,
	combout => \u1|Add0~30_combout\,
	cout => \u1|Add0~31\);

-- Location: FF_X46_Y51_N7
\u1|contador[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(15));

-- Location: LCCOMB_X46_Y51_N8
\u1|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Add0~32_combout\ = (\u1|contador\(16) & (\u1|Add0~31\ $ (GND))) # (!\u1|contador\(16) & (!\u1|Add0~31\ & VCC))
-- \u1|Add0~33\ = CARRY((\u1|contador\(16) & !\u1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|contador\(16),
	datad => VCC,
	cin => \u1|Add0~31\,
	combout => \u1|Add0~32_combout\,
	cout => \u1|Add0~33\);

-- Location: LCCOMB_X45_Y51_N6
\u1|contador~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|contador~6_combout\ = (\u1|Add0~32_combout\ & !\u1|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|Add0~32_combout\,
	datad => \u1|Equal0~7_combout\,
	combout => \u1|contador~6_combout\);

-- Location: FF_X45_Y51_N7
\u1|contador[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|contador~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(16));

-- Location: LCCOMB_X46_Y51_N10
\u1|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Add0~34_combout\ = (\u1|contador\(17) & (!\u1|Add0~33\)) # (!\u1|contador\(17) & ((\u1|Add0~33\) # (GND)))
-- \u1|Add0~35\ = CARRY((!\u1|Add0~33\) # (!\u1|contador\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(17),
	datad => VCC,
	cin => \u1|Add0~33\,
	combout => \u1|Add0~34_combout\,
	cout => \u1|Add0~35\);

-- Location: FF_X46_Y51_N11
\u1|contador[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(17));

-- Location: LCCOMB_X46_Y51_N12
\u1|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Add0~36_combout\ = (\u1|contador\(18) & (\u1|Add0~35\ $ (GND))) # (!\u1|contador\(18) & (!\u1|Add0~35\ & VCC))
-- \u1|Add0~37\ = CARRY((\u1|contador\(18) & !\u1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(18),
	datad => VCC,
	cin => \u1|Add0~35\,
	combout => \u1|Add0~36_combout\,
	cout => \u1|Add0~37\);

-- Location: LCCOMB_X45_Y51_N8
\u1|contador~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|contador~7_combout\ = (\u1|Add0~36_combout\ & !\u1|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|Add0~36_combout\,
	datad => \u1|Equal0~7_combout\,
	combout => \u1|contador~7_combout\);

-- Location: FF_X45_Y51_N9
\u1|contador[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|contador~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(18));

-- Location: LCCOMB_X46_Y51_N14
\u1|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Add0~38_combout\ = (\u1|contador\(19) & (!\u1|Add0~37\)) # (!\u1|contador\(19) & ((\u1|Add0~37\) # (GND)))
-- \u1|Add0~39\ = CARRY((!\u1|Add0~37\) # (!\u1|contador\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(19),
	datad => VCC,
	cin => \u1|Add0~37\,
	combout => \u1|Add0~38_combout\,
	cout => \u1|Add0~39\);

-- Location: LCCOMB_X46_Y51_N26
\u1|contador~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|contador~8_combout\ = (\u1|Add0~38_combout\ & !\u1|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|Add0~38_combout\,
	datad => \u1|Equal0~7_combout\,
	combout => \u1|contador~8_combout\);

-- Location: FF_X46_Y51_N27
\u1|contador[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|contador~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(19));

-- Location: LCCOMB_X46_Y51_N16
\u1|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Add0~40_combout\ = (\u1|contador\(20) & (\u1|Add0~39\ $ (GND))) # (!\u1|contador\(20) & (!\u1|Add0~39\ & VCC))
-- \u1|Add0~41\ = CARRY((\u1|contador\(20) & !\u1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|contador\(20),
	datad => VCC,
	cin => \u1|Add0~39\,
	combout => \u1|Add0~40_combout\,
	cout => \u1|Add0~41\);

-- Location: LCCOMB_X45_Y51_N18
\u1|contador~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|contador~10_combout\ = (!\u1|Equal0~7_combout\ & \u1|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Equal0~7_combout\,
	datad => \u1|Add0~40_combout\,
	combout => \u1|contador~10_combout\);

-- Location: FF_X45_Y51_N19
\u1|contador[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|contador~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(20));

-- Location: LCCOMB_X46_Y51_N18
\u1|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Add0~42_combout\ = (\u1|contador\(21) & (!\u1|Add0~41\)) # (!\u1|contador\(21) & ((\u1|Add0~41\) # (GND)))
-- \u1|Add0~43\ = CARRY((!\u1|Add0~41\) # (!\u1|contador\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|contador\(21),
	datad => VCC,
	cin => \u1|Add0~41\,
	combout => \u1|Add0~42_combout\,
	cout => \u1|Add0~43\);

-- Location: LCCOMB_X45_Y51_N22
\u1|contador~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|contador~11_combout\ = (!\u1|Equal0~7_combout\ & \u1|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Equal0~7_combout\,
	datad => \u1|Add0~42_combout\,
	combout => \u1|contador~11_combout\);

-- Location: FF_X45_Y51_N23
\u1|contador[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|contador~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(21));

-- Location: LCCOMB_X46_Y51_N20
\u1|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Add0~44_combout\ = (\u1|contador\(22) & (\u1|Add0~43\ $ (GND))) # (!\u1|contador\(22) & (!\u1|Add0~43\ & VCC))
-- \u1|Add0~45\ = CARRY((\u1|contador\(22) & !\u1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(22),
	datad => VCC,
	cin => \u1|Add0~43\,
	combout => \u1|Add0~44_combout\,
	cout => \u1|Add0~45\);

-- Location: LCCOMB_X45_Y51_N14
\u1|contador~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|contador~12_combout\ = (\u1|Add0~44_combout\ & !\u1|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|Add0~44_combout\,
	datad => \u1|Equal0~7_combout\,
	combout => \u1|contador~12_combout\);

-- Location: FF_X45_Y51_N15
\u1|contador[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|contador~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(22));

-- Location: LCCOMB_X46_Y51_N22
\u1|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Add0~46_combout\ = (\u1|contador\(23) & (!\u1|Add0~45\)) # (!\u1|contador\(23) & ((\u1|Add0~45\) # (GND)))
-- \u1|Add0~47\ = CARRY((!\u1|Add0~45\) # (!\u1|contador\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(23),
	datad => VCC,
	cin => \u1|Add0~45\,
	combout => \u1|Add0~46_combout\,
	cout => \u1|Add0~47\);

-- Location: FF_X46_Y51_N23
\u1|contador[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(23));

-- Location: LCCOMB_X46_Y51_N24
\u1|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Add0~48_combout\ = \u1|Add0~47\ $ (!\u1|contador\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u1|contador\(24),
	cin => \u1|Add0~47\,
	combout => \u1|Add0~48_combout\);

-- Location: LCCOMB_X45_Y51_N12
\u1|contador~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|contador~9_combout\ = (!\u1|Equal0~7_combout\ & \u1|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Equal0~7_combout\,
	datad => \u1|Add0~48_combout\,
	combout => \u1|contador~9_combout\);

-- Location: FF_X45_Y51_N13
\u1|contador[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|contador~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(24));

-- Location: LCCOMB_X45_Y51_N20
\u1|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Equal0~5_combout\ = (\u1|contador\(16) & (\u1|contador\(18) & (!\u1|contador\(17) & \u1|contador\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(16),
	datab => \u1|contador\(18),
	datac => \u1|contador\(17),
	datad => \u1|contador\(19),
	combout => \u1|Equal0~5_combout\);

-- Location: LCCOMB_X45_Y51_N30
\u1|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Equal0~6_combout\ = (\u1|contador\(21) & (\u1|contador\(20) & (\u1|contador\(22) & !\u1|contador\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(21),
	datab => \u1|contador\(20),
	datac => \u1|contador\(22),
	datad => \u1|contador\(23),
	combout => \u1|Equal0~6_combout\);

-- Location: LCCOMB_X45_Y52_N30
\u1|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Equal0~1_combout\ = (!\u1|contador\(0) & (!\u1|contador\(3) & (!\u1|contador\(2) & !\u1|contador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(0),
	datab => \u1|contador\(3),
	datac => \u1|contador\(2),
	datad => \u1|contador\(1),
	combout => \u1|Equal0~1_combout\);

-- Location: LCCOMB_X46_Y52_N2
\u1|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Equal0~2_combout\ = (!\u1|contador\(9) & (!\u1|contador\(10) & (\u1|contador\(11) & !\u1|contador\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(9),
	datab => \u1|contador\(10),
	datac => \u1|contador\(11),
	datad => \u1|contador\(8),
	combout => \u1|Equal0~2_combout\);

-- Location: LCCOMB_X45_Y51_N28
\u1|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Equal0~3_combout\ = (!\u1|contador\(15) & (\u1|contador\(12) & (\u1|contador\(13) & \u1|contador\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(15),
	datab => \u1|contador\(12),
	datac => \u1|contador\(13),
	datad => \u1|contador\(14),
	combout => \u1|Equal0~3_combout\);

-- Location: LCCOMB_X45_Y52_N0
\u1|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Equal0~0_combout\ = (!\u1|contador\(4) & (!\u1|contador\(5) & (\u1|contador\(6) & !\u1|contador\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(4),
	datab => \u1|contador\(5),
	datac => \u1|contador\(6),
	datad => \u1|contador\(7),
	combout => \u1|Equal0~0_combout\);

-- Location: LCCOMB_X45_Y51_N24
\u1|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Equal0~4_combout\ = (\u1|Equal0~1_combout\ & (\u1|Equal0~2_combout\ & (\u1|Equal0~3_combout\ & \u1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Equal0~1_combout\,
	datab => \u1|Equal0~2_combout\,
	datac => \u1|Equal0~3_combout\,
	datad => \u1|Equal0~0_combout\,
	combout => \u1|Equal0~4_combout\);

-- Location: LCCOMB_X45_Y51_N10
\u1|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Equal0~7_combout\ = (\u1|contador\(24) & (\u1|Equal0~5_combout\ & (\u1|Equal0~6_combout\ & \u1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(24),
	datab => \u1|Equal0~5_combout\,
	datac => \u1|Equal0~6_combout\,
	datad => \u1|Equal0~4_combout\,
	combout => \u1|Equal0~7_combout\);

-- Location: LCCOMB_X45_Y51_N26
\u1|clkl~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|clkl~0_combout\ = \u1|clkl~q\ $ (\u1|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|clkl~q\,
	datad => \u1|Equal0~7_combout\,
	combout => \u1|clkl~0_combout\);

-- Location: LCCOMB_X45_Y51_N0
\u1|clkl~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|clkl~feeder_combout\ = \u1|clkl~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|clkl~0_combout\,
	combout => \u1|clkl~feeder_combout\);

-- Location: FF_X45_Y51_N1
\u1|clkl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|clkl~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|clkl~q\);

-- Location: CLKCTRL_G13
\u1|clkl~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u1|clkl~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u1|clkl~clkctrl_outclk\);

-- Location: LCCOMB_X66_Y49_N0
\u2|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add0~0_combout\ = \u2|conteo\(0) $ (VCC)
-- \u2|Add0~1\ = CARRY(\u2|conteo\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|conteo\(0),
	datad => VCC,
	combout => \u2|Add0~0_combout\,
	cout => \u2|Add0~1\);

-- Location: FF_X66_Y49_N1
\u2|conteo[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clkl~clkctrl_outclk\,
	d => \u2|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|conteo\(0));

-- Location: LCCOMB_X66_Y49_N2
\u2|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add0~2_combout\ = (\u2|conteo\(1) & (!\u2|Add0~1\)) # (!\u2|conteo\(1) & ((\u2|Add0~1\) # (GND)))
-- \u2|Add0~3\ = CARRY((!\u2|Add0~1\) # (!\u2|conteo\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|conteo\(1),
	datad => VCC,
	cin => \u2|Add0~1\,
	combout => \u2|Add0~2_combout\,
	cout => \u2|Add0~3\);

-- Location: LCCOMB_X66_Y49_N6
\u2|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add0~6_combout\ = (\u2|conteo\(3) & (!\u2|Add0~5\)) # (!\u2|conteo\(3) & ((\u2|Add0~5\) # (GND)))
-- \u2|Add0~7\ = CARRY((!\u2|Add0~5\) # (!\u2|conteo\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|conteo\(3),
	datad => VCC,
	cin => \u2|Add0~5\,
	combout => \u2|Add0~6_combout\,
	cout => \u2|Add0~7\);

-- Location: LCCOMB_X66_Y49_N8
\u2|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add0~8_combout\ = (\u2|conteo\(4) & (\u2|Add0~7\ $ (GND))) # (!\u2|conteo\(4) & (!\u2|Add0~7\ & VCC))
-- \u2|Add0~9\ = CARRY((\u2|conteo\(4) & !\u2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|conteo\(4),
	datad => VCC,
	cin => \u2|Add0~7\,
	combout => \u2|Add0~8_combout\,
	cout => \u2|Add0~9\);

-- Location: FF_X66_Y49_N9
\u2|conteo[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clkl~clkctrl_outclk\,
	d => \u2|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|conteo\(4));

-- Location: LCCOMB_X66_Y49_N10
\u2|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add0~10_combout\ = (\u2|conteo\(5) & (!\u2|Add0~9\)) # (!\u2|conteo\(5) & ((\u2|Add0~9\) # (GND)))
-- \u2|Add0~11\ = CARRY((!\u2|Add0~9\) # (!\u2|conteo\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|conteo\(5),
	datad => VCC,
	cin => \u2|Add0~9\,
	combout => \u2|Add0~10_combout\,
	cout => \u2|Add0~11\);

-- Location: FF_X66_Y49_N11
\u2|conteo[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clkl~clkctrl_outclk\,
	d => \u2|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|conteo\(5));

-- Location: LCCOMB_X66_Y49_N12
\u2|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add0~12_combout\ = (\u2|conteo\(6) & (\u2|Add0~11\ $ (GND))) # (!\u2|conteo\(6) & (!\u2|Add0~11\ & VCC))
-- \u2|Add0~13\ = CARRY((\u2|conteo\(6) & !\u2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|conteo\(6),
	datad => VCC,
	cin => \u2|Add0~11\,
	combout => \u2|Add0~12_combout\,
	cout => \u2|Add0~13\);

-- Location: FF_X66_Y49_N13
\u2|conteo[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clkl~clkctrl_outclk\,
	d => \u2|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|conteo\(6));

-- Location: LCCOMB_X66_Y49_N14
\u2|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add0~14_combout\ = (\u2|conteo\(7) & (!\u2|Add0~13\)) # (!\u2|conteo\(7) & ((\u2|Add0~13\) # (GND)))
-- \u2|Add0~15\ = CARRY((!\u2|Add0~13\) # (!\u2|conteo\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|conteo\(7),
	datad => VCC,
	cin => \u2|Add0~13\,
	combout => \u2|Add0~14_combout\,
	cout => \u2|Add0~15\);

-- Location: FF_X66_Y49_N15
\u2|conteo[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clkl~clkctrl_outclk\,
	d => \u2|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|conteo\(7));

-- Location: LCCOMB_X66_Y49_N16
\u2|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add0~16_combout\ = (\u2|conteo\(8) & (\u2|Add0~15\ $ (GND))) # (!\u2|conteo\(8) & (!\u2|Add0~15\ & VCC))
-- \u2|Add0~17\ = CARRY((\u2|conteo\(8) & !\u2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|conteo\(8),
	datad => VCC,
	cin => \u2|Add0~15\,
	combout => \u2|Add0~16_combout\,
	cout => \u2|Add0~17\);

-- Location: FF_X66_Y49_N17
\u2|conteo[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clkl~clkctrl_outclk\,
	d => \u2|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|conteo\(8));

-- Location: LCCOMB_X66_Y49_N18
\u2|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add0~18_combout\ = (\u2|conteo\(9) & (!\u2|Add0~17\)) # (!\u2|conteo\(9) & ((\u2|Add0~17\) # (GND)))
-- \u2|Add0~19\ = CARRY((!\u2|Add0~17\) # (!\u2|conteo\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|conteo\(9),
	datad => VCC,
	cin => \u2|Add0~17\,
	combout => \u2|Add0~18_combout\,
	cout => \u2|Add0~19\);

-- Location: FF_X66_Y49_N19
\u2|conteo[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clkl~clkctrl_outclk\,
	d => \u2|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|conteo\(9));

-- Location: LCCOMB_X66_Y49_N20
\u2|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add0~20_combout\ = (\u2|conteo\(10) & (\u2|Add0~19\ $ (GND))) # (!\u2|conteo\(10) & (!\u2|Add0~19\ & VCC))
-- \u2|Add0~21\ = CARRY((\u2|conteo\(10) & !\u2|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|conteo\(10),
	datad => VCC,
	cin => \u2|Add0~19\,
	combout => \u2|Add0~20_combout\,
	cout => \u2|Add0~21\);

-- Location: FF_X66_Y49_N21
\u2|conteo[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clkl~clkctrl_outclk\,
	d => \u2|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|conteo\(10));

-- Location: LCCOMB_X66_Y49_N22
\u2|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add0~22_combout\ = (\u2|conteo\(11) & (!\u2|Add0~21\)) # (!\u2|conteo\(11) & ((\u2|Add0~21\) # (GND)))
-- \u2|Add0~23\ = CARRY((!\u2|Add0~21\) # (!\u2|conteo\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|conteo\(11),
	datad => VCC,
	cin => \u2|Add0~21\,
	combout => \u2|Add0~22_combout\,
	cout => \u2|Add0~23\);

-- Location: FF_X66_Y49_N23
\u2|conteo[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clkl~clkctrl_outclk\,
	d => \u2|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|conteo\(11));

-- Location: LCCOMB_X66_Y49_N24
\u2|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add0~24_combout\ = (\u2|conteo\(12) & (\u2|Add0~23\ $ (GND))) # (!\u2|conteo\(12) & (!\u2|Add0~23\ & VCC))
-- \u2|Add0~25\ = CARRY((\u2|conteo\(12) & !\u2|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|conteo\(12),
	datad => VCC,
	cin => \u2|Add0~23\,
	combout => \u2|Add0~24_combout\,
	cout => \u2|Add0~25\);

-- Location: FF_X66_Y49_N25
\u2|conteo[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clkl~clkctrl_outclk\,
	d => \u2|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|conteo\(12));

-- Location: LCCOMB_X66_Y49_N26
\u2|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add0~26_combout\ = (\u2|conteo\(13) & (!\u2|Add0~25\)) # (!\u2|conteo\(13) & ((\u2|Add0~25\) # (GND)))
-- \u2|Add0~27\ = CARRY((!\u2|Add0~25\) # (!\u2|conteo\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|conteo\(13),
	datad => VCC,
	cin => \u2|Add0~25\,
	combout => \u2|Add0~26_combout\,
	cout => \u2|Add0~27\);

-- Location: FF_X66_Y49_N27
\u2|conteo[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clkl~clkctrl_outclk\,
	d => \u2|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|conteo\(13));

-- Location: LCCOMB_X66_Y49_N28
\u2|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add0~28_combout\ = (\u2|conteo\(14) & (\u2|Add0~27\ $ (GND))) # (!\u2|conteo\(14) & (!\u2|Add0~27\ & VCC))
-- \u2|Add0~29\ = CARRY((\u2|conteo\(14) & !\u2|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|conteo\(14),
	datad => VCC,
	cin => \u2|Add0~27\,
	combout => \u2|Add0~28_combout\,
	cout => \u2|Add0~29\);

-- Location: FF_X66_Y49_N29
\u2|conteo[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clkl~clkctrl_outclk\,
	d => \u2|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|conteo\(14));

-- Location: LCCOMB_X66_Y49_N30
\u2|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add0~30_combout\ = (\u2|conteo\(15) & (!\u2|Add0~29\)) # (!\u2|conteo\(15) & ((\u2|Add0~29\) # (GND)))
-- \u2|Add0~31\ = CARRY((!\u2|Add0~29\) # (!\u2|conteo\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|conteo\(15),
	datad => VCC,
	cin => \u2|Add0~29\,
	combout => \u2|Add0~30_combout\,
	cout => \u2|Add0~31\);

-- Location: FF_X66_Y49_N31
\u2|conteo[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clkl~clkctrl_outclk\,
	d => \u2|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|conteo\(15));

-- Location: LCCOMB_X66_Y48_N0
\u2|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add0~32_combout\ = (\u2|conteo\(16) & (\u2|Add0~31\ $ (GND))) # (!\u2|conteo\(16) & (!\u2|Add0~31\ & VCC))
-- \u2|Add0~33\ = CARRY((\u2|conteo\(16) & !\u2|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|conteo\(16),
	datad => VCC,
	cin => \u2|Add0~31\,
	combout => \u2|Add0~32_combout\,
	cout => \u2|Add0~33\);

-- Location: FF_X66_Y48_N1
\u2|conteo[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clkl~clkctrl_outclk\,
	d => \u2|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|conteo\(16));

-- Location: LCCOMB_X66_Y48_N2
\u2|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add0~34_combout\ = (\u2|conteo\(17) & (!\u2|Add0~33\)) # (!\u2|conteo\(17) & ((\u2|Add0~33\) # (GND)))
-- \u2|Add0~35\ = CARRY((!\u2|Add0~33\) # (!\u2|conteo\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|conteo\(17),
	datad => VCC,
	cin => \u2|Add0~33\,
	combout => \u2|Add0~34_combout\,
	cout => \u2|Add0~35\);

-- Location: FF_X66_Y48_N3
\u2|conteo[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clkl~clkctrl_outclk\,
	d => \u2|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|conteo\(17));

-- Location: LCCOMB_X66_Y48_N4
\u2|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add0~36_combout\ = (\u2|conteo\(18) & (\u2|Add0~35\ $ (GND))) # (!\u2|conteo\(18) & (!\u2|Add0~35\ & VCC))
-- \u2|Add0~37\ = CARRY((\u2|conteo\(18) & !\u2|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|conteo\(18),
	datad => VCC,
	cin => \u2|Add0~35\,
	combout => \u2|Add0~36_combout\,
	cout => \u2|Add0~37\);

-- Location: FF_X66_Y48_N5
\u2|conteo[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clkl~clkctrl_outclk\,
	d => \u2|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|conteo\(18));

-- Location: LCCOMB_X66_Y48_N6
\u2|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add0~38_combout\ = (\u2|conteo\(19) & (!\u2|Add0~37\)) # (!\u2|conteo\(19) & ((\u2|Add0~37\) # (GND)))
-- \u2|Add0~39\ = CARRY((!\u2|Add0~37\) # (!\u2|conteo\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|conteo\(19),
	datad => VCC,
	cin => \u2|Add0~37\,
	combout => \u2|Add0~38_combout\,
	cout => \u2|Add0~39\);

-- Location: FF_X66_Y48_N7
\u2|conteo[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clkl~clkctrl_outclk\,
	d => \u2|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|conteo\(19));

-- Location: LCCOMB_X66_Y48_N8
\u2|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add0~40_combout\ = (\u2|conteo\(20) & (\u2|Add0~39\ $ (GND))) # (!\u2|conteo\(20) & (!\u2|Add0~39\ & VCC))
-- \u2|Add0~41\ = CARRY((\u2|conteo\(20) & !\u2|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|conteo\(20),
	datad => VCC,
	cin => \u2|Add0~39\,
	combout => \u2|Add0~40_combout\,
	cout => \u2|Add0~41\);

-- Location: FF_X66_Y48_N9
\u2|conteo[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clkl~clkctrl_outclk\,
	d => \u2|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|conteo\(20));

-- Location: LCCOMB_X66_Y48_N10
\u2|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add0~42_combout\ = (\u2|conteo\(21) & (!\u2|Add0~41\)) # (!\u2|conteo\(21) & ((\u2|Add0~41\) # (GND)))
-- \u2|Add0~43\ = CARRY((!\u2|Add0~41\) # (!\u2|conteo\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|conteo\(21),
	datad => VCC,
	cin => \u2|Add0~41\,
	combout => \u2|Add0~42_combout\,
	cout => \u2|Add0~43\);

-- Location: FF_X66_Y48_N11
\u2|conteo[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clkl~clkctrl_outclk\,
	d => \u2|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|conteo\(21));

-- Location: LCCOMB_X66_Y48_N12
\u2|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add0~44_combout\ = (\u2|conteo\(22) & (\u2|Add0~43\ $ (GND))) # (!\u2|conteo\(22) & (!\u2|Add0~43\ & VCC))
-- \u2|Add0~45\ = CARRY((\u2|conteo\(22) & !\u2|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|conteo\(22),
	datad => VCC,
	cin => \u2|Add0~43\,
	combout => \u2|Add0~44_combout\,
	cout => \u2|Add0~45\);

-- Location: FF_X66_Y48_N13
\u2|conteo[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clkl~clkctrl_outclk\,
	d => \u2|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|conteo\(22));

-- Location: LCCOMB_X66_Y48_N14
\u2|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add0~46_combout\ = (\u2|conteo\(23) & (!\u2|Add0~45\)) # (!\u2|conteo\(23) & ((\u2|Add0~45\) # (GND)))
-- \u2|Add0~47\ = CARRY((!\u2|Add0~45\) # (!\u2|conteo\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|conteo\(23),
	datad => VCC,
	cin => \u2|Add0~45\,
	combout => \u2|Add0~46_combout\,
	cout => \u2|Add0~47\);

-- Location: FF_X66_Y48_N15
\u2|conteo[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clkl~clkctrl_outclk\,
	d => \u2|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|conteo\(23));

-- Location: LCCOMB_X67_Y48_N10
\u2|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Equal0~6_combout\ = (!\u2|conteo\(22) & (!\u2|conteo\(21) & (!\u2|conteo\(23) & !\u2|conteo\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|conteo\(22),
	datab => \u2|conteo\(21),
	datac => \u2|conteo\(23),
	datad => \u2|conteo\(20),
	combout => \u2|Equal0~6_combout\);

-- Location: LCCOMB_X67_Y49_N22
\u2|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Equal0~3_combout\ = (!\u2|conteo\(13) & (!\u2|conteo\(12) & (!\u2|conteo\(15) & !\u2|conteo\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|conteo\(13),
	datab => \u2|conteo\(12),
	datac => \u2|conteo\(15),
	datad => \u2|conteo\(14),
	combout => \u2|Equal0~3_combout\);

-- Location: LCCOMB_X67_Y49_N14
\u2|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Equal0~1_combout\ = (!\u2|conteo\(7) & (!\u2|conteo\(6) & (!\u2|conteo\(4) & !\u2|conteo\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|conteo\(7),
	datab => \u2|conteo\(6),
	datac => \u2|conteo\(4),
	datad => \u2|conteo\(5),
	combout => \u2|Equal0~1_combout\);

-- Location: LCCOMB_X67_Y49_N4
\u2|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Equal0~2_combout\ = (!\u2|conteo\(8) & (!\u2|conteo\(10) & (!\u2|conteo\(9) & !\u2|conteo\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|conteo\(8),
	datab => \u2|conteo\(10),
	datac => \u2|conteo\(9),
	datad => \u2|conteo\(11),
	combout => \u2|Equal0~2_combout\);

-- Location: LCCOMB_X67_Y49_N28
\u2|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Equal0~0_combout\ = (\u2|conteo\(0) & (\u2|conteo\(3) & (!\u2|conteo\(2) & !\u2|conteo\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|conteo\(0),
	datab => \u2|conteo\(3),
	datac => \u2|conteo\(2),
	datad => \u2|conteo\(1),
	combout => \u2|Equal0~0_combout\);

-- Location: LCCOMB_X67_Y49_N8
\u2|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Equal0~4_combout\ = (\u2|Equal0~3_combout\ & (\u2|Equal0~1_combout\ & (\u2|Equal0~2_combout\ & \u2|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Equal0~3_combout\,
	datab => \u2|Equal0~1_combout\,
	datac => \u2|Equal0~2_combout\,
	datad => \u2|Equal0~0_combout\,
	combout => \u2|Equal0~4_combout\);

-- Location: LCCOMB_X67_Y48_N20
\u2|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Equal0~5_combout\ = (!\u2|conteo\(16) & (!\u2|conteo\(19) & (!\u2|conteo\(18) & !\u2|conteo\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|conteo\(16),
	datab => \u2|conteo\(19),
	datac => \u2|conteo\(18),
	datad => \u2|conteo\(17),
	combout => \u2|Equal0~5_combout\);

-- Location: LCCOMB_X66_Y48_N16
\u2|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add0~48_combout\ = (\u2|conteo\(24) & (\u2|Add0~47\ $ (GND))) # (!\u2|conteo\(24) & (!\u2|Add0~47\ & VCC))
-- \u2|Add0~49\ = CARRY((\u2|conteo\(24) & !\u2|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|conteo\(24),
	datad => VCC,
	cin => \u2|Add0~47\,
	combout => \u2|Add0~48_combout\,
	cout => \u2|Add0~49\);

-- Location: FF_X66_Y48_N17
\u2|conteo[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clkl~clkctrl_outclk\,
	d => \u2|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|conteo\(24));

-- Location: LCCOMB_X66_Y48_N18
\u2|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add0~50_combout\ = (\u2|conteo\(25) & (!\u2|Add0~49\)) # (!\u2|conteo\(25) & ((\u2|Add0~49\) # (GND)))
-- \u2|Add0~51\ = CARRY((!\u2|Add0~49\) # (!\u2|conteo\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|conteo\(25),
	datad => VCC,
	cin => \u2|Add0~49\,
	combout => \u2|Add0~50_combout\,
	cout => \u2|Add0~51\);

-- Location: FF_X66_Y48_N19
\u2|conteo[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clkl~clkctrl_outclk\,
	d => \u2|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|conteo\(25));

-- Location: LCCOMB_X66_Y48_N20
\u2|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add0~52_combout\ = (\u2|conteo\(26) & (\u2|Add0~51\ $ (GND))) # (!\u2|conteo\(26) & (!\u2|Add0~51\ & VCC))
-- \u2|Add0~53\ = CARRY((\u2|conteo\(26) & !\u2|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|conteo\(26),
	datad => VCC,
	cin => \u2|Add0~51\,
	combout => \u2|Add0~52_combout\,
	cout => \u2|Add0~53\);

-- Location: FF_X66_Y48_N21
\u2|conteo[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clkl~clkctrl_outclk\,
	d => \u2|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|conteo\(26));

-- Location: LCCOMB_X66_Y48_N22
\u2|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add0~54_combout\ = (\u2|conteo\(27) & (!\u2|Add0~53\)) # (!\u2|conteo\(27) & ((\u2|Add0~53\) # (GND)))
-- \u2|Add0~55\ = CARRY((!\u2|Add0~53\) # (!\u2|conteo\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|conteo\(27),
	datad => VCC,
	cin => \u2|Add0~53\,
	combout => \u2|Add0~54_combout\,
	cout => \u2|Add0~55\);

-- Location: FF_X66_Y48_N23
\u2|conteo[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clkl~clkctrl_outclk\,
	d => \u2|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|conteo\(27));

-- Location: LCCOMB_X66_Y48_N24
\u2|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add0~56_combout\ = (\u2|conteo\(28) & (\u2|Add0~55\ $ (GND))) # (!\u2|conteo\(28) & (!\u2|Add0~55\ & VCC))
-- \u2|Add0~57\ = CARRY((\u2|conteo\(28) & !\u2|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|conteo\(28),
	datad => VCC,
	cin => \u2|Add0~55\,
	combout => \u2|Add0~56_combout\,
	cout => \u2|Add0~57\);

-- Location: FF_X66_Y48_N25
\u2|conteo[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clkl~clkctrl_outclk\,
	d => \u2|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|conteo\(28));

-- Location: LCCOMB_X66_Y48_N26
\u2|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add0~58_combout\ = (\u2|conteo\(29) & (!\u2|Add0~57\)) # (!\u2|conteo\(29) & ((\u2|Add0~57\) # (GND)))
-- \u2|Add0~59\ = CARRY((!\u2|Add0~57\) # (!\u2|conteo\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|conteo\(29),
	datad => VCC,
	cin => \u2|Add0~57\,
	combout => \u2|Add0~58_combout\,
	cout => \u2|Add0~59\);

-- Location: FF_X66_Y48_N27
\u2|conteo[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clkl~clkctrl_outclk\,
	d => \u2|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|conteo\(29));

-- Location: LCCOMB_X66_Y48_N28
\u2|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add0~60_combout\ = (\u2|conteo\(30) & (\u2|Add0~59\ $ (GND))) # (!\u2|conteo\(30) & (!\u2|Add0~59\ & VCC))
-- \u2|Add0~61\ = CARRY((\u2|conteo\(30) & !\u2|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|conteo\(30),
	datad => VCC,
	cin => \u2|Add0~59\,
	combout => \u2|Add0~60_combout\,
	cout => \u2|Add0~61\);

-- Location: FF_X66_Y48_N29
\u2|conteo[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clkl~clkctrl_outclk\,
	d => \u2|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|conteo\(30));

-- Location: LCCOMB_X66_Y48_N30
\u2|Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add0~62_combout\ = \u2|conteo\(31) $ (\u2|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|conteo\(31),
	cin => \u2|Add0~61\,
	combout => \u2|Add0~62_combout\);

-- Location: FF_X66_Y48_N31
\u2|conteo[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clkl~clkctrl_outclk\,
	d => \u2|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|conteo\(31));

-- Location: LCCOMB_X67_Y48_N30
\u2|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Equal0~8_combout\ = (!\u2|conteo\(29) & (!\u2|conteo\(30) & (!\u2|conteo\(28) & !\u2|conteo\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|conteo\(29),
	datab => \u2|conteo\(30),
	datac => \u2|conteo\(28),
	datad => \u2|conteo\(31),
	combout => \u2|Equal0~8_combout\);

-- Location: LCCOMB_X67_Y48_N28
\u2|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Equal0~7_combout\ = (!\u2|conteo\(24) & (!\u2|conteo\(25) & (!\u2|conteo\(26) & !\u2|conteo\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|conteo\(24),
	datab => \u2|conteo\(25),
	datac => \u2|conteo\(26),
	datad => \u2|conteo\(27),
	combout => \u2|Equal0~7_combout\);

-- Location: LCCOMB_X67_Y48_N0
\u2|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Equal0~9_combout\ = (\u2|Equal0~8_combout\ & \u2|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u2|Equal0~8_combout\,
	datad => \u2|Equal0~7_combout\,
	combout => \u2|Equal0~9_combout\);

-- Location: LCCOMB_X67_Y49_N18
\u2|Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Equal0~10_combout\ = (\u2|Equal0~6_combout\ & (\u2|Equal0~4_combout\ & (\u2|Equal0~5_combout\ & \u2|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Equal0~6_combout\,
	datab => \u2|Equal0~4_combout\,
	datac => \u2|Equal0~5_combout\,
	datad => \u2|Equal0~9_combout\,
	combout => \u2|Equal0~10_combout\);

-- Location: LCCOMB_X67_Y49_N12
\u2|conteo~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|conteo~1_combout\ = (\u2|Add0~2_combout\ & !\u2|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add0~2_combout\,
	datad => \u2|Equal0~10_combout\,
	combout => \u2|conteo~1_combout\);

-- Location: FF_X66_Y49_N3
\u2|conteo[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clkl~clkctrl_outclk\,
	asdata => \u2|conteo~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|conteo\(1));

-- Location: LCCOMB_X66_Y49_N4
\u2|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add0~4_combout\ = (\u2|conteo\(2) & (\u2|Add0~3\ $ (GND))) # (!\u2|conteo\(2) & (!\u2|Add0~3\ & VCC))
-- \u2|Add0~5\ = CARRY((\u2|conteo\(2) & !\u2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|conteo\(2),
	datad => VCC,
	cin => \u2|Add0~3\,
	combout => \u2|Add0~4_combout\,
	cout => \u2|Add0~5\);

-- Location: FF_X66_Y49_N5
\u2|conteo[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clkl~clkctrl_outclk\,
	d => \u2|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|conteo\(2));

-- Location: LCCOMB_X67_Y49_N20
\u2|conteo~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|conteo~0_combout\ = (\u2|Add0~6_combout\ & !\u2|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u2|Add0~6_combout\,
	datad => \u2|Equal0~10_combout\,
	combout => \u2|conteo~0_combout\);

-- Location: FF_X67_Y49_N21
\u2|conteo[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clkl~clkctrl_outclk\,
	d => \u2|conteo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|conteo\(3));

-- Location: LCCOMB_X67_Y49_N6
\u3|WideOr5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|WideOr5~combout\ = (\u2|conteo\(1) & (((\u2|conteo\(3))))) # (!\u2|conteo\(1) & (\u2|conteo\(2) $ (((\u2|conteo\(0) & !\u2|conteo\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|conteo\(0),
	datab => \u2|conteo\(3),
	datac => \u2|conteo\(2),
	datad => \u2|conteo\(1),
	combout => \u3|WideOr5~combout\);

-- Location: LCCOMB_X67_Y49_N16
\u3|WideOr4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|WideOr4~4_combout\ = (\u2|conteo\(3) & (((\u2|conteo\(2)) # (\u2|conteo\(1))))) # (!\u2|conteo\(3) & (\u2|conteo\(2) & (\u2|conteo\(0) $ (\u2|conteo\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|conteo\(0),
	datab => \u2|conteo\(3),
	datac => \u2|conteo\(2),
	datad => \u2|conteo\(1),
	combout => \u3|WideOr4~4_combout\);

-- Location: LCCOMB_X67_Y49_N0
\u3|b[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|b\(2) = (\u2|conteo\(2) & (((\u2|conteo\(3))))) # (!\u2|conteo\(2) & (\u2|conteo\(1) & ((\u2|conteo\(3)) # (!\u2|conteo\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|conteo\(0),
	datab => \u2|conteo\(3),
	datac => \u2|conteo\(2),
	datad => \u2|conteo\(1),
	combout => \u3|b\(2));

-- Location: LCCOMB_X67_Y49_N30
\u3|WideOr3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|WideOr3~combout\ = (\u2|conteo\(0) & ((\u2|conteo\(3)) # (\u2|conteo\(2) $ (!\u2|conteo\(1))))) # (!\u2|conteo\(0) & ((\u2|conteo\(1) & (\u2|conteo\(3))) # (!\u2|conteo\(1) & ((\u2|conteo\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|conteo\(0),
	datab => \u2|conteo\(3),
	datac => \u2|conteo\(2),
	datad => \u2|conteo\(1),
	combout => \u3|WideOr3~combout\);

-- Location: LCCOMB_X67_Y49_N10
\u3|WideOr2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|WideOr2~0_combout\ = (\u2|conteo\(0)) # ((\u2|conteo\(1) & (\u2|conteo\(3))) # (!\u2|conteo\(1) & ((\u2|conteo\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|conteo\(0),
	datab => \u2|conteo\(3),
	datac => \u2|conteo\(2),
	datad => \u2|conteo\(1),
	combout => \u3|WideOr2~0_combout\);

-- Location: LCCOMB_X67_Y49_N26
\u3|WideOr1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|WideOr1~combout\ = (\u2|conteo\(0) & ((\u2|conteo\(1)) # (\u2|conteo\(3) $ (!\u2|conteo\(2))))) # (!\u2|conteo\(0) & ((\u2|conteo\(2) & (\u2|conteo\(3))) # (!\u2|conteo\(2) & ((\u2|conteo\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|conteo\(0),
	datab => \u2|conteo\(3),
	datac => \u2|conteo\(2),
	datad => \u2|conteo\(1),
	combout => \u3|WideOr1~combout\);

-- Location: LCCOMB_X67_Y49_N24
\u3|WideOr0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|WideOr0~combout\ = (\u2|conteo\(2) & ((\u2|conteo\(3)) # ((\u2|conteo\(0) & \u2|conteo\(1))))) # (!\u2|conteo\(2) & ((\u2|conteo\(3) $ (!\u2|conteo\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|conteo\(0),
	datab => \u2|conteo\(3),
	datac => \u2|conteo\(2),
	datad => \u2|conteo\(1),
	combout => \u3|WideOr0~combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_ssg(0) <= \ssg[0]~output_o\;

ww_ssg(1) <= \ssg[1]~output_o\;

ww_ssg(2) <= \ssg[2]~output_o\;

ww_ssg(3) <= \ssg[3]~output_o\;

ww_ssg(4) <= \ssg[4]~output_o\;

ww_ssg(5) <= \ssg[5]~output_o\;

ww_ssg(6) <= \ssg[6]~output_o\;
END structure;


