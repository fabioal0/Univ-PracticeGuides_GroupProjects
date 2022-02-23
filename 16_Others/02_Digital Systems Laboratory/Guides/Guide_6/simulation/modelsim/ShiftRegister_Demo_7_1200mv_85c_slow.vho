-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 15.1.1 Build 189 12/02/2015 SJ Lite Edition"

-- DATE "03/28/2017 19:08:57"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ShiftRegister_Demo IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(0 DOWNTO 0);
	LEDR : OUT std_logic_vector(7 DOWNTO 0)
	);
END ShiftRegister_Demo;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ShiftRegister_Demo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \freq|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \freq|Add0~0_combout\ : std_logic;
SIGNAL \freq|Add0~1\ : std_logic;
SIGNAL \freq|Add0~2_combout\ : std_logic;
SIGNAL \freq|Add0~3\ : std_logic;
SIGNAL \freq|Add0~4_combout\ : std_logic;
SIGNAL \freq|Add0~5\ : std_logic;
SIGNAL \freq|Add0~6_combout\ : std_logic;
SIGNAL \freq|Add0~7\ : std_logic;
SIGNAL \freq|Add0~8_combout\ : std_logic;
SIGNAL \freq|Add0~9\ : std_logic;
SIGNAL \freq|Add0~10_combout\ : std_logic;
SIGNAL \freq|Add0~11\ : std_logic;
SIGNAL \freq|Add0~12_combout\ : std_logic;
SIGNAL \freq|s_count~7_combout\ : std_logic;
SIGNAL \freq|Add0~13\ : std_logic;
SIGNAL \freq|Add0~14_combout\ : std_logic;
SIGNAL \freq|Add0~15\ : std_logic;
SIGNAL \freq|Add0~16_combout\ : std_logic;
SIGNAL \freq|Add0~17\ : std_logic;
SIGNAL \freq|Add0~18_combout\ : std_logic;
SIGNAL \freq|Add0~19\ : std_logic;
SIGNAL \freq|Add0~20_combout\ : std_logic;
SIGNAL \freq|Add0~21\ : std_logic;
SIGNAL \freq|Add0~22_combout\ : std_logic;
SIGNAL \freq|s_count~6_combout\ : std_logic;
SIGNAL \freq|Add0~23\ : std_logic;
SIGNAL \freq|Add0~24_combout\ : std_logic;
SIGNAL \freq|s_count~5_combout\ : std_logic;
SIGNAL \freq|Add0~25\ : std_logic;
SIGNAL \freq|Add0~26_combout\ : std_logic;
SIGNAL \freq|s_count~4_combout\ : std_logic;
SIGNAL \freq|Add0~27\ : std_logic;
SIGNAL \freq|Add0~28_combout\ : std_logic;
SIGNAL \freq|s_count~11_combout\ : std_logic;
SIGNAL \freq|Add0~29\ : std_logic;
SIGNAL \freq|Add0~30_combout\ : std_logic;
SIGNAL \freq|Add0~31\ : std_logic;
SIGNAL \freq|Add0~32_combout\ : std_logic;
SIGNAL \freq|s_count~10_combout\ : std_logic;
SIGNAL \freq|Equal0~8_combout\ : std_logic;
SIGNAL \freq|Add0~33\ : std_logic;
SIGNAL \freq|Add0~34_combout\ : std_logic;
SIGNAL \freq|Add0~35\ : std_logic;
SIGNAL \freq|Add0~36_combout\ : std_logic;
SIGNAL \freq|s_count~3_combout\ : std_logic;
SIGNAL \freq|Add0~37\ : std_logic;
SIGNAL \freq|Add0~38_combout\ : std_logic;
SIGNAL \freq|s_count~2_combout\ : std_logic;
SIGNAL \freq|Add0~39\ : std_logic;
SIGNAL \freq|Add0~40_combout\ : std_logic;
SIGNAL \freq|s_count~1_combout\ : std_logic;
SIGNAL \freq|Add0~41\ : std_logic;
SIGNAL \freq|Add0~42_combout\ : std_logic;
SIGNAL \freq|s_count~0_combout\ : std_logic;
SIGNAL \freq|Add0~43\ : std_logic;
SIGNAL \freq|Add0~44_combout\ : std_logic;
SIGNAL \freq|s_count~9_combout\ : std_logic;
SIGNAL \freq|Add0~45\ : std_logic;
SIGNAL \freq|Add0~46_combout\ : std_logic;
SIGNAL \freq|Add0~47\ : std_logic;
SIGNAL \freq|Add0~48_combout\ : std_logic;
SIGNAL \freq|s_count~8_combout\ : std_logic;
SIGNAL \freq|Equal0~7_combout\ : std_logic;
SIGNAL \freq|Equal0~5_combout\ : std_logic;
SIGNAL \freq|Add0~49\ : std_logic;
SIGNAL \freq|Add0~50_combout\ : std_logic;
SIGNAL \freq|Add0~51\ : std_logic;
SIGNAL \freq|Add0~52_combout\ : std_logic;
SIGNAL \freq|Equal0~1_combout\ : std_logic;
SIGNAL \freq|Equal0~2_combout\ : std_logic;
SIGNAL \freq|Add0~53\ : std_logic;
SIGNAL \freq|Add0~54_combout\ : std_logic;
SIGNAL \freq|Add0~55\ : std_logic;
SIGNAL \freq|Add0~56_combout\ : std_logic;
SIGNAL \freq|Add0~57\ : std_logic;
SIGNAL \freq|Add0~58_combout\ : std_logic;
SIGNAL \freq|Add0~59\ : std_logic;
SIGNAL \freq|Add0~60_combout\ : std_logic;
SIGNAL \freq|Equal0~0_combout\ : std_logic;
SIGNAL \freq|Equal0~3_combout\ : std_logic;
SIGNAL \freq|Equal0~4_combout\ : std_logic;
SIGNAL \freq|Equal0~6_combout\ : std_logic;
SIGNAL \freq|Equal0~9_combout\ : std_logic;
SIGNAL \freq|Equal1~0_combout\ : std_logic;
SIGNAL \freq|Equal1~1_combout\ : std_logic;
SIGNAL \freq|Equal1~2_combout\ : std_logic;
SIGNAL \freq|clkOut~0_combout\ : std_logic;
SIGNAL \freq|clkOut~feeder_combout\ : std_logic;
SIGNAL \freq|clkOut~q\ : std_logic;
SIGNAL \freq|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \desl|s_shiftReg[1]~feeder_combout\ : std_logic;
SIGNAL \desl|s_shiftReg[2]~feeder_combout\ : std_logic;
SIGNAL \desl|s_shiftReg[3]~feeder_combout\ : std_logic;
SIGNAL \desl|s_shiftReg[4]~feeder_combout\ : std_logic;
SIGNAL \desl|s_shiftReg[5]~feeder_combout\ : std_logic;
SIGNAL \desl|s_shiftReg[6]~feeder_combout\ : std_logic;
SIGNAL \desl|s_shiftReg[7]~feeder_combout\ : std_logic;
SIGNAL \desl|s_shiftReg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \freq|s_count\ : std_logic_vector(30 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\freq|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \freq|clkOut~q\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \desl|s_shiftReg\(0),
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \desl|s_shiftReg\(1),
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \desl|s_shiftReg\(2),
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \desl|s_shiftReg\(3),
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \desl|s_shiftReg\(4),
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \desl|s_shiftReg\(5),
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \desl|s_shiftReg\(6),
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \desl|s_shiftReg\(7),
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X4_Y33_N2
\freq|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|Add0~0_combout\ = \freq|s_count\(0) $ (VCC)
-- \freq|Add0~1\ = CARRY(\freq|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freq|s_count\(0),
	datad => VCC,
	combout => \freq|Add0~0_combout\,
	cout => \freq|Add0~1\);

-- Location: FF_X4_Y33_N3
\freq|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|s_count\(0));

-- Location: LCCOMB_X4_Y33_N4
\freq|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|Add0~2_combout\ = (\freq|s_count\(1) & (!\freq|Add0~1\)) # (!\freq|s_count\(1) & ((\freq|Add0~1\) # (GND)))
-- \freq|Add0~3\ = CARRY((!\freq|Add0~1\) # (!\freq|s_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq|s_count\(1),
	datad => VCC,
	cin => \freq|Add0~1\,
	combout => \freq|Add0~2_combout\,
	cout => \freq|Add0~3\);

-- Location: FF_X4_Y33_N5
\freq|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|s_count\(1));

-- Location: LCCOMB_X4_Y33_N6
\freq|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|Add0~4_combout\ = (\freq|s_count\(2) & (\freq|Add0~3\ $ (GND))) # (!\freq|s_count\(2) & (!\freq|Add0~3\ & VCC))
-- \freq|Add0~5\ = CARRY((\freq|s_count\(2) & !\freq|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq|s_count\(2),
	datad => VCC,
	cin => \freq|Add0~3\,
	combout => \freq|Add0~4_combout\,
	cout => \freq|Add0~5\);

-- Location: FF_X4_Y33_N7
\freq|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|s_count\(2));

-- Location: LCCOMB_X4_Y33_N8
\freq|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|Add0~6_combout\ = (\freq|s_count\(3) & (!\freq|Add0~5\)) # (!\freq|s_count\(3) & ((\freq|Add0~5\) # (GND)))
-- \freq|Add0~7\ = CARRY((!\freq|Add0~5\) # (!\freq|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq|s_count\(3),
	datad => VCC,
	cin => \freq|Add0~5\,
	combout => \freq|Add0~6_combout\,
	cout => \freq|Add0~7\);

-- Location: FF_X4_Y33_N9
\freq|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|s_count\(3));

-- Location: LCCOMB_X4_Y33_N10
\freq|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|Add0~8_combout\ = (\freq|s_count\(4) & (\freq|Add0~7\ $ (GND))) # (!\freq|s_count\(4) & (!\freq|Add0~7\ & VCC))
-- \freq|Add0~9\ = CARRY((\freq|s_count\(4) & !\freq|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq|s_count\(4),
	datad => VCC,
	cin => \freq|Add0~7\,
	combout => \freq|Add0~8_combout\,
	cout => \freq|Add0~9\);

-- Location: FF_X4_Y33_N11
\freq|s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|s_count\(4));

-- Location: LCCOMB_X4_Y33_N12
\freq|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|Add0~10_combout\ = (\freq|s_count\(5) & (!\freq|Add0~9\)) # (!\freq|s_count\(5) & ((\freq|Add0~9\) # (GND)))
-- \freq|Add0~11\ = CARRY((!\freq|Add0~9\) # (!\freq|s_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq|s_count\(5),
	datad => VCC,
	cin => \freq|Add0~9\,
	combout => \freq|Add0~10_combout\,
	cout => \freq|Add0~11\);

-- Location: FF_X4_Y33_N13
\freq|s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|s_count\(5));

-- Location: LCCOMB_X4_Y33_N14
\freq|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|Add0~12_combout\ = (\freq|s_count\(6) & (\freq|Add0~11\ $ (GND))) # (!\freq|s_count\(6) & (!\freq|Add0~11\ & VCC))
-- \freq|Add0~13\ = CARRY((\freq|s_count\(6) & !\freq|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq|s_count\(6),
	datad => VCC,
	cin => \freq|Add0~11\,
	combout => \freq|Add0~12_combout\,
	cout => \freq|Add0~13\);

-- Location: LCCOMB_X4_Y33_N0
\freq|s_count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|s_count~7_combout\ = (\freq|Add0~12_combout\ & !\freq|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freq|Add0~12_combout\,
	datad => \freq|Equal0~9_combout\,
	combout => \freq|s_count~7_combout\);

-- Location: FF_X4_Y33_N1
\freq|s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|s_count~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|s_count\(6));

-- Location: LCCOMB_X4_Y33_N16
\freq|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|Add0~14_combout\ = (\freq|s_count\(7) & (!\freq|Add0~13\)) # (!\freq|s_count\(7) & ((\freq|Add0~13\) # (GND)))
-- \freq|Add0~15\ = CARRY((!\freq|Add0~13\) # (!\freq|s_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq|s_count\(7),
	datad => VCC,
	cin => \freq|Add0~13\,
	combout => \freq|Add0~14_combout\,
	cout => \freq|Add0~15\);

-- Location: FF_X4_Y33_N17
\freq|s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|s_count\(7));

-- Location: LCCOMB_X4_Y33_N18
\freq|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|Add0~16_combout\ = (\freq|s_count\(8) & (\freq|Add0~15\ $ (GND))) # (!\freq|s_count\(8) & (!\freq|Add0~15\ & VCC))
-- \freq|Add0~17\ = CARRY((\freq|s_count\(8) & !\freq|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq|s_count\(8),
	datad => VCC,
	cin => \freq|Add0~15\,
	combout => \freq|Add0~16_combout\,
	cout => \freq|Add0~17\);

-- Location: FF_X4_Y33_N19
\freq|s_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|s_count\(8));

-- Location: LCCOMB_X4_Y33_N20
\freq|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|Add0~18_combout\ = (\freq|s_count\(9) & (!\freq|Add0~17\)) # (!\freq|s_count\(9) & ((\freq|Add0~17\) # (GND)))
-- \freq|Add0~19\ = CARRY((!\freq|Add0~17\) # (!\freq|s_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq|s_count\(9),
	datad => VCC,
	cin => \freq|Add0~17\,
	combout => \freq|Add0~18_combout\,
	cout => \freq|Add0~19\);

-- Location: FF_X4_Y33_N21
\freq|s_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|s_count\(9));

-- Location: LCCOMB_X4_Y33_N22
\freq|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|Add0~20_combout\ = (\freq|s_count\(10) & (\freq|Add0~19\ $ (GND))) # (!\freq|s_count\(10) & (!\freq|Add0~19\ & VCC))
-- \freq|Add0~21\ = CARRY((\freq|s_count\(10) & !\freq|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq|s_count\(10),
	datad => VCC,
	cin => \freq|Add0~19\,
	combout => \freq|Add0~20_combout\,
	cout => \freq|Add0~21\);

-- Location: FF_X4_Y33_N23
\freq|s_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|s_count\(10));

-- Location: LCCOMB_X4_Y33_N24
\freq|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|Add0~22_combout\ = (\freq|s_count\(11) & (!\freq|Add0~21\)) # (!\freq|s_count\(11) & ((\freq|Add0~21\) # (GND)))
-- \freq|Add0~23\ = CARRY((!\freq|Add0~21\) # (!\freq|s_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq|s_count\(11),
	datad => VCC,
	cin => \freq|Add0~21\,
	combout => \freq|Add0~22_combout\,
	cout => \freq|Add0~23\);

-- Location: LCCOMB_X3_Y32_N2
\freq|s_count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|s_count~6_combout\ = (!\freq|Equal0~9_combout\ & \freq|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freq|Equal0~9_combout\,
	datad => \freq|Add0~22_combout\,
	combout => \freq|s_count~6_combout\);

-- Location: FF_X3_Y32_N3
\freq|s_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|s_count~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|s_count\(11));

-- Location: LCCOMB_X4_Y33_N26
\freq|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|Add0~24_combout\ = (\freq|s_count\(12) & (\freq|Add0~23\ $ (GND))) # (!\freq|s_count\(12) & (!\freq|Add0~23\ & VCC))
-- \freq|Add0~25\ = CARRY((\freq|s_count\(12) & !\freq|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq|s_count\(12),
	datad => VCC,
	cin => \freq|Add0~23\,
	combout => \freq|Add0~24_combout\,
	cout => \freq|Add0~25\);

-- Location: LCCOMB_X5_Y32_N14
\freq|s_count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|s_count~5_combout\ = (\freq|Add0~24_combout\ & !\freq|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freq|Add0~24_combout\,
	datad => \freq|Equal0~9_combout\,
	combout => \freq|s_count~5_combout\);

-- Location: FF_X5_Y32_N15
\freq|s_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|s_count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|s_count\(12));

-- Location: LCCOMB_X4_Y33_N28
\freq|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|Add0~26_combout\ = (\freq|s_count\(13) & (!\freq|Add0~25\)) # (!\freq|s_count\(13) & ((\freq|Add0~25\) # (GND)))
-- \freq|Add0~27\ = CARRY((!\freq|Add0~25\) # (!\freq|s_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq|s_count\(13),
	datad => VCC,
	cin => \freq|Add0~25\,
	combout => \freq|Add0~26_combout\,
	cout => \freq|Add0~27\);

-- Location: LCCOMB_X5_Y32_N12
\freq|s_count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|s_count~4_combout\ = (\freq|Add0~26_combout\ & !\freq|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freq|Add0~26_combout\,
	datad => \freq|Equal0~9_combout\,
	combout => \freq|s_count~4_combout\);

-- Location: FF_X5_Y32_N13
\freq|s_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|s_count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|s_count\(13));

-- Location: LCCOMB_X4_Y33_N30
\freq|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|Add0~28_combout\ = (\freq|s_count\(14) & (\freq|Add0~27\ $ (GND))) # (!\freq|s_count\(14) & (!\freq|Add0~27\ & VCC))
-- \freq|Add0~29\ = CARRY((\freq|s_count\(14) & !\freq|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq|s_count\(14),
	datad => VCC,
	cin => \freq|Add0~27\,
	combout => \freq|Add0~28_combout\,
	cout => \freq|Add0~29\);

-- Location: LCCOMB_X3_Y32_N10
\freq|s_count~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|s_count~11_combout\ = (!\freq|Equal0~9_combout\ & \freq|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freq|Equal0~9_combout\,
	datac => \freq|Add0~28_combout\,
	combout => \freq|s_count~11_combout\);

-- Location: FF_X3_Y32_N11
\freq|s_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|s_count~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|s_count\(14));

-- Location: LCCOMB_X4_Y32_N0
\freq|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|Add0~30_combout\ = (\freq|s_count\(15) & (!\freq|Add0~29\)) # (!\freq|s_count\(15) & ((\freq|Add0~29\) # (GND)))
-- \freq|Add0~31\ = CARRY((!\freq|Add0~29\) # (!\freq|s_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq|s_count\(15),
	datad => VCC,
	cin => \freq|Add0~29\,
	combout => \freq|Add0~30_combout\,
	cout => \freq|Add0~31\);

-- Location: FF_X4_Y32_N1
\freq|s_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|s_count\(15));

-- Location: LCCOMB_X4_Y32_N2
\freq|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|Add0~32_combout\ = (\freq|s_count\(16) & (\freq|Add0~31\ $ (GND))) # (!\freq|s_count\(16) & (!\freq|Add0~31\ & VCC))
-- \freq|Add0~33\ = CARRY((\freq|s_count\(16) & !\freq|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq|s_count\(16),
	datad => VCC,
	cin => \freq|Add0~31\,
	combout => \freq|Add0~32_combout\,
	cout => \freq|Add0~33\);

-- Location: LCCOMB_X3_Y32_N26
\freq|s_count~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|s_count~10_combout\ = (!\freq|Equal0~9_combout\ & \freq|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freq|Equal0~9_combout\,
	datad => \freq|Add0~32_combout\,
	combout => \freq|s_count~10_combout\);

-- Location: FF_X3_Y32_N27
\freq|s_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|s_count~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|s_count\(16));

-- Location: LCCOMB_X3_Y32_N18
\freq|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|Equal0~8_combout\ = (\freq|s_count\(16) & (!\freq|s_count\(15) & (!\freq|s_count\(10) & \freq|s_count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq|s_count\(16),
	datab => \freq|s_count\(15),
	datac => \freq|s_count\(10),
	datad => \freq|s_count\(14),
	combout => \freq|Equal0~8_combout\);

-- Location: LCCOMB_X4_Y32_N4
\freq|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|Add0~34_combout\ = (\freq|s_count\(17) & (!\freq|Add0~33\)) # (!\freq|s_count\(17) & ((\freq|Add0~33\) # (GND)))
-- \freq|Add0~35\ = CARRY((!\freq|Add0~33\) # (!\freq|s_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq|s_count\(17),
	datad => VCC,
	cin => \freq|Add0~33\,
	combout => \freq|Add0~34_combout\,
	cout => \freq|Add0~35\);

-- Location: FF_X4_Y32_N5
\freq|s_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|s_count\(17));

-- Location: LCCOMB_X4_Y32_N6
\freq|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|Add0~36_combout\ = (\freq|s_count\(18) & (\freq|Add0~35\ $ (GND))) # (!\freq|s_count\(18) & (!\freq|Add0~35\ & VCC))
-- \freq|Add0~37\ = CARRY((\freq|s_count\(18) & !\freq|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq|s_count\(18),
	datad => VCC,
	cin => \freq|Add0~35\,
	combout => \freq|Add0~36_combout\,
	cout => \freq|Add0~37\);

-- Location: LCCOMB_X5_Y32_N10
\freq|s_count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|s_count~3_combout\ = (\freq|Add0~36_combout\ & !\freq|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freq|Add0~36_combout\,
	datad => \freq|Equal0~9_combout\,
	combout => \freq|s_count~3_combout\);

-- Location: FF_X5_Y32_N11
\freq|s_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|s_count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|s_count\(18));

-- Location: LCCOMB_X4_Y32_N8
\freq|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|Add0~38_combout\ = (\freq|s_count\(19) & (!\freq|Add0~37\)) # (!\freq|s_count\(19) & ((\freq|Add0~37\) # (GND)))
-- \freq|Add0~39\ = CARRY((!\freq|Add0~37\) # (!\freq|s_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq|s_count\(19),
	datad => VCC,
	cin => \freq|Add0~37\,
	combout => \freq|Add0~38_combout\,
	cout => \freq|Add0~39\);

-- Location: LCCOMB_X5_Y32_N28
\freq|s_count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|s_count~2_combout\ = (!\freq|Equal0~9_combout\ & \freq|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freq|Equal0~9_combout\,
	datad => \freq|Add0~38_combout\,
	combout => \freq|s_count~2_combout\);

-- Location: FF_X5_Y32_N29
\freq|s_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|s_count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|s_count\(19));

-- Location: LCCOMB_X4_Y32_N10
\freq|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|Add0~40_combout\ = (\freq|s_count\(20) & (\freq|Add0~39\ $ (GND))) # (!\freq|s_count\(20) & (!\freq|Add0~39\ & VCC))
-- \freq|Add0~41\ = CARRY((\freq|s_count\(20) & !\freq|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq|s_count\(20),
	datad => VCC,
	cin => \freq|Add0~39\,
	combout => \freq|Add0~40_combout\,
	cout => \freq|Add0~41\);

-- Location: LCCOMB_X5_Y32_N8
\freq|s_count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|s_count~1_combout\ = (!\freq|Equal0~9_combout\ & \freq|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freq|Equal0~9_combout\,
	datad => \freq|Add0~40_combout\,
	combout => \freq|s_count~1_combout\);

-- Location: FF_X5_Y32_N9
\freq|s_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|s_count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|s_count\(20));

-- Location: LCCOMB_X4_Y32_N12
\freq|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|Add0~42_combout\ = (\freq|s_count\(21) & (!\freq|Add0~41\)) # (!\freq|s_count\(21) & ((\freq|Add0~41\) # (GND)))
-- \freq|Add0~43\ = CARRY((!\freq|Add0~41\) # (!\freq|s_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq|s_count\(21),
	datad => VCC,
	cin => \freq|Add0~41\,
	combout => \freq|Add0~42_combout\,
	cout => \freq|Add0~43\);

-- Location: LCCOMB_X5_Y32_N30
\freq|s_count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|s_count~0_combout\ = (!\freq|Equal0~9_combout\ & \freq|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freq|Equal0~9_combout\,
	datad => \freq|Add0~42_combout\,
	combout => \freq|s_count~0_combout\);

-- Location: FF_X5_Y32_N31
\freq|s_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|s_count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|s_count\(21));

-- Location: LCCOMB_X4_Y32_N14
\freq|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|Add0~44_combout\ = (\freq|s_count\(22) & (\freq|Add0~43\ $ (GND))) # (!\freq|s_count\(22) & (!\freq|Add0~43\ & VCC))
-- \freq|Add0~45\ = CARRY((\freq|s_count\(22) & !\freq|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq|s_count\(22),
	datad => VCC,
	cin => \freq|Add0~43\,
	combout => \freq|Add0~44_combout\,
	cout => \freq|Add0~45\);

-- Location: LCCOMB_X3_Y32_N28
\freq|s_count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|s_count~9_combout\ = (!\freq|Equal0~9_combout\ & \freq|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freq|Equal0~9_combout\,
	datac => \freq|Add0~44_combout\,
	combout => \freq|s_count~9_combout\);

-- Location: FF_X3_Y32_N29
\freq|s_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|s_count~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|s_count\(22));

-- Location: LCCOMB_X4_Y32_N16
\freq|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|Add0~46_combout\ = (\freq|s_count\(23) & (!\freq|Add0~45\)) # (!\freq|s_count\(23) & ((\freq|Add0~45\) # (GND)))
-- \freq|Add0~47\ = CARRY((!\freq|Add0~45\) # (!\freq|s_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq|s_count\(23),
	datad => VCC,
	cin => \freq|Add0~45\,
	combout => \freq|Add0~46_combout\,
	cout => \freq|Add0~47\);

-- Location: FF_X4_Y32_N17
\freq|s_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|s_count\(23));

-- Location: LCCOMB_X4_Y32_N18
\freq|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|Add0~48_combout\ = (\freq|s_count\(24) & (\freq|Add0~47\ $ (GND))) # (!\freq|s_count\(24) & (!\freq|Add0~47\ & VCC))
-- \freq|Add0~49\ = CARRY((\freq|s_count\(24) & !\freq|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq|s_count\(24),
	datad => VCC,
	cin => \freq|Add0~47\,
	combout => \freq|Add0~48_combout\,
	cout => \freq|Add0~49\);

-- Location: LCCOMB_X3_Y32_N12
\freq|s_count~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|s_count~8_combout\ = (!\freq|Equal0~9_combout\ & \freq|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freq|Equal0~9_combout\,
	datad => \freq|Add0~48_combout\,
	combout => \freq|s_count~8_combout\);

-- Location: FF_X3_Y32_N13
\freq|s_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|s_count~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|s_count\(24));

-- Location: LCCOMB_X3_Y32_N22
\freq|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|Equal0~7_combout\ = (!\freq|s_count\(17) & (!\freq|s_count\(23) & (\freq|s_count\(24) & \freq|s_count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq|s_count\(17),
	datab => \freq|s_count\(23),
	datac => \freq|s_count\(24),
	datad => \freq|s_count\(22),
	combout => \freq|Equal0~7_combout\);

-- Location: LCCOMB_X5_Y32_N22
\freq|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|Equal0~5_combout\ = (\freq|s_count\(4) & (\freq|s_count\(3) & (\freq|s_count\(2) & !\freq|s_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq|s_count\(4),
	datab => \freq|s_count\(3),
	datac => \freq|s_count\(2),
	datad => \freq|s_count\(6),
	combout => \freq|Equal0~5_combout\);

-- Location: LCCOMB_X4_Y32_N20
\freq|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|Add0~50_combout\ = (\freq|s_count\(25) & (!\freq|Add0~49\)) # (!\freq|s_count\(25) & ((\freq|Add0~49\) # (GND)))
-- \freq|Add0~51\ = CARRY((!\freq|Add0~49\) # (!\freq|s_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq|s_count\(25),
	datad => VCC,
	cin => \freq|Add0~49\,
	combout => \freq|Add0~50_combout\,
	cout => \freq|Add0~51\);

-- Location: FF_X4_Y32_N21
\freq|s_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|s_count\(25));

-- Location: LCCOMB_X4_Y32_N22
\freq|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|Add0~52_combout\ = (\freq|s_count\(26) & (\freq|Add0~51\ $ (GND))) # (!\freq|s_count\(26) & (!\freq|Add0~51\ & VCC))
-- \freq|Add0~53\ = CARRY((\freq|s_count\(26) & !\freq|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq|s_count\(26),
	datad => VCC,
	cin => \freq|Add0~51\,
	combout => \freq|Add0~52_combout\,
	cout => \freq|Add0~53\);

-- Location: FF_X4_Y32_N23
\freq|s_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|s_count\(26));

-- Location: LCCOMB_X5_Y32_N26
\freq|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|Equal0~1_combout\ = (\freq|s_count\(21) & (!\freq|s_count\(25) & (\freq|s_count\(20) & !\freq|s_count\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq|s_count\(21),
	datab => \freq|s_count\(25),
	datac => \freq|s_count\(20),
	datad => \freq|s_count\(26),
	combout => \freq|Equal0~1_combout\);

-- Location: LCCOMB_X5_Y32_N24
\freq|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|Equal0~2_combout\ = (\freq|s_count\(18) & (\freq|s_count\(19) & (\freq|s_count\(12) & \freq|s_count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq|s_count\(18),
	datab => \freq|s_count\(19),
	datac => \freq|s_count\(12),
	datad => \freq|s_count\(13),
	combout => \freq|Equal0~2_combout\);

-- Location: LCCOMB_X4_Y32_N24
\freq|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|Add0~54_combout\ = (\freq|s_count\(27) & (!\freq|Add0~53\)) # (!\freq|s_count\(27) & ((\freq|Add0~53\) # (GND)))
-- \freq|Add0~55\ = CARRY((!\freq|Add0~53\) # (!\freq|s_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq|s_count\(27),
	datad => VCC,
	cin => \freq|Add0~53\,
	combout => \freq|Add0~54_combout\,
	cout => \freq|Add0~55\);

-- Location: FF_X4_Y32_N25
\freq|s_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|s_count\(27));

-- Location: LCCOMB_X4_Y32_N26
\freq|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|Add0~56_combout\ = (\freq|s_count\(28) & (\freq|Add0~55\ $ (GND))) # (!\freq|s_count\(28) & (!\freq|Add0~55\ & VCC))
-- \freq|Add0~57\ = CARRY((\freq|s_count\(28) & !\freq|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq|s_count\(28),
	datad => VCC,
	cin => \freq|Add0~55\,
	combout => \freq|Add0~56_combout\,
	cout => \freq|Add0~57\);

-- Location: FF_X4_Y32_N27
\freq|s_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|s_count\(28));

-- Location: LCCOMB_X4_Y32_N28
\freq|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|Add0~58_combout\ = (\freq|s_count\(29) & (!\freq|Add0~57\)) # (!\freq|s_count\(29) & ((\freq|Add0~57\) # (GND)))
-- \freq|Add0~59\ = CARRY((!\freq|Add0~57\) # (!\freq|s_count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq|s_count\(29),
	datad => VCC,
	cin => \freq|Add0~57\,
	combout => \freq|Add0~58_combout\,
	cout => \freq|Add0~59\);

-- Location: FF_X4_Y32_N29
\freq|s_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|s_count\(29));

-- Location: LCCOMB_X4_Y32_N30
\freq|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|Add0~60_combout\ = \freq|s_count\(30) $ (!\freq|Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq|s_count\(30),
	cin => \freq|Add0~59\,
	combout => \freq|Add0~60_combout\);

-- Location: FF_X4_Y32_N31
\freq|s_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|s_count\(30));

-- Location: LCCOMB_X5_Y32_N4
\freq|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|Equal0~0_combout\ = (!\freq|s_count\(28) & (!\freq|s_count\(30) & (!\freq|s_count\(29) & !\freq|s_count\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq|s_count\(28),
	datab => \freq|s_count\(30),
	datac => \freq|s_count\(29),
	datad => \freq|s_count\(27),
	combout => \freq|Equal0~0_combout\);

-- Location: LCCOMB_X5_Y32_N18
\freq|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|Equal0~3_combout\ = (\freq|s_count\(11) & (!\freq|s_count\(8) & (!\freq|s_count\(7) & !\freq|s_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq|s_count\(11),
	datab => \freq|s_count\(8),
	datac => \freq|s_count\(7),
	datad => \freq|s_count\(9),
	combout => \freq|Equal0~3_combout\);

-- Location: LCCOMB_X5_Y32_N20
\freq|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|Equal0~4_combout\ = (\freq|Equal0~1_combout\ & (\freq|Equal0~2_combout\ & (\freq|Equal0~0_combout\ & \freq|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq|Equal0~1_combout\,
	datab => \freq|Equal0~2_combout\,
	datac => \freq|Equal0~0_combout\,
	datad => \freq|Equal0~3_combout\,
	combout => \freq|Equal0~4_combout\);

-- Location: LCCOMB_X5_Y32_N16
\freq|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|Equal0~6_combout\ = (\freq|s_count\(1) & (\freq|s_count\(0) & (\freq|Equal0~5_combout\ & \freq|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq|s_count\(1),
	datab => \freq|s_count\(0),
	datac => \freq|Equal0~5_combout\,
	datad => \freq|Equal0~4_combout\,
	combout => \freq|Equal0~6_combout\);

-- Location: LCCOMB_X3_Y32_N14
\freq|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|Equal0~9_combout\ = (\freq|s_count\(5) & (\freq|Equal0~8_combout\ & (\freq|Equal0~7_combout\ & \freq|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq|s_count\(5),
	datab => \freq|Equal0~8_combout\,
	datac => \freq|Equal0~7_combout\,
	datad => \freq|Equal0~6_combout\,
	combout => \freq|Equal0~9_combout\);

-- Location: LCCOMB_X3_Y32_N20
\freq|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|Equal1~0_combout\ = (!\freq|s_count\(22) & (\freq|s_count\(23) & (!\freq|s_count\(24) & \freq|s_count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq|s_count\(22),
	datab => \freq|s_count\(23),
	datac => \freq|s_count\(24),
	datad => \freq|s_count\(17),
	combout => \freq|Equal1~0_combout\);

-- Location: LCCOMB_X3_Y32_N30
\freq|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|Equal1~1_combout\ = (!\freq|s_count\(16) & (\freq|s_count\(15) & (\freq|s_count\(10) & !\freq|s_count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq|s_count\(16),
	datab => \freq|s_count\(15),
	datac => \freq|s_count\(10),
	datad => \freq|s_count\(14),
	combout => \freq|Equal1~1_combout\);

-- Location: LCCOMB_X3_Y32_N16
\freq|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|Equal1~2_combout\ = (!\freq|s_count\(5) & (\freq|Equal1~0_combout\ & (\freq|Equal1~1_combout\ & \freq|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq|s_count\(5),
	datab => \freq|Equal1~0_combout\,
	datac => \freq|Equal1~1_combout\,
	datad => \freq|Equal0~6_combout\,
	combout => \freq|Equal1~2_combout\);

-- Location: LCCOMB_X3_Y32_N24
\freq|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|clkOut~0_combout\ = (\freq|Equal0~9_combout\) # ((\freq|clkOut~q\ & !\freq|Equal1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freq|clkOut~q\,
	datac => \freq|Equal0~9_combout\,
	datad => \freq|Equal1~2_combout\,
	combout => \freq|clkOut~0_combout\);

-- Location: LCCOMB_X3_Y32_N8
\freq|clkOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|clkOut~feeder_combout\ = \freq|clkOut~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \freq|clkOut~0_combout\,
	combout => \freq|clkOut~feeder_combout\);

-- Location: FF_X3_Y32_N9
\freq|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|clkOut~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|clkOut~q\);

-- Location: CLKCTRL_G2
\freq|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \freq|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \freq|clkOut~clkctrl_outclk\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: FF_X88_Y72_N29
\desl|s_shiftReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|clkOut~clkctrl_outclk\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \desl|s_shiftReg\(0));

-- Location: LCCOMB_X88_Y72_N18
\desl|s_shiftReg[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \desl|s_shiftReg[1]~feeder_combout\ = \desl|s_shiftReg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \desl|s_shiftReg\(0),
	combout => \desl|s_shiftReg[1]~feeder_combout\);

-- Location: FF_X88_Y72_N19
\desl|s_shiftReg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|clkOut~clkctrl_outclk\,
	d => \desl|s_shiftReg[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \desl|s_shiftReg\(1));

-- Location: LCCOMB_X88_Y72_N16
\desl|s_shiftReg[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \desl|s_shiftReg[2]~feeder_combout\ = \desl|s_shiftReg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \desl|s_shiftReg\(1),
	combout => \desl|s_shiftReg[2]~feeder_combout\);

-- Location: FF_X88_Y72_N17
\desl|s_shiftReg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|clkOut~clkctrl_outclk\,
	d => \desl|s_shiftReg[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \desl|s_shiftReg\(2));

-- Location: LCCOMB_X88_Y72_N6
\desl|s_shiftReg[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \desl|s_shiftReg[3]~feeder_combout\ = \desl|s_shiftReg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \desl|s_shiftReg\(2),
	combout => \desl|s_shiftReg[3]~feeder_combout\);

-- Location: FF_X88_Y72_N7
\desl|s_shiftReg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|clkOut~clkctrl_outclk\,
	d => \desl|s_shiftReg[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \desl|s_shiftReg\(3));

-- Location: LCCOMB_X88_Y72_N0
\desl|s_shiftReg[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \desl|s_shiftReg[4]~feeder_combout\ = \desl|s_shiftReg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \desl|s_shiftReg\(3),
	combout => \desl|s_shiftReg[4]~feeder_combout\);

-- Location: FF_X88_Y72_N1
\desl|s_shiftReg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|clkOut~clkctrl_outclk\,
	d => \desl|s_shiftReg[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \desl|s_shiftReg\(4));

-- Location: LCCOMB_X88_Y72_N2
\desl|s_shiftReg[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \desl|s_shiftReg[5]~feeder_combout\ = \desl|s_shiftReg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \desl|s_shiftReg\(4),
	combout => \desl|s_shiftReg[5]~feeder_combout\);

-- Location: FF_X88_Y72_N3
\desl|s_shiftReg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|clkOut~clkctrl_outclk\,
	d => \desl|s_shiftReg[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \desl|s_shiftReg\(5));

-- Location: LCCOMB_X88_Y72_N20
\desl|s_shiftReg[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \desl|s_shiftReg[6]~feeder_combout\ = \desl|s_shiftReg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \desl|s_shiftReg\(5),
	combout => \desl|s_shiftReg[6]~feeder_combout\);

-- Location: FF_X88_Y72_N21
\desl|s_shiftReg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|clkOut~clkctrl_outclk\,
	d => \desl|s_shiftReg[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \desl|s_shiftReg\(6));

-- Location: LCCOMB_X88_Y72_N22
\desl|s_shiftReg[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \desl|s_shiftReg[7]~feeder_combout\ = \desl|s_shiftReg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \desl|s_shiftReg\(6),
	combout => \desl|s_shiftReg[7]~feeder_combout\);

-- Location: FF_X88_Y72_N23
\desl|s_shiftReg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|clkOut~clkctrl_outclk\,
	d => \desl|s_shiftReg[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \desl|s_shiftReg\(7));

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;
END structure;


