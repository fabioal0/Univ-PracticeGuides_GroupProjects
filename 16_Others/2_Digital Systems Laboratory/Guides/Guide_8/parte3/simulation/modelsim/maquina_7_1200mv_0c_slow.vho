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

-- DATE "05/02/2017 17:09:27"

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

ENTITY 	Block1 IS
    PORT (
	LEDG : OUT std_logic_vector(0 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(0 DOWNTO 0);
	SW : IN std_logic_vector(1 DOWNTO 0)
	);
END Block1;

-- Design Ports Information
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Block1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LEDG : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(1 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst2|Add0~0_combout\ : std_logic;
SIGNAL \inst2|Add0~1\ : std_logic;
SIGNAL \inst2|Add0~2_combout\ : std_logic;
SIGNAL \inst2|Add0~3\ : std_logic;
SIGNAL \inst2|Add0~4_combout\ : std_logic;
SIGNAL \inst2|Add0~5\ : std_logic;
SIGNAL \inst2|Add0~6_combout\ : std_logic;
SIGNAL \inst2|Add0~7\ : std_logic;
SIGNAL \inst2|Add0~8_combout\ : std_logic;
SIGNAL \inst2|Add0~9\ : std_logic;
SIGNAL \inst2|Add0~10_combout\ : std_logic;
SIGNAL \inst2|Add0~11\ : std_logic;
SIGNAL \inst2|Add0~12_combout\ : std_logic;
SIGNAL \inst2|Add0~35\ : std_logic;
SIGNAL \inst2|Add0~36_combout\ : std_logic;
SIGNAL \inst2|Add0~37\ : std_logic;
SIGNAL \inst2|Add0~38_combout\ : std_logic;
SIGNAL \inst2|s_count~3_combout\ : std_logic;
SIGNAL \inst2|Add0~39\ : std_logic;
SIGNAL \inst2|Add0~40_combout\ : std_logic;
SIGNAL \inst2|s_count~2_combout\ : std_logic;
SIGNAL \inst2|Add0~41\ : std_logic;
SIGNAL \inst2|Add0~42_combout\ : std_logic;
SIGNAL \inst2|s_count~1_combout\ : std_logic;
SIGNAL \inst2|Add0~43\ : std_logic;
SIGNAL \inst2|Add0~44_combout\ : std_logic;
SIGNAL \inst2|s_count~0_combout\ : std_logic;
SIGNAL \inst2|Add0~45\ : std_logic;
SIGNAL \inst2|Add0~46_combout\ : std_logic;
SIGNAL \inst2|s_count~9_combout\ : std_logic;
SIGNAL \inst2|Add0~47\ : std_logic;
SIGNAL \inst2|Add0~48_combout\ : std_logic;
SIGNAL \inst2|Add0~49\ : std_logic;
SIGNAL \inst2|Add0~50_combout\ : std_logic;
SIGNAL \inst2|s_count~8_combout\ : std_logic;
SIGNAL \inst2|Equal0~7_combout\ : std_logic;
SIGNAL \inst2|Add0~13\ : std_logic;
SIGNAL \inst2|Add0~14_combout\ : std_logic;
SIGNAL \inst2|s_count~7_combout\ : std_logic;
SIGNAL \inst2|Add0~15\ : std_logic;
SIGNAL \inst2|Add0~16_combout\ : std_logic;
SIGNAL \inst2|Add0~17\ : std_logic;
SIGNAL \inst2|Add0~18_combout\ : std_logic;
SIGNAL \inst2|Add0~19\ : std_logic;
SIGNAL \inst2|Add0~20_combout\ : std_logic;
SIGNAL \inst2|Add0~21\ : std_logic;
SIGNAL \inst2|Add0~22_combout\ : std_logic;
SIGNAL \inst2|Equal0~8_combout\ : std_logic;
SIGNAL \inst2|Equal0~5_combout\ : std_logic;
SIGNAL \inst2|Add0~23\ : std_logic;
SIGNAL \inst2|Add0~24_combout\ : std_logic;
SIGNAL \inst2|s_count~6_combout\ : std_logic;
SIGNAL \inst2|Add0~25\ : std_logic;
SIGNAL \inst2|Add0~26_combout\ : std_logic;
SIGNAL \inst2|s_count~5_combout\ : std_logic;
SIGNAL \inst2|Add0~27\ : std_logic;
SIGNAL \inst2|Add0~28_combout\ : std_logic;
SIGNAL \inst2|s_count~4_combout\ : std_logic;
SIGNAL \inst2|Equal0~2_combout\ : std_logic;
SIGNAL \inst2|Add0~51\ : std_logic;
SIGNAL \inst2|Add0~52_combout\ : std_logic;
SIGNAL \inst2|Equal0~1_combout\ : std_logic;
SIGNAL \inst2|Add0~53\ : std_logic;
SIGNAL \inst2|Add0~54_combout\ : std_logic;
SIGNAL \inst2|Add0~55\ : std_logic;
SIGNAL \inst2|Add0~56_combout\ : std_logic;
SIGNAL \inst2|Add0~57\ : std_logic;
SIGNAL \inst2|Add0~58_combout\ : std_logic;
SIGNAL \inst2|Add0~59\ : std_logic;
SIGNAL \inst2|Add0~60_combout\ : std_logic;
SIGNAL \inst2|Equal0~0_combout\ : std_logic;
SIGNAL \inst2|Equal0~3_combout\ : std_logic;
SIGNAL \inst2|Equal0~4_combout\ : std_logic;
SIGNAL \inst2|Equal0~6_combout\ : std_logic;
SIGNAL \inst2|Equal0~9_combout\ : std_logic;
SIGNAL \inst2|Add0~29\ : std_logic;
SIGNAL \inst2|Add0~30_combout\ : std_logic;
SIGNAL \inst2|s_count~11_combout\ : std_logic;
SIGNAL \inst2|Add0~31\ : std_logic;
SIGNAL \inst2|Add0~32_combout\ : std_logic;
SIGNAL \inst2|Add0~33\ : std_logic;
SIGNAL \inst2|Add0~34_combout\ : std_logic;
SIGNAL \inst2|s_count~10_combout\ : std_logic;
SIGNAL \inst2|Equal1~1_combout\ : std_logic;
SIGNAL \inst2|Equal1~0_combout\ : std_logic;
SIGNAL \inst2|Equal1~2_combout\ : std_logic;
SIGNAL \inst2|clkOut~0_combout\ : std_logic;
SIGNAL \inst2|clkOut~q\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \inst|reg_fstate.E0~0_combout\ : std_logic;
SIGNAL \inst|reg_fstate.E0~1_combout\ : std_logic;
SIGNAL \inst|fstate.E0~q\ : std_logic;
SIGNAL \inst|reg_fstate.E3~1_combout\ : std_logic;
SIGNAL \inst|reg_fstate.E1~0_combout\ : std_logic;
SIGNAL \inst|reg_fstate.E1~1_combout\ : std_logic;
SIGNAL \inst|fstate.E1~q\ : std_logic;
SIGNAL \inst|reg_fstate.E2~0_combout\ : std_logic;
SIGNAL \inst|reg_fstate.E2~1_combout\ : std_logic;
SIGNAL \inst|fstate.E2~q\ : std_logic;
SIGNAL \inst|reg_fstate.E3~0_combout\ : std_logic;
SIGNAL \inst|reg_fstate.E3~2_combout\ : std_logic;
SIGNAL \inst|fstate.E3~q\ : std_logic;
SIGNAL \inst|reg_fstate.E4~0_combout\ : std_logic;
SIGNAL \inst|reg_fstate.E4~1_combout\ : std_logic;
SIGNAL \inst|fstate.E4~q\ : std_logic;
SIGNAL \inst|reg_fstate.E5~0_combout\ : std_logic;
SIGNAL \inst|reg_fstate.E5~1_combout\ : std_logic;
SIGNAL \inst|fstate.E5~q\ : std_logic;
SIGNAL \inst|Abrir~0_combout\ : std_logic;
SIGNAL \inst2|s_count\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;

BEGIN

LEDG <= ww_LEDG;
ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Abrir~0_combout\,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

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

-- Location: LCCOMB_X108_Y21_N2
\inst2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~0_combout\ = \inst2|s_count\(0) $ (VCC)
-- \inst2|Add0~1\ = CARRY(\inst2|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_count\(0),
	datad => VCC,
	combout => \inst2|Add0~0_combout\,
	cout => \inst2|Add0~1\);

-- Location: FF_X108_Y21_N3
\inst2|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_count\(0));

-- Location: LCCOMB_X108_Y21_N4
\inst2|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~2_combout\ = (\inst2|s_count\(1) & (!\inst2|Add0~1\)) # (!\inst2|s_count\(1) & ((\inst2|Add0~1\) # (GND)))
-- \inst2|Add0~3\ = CARRY((!\inst2|Add0~1\) # (!\inst2|s_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_count\(1),
	datad => VCC,
	cin => \inst2|Add0~1\,
	combout => \inst2|Add0~2_combout\,
	cout => \inst2|Add0~3\);

-- Location: FF_X108_Y21_N5
\inst2|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_count\(1));

-- Location: LCCOMB_X108_Y21_N6
\inst2|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~4_combout\ = (\inst2|s_count\(2) & (\inst2|Add0~3\ $ (GND))) # (!\inst2|s_count\(2) & (!\inst2|Add0~3\ & VCC))
-- \inst2|Add0~5\ = CARRY((\inst2|s_count\(2) & !\inst2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_count\(2),
	datad => VCC,
	cin => \inst2|Add0~3\,
	combout => \inst2|Add0~4_combout\,
	cout => \inst2|Add0~5\);

-- Location: FF_X108_Y21_N7
\inst2|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_count\(2));

-- Location: LCCOMB_X108_Y21_N8
\inst2|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~6_combout\ = (\inst2|s_count\(3) & (!\inst2|Add0~5\)) # (!\inst2|s_count\(3) & ((\inst2|Add0~5\) # (GND)))
-- \inst2|Add0~7\ = CARRY((!\inst2|Add0~5\) # (!\inst2|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_count\(3),
	datad => VCC,
	cin => \inst2|Add0~5\,
	combout => \inst2|Add0~6_combout\,
	cout => \inst2|Add0~7\);

-- Location: FF_X108_Y21_N9
\inst2|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_count\(3));

-- Location: LCCOMB_X108_Y21_N10
\inst2|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~8_combout\ = (\inst2|s_count\(4) & (\inst2|Add0~7\ $ (GND))) # (!\inst2|s_count\(4) & (!\inst2|Add0~7\ & VCC))
-- \inst2|Add0~9\ = CARRY((\inst2|s_count\(4) & !\inst2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_count\(4),
	datad => VCC,
	cin => \inst2|Add0~7\,
	combout => \inst2|Add0~8_combout\,
	cout => \inst2|Add0~9\);

-- Location: FF_X108_Y21_N11
\inst2|s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_count\(4));

-- Location: LCCOMB_X108_Y21_N12
\inst2|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~10_combout\ = (\inst2|s_count\(5) & (!\inst2|Add0~9\)) # (!\inst2|s_count\(5) & ((\inst2|Add0~9\) # (GND)))
-- \inst2|Add0~11\ = CARRY((!\inst2|Add0~9\) # (!\inst2|s_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_count\(5),
	datad => VCC,
	cin => \inst2|Add0~9\,
	combout => \inst2|Add0~10_combout\,
	cout => \inst2|Add0~11\);

-- Location: FF_X108_Y21_N13
\inst2|s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_count\(5));

-- Location: LCCOMB_X108_Y21_N14
\inst2|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~12_combout\ = (\inst2|s_count\(6) & (\inst2|Add0~11\ $ (GND))) # (!\inst2|s_count\(6) & (!\inst2|Add0~11\ & VCC))
-- \inst2|Add0~13\ = CARRY((\inst2|s_count\(6) & !\inst2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_count\(6),
	datad => VCC,
	cin => \inst2|Add0~11\,
	combout => \inst2|Add0~12_combout\,
	cout => \inst2|Add0~13\);

-- Location: FF_X108_Y21_N15
\inst2|s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_count\(6));

-- Location: LCCOMB_X108_Y20_N4
\inst2|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~34_combout\ = (\inst2|s_count\(17) & (!\inst2|Add0~33\)) # (!\inst2|s_count\(17) & ((\inst2|Add0~33\) # (GND)))
-- \inst2|Add0~35\ = CARRY((!\inst2|Add0~33\) # (!\inst2|s_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_count\(17),
	datad => VCC,
	cin => \inst2|Add0~33\,
	combout => \inst2|Add0~34_combout\,
	cout => \inst2|Add0~35\);

-- Location: LCCOMB_X108_Y20_N6
\inst2|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~36_combout\ = (\inst2|s_count\(18) & (\inst2|Add0~35\ $ (GND))) # (!\inst2|s_count\(18) & (!\inst2|Add0~35\ & VCC))
-- \inst2|Add0~37\ = CARRY((\inst2|s_count\(18) & !\inst2|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_count\(18),
	datad => VCC,
	cin => \inst2|Add0~35\,
	combout => \inst2|Add0~36_combout\,
	cout => \inst2|Add0~37\);

-- Location: FF_X108_Y20_N7
\inst2|s_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_count\(18));

-- Location: LCCOMB_X108_Y20_N8
\inst2|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~38_combout\ = (\inst2|s_count\(19) & (!\inst2|Add0~37\)) # (!\inst2|s_count\(19) & ((\inst2|Add0~37\) # (GND)))
-- \inst2|Add0~39\ = CARRY((!\inst2|Add0~37\) # (!\inst2|s_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_count\(19),
	datad => VCC,
	cin => \inst2|Add0~37\,
	combout => \inst2|Add0~38_combout\,
	cout => \inst2|Add0~39\);

-- Location: LCCOMB_X109_Y20_N22
\inst2|s_count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_count~3_combout\ = (!\inst2|Equal0~9_combout\ & \inst2|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Equal0~9_combout\,
	datad => \inst2|Add0~38_combout\,
	combout => \inst2|s_count~3_combout\);

-- Location: FF_X109_Y20_N23
\inst2|s_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_count\(19));

-- Location: LCCOMB_X108_Y20_N10
\inst2|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~40_combout\ = (\inst2|s_count\(20) & (\inst2|Add0~39\ $ (GND))) # (!\inst2|s_count\(20) & (!\inst2|Add0~39\ & VCC))
-- \inst2|Add0~41\ = CARRY((\inst2|s_count\(20) & !\inst2|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_count\(20),
	datad => VCC,
	cin => \inst2|Add0~39\,
	combout => \inst2|Add0~40_combout\,
	cout => \inst2|Add0~41\);

-- Location: LCCOMB_X109_Y20_N26
\inst2|s_count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_count~2_combout\ = (!\inst2|Equal0~9_combout\ & \inst2|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Equal0~9_combout\,
	datad => \inst2|Add0~40_combout\,
	combout => \inst2|s_count~2_combout\);

-- Location: FF_X109_Y20_N27
\inst2|s_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_count\(20));

-- Location: LCCOMB_X108_Y20_N12
\inst2|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~42_combout\ = (\inst2|s_count\(21) & (!\inst2|Add0~41\)) # (!\inst2|s_count\(21) & ((\inst2|Add0~41\) # (GND)))
-- \inst2|Add0~43\ = CARRY((!\inst2|Add0~41\) # (!\inst2|s_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_count\(21),
	datad => VCC,
	cin => \inst2|Add0~41\,
	combout => \inst2|Add0~42_combout\,
	cout => \inst2|Add0~43\);

-- Location: LCCOMB_X109_Y20_N4
\inst2|s_count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_count~1_combout\ = (!\inst2|Equal0~9_combout\ & \inst2|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Equal0~9_combout\,
	datad => \inst2|Add0~42_combout\,
	combout => \inst2|s_count~1_combout\);

-- Location: FF_X109_Y20_N5
\inst2|s_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_count\(21));

-- Location: LCCOMB_X108_Y20_N14
\inst2|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~44_combout\ = (\inst2|s_count\(22) & (\inst2|Add0~43\ $ (GND))) # (!\inst2|s_count\(22) & (!\inst2|Add0~43\ & VCC))
-- \inst2|Add0~45\ = CARRY((\inst2|s_count\(22) & !\inst2|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_count\(22),
	datad => VCC,
	cin => \inst2|Add0~43\,
	combout => \inst2|Add0~44_combout\,
	cout => \inst2|Add0~45\);

-- Location: LCCOMB_X109_Y20_N30
\inst2|s_count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_count~0_combout\ = (!\inst2|Equal0~9_combout\ & \inst2|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Equal0~9_combout\,
	datad => \inst2|Add0~44_combout\,
	combout => \inst2|s_count~0_combout\);

-- Location: FF_X109_Y20_N31
\inst2|s_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_count\(22));

-- Location: LCCOMB_X108_Y20_N16
\inst2|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~46_combout\ = (\inst2|s_count\(23) & (!\inst2|Add0~45\)) # (!\inst2|s_count\(23) & ((\inst2|Add0~45\) # (GND)))
-- \inst2|Add0~47\ = CARRY((!\inst2|Add0~45\) # (!\inst2|s_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_count\(23),
	datad => VCC,
	cin => \inst2|Add0~45\,
	combout => \inst2|Add0~46_combout\,
	cout => \inst2|Add0~47\);

-- Location: LCCOMB_X109_Y20_N2
\inst2|s_count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_count~9_combout\ = (!\inst2|Equal0~9_combout\ & \inst2|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Equal0~9_combout\,
	datac => \inst2|Add0~46_combout\,
	combout => \inst2|s_count~9_combout\);

-- Location: FF_X109_Y20_N3
\inst2|s_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_count~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_count\(23));

-- Location: LCCOMB_X108_Y20_N18
\inst2|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~48_combout\ = (\inst2|s_count\(24) & (\inst2|Add0~47\ $ (GND))) # (!\inst2|s_count\(24) & (!\inst2|Add0~47\ & VCC))
-- \inst2|Add0~49\ = CARRY((\inst2|s_count\(24) & !\inst2|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_count\(24),
	datad => VCC,
	cin => \inst2|Add0~47\,
	combout => \inst2|Add0~48_combout\,
	cout => \inst2|Add0~49\);

-- Location: FF_X108_Y20_N19
\inst2|s_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_count\(24));

-- Location: LCCOMB_X108_Y20_N20
\inst2|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~50_combout\ = (\inst2|s_count\(25) & (!\inst2|Add0~49\)) # (!\inst2|s_count\(25) & ((\inst2|Add0~49\) # (GND)))
-- \inst2|Add0~51\ = CARRY((!\inst2|Add0~49\) # (!\inst2|s_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_count\(25),
	datad => VCC,
	cin => \inst2|Add0~49\,
	combout => \inst2|Add0~50_combout\,
	cout => \inst2|Add0~51\);

-- Location: LCCOMB_X109_Y20_N20
\inst2|s_count~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_count~8_combout\ = (!\inst2|Equal0~9_combout\ & \inst2|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Equal0~9_combout\,
	datad => \inst2|Add0~50_combout\,
	combout => \inst2|s_count~8_combout\);

-- Location: FF_X109_Y20_N21
\inst2|s_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_count~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_count\(25));

-- Location: LCCOMB_X110_Y20_N28
\inst2|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~7_combout\ = (!\inst2|s_count\(24) & (!\inst2|s_count\(18) & (\inst2|s_count\(25) & \inst2|s_count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_count\(24),
	datab => \inst2|s_count\(18),
	datac => \inst2|s_count\(25),
	datad => \inst2|s_count\(23),
	combout => \inst2|Equal0~7_combout\);

-- Location: LCCOMB_X108_Y21_N16
\inst2|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~14_combout\ = (\inst2|s_count\(7) & (!\inst2|Add0~13\)) # (!\inst2|s_count\(7) & ((\inst2|Add0~13\) # (GND)))
-- \inst2|Add0~15\ = CARRY((!\inst2|Add0~13\) # (!\inst2|s_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_count\(7),
	datad => VCC,
	cin => \inst2|Add0~13\,
	combout => \inst2|Add0~14_combout\,
	cout => \inst2|Add0~15\);

-- Location: LCCOMB_X109_Y20_N0
\inst2|s_count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_count~7_combout\ = (!\inst2|Equal0~9_combout\ & \inst2|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Equal0~9_combout\,
	datad => \inst2|Add0~14_combout\,
	combout => \inst2|s_count~7_combout\);

-- Location: FF_X109_Y20_N1
\inst2|s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_count~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_count\(7));

-- Location: LCCOMB_X108_Y21_N18
\inst2|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~16_combout\ = (\inst2|s_count\(8) & (\inst2|Add0~15\ $ (GND))) # (!\inst2|s_count\(8) & (!\inst2|Add0~15\ & VCC))
-- \inst2|Add0~17\ = CARRY((\inst2|s_count\(8) & !\inst2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_count\(8),
	datad => VCC,
	cin => \inst2|Add0~15\,
	combout => \inst2|Add0~16_combout\,
	cout => \inst2|Add0~17\);

-- Location: FF_X108_Y21_N19
\inst2|s_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_count\(8));

-- Location: LCCOMB_X108_Y21_N20
\inst2|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~18_combout\ = (\inst2|s_count\(9) & (!\inst2|Add0~17\)) # (!\inst2|s_count\(9) & ((\inst2|Add0~17\) # (GND)))
-- \inst2|Add0~19\ = CARRY((!\inst2|Add0~17\) # (!\inst2|s_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_count\(9),
	datad => VCC,
	cin => \inst2|Add0~17\,
	combout => \inst2|Add0~18_combout\,
	cout => \inst2|Add0~19\);

-- Location: FF_X108_Y21_N21
\inst2|s_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_count\(9));

-- Location: LCCOMB_X108_Y21_N22
\inst2|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~20_combout\ = (\inst2|s_count\(10) & (\inst2|Add0~19\ $ (GND))) # (!\inst2|s_count\(10) & (!\inst2|Add0~19\ & VCC))
-- \inst2|Add0~21\ = CARRY((\inst2|s_count\(10) & !\inst2|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_count\(10),
	datad => VCC,
	cin => \inst2|Add0~19\,
	combout => \inst2|Add0~20_combout\,
	cout => \inst2|Add0~21\);

-- Location: FF_X108_Y21_N23
\inst2|s_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_count\(10));

-- Location: LCCOMB_X108_Y21_N24
\inst2|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~22_combout\ = (\inst2|s_count\(11) & (!\inst2|Add0~21\)) # (!\inst2|s_count\(11) & ((\inst2|Add0~21\) # (GND)))
-- \inst2|Add0~23\ = CARRY((!\inst2|Add0~21\) # (!\inst2|s_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_count\(11),
	datad => VCC,
	cin => \inst2|Add0~21\,
	combout => \inst2|Add0~22_combout\,
	cout => \inst2|Add0~23\);

-- Location: FF_X108_Y21_N25
\inst2|s_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_count\(11));

-- Location: LCCOMB_X110_Y20_N22
\inst2|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~8_combout\ = (!\inst2|s_count\(16) & (!\inst2|s_count\(11) & (\inst2|s_count\(15) & \inst2|s_count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_count\(16),
	datab => \inst2|s_count\(11),
	datac => \inst2|s_count\(15),
	datad => \inst2|s_count\(17),
	combout => \inst2|Equal0~8_combout\);

-- Location: LCCOMB_X108_Y21_N0
\inst2|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~5_combout\ = (\inst2|s_count\(5) & (\inst2|s_count\(3) & (\inst2|s_count\(4) & \inst2|s_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_count\(5),
	datab => \inst2|s_count\(3),
	datac => \inst2|s_count\(4),
	datad => \inst2|s_count\(2),
	combout => \inst2|Equal0~5_combout\);

-- Location: LCCOMB_X108_Y21_N26
\inst2|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~24_combout\ = (\inst2|s_count\(12) & (\inst2|Add0~23\ $ (GND))) # (!\inst2|s_count\(12) & (!\inst2|Add0~23\ & VCC))
-- \inst2|Add0~25\ = CARRY((\inst2|s_count\(12) & !\inst2|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_count\(12),
	datad => VCC,
	cin => \inst2|Add0~23\,
	combout => \inst2|Add0~24_combout\,
	cout => \inst2|Add0~25\);

-- Location: LCCOMB_X109_Y20_N12
\inst2|s_count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_count~6_combout\ = (!\inst2|Equal0~9_combout\ & \inst2|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Equal0~9_combout\,
	datad => \inst2|Add0~24_combout\,
	combout => \inst2|s_count~6_combout\);

-- Location: FF_X109_Y20_N13
\inst2|s_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_count~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_count\(12));

-- Location: LCCOMB_X108_Y21_N28
\inst2|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~26_combout\ = (\inst2|s_count\(13) & (!\inst2|Add0~25\)) # (!\inst2|s_count\(13) & ((\inst2|Add0~25\) # (GND)))
-- \inst2|Add0~27\ = CARRY((!\inst2|Add0~25\) # (!\inst2|s_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_count\(13),
	datad => VCC,
	cin => \inst2|Add0~25\,
	combout => \inst2|Add0~26_combout\,
	cout => \inst2|Add0~27\);

-- Location: LCCOMB_X109_Y20_N18
\inst2|s_count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_count~5_combout\ = (\inst2|Add0~26_combout\ & !\inst2|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~26_combout\,
	datac => \inst2|Equal0~9_combout\,
	combout => \inst2|s_count~5_combout\);

-- Location: FF_X109_Y20_N19
\inst2|s_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_count\(13));

-- Location: LCCOMB_X108_Y21_N30
\inst2|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~28_combout\ = (\inst2|s_count\(14) & (\inst2|Add0~27\ $ (GND))) # (!\inst2|s_count\(14) & (!\inst2|Add0~27\ & VCC))
-- \inst2|Add0~29\ = CARRY((\inst2|s_count\(14) & !\inst2|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_count\(14),
	datad => VCC,
	cin => \inst2|Add0~27\,
	combout => \inst2|Add0~28_combout\,
	cout => \inst2|Add0~29\);

-- Location: LCCOMB_X109_Y20_N28
\inst2|s_count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_count~4_combout\ = (!\inst2|Equal0~9_combout\ & \inst2|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Equal0~9_combout\,
	datad => \inst2|Add0~28_combout\,
	combout => \inst2|s_count~4_combout\);

-- Location: FF_X109_Y20_N29
\inst2|s_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_count\(14));

-- Location: LCCOMB_X109_Y20_N10
\inst2|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~2_combout\ = (\inst2|s_count\(12) & (\inst2|s_count\(14) & (\inst2|s_count\(19) & \inst2|s_count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_count\(12),
	datab => \inst2|s_count\(14),
	datac => \inst2|s_count\(19),
	datad => \inst2|s_count\(13),
	combout => \inst2|Equal0~2_combout\);

-- Location: LCCOMB_X108_Y20_N22
\inst2|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~52_combout\ = (\inst2|s_count\(26) & (\inst2|Add0~51\ $ (GND))) # (!\inst2|s_count\(26) & (!\inst2|Add0~51\ & VCC))
-- \inst2|Add0~53\ = CARRY((\inst2|s_count\(26) & !\inst2|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_count\(26),
	datad => VCC,
	cin => \inst2|Add0~51\,
	combout => \inst2|Add0~52_combout\,
	cout => \inst2|Add0~53\);

-- Location: FF_X108_Y20_N23
\inst2|s_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_count\(26));

-- Location: LCCOMB_X109_Y20_N24
\inst2|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~1_combout\ = (\inst2|s_count\(22) & (\inst2|s_count\(21) & (\inst2|s_count\(20) & !\inst2|s_count\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_count\(22),
	datab => \inst2|s_count\(21),
	datac => \inst2|s_count\(20),
	datad => \inst2|s_count\(26),
	combout => \inst2|Equal0~1_combout\);

-- Location: LCCOMB_X108_Y20_N24
\inst2|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~54_combout\ = (\inst2|s_count\(27) & (!\inst2|Add0~53\)) # (!\inst2|s_count\(27) & ((\inst2|Add0~53\) # (GND)))
-- \inst2|Add0~55\ = CARRY((!\inst2|Add0~53\) # (!\inst2|s_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_count\(27),
	datad => VCC,
	cin => \inst2|Add0~53\,
	combout => \inst2|Add0~54_combout\,
	cout => \inst2|Add0~55\);

-- Location: FF_X108_Y20_N25
\inst2|s_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_count\(27));

-- Location: LCCOMB_X108_Y20_N26
\inst2|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~56_combout\ = (\inst2|s_count\(28) & (\inst2|Add0~55\ $ (GND))) # (!\inst2|s_count\(28) & (!\inst2|Add0~55\ & VCC))
-- \inst2|Add0~57\ = CARRY((\inst2|s_count\(28) & !\inst2|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_count\(28),
	datad => VCC,
	cin => \inst2|Add0~55\,
	combout => \inst2|Add0~56_combout\,
	cout => \inst2|Add0~57\);

-- Location: FF_X108_Y20_N27
\inst2|s_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_count\(28));

-- Location: LCCOMB_X108_Y20_N28
\inst2|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~58_combout\ = (\inst2|s_count\(29) & (!\inst2|Add0~57\)) # (!\inst2|s_count\(29) & ((\inst2|Add0~57\) # (GND)))
-- \inst2|Add0~59\ = CARRY((!\inst2|Add0~57\) # (!\inst2|s_count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_count\(29),
	datad => VCC,
	cin => \inst2|Add0~57\,
	combout => \inst2|Add0~58_combout\,
	cout => \inst2|Add0~59\);

-- Location: FF_X108_Y20_N29
\inst2|s_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_count\(29));

-- Location: LCCOMB_X108_Y20_N30
\inst2|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~60_combout\ = \inst2|s_count\(30) $ (!\inst2|Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_count\(30),
	cin => \inst2|Add0~59\,
	combout => \inst2|Add0~60_combout\);

-- Location: FF_X108_Y20_N31
\inst2|s_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_count\(30));

-- Location: LCCOMB_X109_Y20_N16
\inst2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~0_combout\ = (!\inst2|s_count\(28) & (!\inst2|s_count\(30) & (!\inst2|s_count\(29) & !\inst2|s_count\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_count\(28),
	datab => \inst2|s_count\(30),
	datac => \inst2|s_count\(29),
	datad => \inst2|s_count\(27),
	combout => \inst2|Equal0~0_combout\);

-- Location: LCCOMB_X109_Y20_N14
\inst2|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~3_combout\ = (!\inst2|s_count\(7) & (!\inst2|s_count\(9) & (!\inst2|s_count\(10) & !\inst2|s_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_count\(7),
	datab => \inst2|s_count\(9),
	datac => \inst2|s_count\(10),
	datad => \inst2|s_count\(8),
	combout => \inst2|Equal0~3_combout\);

-- Location: LCCOMB_X110_Y20_N16
\inst2|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~4_combout\ = (\inst2|Equal0~2_combout\ & (\inst2|Equal0~1_combout\ & (\inst2|Equal0~0_combout\ & \inst2|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~2_combout\,
	datab => \inst2|Equal0~1_combout\,
	datac => \inst2|Equal0~0_combout\,
	datad => \inst2|Equal0~3_combout\,
	combout => \inst2|Equal0~4_combout\);

-- Location: LCCOMB_X110_Y20_N10
\inst2|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~6_combout\ = (\inst2|s_count\(0) & (\inst2|s_count\(1) & (\inst2|Equal0~5_combout\ & \inst2|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_count\(0),
	datab => \inst2|s_count\(1),
	datac => \inst2|Equal0~5_combout\,
	datad => \inst2|Equal0~4_combout\,
	combout => \inst2|Equal0~6_combout\);

-- Location: LCCOMB_X110_Y20_N12
\inst2|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~9_combout\ = (\inst2|s_count\(6) & (\inst2|Equal0~7_combout\ & (\inst2|Equal0~8_combout\ & \inst2|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_count\(6),
	datab => \inst2|Equal0~7_combout\,
	datac => \inst2|Equal0~8_combout\,
	datad => \inst2|Equal0~6_combout\,
	combout => \inst2|Equal0~9_combout\);

-- Location: LCCOMB_X108_Y20_N0
\inst2|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~30_combout\ = (\inst2|s_count\(15) & (!\inst2|Add0~29\)) # (!\inst2|s_count\(15) & ((\inst2|Add0~29\) # (GND)))
-- \inst2|Add0~31\ = CARRY((!\inst2|Add0~29\) # (!\inst2|s_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_count\(15),
	datad => VCC,
	cin => \inst2|Add0~29\,
	combout => \inst2|Add0~30_combout\,
	cout => \inst2|Add0~31\);

-- Location: LCCOMB_X109_Y20_N6
\inst2|s_count~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_count~11_combout\ = (!\inst2|Equal0~9_combout\ & \inst2|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Equal0~9_combout\,
	datad => \inst2|Add0~30_combout\,
	combout => \inst2|s_count~11_combout\);

-- Location: FF_X109_Y20_N7
\inst2|s_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_count~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_count\(15));

-- Location: LCCOMB_X108_Y20_N2
\inst2|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~32_combout\ = (\inst2|s_count\(16) & (\inst2|Add0~31\ $ (GND))) # (!\inst2|s_count\(16) & (!\inst2|Add0~31\ & VCC))
-- \inst2|Add0~33\ = CARRY((\inst2|s_count\(16) & !\inst2|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_count\(16),
	datad => VCC,
	cin => \inst2|Add0~31\,
	combout => \inst2|Add0~32_combout\,
	cout => \inst2|Add0~33\);

-- Location: FF_X108_Y20_N3
\inst2|s_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_count\(16));

-- Location: LCCOMB_X109_Y20_N8
\inst2|s_count~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_count~10_combout\ = (\inst2|Add0~34_combout\ & !\inst2|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~34_combout\,
	datac => \inst2|Equal0~9_combout\,
	combout => \inst2|s_count~10_combout\);

-- Location: FF_X109_Y20_N9
\inst2|s_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_count~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_count\(17));

-- Location: LCCOMB_X110_Y20_N24
\inst2|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal1~1_combout\ = (!\inst2|s_count\(17) & (\inst2|s_count\(11) & (!\inst2|s_count\(15) & \inst2|s_count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_count\(17),
	datab => \inst2|s_count\(11),
	datac => \inst2|s_count\(15),
	datad => \inst2|s_count\(16),
	combout => \inst2|Equal1~1_combout\);

-- Location: LCCOMB_X110_Y20_N14
\inst2|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal1~0_combout\ = (\inst2|s_count\(24) & (\inst2|s_count\(18) & (!\inst2|s_count\(25) & !\inst2|s_count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_count\(24),
	datab => \inst2|s_count\(18),
	datac => \inst2|s_count\(25),
	datad => \inst2|s_count\(23),
	combout => \inst2|Equal1~0_combout\);

-- Location: LCCOMB_X110_Y20_N6
\inst2|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal1~2_combout\ = (!\inst2|s_count\(6) & (\inst2|Equal1~1_combout\ & (\inst2|Equal1~0_combout\ & \inst2|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_count\(6),
	datab => \inst2|Equal1~1_combout\,
	datac => \inst2|Equal1~0_combout\,
	datad => \inst2|Equal0~6_combout\,
	combout => \inst2|Equal1~2_combout\);

-- Location: LCCOMB_X111_Y20_N18
\inst2|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|clkOut~0_combout\ = (\inst2|Equal0~9_combout\) # ((!\inst2|Equal1~2_combout\ & \inst2|clkOut~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Equal1~2_combout\,
	datac => \inst2|clkOut~q\,
	datad => \inst2|Equal0~9_combout\,
	combout => \inst2|clkOut~0_combout\);

-- Location: FF_X111_Y20_N19
\inst2|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|clkOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|clkOut~q\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

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

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LCCOMB_X111_Y20_N20
\inst|reg_fstate.E0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.E0~0_combout\ = \SW[0]~input_o\ $ (!\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datac => \SW[1]~input_o\,
	combout => \inst|reg_fstate.E0~0_combout\);

-- Location: LCCOMB_X111_Y20_N22
\inst|reg_fstate.E0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.E0~1_combout\ = (!\inst|fstate.E5~q\ & (!\inst2|clkOut~q\ & ((\inst|fstate.E0~q\) # (!\inst|reg_fstate.E0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reg_fstate.E0~0_combout\,
	datab => \inst|fstate.E5~q\,
	datac => \inst|fstate.E0~q\,
	datad => \inst2|clkOut~q\,
	combout => \inst|reg_fstate.E0~1_combout\);

-- Location: FF_X111_Y20_N23
\inst|fstate.E0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \inst|reg_fstate.E0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fstate.E0~q\);

-- Location: LCCOMB_X111_Y20_N12
\inst|reg_fstate.E3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.E3~1_combout\ = (\SW[0]~input_o\ & (\SW[1]~input_o\ & ((\inst|fstate.E3~q\)))) # (!\SW[0]~input_o\ & ((\SW[1]~input_o\ & (!\inst|fstate.E0~q\)) # (!\SW[1]~input_o\ & ((\inst|fstate.E3~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \inst|fstate.E0~q\,
	datad => \inst|fstate.E3~q\,
	combout => \inst|reg_fstate.E3~1_combout\);

-- Location: LCCOMB_X111_Y20_N30
\inst|reg_fstate.E1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.E1~0_combout\ = (\SW[0]~input_o\ & ((\SW[1]~input_o\ & ((\inst|fstate.E1~q\))) # (!\SW[1]~input_o\ & (!\inst|fstate.E0~q\)))) # (!\SW[0]~input_o\ & (!\SW[1]~input_o\ & ((\inst|fstate.E1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \inst|fstate.E0~q\,
	datad => \inst|fstate.E1~q\,
	combout => \inst|reg_fstate.E1~0_combout\);

-- Location: LCCOMB_X111_Y20_N6
\inst|reg_fstate.E1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.E1~1_combout\ = (\inst|reg_fstate.E1~0_combout\ & !\inst2|clkOut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|reg_fstate.E1~0_combout\,
	datad => \inst2|clkOut~q\,
	combout => \inst|reg_fstate.E1~1_combout\);

-- Location: FF_X111_Y20_N7
\inst|fstate.E1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \inst|reg_fstate.E1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fstate.E1~q\);

-- Location: LCCOMB_X111_Y20_N2
\inst|reg_fstate.E2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.E2~0_combout\ = (\SW[0]~input_o\ & ((\SW[1]~input_o\ & (\inst|fstate.E2~q\)) # (!\SW[1]~input_o\ & ((\inst|fstate.E1~q\))))) # (!\SW[0]~input_o\ & (\inst|fstate.E2~q\ & (!\SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \inst|fstate.E2~q\,
	datac => \SW[1]~input_o\,
	datad => \inst|fstate.E1~q\,
	combout => \inst|reg_fstate.E2~0_combout\);

-- Location: LCCOMB_X111_Y20_N24
\inst|reg_fstate.E2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.E2~1_combout\ = (!\inst2|clkOut~q\ & \inst|reg_fstate.E2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|clkOut~q\,
	datad => \inst|reg_fstate.E2~0_combout\,
	combout => \inst|reg_fstate.E2~1_combout\);

-- Location: FF_X111_Y20_N25
\inst|fstate.E2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \inst|reg_fstate.E2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fstate.E2~q\);

-- Location: LCCOMB_X111_Y20_N16
\inst|reg_fstate.E3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.E3~0_combout\ = (\SW[0]~input_o\ & (!\SW[1]~input_o\ & \inst|fstate.E2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \inst|fstate.E2~q\,
	combout => \inst|reg_fstate.E3~0_combout\);

-- Location: LCCOMB_X111_Y20_N10
\inst|reg_fstate.E3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.E3~2_combout\ = (!\inst2|clkOut~q\ & ((\inst|reg_fstate.E3~1_combout\) # (\inst|reg_fstate.E3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reg_fstate.E3~1_combout\,
	datab => \inst|reg_fstate.E3~0_combout\,
	datad => \inst2|clkOut~q\,
	combout => \inst|reg_fstate.E3~2_combout\);

-- Location: FF_X111_Y20_N11
\inst|fstate.E3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \inst|reg_fstate.E3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fstate.E3~q\);

-- Location: LCCOMB_X111_Y20_N4
\inst|reg_fstate.E4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.E4~0_combout\ = (\SW[0]~input_o\ & (\SW[1]~input_o\)) # (!\SW[0]~input_o\ & ((\SW[1]~input_o\ & ((\inst|fstate.E1~q\))) # (!\SW[1]~input_o\ & (\inst|fstate.E4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \inst|fstate.E4~q\,
	datad => \inst|fstate.E1~q\,
	combout => \inst|reg_fstate.E4~0_combout\);

-- Location: LCCOMB_X111_Y20_N14
\inst|reg_fstate.E4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.E4~1_combout\ = (!\inst2|clkOut~q\ & ((\SW[0]~input_o\ & (\inst|fstate.E3~q\ & !\inst|reg_fstate.E4~0_combout\)) # (!\SW[0]~input_o\ & ((\inst|reg_fstate.E4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \inst|fstate.E3~q\,
	datac => \inst|reg_fstate.E4~0_combout\,
	datad => \inst2|clkOut~q\,
	combout => \inst|reg_fstate.E4~1_combout\);

-- Location: FF_X111_Y20_N15
\inst|fstate.E4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \inst|reg_fstate.E4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fstate.E4~q\);

-- Location: LCCOMB_X111_Y20_N8
\inst|reg_fstate.E5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.E5~0_combout\ = (\SW[1]~input_o\ & ((\inst|fstate.E3~q\) # ((\inst|fstate.E4~q\) # (\inst|fstate.E2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|fstate.E3~q\,
	datab => \SW[1]~input_o\,
	datac => \inst|fstate.E4~q\,
	datad => \inst|fstate.E2~q\,
	combout => \inst|reg_fstate.E5~0_combout\);

-- Location: LCCOMB_X111_Y20_N0
\inst|reg_fstate.E5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.E5~1_combout\ = (!\inst2|clkOut~q\ & ((\SW[0]~input_o\ & (\inst|fstate.E4~q\)) # (!\SW[0]~input_o\ & ((\inst|reg_fstate.E5~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \inst|fstate.E4~q\,
	datac => \inst|reg_fstate.E5~0_combout\,
	datad => \inst2|clkOut~q\,
	combout => \inst|reg_fstate.E5~1_combout\);

-- Location: FF_X111_Y20_N1
\inst|fstate.E5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \inst|reg_fstate.E5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fstate.E5~q\);

-- Location: LCCOMB_X111_Y20_N28
\inst|Abrir~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Abrir~0_combout\ = (!\inst2|clkOut~q\ & \inst|fstate.E5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clkOut~q\,
	datad => \inst|fstate.E5~q\,
	combout => \inst|Abrir~0_combout\);

ww_LEDG(0) <= \LEDG[0]~output_o\;
END structure;


