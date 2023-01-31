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

-- DATE "11/07/2022 16:09:36"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
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

ENTITY 	PWM IS
    PORT (
	clk : IN std_logic;
	led : OUT std_logic;
	led2 : OUT std_logic;
	led3 : OUT std_logic;
	led4 : OUT std_logic;
	led5 : OUT std_logic;
	led6 : OUT std_logic;
	led7 : OUT std_logic;
	led8 : OUT std_logic;
	led9 : OUT std_logic
	);
END PWM;

-- Design Ports Information
-- led	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led4	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led6	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led7	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led8	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led9	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF PWM IS
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
SIGNAL ww_led : std_logic;
SIGNAL ww_led2 : std_logic;
SIGNAL ww_led3 : std_logic;
SIGNAL ww_led4 : std_logic;
SIGNAL ww_led5 : std_logic;
SIGNAL ww_led6 : std_logic;
SIGNAL ww_led7 : std_logic;
SIGNAL ww_led8 : std_logic;
SIGNAL ww_led9 : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u1|clkl~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \led~output_o\ : std_logic;
SIGNAL \led2~output_o\ : std_logic;
SIGNAL \led3~output_o\ : std_logic;
SIGNAL \led4~output_o\ : std_logic;
SIGNAL \led5~output_o\ : std_logic;
SIGNAL \led6~output_o\ : std_logic;
SIGNAL \led7~output_o\ : std_logic;
SIGNAL \led8~output_o\ : std_logic;
SIGNAL \led9~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \u1|Add0~0_combout\ : std_logic;
SIGNAL \u1|Add0~5\ : std_logic;
SIGNAL \u1|Add0~6_combout\ : std_logic;
SIGNAL \u1|conteo~0_combout\ : std_logic;
SIGNAL \u1|Add0~7\ : std_logic;
SIGNAL \u1|Add0~8_combout\ : std_logic;
SIGNAL \u1|Add0~9\ : std_logic;
SIGNAL \u1|Add0~10_combout\ : std_logic;
SIGNAL \u1|conteo~2_combout\ : std_logic;
SIGNAL \u1|Add0~11\ : std_logic;
SIGNAL \u1|Add0~12_combout\ : std_logic;
SIGNAL \u1|Add0~13\ : std_logic;
SIGNAL \u1|Add0~14_combout\ : std_logic;
SIGNAL \u1|conteo~3_combout\ : std_logic;
SIGNAL \u1|Equal0~1_combout\ : std_logic;
SIGNAL \u1|Add0~15\ : std_logic;
SIGNAL \u1|Add0~16_combout\ : std_logic;
SIGNAL \u1|conteo~4_combout\ : std_logic;
SIGNAL \u1|Add0~17\ : std_logic;
SIGNAL \u1|Add0~18_combout\ : std_logic;
SIGNAL \u1|Add0~19\ : std_logic;
SIGNAL \u1|Add0~20_combout\ : std_logic;
SIGNAL \u1|Add0~21\ : std_logic;
SIGNAL \u1|Add0~22_combout\ : std_logic;
SIGNAL \u1|Add0~23\ : std_logic;
SIGNAL \u1|Add0~24_combout\ : std_logic;
SIGNAL \u1|Add0~25\ : std_logic;
SIGNAL \u1|Add0~26_combout\ : std_logic;
SIGNAL \u1|conteo~5_combout\ : std_logic;
SIGNAL \u1|Add0~27\ : std_logic;
SIGNAL \u1|Add0~28_combout\ : std_logic;
SIGNAL \u1|conteo~6_combout\ : std_logic;
SIGNAL \u1|Equal0~2_combout\ : std_logic;
SIGNAL \u1|Equal0~3_combout\ : std_logic;
SIGNAL \u1|conteo~1_combout\ : std_logic;
SIGNAL \u1|Add0~1\ : std_logic;
SIGNAL \u1|Add0~2_combout\ : std_logic;
SIGNAL \u1|Add0~3\ : std_logic;
SIGNAL \u1|Add0~4_combout\ : std_logic;
SIGNAL \u1|Equal0~0_combout\ : std_logic;
SIGNAL \u1|clkl~0_combout\ : std_logic;
SIGNAL \u1|clkl~q\ : std_logic;
SIGNAL \u1|clkl~clkctrl_outclk\ : std_logic;
SIGNAL \u10|Add0~0_combout\ : std_logic;
SIGNAL \u10|conteo~6_combout\ : std_logic;
SIGNAL \u10|Add0~1\ : std_logic;
SIGNAL \u10|Add0~2_combout\ : std_logic;
SIGNAL \u10|Add0~3\ : std_logic;
SIGNAL \u10|Add0~4_combout\ : std_logic;
SIGNAL \u10|Equal0~3_combout\ : std_logic;
SIGNAL \u10|Add0~5\ : std_logic;
SIGNAL \u10|Add0~6_combout\ : std_logic;
SIGNAL \u10|Add0~7\ : std_logic;
SIGNAL \u10|Add0~8_combout\ : std_logic;
SIGNAL \u10|conteo~5_combout\ : std_logic;
SIGNAL \u10|Add0~9\ : std_logic;
SIGNAL \u10|Add0~10_combout\ : std_logic;
SIGNAL \u10|Add0~11\ : std_logic;
SIGNAL \u10|Add0~13\ : std_logic;
SIGNAL \u10|Add0~14_combout\ : std_logic;
SIGNAL \u10|conteo~4_combout\ : std_logic;
SIGNAL \u10|Add0~15\ : std_logic;
SIGNAL \u10|Add0~17\ : std_logic;
SIGNAL \u10|Add0~18_combout\ : std_logic;
SIGNAL \u10|conteo~2_combout\ : std_logic;
SIGNAL \u10|Add0~19\ : std_logic;
SIGNAL \u10|Add0~20_combout\ : std_logic;
SIGNAL \u10|conteo~0_combout\ : std_logic;
SIGNAL \u10|Equal0~1_combout\ : std_logic;
SIGNAL \u10|Add0~12_combout\ : std_logic;
SIGNAL \u10|conteo~3_combout\ : std_logic;
SIGNAL \u10|Equal0~2_combout\ : std_logic;
SIGNAL \u10|Add0~16_combout\ : std_logic;
SIGNAL \u10|conteo~1_combout\ : std_logic;
SIGNAL \u2|LessThan0~0_combout\ : std_logic;
SIGNAL \u3|LessThan0~2_combout\ : std_logic;
SIGNAL \u4|LessThan0~0_combout\ : std_logic;
SIGNAL \u2|LessThan0~1_combout\ : std_logic;
SIGNAL \u2|snl~q\ : std_logic;
SIGNAL \u3|LessThan0~3_combout\ : std_logic;
SIGNAL \u3|LessThan0~4_combout\ : std_logic;
SIGNAL \u3|LessThan0~6_combout\ : std_logic;
SIGNAL \u3|LessThan0~5_combout\ : std_logic;
SIGNAL \u3|snl~q\ : std_logic;
SIGNAL \u4|LessThan0~1_combout\ : std_logic;
SIGNAL \u4|LessThan0~2_combout\ : std_logic;
SIGNAL \u4|LessThan0~3_combout\ : std_logic;
SIGNAL \u4|snl~q\ : std_logic;
SIGNAL \u10|Equal0~0_combout\ : std_logic;
SIGNAL \u5|LessThan0~0_combout\ : std_logic;
SIGNAL \u5|LessThan0~1_combout\ : std_logic;
SIGNAL \u5|snl~q\ : std_logic;
SIGNAL \u2|LessThan0~2_combout\ : std_logic;
SIGNAL \u6|LessThan0~0_combout\ : std_logic;
SIGNAL \u6|LessThan0~1_combout\ : std_logic;
SIGNAL \u6|snl~q\ : std_logic;
SIGNAL \u7|LessThan0~0_combout\ : std_logic;
SIGNAL \u7|LessThan0~1_combout\ : std_logic;
SIGNAL \u7|snl~q\ : std_logic;
SIGNAL \u8|LessThan0~0_combout\ : std_logic;
SIGNAL \u8|LessThan0~1_combout\ : std_logic;
SIGNAL \u8|LessThan0~2_combout\ : std_logic;
SIGNAL \u8|snl~q\ : std_logic;
SIGNAL \u9|LessThan0~0_combout\ : std_logic;
SIGNAL \u9|LessThan0~1_combout\ : std_logic;
SIGNAL \u9|LessThan0~2_combout\ : std_logic;
SIGNAL \u9|snl~q\ : std_logic;
SIGNAL \u10|LessThan0~2_combout\ : std_logic;
SIGNAL \u10|LessThan0~3_combout\ : std_logic;
SIGNAL \u10|snl~q\ : std_logic;
SIGNAL \u10|conteo\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \u1|conteo\ : std_logic_vector(14 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
led <= ww_led;
led2 <= ww_led2;
led3 <= ww_led3;
led4 <= ww_led4;
led5 <= ww_led5;
led6 <= ww_led6;
led7 <= ww_led7;
led8 <= ww_led8;
led9 <= ww_led9;
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

-- Location: LCCOMB_X44_Y42_N12
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

-- Location: IOOBUF_X46_Y54_N2
\led~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|snl~q\,
	devoe => ww_devoe,
	o => \led~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\led2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|snl~q\,
	devoe => ww_devoe,
	o => \led2~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\led3~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|snl~q\,
	devoe => ww_devoe,
	o => \led3~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\led4~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u5|snl~q\,
	devoe => ww_devoe,
	o => \led4~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\led5~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u6|snl~q\,
	devoe => ww_devoe,
	o => \led5~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\led6~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u7|snl~q\,
	devoe => ww_devoe,
	o => \led6~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\led7~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u8|snl~q\,
	devoe => ww_devoe,
	o => \led7~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\led8~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u9|snl~q\,
	devoe => ww_devoe,
	o => \led8~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\led9~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u10|snl~q\,
	devoe => ww_devoe,
	o => \led9~output_o\);

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

-- Location: LCCOMB_X46_Y53_N0
\u1|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Add0~0_combout\ = \u1|conteo\(0) $ (VCC)
-- \u1|Add0~1\ = CARRY(\u1|conteo\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|conteo\(0),
	datad => VCC,
	combout => \u1|Add0~0_combout\,
	cout => \u1|Add0~1\);

-- Location: LCCOMB_X46_Y53_N4
\u1|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Add0~4_combout\ = (\u1|conteo\(2) & (\u1|Add0~3\ $ (GND))) # (!\u1|conteo\(2) & (!\u1|Add0~3\ & VCC))
-- \u1|Add0~5\ = CARRY((\u1|conteo\(2) & !\u1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|conteo\(2),
	datad => VCC,
	cin => \u1|Add0~3\,
	combout => \u1|Add0~4_combout\,
	cout => \u1|Add0~5\);

-- Location: LCCOMB_X46_Y53_N6
\u1|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Add0~6_combout\ = (\u1|conteo\(3) & (!\u1|Add0~5\)) # (!\u1|conteo\(3) & ((\u1|Add0~5\) # (GND)))
-- \u1|Add0~7\ = CARRY((!\u1|Add0~5\) # (!\u1|conteo\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|conteo\(3),
	datad => VCC,
	cin => \u1|Add0~5\,
	combout => \u1|Add0~6_combout\,
	cout => \u1|Add0~7\);

-- Location: LCCOMB_X46_Y53_N30
\u1|conteo~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|conteo~0_combout\ = (\u1|Add0~6_combout\ & (((!\u1|Equal0~3_combout\) # (!\u1|Equal0~0_combout\)) # (!\u1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Add0~6_combout\,
	datab => \u1|Equal0~1_combout\,
	datac => \u1|Equal0~0_combout\,
	datad => \u1|Equal0~3_combout\,
	combout => \u1|conteo~0_combout\);

-- Location: FF_X46_Y53_N31
\u1|conteo[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|conteo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|conteo\(3));

-- Location: LCCOMB_X46_Y53_N8
\u1|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Add0~8_combout\ = (\u1|conteo\(4) & (\u1|Add0~7\ $ (GND))) # (!\u1|conteo\(4) & (!\u1|Add0~7\ & VCC))
-- \u1|Add0~9\ = CARRY((\u1|conteo\(4) & !\u1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|conteo\(4),
	datad => VCC,
	cin => \u1|Add0~7\,
	combout => \u1|Add0~8_combout\,
	cout => \u1|Add0~9\);

-- Location: FF_X46_Y53_N9
\u1|conteo[4]\ : dffeas
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
	q => \u1|conteo\(4));

-- Location: LCCOMB_X46_Y53_N10
\u1|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Add0~10_combout\ = (\u1|conteo\(5) & (!\u1|Add0~9\)) # (!\u1|conteo\(5) & ((\u1|Add0~9\) # (GND)))
-- \u1|Add0~11\ = CARRY((!\u1|Add0~9\) # (!\u1|conteo\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|conteo\(5),
	datad => VCC,
	cin => \u1|Add0~9\,
	combout => \u1|Add0~10_combout\,
	cout => \u1|Add0~11\);

-- Location: LCCOMB_X45_Y53_N26
\u1|conteo~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|conteo~2_combout\ = (\u1|Add0~10_combout\ & (((!\u1|Equal0~3_combout\) # (!\u1|Equal0~1_combout\)) # (!\u1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Equal0~0_combout\,
	datab => \u1|Equal0~1_combout\,
	datac => \u1|Equal0~3_combout\,
	datad => \u1|Add0~10_combout\,
	combout => \u1|conteo~2_combout\);

-- Location: FF_X45_Y53_N27
\u1|conteo[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|conteo~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|conteo\(5));

-- Location: LCCOMB_X46_Y53_N12
\u1|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Add0~12_combout\ = (\u1|conteo\(6) & (\u1|Add0~11\ $ (GND))) # (!\u1|conteo\(6) & (!\u1|Add0~11\ & VCC))
-- \u1|Add0~13\ = CARRY((\u1|conteo\(6) & !\u1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|conteo\(6),
	datad => VCC,
	cin => \u1|Add0~11\,
	combout => \u1|Add0~12_combout\,
	cout => \u1|Add0~13\);

-- Location: FF_X46_Y53_N13
\u1|conteo[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|conteo\(6));

-- Location: LCCOMB_X46_Y53_N14
\u1|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Add0~14_combout\ = (\u1|conteo\(7) & (!\u1|Add0~13\)) # (!\u1|conteo\(7) & ((\u1|Add0~13\) # (GND)))
-- \u1|Add0~15\ = CARRY((!\u1|Add0~13\) # (!\u1|conteo\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|conteo\(7),
	datad => VCC,
	cin => \u1|Add0~13\,
	combout => \u1|Add0~14_combout\,
	cout => \u1|Add0~15\);

-- Location: LCCOMB_X45_Y53_N10
\u1|conteo~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|conteo~3_combout\ = (\u1|Add0~14_combout\ & (((!\u1|Equal0~0_combout\) # (!\u1|Equal0~1_combout\)) # (!\u1|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Equal0~3_combout\,
	datab => \u1|Equal0~1_combout\,
	datac => \u1|Add0~14_combout\,
	datad => \u1|Equal0~0_combout\,
	combout => \u1|conteo~3_combout\);

-- Location: FF_X45_Y53_N11
\u1|conteo[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|conteo~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|conteo\(7));

-- Location: LCCOMB_X45_Y53_N24
\u1|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Equal0~1_combout\ = (\u1|conteo\(5) & (!\u1|conteo\(4) & (!\u1|conteo\(6) & \u1|conteo\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|conteo\(5),
	datab => \u1|conteo\(4),
	datac => \u1|conteo\(6),
	datad => \u1|conteo\(7),
	combout => \u1|Equal0~1_combout\);

-- Location: LCCOMB_X46_Y53_N16
\u1|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Add0~16_combout\ = (\u1|conteo\(8) & (\u1|Add0~15\ $ (GND))) # (!\u1|conteo\(8) & (!\u1|Add0~15\ & VCC))
-- \u1|Add0~17\ = CARRY((\u1|conteo\(8) & !\u1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|conteo\(8),
	datad => VCC,
	cin => \u1|Add0~15\,
	combout => \u1|Add0~16_combout\,
	cout => \u1|Add0~17\);

-- Location: LCCOMB_X45_Y53_N14
\u1|conteo~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|conteo~4_combout\ = (\u1|Add0~16_combout\ & (((!\u1|Equal0~0_combout\) # (!\u1|Equal0~1_combout\)) # (!\u1|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Equal0~3_combout\,
	datab => \u1|Equal0~1_combout\,
	datac => \u1|Equal0~0_combout\,
	datad => \u1|Add0~16_combout\,
	combout => \u1|conteo~4_combout\);

-- Location: FF_X45_Y53_N15
\u1|conteo[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|conteo~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|conteo\(8));

-- Location: LCCOMB_X46_Y53_N18
\u1|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Add0~18_combout\ = (\u1|conteo\(9) & (!\u1|Add0~17\)) # (!\u1|conteo\(9) & ((\u1|Add0~17\) # (GND)))
-- \u1|Add0~19\ = CARRY((!\u1|Add0~17\) # (!\u1|conteo\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|conteo\(9),
	datad => VCC,
	cin => \u1|Add0~17\,
	combout => \u1|Add0~18_combout\,
	cout => \u1|Add0~19\);

-- Location: FF_X46_Y53_N19
\u1|conteo[9]\ : dffeas
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
	q => \u1|conteo\(9));

-- Location: LCCOMB_X46_Y53_N20
\u1|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Add0~20_combout\ = (\u1|conteo\(10) & (\u1|Add0~19\ $ (GND))) # (!\u1|conteo\(10) & (!\u1|Add0~19\ & VCC))
-- \u1|Add0~21\ = CARRY((\u1|conteo\(10) & !\u1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|conteo\(10),
	datad => VCC,
	cin => \u1|Add0~19\,
	combout => \u1|Add0~20_combout\,
	cout => \u1|Add0~21\);

-- Location: FF_X46_Y53_N21
\u1|conteo[10]\ : dffeas
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
	q => \u1|conteo\(10));

-- Location: LCCOMB_X46_Y53_N22
\u1|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Add0~22_combout\ = (\u1|conteo\(11) & (!\u1|Add0~21\)) # (!\u1|conteo\(11) & ((\u1|Add0~21\) # (GND)))
-- \u1|Add0~23\ = CARRY((!\u1|Add0~21\) # (!\u1|conteo\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|conteo\(11),
	datad => VCC,
	cin => \u1|Add0~21\,
	combout => \u1|Add0~22_combout\,
	cout => \u1|Add0~23\);

-- Location: FF_X46_Y53_N23
\u1|conteo[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|conteo\(11));

-- Location: LCCOMB_X46_Y53_N24
\u1|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Add0~24_combout\ = (\u1|conteo\(12) & (\u1|Add0~23\ $ (GND))) # (!\u1|conteo\(12) & (!\u1|Add0~23\ & VCC))
-- \u1|Add0~25\ = CARRY((\u1|conteo\(12) & !\u1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|conteo\(12),
	datad => VCC,
	cin => \u1|Add0~23\,
	combout => \u1|Add0~24_combout\,
	cout => \u1|Add0~25\);

-- Location: FF_X46_Y53_N25
\u1|conteo[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|conteo\(12));

-- Location: LCCOMB_X46_Y53_N26
\u1|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Add0~26_combout\ = (\u1|conteo\(13) & (!\u1|Add0~25\)) # (!\u1|conteo\(13) & ((\u1|Add0~25\) # (GND)))
-- \u1|Add0~27\ = CARRY((!\u1|Add0~25\) # (!\u1|conteo\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|conteo\(13),
	datad => VCC,
	cin => \u1|Add0~25\,
	combout => \u1|Add0~26_combout\,
	cout => \u1|Add0~27\);

-- Location: LCCOMB_X45_Y53_N8
\u1|conteo~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|conteo~5_combout\ = (\u1|Add0~26_combout\ & (((!\u1|Equal0~0_combout\) # (!\u1|Equal0~1_combout\)) # (!\u1|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Equal0~3_combout\,
	datab => \u1|Equal0~1_combout\,
	datac => \u1|Equal0~0_combout\,
	datad => \u1|Add0~26_combout\,
	combout => \u1|conteo~5_combout\);

-- Location: FF_X45_Y53_N9
\u1|conteo[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|conteo~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|conteo\(13));

-- Location: LCCOMB_X46_Y53_N28
\u1|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Add0~28_combout\ = \u1|Add0~27\ $ (!\u1|conteo\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u1|conteo\(14),
	cin => \u1|Add0~27\,
	combout => \u1|Add0~28_combout\);

-- Location: LCCOMB_X45_Y53_N20
\u1|conteo~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|conteo~6_combout\ = (\u1|Add0~28_combout\ & (((!\u1|Equal0~0_combout\) # (!\u1|Equal0~1_combout\)) # (!\u1|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Equal0~3_combout\,
	datab => \u1|Equal0~1_combout\,
	datac => \u1|Equal0~0_combout\,
	datad => \u1|Add0~28_combout\,
	combout => \u1|conteo~6_combout\);

-- Location: FF_X45_Y53_N21
\u1|conteo[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|conteo~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|conteo\(14));

-- Location: LCCOMB_X45_Y53_N28
\u1|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Equal0~2_combout\ = (!\u1|conteo\(10) & (!\u1|conteo\(9) & (\u1|conteo\(8) & !\u1|conteo\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|conteo\(10),
	datab => \u1|conteo\(9),
	datac => \u1|conteo\(8),
	datad => \u1|conteo\(11),
	combout => \u1|Equal0~2_combout\);

-- Location: LCCOMB_X45_Y53_N22
\u1|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Equal0~3_combout\ = (\u1|conteo\(13) & (\u1|conteo\(14) & (!\u1|conteo\(12) & \u1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|conteo\(13),
	datab => \u1|conteo\(14),
	datac => \u1|conteo\(12),
	datad => \u1|Equal0~2_combout\,
	combout => \u1|Equal0~3_combout\);

-- Location: LCCOMB_X45_Y53_N6
\u1|conteo~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|conteo~1_combout\ = (\u1|Add0~0_combout\ & (((!\u1|Equal0~1_combout\) # (!\u1|Equal0~3_combout\)) # (!\u1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Equal0~0_combout\,
	datab => \u1|Add0~0_combout\,
	datac => \u1|Equal0~3_combout\,
	datad => \u1|Equal0~1_combout\,
	combout => \u1|conteo~1_combout\);

-- Location: FF_X46_Y53_N29
\u1|conteo[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u1|conteo~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|conteo\(0));

-- Location: LCCOMB_X46_Y53_N2
\u1|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Add0~2_combout\ = (\u1|conteo\(1) & (!\u1|Add0~1\)) # (!\u1|conteo\(1) & ((\u1|Add0~1\) # (GND)))
-- \u1|Add0~3\ = CARRY((!\u1|Add0~1\) # (!\u1|conteo\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|conteo\(1),
	datad => VCC,
	cin => \u1|Add0~1\,
	combout => \u1|Add0~2_combout\,
	cout => \u1|Add0~3\);

-- Location: FF_X46_Y53_N3
\u1|conteo[1]\ : dffeas
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
	q => \u1|conteo\(1));

-- Location: FF_X46_Y53_N5
\u1|conteo[2]\ : dffeas
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
	q => \u1|conteo\(2));

-- Location: LCCOMB_X45_Y53_N30
\u1|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Equal0~0_combout\ = (!\u1|conteo\(2) & (!\u1|conteo\(0) & (\u1|conteo\(3) & !\u1|conteo\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|conteo\(2),
	datab => \u1|conteo\(0),
	datac => \u1|conteo\(3),
	datad => \u1|conteo\(1),
	combout => \u1|Equal0~0_combout\);

-- Location: LCCOMB_X45_Y53_N4
\u1|clkl~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|clkl~0_combout\ = \u1|clkl~q\ $ (((\u1|Equal0~0_combout\ & (\u1|Equal0~1_combout\ & \u1|Equal0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Equal0~0_combout\,
	datab => \u1|Equal0~1_combout\,
	datac => \u1|Equal0~3_combout\,
	datad => \u1|clkl~q\,
	combout => \u1|clkl~0_combout\);

-- Location: FF_X45_Y53_N13
\u1|clkl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u1|clkl~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|clkl~q\);

-- Location: CLKCTRL_G12
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

-- Location: LCCOMB_X58_Y51_N4
\u10|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u10|Add0~0_combout\ = \u10|conteo\(0) $ (VCC)
-- \u10|Add0~1\ = CARRY(\u10|conteo\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|conteo\(0),
	datad => VCC,
	combout => \u10|Add0~0_combout\,
	cout => \u10|Add0~1\);

-- Location: LCCOMB_X58_Y51_N30
\u10|conteo~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u10|conteo~6_combout\ = (\u10|Add0~0_combout\ & (((!\u10|Equal0~2_combout\) # (!\u10|Equal0~1_combout\)) # (!\u10|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|Equal0~3_combout\,
	datab => \u10|Add0~0_combout\,
	datac => \u10|Equal0~1_combout\,
	datad => \u10|Equal0~2_combout\,
	combout => \u10|conteo~6_combout\);

-- Location: FF_X58_Y51_N31
\u10|conteo[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clkl~clkctrl_outclk\,
	d => \u10|conteo~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u10|conteo\(0));

-- Location: LCCOMB_X58_Y51_N6
\u10|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u10|Add0~2_combout\ = (\u10|conteo\(1) & (!\u10|Add0~1\)) # (!\u10|conteo\(1) & ((\u10|Add0~1\) # (GND)))
-- \u10|Add0~3\ = CARRY((!\u10|Add0~1\) # (!\u10|conteo\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u10|conteo\(1),
	datad => VCC,
	cin => \u10|Add0~1\,
	combout => \u10|Add0~2_combout\,
	cout => \u10|Add0~3\);

-- Location: FF_X58_Y51_N7
\u10|conteo[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clkl~clkctrl_outclk\,
	d => \u10|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u10|conteo\(1));

-- Location: LCCOMB_X58_Y51_N8
\u10|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u10|Add0~4_combout\ = (\u10|conteo\(2) & (\u10|Add0~3\ $ (GND))) # (!\u10|conteo\(2) & (!\u10|Add0~3\ & VCC))
-- \u10|Add0~5\ = CARRY((\u10|conteo\(2) & !\u10|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u10|conteo\(2),
	datad => VCC,
	cin => \u10|Add0~3\,
	combout => \u10|Add0~4_combout\,
	cout => \u10|Add0~5\);

-- Location: FF_X58_Y51_N9
\u10|conteo[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clkl~clkctrl_outclk\,
	d => \u10|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u10|conteo\(2));

-- Location: LCCOMB_X57_Y51_N0
\u10|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u10|Equal0~3_combout\ = (!\u10|conteo\(0) & (!\u10|conteo\(2) & !\u10|conteo\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|conteo\(0),
	datac => \u10|conteo\(2),
	datad => \u10|conteo\(1),
	combout => \u10|Equal0~3_combout\);

-- Location: LCCOMB_X58_Y51_N10
\u10|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u10|Add0~6_combout\ = (\u10|conteo\(3) & (!\u10|Add0~5\)) # (!\u10|conteo\(3) & ((\u10|Add0~5\) # (GND)))
-- \u10|Add0~7\ = CARRY((!\u10|Add0~5\) # (!\u10|conteo\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u10|conteo\(3),
	datad => VCC,
	cin => \u10|Add0~5\,
	combout => \u10|Add0~6_combout\,
	cout => \u10|Add0~7\);

-- Location: FF_X58_Y51_N11
\u10|conteo[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clkl~clkctrl_outclk\,
	d => \u10|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u10|conteo\(3));

-- Location: LCCOMB_X58_Y51_N12
\u10|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u10|Add0~8_combout\ = (\u10|conteo\(4) & (\u10|Add0~7\ $ (GND))) # (!\u10|conteo\(4) & (!\u10|Add0~7\ & VCC))
-- \u10|Add0~9\ = CARRY((\u10|conteo\(4) & !\u10|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u10|conteo\(4),
	datad => VCC,
	cin => \u10|Add0~7\,
	combout => \u10|Add0~8_combout\,
	cout => \u10|Add0~9\);

-- Location: LCCOMB_X58_Y51_N0
\u10|conteo~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u10|conteo~5_combout\ = (\u10|Add0~8_combout\ & (((!\u10|Equal0~3_combout\) # (!\u10|Equal0~1_combout\)) # (!\u10|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|Equal0~2_combout\,
	datab => \u10|Equal0~1_combout\,
	datac => \u10|Equal0~3_combout\,
	datad => \u10|Add0~8_combout\,
	combout => \u10|conteo~5_combout\);

-- Location: FF_X58_Y51_N1
\u10|conteo[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clkl~clkctrl_outclk\,
	d => \u10|conteo~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u10|conteo\(4));

-- Location: LCCOMB_X58_Y51_N14
\u10|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u10|Add0~10_combout\ = (\u10|conteo\(5) & (!\u10|Add0~9\)) # (!\u10|conteo\(5) & ((\u10|Add0~9\) # (GND)))
-- \u10|Add0~11\ = CARRY((!\u10|Add0~9\) # (!\u10|conteo\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u10|conteo\(5),
	datad => VCC,
	cin => \u10|Add0~9\,
	combout => \u10|Add0~10_combout\,
	cout => \u10|Add0~11\);

-- Location: FF_X58_Y51_N15
\u10|conteo[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clkl~clkctrl_outclk\,
	d => \u10|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u10|conteo\(5));

-- Location: LCCOMB_X58_Y51_N16
\u10|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u10|Add0~12_combout\ = (\u10|conteo\(6) & (\u10|Add0~11\ $ (GND))) # (!\u10|conteo\(6) & (!\u10|Add0~11\ & VCC))
-- \u10|Add0~13\ = CARRY((\u10|conteo\(6) & !\u10|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u10|conteo\(6),
	datad => VCC,
	cin => \u10|Add0~11\,
	combout => \u10|Add0~12_combout\,
	cout => \u10|Add0~13\);

-- Location: LCCOMB_X58_Y51_N18
\u10|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u10|Add0~14_combout\ = (\u10|conteo\(7) & (!\u10|Add0~13\)) # (!\u10|conteo\(7) & ((\u10|Add0~13\) # (GND)))
-- \u10|Add0~15\ = CARRY((!\u10|Add0~13\) # (!\u10|conteo\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u10|conteo\(7),
	datad => VCC,
	cin => \u10|Add0~13\,
	combout => \u10|Add0~14_combout\,
	cout => \u10|Add0~15\);

-- Location: LCCOMB_X58_Y51_N2
\u10|conteo~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u10|conteo~4_combout\ = (\u10|Add0~14_combout\ & (((!\u10|Equal0~3_combout\) # (!\u10|Equal0~1_combout\)) # (!\u10|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|Equal0~2_combout\,
	datab => \u10|Equal0~1_combout\,
	datac => \u10|Equal0~3_combout\,
	datad => \u10|Add0~14_combout\,
	combout => \u10|conteo~4_combout\);

-- Location: FF_X58_Y51_N3
\u10|conteo[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clkl~clkctrl_outclk\,
	d => \u10|conteo~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u10|conteo\(7));

-- Location: LCCOMB_X58_Y51_N20
\u10|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u10|Add0~16_combout\ = (\u10|conteo\(8) & (\u10|Add0~15\ $ (GND))) # (!\u10|conteo\(8) & (!\u10|Add0~15\ & VCC))
-- \u10|Add0~17\ = CARRY((\u10|conteo\(8) & !\u10|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u10|conteo\(8),
	datad => VCC,
	cin => \u10|Add0~15\,
	combout => \u10|Add0~16_combout\,
	cout => \u10|Add0~17\);

-- Location: LCCOMB_X58_Y51_N22
\u10|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u10|Add0~18_combout\ = (\u10|conteo\(9) & (!\u10|Add0~17\)) # (!\u10|conteo\(9) & ((\u10|Add0~17\) # (GND)))
-- \u10|Add0~19\ = CARRY((!\u10|Add0~17\) # (!\u10|conteo\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u10|conteo\(9),
	datad => VCC,
	cin => \u10|Add0~17\,
	combout => \u10|Add0~18_combout\,
	cout => \u10|Add0~19\);

-- Location: LCCOMB_X57_Y51_N16
\u10|conteo~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u10|conteo~2_combout\ = (\u10|Add0~18_combout\ & (((!\u10|Equal0~2_combout\) # (!\u10|Equal0~3_combout\)) # (!\u10|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|Equal0~1_combout\,
	datab => \u10|Equal0~3_combout\,
	datac => \u10|Equal0~2_combout\,
	datad => \u10|Add0~18_combout\,
	combout => \u10|conteo~2_combout\);

-- Location: FF_X57_Y51_N17
\u10|conteo[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clkl~clkctrl_outclk\,
	d => \u10|conteo~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u10|conteo\(9));

-- Location: LCCOMB_X58_Y51_N24
\u10|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u10|Add0~20_combout\ = \u10|Add0~19\ $ (!\u10|conteo\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u10|conteo\(10),
	cin => \u10|Add0~19\,
	combout => \u10|Add0~20_combout\);

-- Location: LCCOMB_X58_Y51_N28
\u10|conteo~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u10|conteo~0_combout\ = (\u10|Add0~20_combout\ & (((!\u10|Equal0~3_combout\) # (!\u10|Equal0~1_combout\)) # (!\u10|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|Equal0~2_combout\,
	datab => \u10|Equal0~1_combout\,
	datac => \u10|Equal0~3_combout\,
	datad => \u10|Add0~20_combout\,
	combout => \u10|conteo~0_combout\);

-- Location: FF_X58_Y51_N29
\u10|conteo[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clkl~clkctrl_outclk\,
	d => \u10|conteo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u10|conteo\(10));

-- Location: LCCOMB_X56_Y51_N2
\u10|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u10|Equal0~1_combout\ = (\u10|conteo\(8) & (!\u10|conteo\(5) & (\u10|conteo\(10) & \u10|conteo\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|conteo\(8),
	datab => \u10|conteo\(5),
	datac => \u10|conteo\(10),
	datad => \u10|conteo\(9),
	combout => \u10|Equal0~1_combout\);

-- Location: LCCOMB_X57_Y51_N6
\u10|conteo~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u10|conteo~3_combout\ = (\u10|Add0~12_combout\ & (((!\u10|Equal0~2_combout\) # (!\u10|Equal0~3_combout\)) # (!\u10|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|Equal0~1_combout\,
	datab => \u10|Equal0~3_combout\,
	datac => \u10|Equal0~2_combout\,
	datad => \u10|Add0~12_combout\,
	combout => \u10|conteo~3_combout\);

-- Location: FF_X57_Y51_N7
\u10|conteo[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clkl~clkctrl_outclk\,
	d => \u10|conteo~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u10|conteo\(6));

-- Location: LCCOMB_X57_Y51_N14
\u10|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u10|Equal0~2_combout\ = (\u10|conteo\(6) & (\u10|conteo\(4) & (!\u10|conteo\(3) & \u10|conteo\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|conteo\(6),
	datab => \u10|conteo\(4),
	datac => \u10|conteo\(3),
	datad => \u10|conteo\(7),
	combout => \u10|Equal0~2_combout\);

-- Location: LCCOMB_X58_Y51_N26
\u10|conteo~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u10|conteo~1_combout\ = (\u10|Add0~16_combout\ & (((!\u10|Equal0~3_combout\) # (!\u10|Equal0~1_combout\)) # (!\u10|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|Equal0~2_combout\,
	datab => \u10|Equal0~1_combout\,
	datac => \u10|Equal0~3_combout\,
	datad => \u10|Add0~16_combout\,
	combout => \u10|conteo~1_combout\);

-- Location: FF_X58_Y51_N27
\u10|conteo[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clkl~clkctrl_outclk\,
	d => \u10|conteo~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u10|conteo\(8));

-- Location: LCCOMB_X56_Y51_N26
\u2|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan0~0_combout\ = (\u10|conteo\(8)) # ((\u10|conteo\(9)) # (\u10|conteo\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|conteo\(8),
	datab => \u10|conteo\(9),
	datac => \u10|conteo\(10),
	combout => \u2|LessThan0~0_combout\);

-- Location: LCCOMB_X57_Y51_N8
\u3|LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|LessThan0~2_combout\ = (\u10|conteo\(5) & (\u10|conteo\(6) & \u10|conteo\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u10|conteo\(5),
	datac => \u10|conteo\(6),
	datad => \u10|conteo\(7),
	combout => \u3|LessThan0~2_combout\);

-- Location: LCCOMB_X57_Y51_N2
\u4|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|LessThan0~0_combout\ = (\u10|conteo\(3) & ((\u10|conteo\(2)) # ((\u10|conteo\(0) & \u10|conteo\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|conteo\(0),
	datab => \u10|conteo\(2),
	datac => \u10|conteo\(3),
	datad => \u10|conteo\(1),
	combout => \u4|LessThan0~0_combout\);

-- Location: LCCOMB_X56_Y51_N24
\u2|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan0~1_combout\ = (!\u2|LessThan0~0_combout\ & (((!\u4|LessThan0~0_combout\) # (!\u3|LessThan0~2_combout\)) # (!\u10|conteo\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|LessThan0~0_combout\,
	datab => \u10|conteo\(4),
	datac => \u3|LessThan0~2_combout\,
	datad => \u4|LessThan0~0_combout\,
	combout => \u2|LessThan0~1_combout\);

-- Location: FF_X56_Y51_N25
\u2|snl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clkl~clkctrl_outclk\,
	d => \u2|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|snl~q\);

-- Location: LCCOMB_X57_Y51_N24
\u3|LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|LessThan0~3_combout\ = (!\u10|conteo\(3) & (!\u10|conteo\(2) & ((!\u10|conteo\(1)) # (!\u10|conteo\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|conteo\(0),
	datab => \u10|conteo\(3),
	datac => \u10|conteo\(2),
	datad => \u10|conteo\(1),
	combout => \u3|LessThan0~3_combout\);

-- Location: LCCOMB_X57_Y51_N10
\u3|LessThan0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|LessThan0~4_combout\ = (\u10|conteo\(6) & ((\u10|conteo\(4)) # (!\u3|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u10|conteo\(6),
	datac => \u10|conteo\(4),
	datad => \u3|LessThan0~3_combout\,
	combout => \u3|LessThan0~4_combout\);

-- Location: LCCOMB_X57_Y51_N26
\u3|LessThan0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|LessThan0~6_combout\ = (\u10|conteo\(7) & ((\u3|LessThan0~4_combout\) # ((\u10|conteo\(6) & \u10|conteo\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|conteo\(7),
	datab => \u10|conteo\(6),
	datac => \u10|conteo\(5),
	datad => \u3|LessThan0~4_combout\,
	combout => \u3|LessThan0~6_combout\);

-- Location: LCCOMB_X57_Y51_N4
\u3|LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|LessThan0~5_combout\ = (!\u10|conteo\(10) & (!\u10|conteo\(9) & ((!\u3|LessThan0~6_combout\) # (!\u10|conteo\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|conteo\(10),
	datab => \u10|conteo\(8),
	datac => \u3|LessThan0~6_combout\,
	datad => \u10|conteo\(9),
	combout => \u3|LessThan0~5_combout\);

-- Location: FF_X57_Y51_N5
\u3|snl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clkl~clkctrl_outclk\,
	d => \u3|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|snl~q\);

-- Location: LCCOMB_X56_Y51_N28
\u4|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|LessThan0~1_combout\ = (!\u10|conteo\(5) & !\u10|conteo\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u10|conteo\(5),
	datad => \u10|conteo\(6),
	combout => \u4|LessThan0~1_combout\);

-- Location: LCCOMB_X56_Y51_N18
\u4|LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|LessThan0~2_combout\ = (\u10|conteo\(7) & (((\u10|conteo\(4)) # (\u4|LessThan0~0_combout\)) # (!\u4|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|conteo\(7),
	datab => \u4|LessThan0~1_combout\,
	datac => \u10|conteo\(4),
	datad => \u4|LessThan0~0_combout\,
	combout => \u4|LessThan0~2_combout\);

-- Location: LCCOMB_X56_Y51_N14
\u4|LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|LessThan0~3_combout\ = (!\u10|conteo\(10) & (((!\u10|conteo\(8) & !\u4|LessThan0~2_combout\)) # (!\u10|conteo\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|conteo\(10),
	datab => \u10|conteo\(9),
	datac => \u10|conteo\(8),
	datad => \u4|LessThan0~2_combout\,
	combout => \u4|LessThan0~3_combout\);

-- Location: FF_X56_Y51_N15
\u4|snl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clkl~clkctrl_outclk\,
	d => \u4|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|snl~q\);

-- Location: LCCOMB_X56_Y51_N20
\u10|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u10|Equal0~0_combout\ = (\u10|conteo\(9) & \u10|conteo\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u10|conteo\(9),
	datac => \u10|conteo\(8),
	combout => \u10|Equal0~0_combout\);

-- Location: LCCOMB_X56_Y51_N6
\u5|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u5|LessThan0~0_combout\ = (\u10|conteo\(6) & ((\u10|conteo\(5)) # ((\u10|conteo\(4) & !\u3|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|conteo\(6),
	datab => \u10|conteo\(5),
	datac => \u10|conteo\(4),
	datad => \u3|LessThan0~3_combout\,
	combout => \u5|LessThan0~0_combout\);

-- Location: LCCOMB_X56_Y51_N16
\u5|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u5|LessThan0~1_combout\ = (!\u10|conteo\(10) & (((!\u10|conteo\(7) & !\u5|LessThan0~0_combout\)) # (!\u10|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|conteo\(10),
	datab => \u10|Equal0~0_combout\,
	datac => \u10|conteo\(7),
	datad => \u5|LessThan0~0_combout\,
	combout => \u5|LessThan0~1_combout\);

-- Location: FF_X56_Y51_N17
\u5|snl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clkl~clkctrl_outclk\,
	d => \u5|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|snl~q\);

-- Location: LCCOMB_X57_Y51_N20
\u2|LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan0~2_combout\ = (\u10|conteo\(4) & \u4|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u10|conteo\(4),
	datad => \u4|LessThan0~0_combout\,
	combout => \u2|LessThan0~2_combout\);

-- Location: LCCOMB_X56_Y51_N8
\u6|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u6|LessThan0~0_combout\ = (\u10|conteo\(6)) # ((\u10|conteo\(9)) # ((\u10|conteo\(8)) # (\u10|conteo\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|conteo\(6),
	datab => \u10|conteo\(9),
	datac => \u10|conteo\(8),
	datad => \u10|conteo\(5),
	combout => \u6|LessThan0~0_combout\);

-- Location: LCCOMB_X57_Y51_N18
\u6|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u6|LessThan0~1_combout\ = ((!\u10|conteo\(7) & (!\u2|LessThan0~2_combout\ & !\u6|LessThan0~0_combout\))) # (!\u10|conteo\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|conteo\(7),
	datab => \u2|LessThan0~2_combout\,
	datac => \u10|conteo\(10),
	datad => \u6|LessThan0~0_combout\,
	combout => \u6|LessThan0~1_combout\);

-- Location: FF_X57_Y51_N19
\u6|snl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clkl~clkctrl_outclk\,
	d => \u6|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|snl~q\);

-- Location: LCCOMB_X57_Y51_N22
\u7|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|LessThan0~0_combout\ = (\u10|conteo\(10) & (\u3|LessThan0~2_combout\ & ((\u10|conteo\(4)) # (!\u3|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|conteo\(10),
	datab => \u10|conteo\(4),
	datac => \u3|LessThan0~2_combout\,
	datad => \u3|LessThan0~3_combout\,
	combout => \u7|LessThan0~0_combout\);

-- Location: LCCOMB_X57_Y51_N12
\u7|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|LessThan0~1_combout\ = (!\u7|LessThan0~0_combout\ & (((!\u10|conteo\(9) & !\u10|conteo\(8))) # (!\u10|conteo\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|LessThan0~0_combout\,
	datab => \u10|conteo\(9),
	datac => \u10|conteo\(10),
	datad => \u10|conteo\(8),
	combout => \u7|LessThan0~1_combout\);

-- Location: FF_X57_Y51_N13
\u7|snl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clkl~clkctrl_outclk\,
	d => \u7|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|snl~q\);

-- Location: LCCOMB_X56_Y51_N30
\u8|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|LessThan0~0_combout\ = (\u10|conteo\(6)) # ((\u10|conteo\(5) & ((\u10|conteo\(4)) # (\u4|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|conteo\(6),
	datab => \u10|conteo\(5),
	datac => \u10|conteo\(4),
	datad => \u4|LessThan0~0_combout\,
	combout => \u8|LessThan0~0_combout\);

-- Location: LCCOMB_X56_Y51_N12
\u8|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|LessThan0~1_combout\ = (\u10|conteo\(8) & \u10|conteo\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|conteo\(8),
	datac => \u10|conteo\(7),
	combout => \u8|LessThan0~1_combout\);

-- Location: LCCOMB_X56_Y51_N10
\u8|LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|LessThan0~2_combout\ = ((!\u10|conteo\(9) & ((!\u8|LessThan0~1_combout\) # (!\u8|LessThan0~0_combout\)))) # (!\u10|conteo\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|conteo\(10),
	datab => \u10|conteo\(9),
	datac => \u8|LessThan0~0_combout\,
	datad => \u8|LessThan0~1_combout\,
	combout => \u8|LessThan0~2_combout\);

-- Location: FF_X56_Y51_N11
\u8|snl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clkl~clkctrl_outclk\,
	d => \u8|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8|snl~q\);

-- Location: LCCOMB_X56_Y51_N22
\u9|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u9|LessThan0~0_combout\ = (\u10|conteo\(9) & (\u10|conteo\(10) & ((\u10|conteo\(7)) # (\u10|conteo\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|conteo\(7),
	datab => \u10|conteo\(9),
	datac => \u10|conteo\(10),
	datad => \u10|conteo\(8),
	combout => \u9|LessThan0~0_combout\);

-- Location: LCCOMB_X56_Y51_N4
\u9|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u9|LessThan0~1_combout\ = (\u10|conteo\(6) & (\u10|conteo\(5) & (\u10|conteo\(10) & \u10|conteo\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|conteo\(6),
	datab => \u10|conteo\(5),
	datac => \u10|conteo\(10),
	datad => \u10|conteo\(9),
	combout => \u9|LessThan0~1_combout\);

-- Location: LCCOMB_X56_Y51_N0
\u9|LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u9|LessThan0~2_combout\ = (!\u9|LessThan0~0_combout\ & (((\u3|LessThan0~3_combout\) # (!\u9|LessThan0~1_combout\)) # (!\u10|conteo\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u9|LessThan0~0_combout\,
	datab => \u10|conteo\(4),
	datac => \u9|LessThan0~1_combout\,
	datad => \u3|LessThan0~3_combout\,
	combout => \u9|LessThan0~2_combout\);

-- Location: FF_X56_Y51_N1
\u9|snl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clkl~clkctrl_outclk\,
	d => \u9|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u9|snl~q\);

-- Location: LCCOMB_X57_Y51_N28
\u10|LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u10|LessThan0~2_combout\ = (\u10|conteo\(7)) # ((\u10|conteo\(6)) # ((\u10|conteo\(5) & \u2|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|conteo\(7),
	datab => \u10|conteo\(6),
	datac => \u10|conteo\(5),
	datad => \u2|LessThan0~2_combout\,
	combout => \u10|LessThan0~2_combout\);

-- Location: LCCOMB_X57_Y51_N30
\u10|LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u10|LessThan0~3_combout\ = (((!\u10|LessThan0~2_combout\) # (!\u10|conteo\(9))) # (!\u10|conteo\(8))) # (!\u10|conteo\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|conteo\(10),
	datab => \u10|conteo\(8),
	datac => \u10|conteo\(9),
	datad => \u10|LessThan0~2_combout\,
	combout => \u10|LessThan0~3_combout\);

-- Location: FF_X57_Y51_N31
\u10|snl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clkl~clkctrl_outclk\,
	d => \u10|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u10|snl~q\);

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

ww_led <= \led~output_o\;

ww_led2 <= \led2~output_o\;

ww_led3 <= \led3~output_o\;

ww_led4 <= \led4~output_o\;

ww_led5 <= \led5~output_o\;

ww_led6 <= \led6~output_o\;

ww_led7 <= \led7~output_o\;

ww_led8 <= \led8~output_o\;

ww_led9 <= \led9~output_o\;
END structure;


