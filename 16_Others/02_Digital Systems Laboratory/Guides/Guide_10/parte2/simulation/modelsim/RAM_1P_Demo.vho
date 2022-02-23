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

-- DATE "05/16/2017 19:19:53"

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

ENTITY 	RAM_1P_Demo IS
    PORT (
	KEY : IN std_logic_vector(0 DOWNTO 0);
	SW : IN std_logic_vector(12 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END RAM_1P_Demo;

-- Design Ports Information
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF RAM_1P_Demo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(12 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(7 DOWNTO 0);
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \atr|s_memory~60feeder_combout\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \atr|s_memory~117_combout\ : std_logic;
SIGNAL \atr|s_memory~60_q\ : std_logic;
SIGNAL \atr|s_memory~118_combout\ : std_logic;
SIGNAL \atr|s_memory~44_q\ : std_logic;
SIGNAL \atr|s_memory~76_combout\ : std_logic;
SIGNAL \atr|s_memory~119_combout\ : std_logic;
SIGNAL \atr|s_memory~68_q\ : std_logic;
SIGNAL \atr|s_memory~116_combout\ : std_logic;
SIGNAL \atr|s_memory~52_q\ : std_logic;
SIGNAL \atr|s_memory~77_combout\ : std_logic;
SIGNAL \atr|s_memory~20feeder_combout\ : std_logic;
SIGNAL \atr|s_memory~121_combout\ : std_logic;
SIGNAL \atr|s_memory~20_q\ : std_logic;
SIGNAL \atr|s_memory~122_combout\ : std_logic;
SIGNAL \atr|s_memory~12_q\ : std_logic;
SIGNAL \atr|s_memory~78_combout\ : std_logic;
SIGNAL \atr|s_memory~123_combout\ : std_logic;
SIGNAL \atr|s_memory~36_q\ : std_logic;
SIGNAL \atr|s_memory~120_combout\ : std_logic;
SIGNAL \atr|s_memory~28_q\ : std_logic;
SIGNAL \atr|s_memory~79_combout\ : std_logic;
SIGNAL \atr|s_memory~80_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \atr|s_memory~53_q\ : std_logic;
SIGNAL \atr|s_memory~69_q\ : std_logic;
SIGNAL \atr|s_memory~45_q\ : std_logic;
SIGNAL \atr|s_memory~61_q\ : std_logic;
SIGNAL \atr|s_memory~81_combout\ : std_logic;
SIGNAL \atr|s_memory~82_combout\ : std_logic;
SIGNAL \atr|s_memory~29_q\ : std_logic;
SIGNAL \atr|s_memory~37_q\ : std_logic;
SIGNAL \atr|s_memory~21feeder_combout\ : std_logic;
SIGNAL \atr|s_memory~21_q\ : std_logic;
SIGNAL \atr|s_memory~13_q\ : std_logic;
SIGNAL \atr|s_memory~83_combout\ : std_logic;
SIGNAL \atr|s_memory~84_combout\ : std_logic;
SIGNAL \atr|s_memory~85_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \atr|s_memory~22feeder_combout\ : std_logic;
SIGNAL \atr|s_memory~22_q\ : std_logic;
SIGNAL \atr|s_memory~14_q\ : std_logic;
SIGNAL \atr|s_memory~88_combout\ : std_logic;
SIGNAL \atr|s_memory~38_q\ : std_logic;
SIGNAL \atr|s_memory~30_q\ : std_logic;
SIGNAL \atr|s_memory~89_combout\ : std_logic;
SIGNAL \atr|s_memory~62_q\ : std_logic;
SIGNAL \atr|s_memory~46_q\ : std_logic;
SIGNAL \atr|s_memory~86_combout\ : std_logic;
SIGNAL \atr|s_memory~70_q\ : std_logic;
SIGNAL \atr|s_memory~54_q\ : std_logic;
SIGNAL \atr|s_memory~87_combout\ : std_logic;
SIGNAL \atr|s_memory~90_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \atr|s_memory~55_q\ : std_logic;
SIGNAL \atr|s_memory~71_q\ : std_logic;
SIGNAL \atr|s_memory~63_q\ : std_logic;
SIGNAL \atr|s_memory~47_q\ : std_logic;
SIGNAL \atr|s_memory~91_combout\ : std_logic;
SIGNAL \atr|s_memory~92_combout\ : std_logic;
SIGNAL \atr|s_memory~23feeder_combout\ : std_logic;
SIGNAL \atr|s_memory~23_q\ : std_logic;
SIGNAL \atr|s_memory~15_q\ : std_logic;
SIGNAL \atr|s_memory~93_combout\ : std_logic;
SIGNAL \atr|s_memory~39_q\ : std_logic;
SIGNAL \atr|s_memory~31_q\ : std_logic;
SIGNAL \atr|s_memory~94_combout\ : std_logic;
SIGNAL \atr|s_memory~95_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \atr|s_memory~56_q\ : std_logic;
SIGNAL \atr|s_memory~72_q\ : std_logic;
SIGNAL \atr|s_memory~64_q\ : std_logic;
SIGNAL \atr|s_memory~48_q\ : std_logic;
SIGNAL \atr|s_memory~96_combout\ : std_logic;
SIGNAL \atr|s_memory~97_combout\ : std_logic;
SIGNAL \atr|s_memory~40_q\ : std_logic;
SIGNAL \atr|s_memory~32_q\ : std_logic;
SIGNAL \atr|s_memory~24_q\ : std_logic;
SIGNAL \atr|s_memory~16_q\ : std_logic;
SIGNAL \atr|s_memory~98_combout\ : std_logic;
SIGNAL \atr|s_memory~99_combout\ : std_logic;
SIGNAL \atr|s_memory~100_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \atr|s_memory~33_q\ : std_logic;
SIGNAL \atr|s_memory~41_q\ : std_logic;
SIGNAL \atr|s_memory~25_q\ : std_logic;
SIGNAL \atr|s_memory~17_q\ : std_logic;
SIGNAL \atr|s_memory~103_combout\ : std_logic;
SIGNAL \atr|s_memory~104_combout\ : std_logic;
SIGNAL \atr|s_memory~57_q\ : std_logic;
SIGNAL \atr|s_memory~73_q\ : std_logic;
SIGNAL \atr|s_memory~65feeder_combout\ : std_logic;
SIGNAL \atr|s_memory~65_q\ : std_logic;
SIGNAL \atr|s_memory~49_q\ : std_logic;
SIGNAL \atr|s_memory~101_combout\ : std_logic;
SIGNAL \atr|s_memory~102_combout\ : std_logic;
SIGNAL \atr|s_memory~105_combout\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \atr|s_memory~58_q\ : std_logic;
SIGNAL \atr|s_memory~74_q\ : std_logic;
SIGNAL \atr|s_memory~66feeder_combout\ : std_logic;
SIGNAL \atr|s_memory~66_q\ : std_logic;
SIGNAL \atr|s_memory~50_q\ : std_logic;
SIGNAL \atr|s_memory~106_combout\ : std_logic;
SIGNAL \atr|s_memory~107_combout\ : std_logic;
SIGNAL \atr|s_memory~26_q\ : std_logic;
SIGNAL \atr|s_memory~18_q\ : std_logic;
SIGNAL \atr|s_memory~108_combout\ : std_logic;
SIGNAL \atr|s_memory~42_q\ : std_logic;
SIGNAL \atr|s_memory~34_q\ : std_logic;
SIGNAL \atr|s_memory~109_combout\ : std_logic;
SIGNAL \atr|s_memory~110_combout\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \atr|s_memory~59_q\ : std_logic;
SIGNAL \atr|s_memory~75_q\ : std_logic;
SIGNAL \atr|s_memory~67feeder_combout\ : std_logic;
SIGNAL \atr|s_memory~67_q\ : std_logic;
SIGNAL \atr|s_memory~51_q\ : std_logic;
SIGNAL \atr|s_memory~111_combout\ : std_logic;
SIGNAL \atr|s_memory~112_combout\ : std_logic;
SIGNAL \atr|s_memory~19_q\ : std_logic;
SIGNAL \atr|s_memory~27_q\ : std_logic;
SIGNAL \atr|s_memory~113_combout\ : std_logic;
SIGNAL \atr|s_memory~35_q\ : std_logic;
SIGNAL \atr|s_memory~43_q\ : std_logic;
SIGNAL \atr|s_memory~114_combout\ : std_logic;
SIGNAL \atr|s_memory~115_combout\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;

BEGIN

ww_KEY <= KEY;
ww_SW <= SW;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \atr|s_memory~80_combout\,
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
	i => \atr|s_memory~85_combout\,
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
	i => \atr|s_memory~90_combout\,
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
	i => \atr|s_memory~95_combout\,
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
	i => \atr|s_memory~100_combout\,
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
	i => \atr|s_memory~105_combout\,
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
	i => \atr|s_memory~110_combout\,
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
	i => \atr|s_memory~115_combout\,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

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

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: LCCOMB_X114_Y39_N24
\atr|s_memory~60feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \atr|s_memory~60feeder_combout\ = \SW[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[4]~input_o\,
	combout => \atr|s_memory~60feeder_combout\);

-- Location: IOIBUF_X115_Y7_N15
\SW[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

-- Location: LCCOMB_X114_Y39_N18
\atr|s_memory~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \atr|s_memory~117_combout\ = (\SW[1]~input_o\ & (!\SW[0]~input_o\ & (\SW[12]~input_o\ & \SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \SW[12]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \atr|s_memory~117_combout\);

-- Location: FF_X114_Y39_N25
\atr|s_memory~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \atr|s_memory~60feeder_combout\,
	ena => \atr|s_memory~117_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \atr|s_memory~60_q\);

-- Location: LCCOMB_X114_Y39_N12
\atr|s_memory~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \atr|s_memory~118_combout\ = (!\SW[1]~input_o\ & (!\SW[0]~input_o\ & (\SW[12]~input_o\ & \SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \SW[12]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \atr|s_memory~118_combout\);

-- Location: FF_X114_Y39_N11
\atr|s_memory~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \atr|s_memory~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \atr|s_memory~44_q\);

-- Location: LCCOMB_X114_Y39_N10
\atr|s_memory~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \atr|s_memory~76_combout\ = (\SW[1]~input_o\ & ((\atr|s_memory~60_q\) # ((\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & (((\atr|s_memory~44_q\ & !\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \atr|s_memory~60_q\,
	datac => \atr|s_memory~44_q\,
	datad => \SW[0]~input_o\,
	combout => \atr|s_memory~76_combout\);

-- Location: LCCOMB_X114_Y39_N14
\atr|s_memory~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \atr|s_memory~119_combout\ = (\SW[1]~input_o\ & (\SW[0]~input_o\ & (\SW[12]~input_o\ & \SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \SW[12]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \atr|s_memory~119_combout\);

-- Location: FF_X114_Y36_N3
\atr|s_memory~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \atr|s_memory~119_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \atr|s_memory~68_q\);

-- Location: LCCOMB_X114_Y39_N8
\atr|s_memory~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \atr|s_memory~116_combout\ = (!\SW[1]~input_o\ & (\SW[0]~input_o\ & (\SW[12]~input_o\ & \SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \SW[12]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \atr|s_memory~116_combout\);

-- Location: FF_X114_Y36_N1
\atr|s_memory~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \atr|s_memory~116_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \atr|s_memory~52_q\);

-- Location: LCCOMB_X114_Y36_N2
\atr|s_memory~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \atr|s_memory~77_combout\ = (\SW[0]~input_o\ & ((\atr|s_memory~76_combout\ & (\atr|s_memory~68_q\)) # (!\atr|s_memory~76_combout\ & ((\atr|s_memory~52_q\))))) # (!\SW[0]~input_o\ & (\atr|s_memory~76_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \atr|s_memory~76_combout\,
	datac => \atr|s_memory~68_q\,
	datad => \atr|s_memory~52_q\,
	combout => \atr|s_memory~77_combout\);

-- Location: LCCOMB_X114_Y38_N0
\atr|s_memory~20feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \atr|s_memory~20feeder_combout\ = \SW[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[4]~input_o\,
	combout => \atr|s_memory~20feeder_combout\);

-- Location: LCCOMB_X114_Y39_N26
\atr|s_memory~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \atr|s_memory~121_combout\ = (!\SW[1]~input_o\ & (\SW[0]~input_o\ & (\SW[12]~input_o\ & !\SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \SW[12]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \atr|s_memory~121_combout\);

-- Location: FF_X114_Y38_N1
\atr|s_memory~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \atr|s_memory~20feeder_combout\,
	ena => \atr|s_memory~121_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \atr|s_memory~20_q\);

-- Location: LCCOMB_X114_Y39_N28
\atr|s_memory~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \atr|s_memory~122_combout\ = (!\SW[1]~input_o\ & (!\SW[0]~input_o\ & (\SW[12]~input_o\ & !\SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \SW[12]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \atr|s_memory~122_combout\);

-- Location: FF_X114_Y38_N11
\atr|s_memory~12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \atr|s_memory~122_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \atr|s_memory~12_q\);

-- Location: LCCOMB_X114_Y38_N10
\atr|s_memory~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \atr|s_memory~78_combout\ = (\SW[1]~input_o\ & (((\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & (\atr|s_memory~20_q\)) # (!\SW[0]~input_o\ & ((\atr|s_memory~12_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \atr|s_memory~20_q\,
	datac => \atr|s_memory~12_q\,
	datad => \SW[0]~input_o\,
	combout => \atr|s_memory~78_combout\);

-- Location: LCCOMB_X114_Y39_N30
\atr|s_memory~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \atr|s_memory~123_combout\ = (\SW[1]~input_o\ & (\SW[0]~input_o\ & (\SW[12]~input_o\ & !\SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \SW[12]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \atr|s_memory~123_combout\);

-- Location: FF_X114_Y40_N3
\atr|s_memory~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \atr|s_memory~123_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \atr|s_memory~36_q\);

-- Location: LCCOMB_X114_Y39_N0
\atr|s_memory~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \atr|s_memory~120_combout\ = (\SW[1]~input_o\ & (!\SW[0]~input_o\ & (\SW[12]~input_o\ & !\SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \SW[12]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \atr|s_memory~120_combout\);

-- Location: FF_X114_Y40_N25
\atr|s_memory~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \atr|s_memory~120_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \atr|s_memory~28_q\);

-- Location: LCCOMB_X114_Y40_N2
\atr|s_memory~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \atr|s_memory~79_combout\ = (\SW[1]~input_o\ & ((\atr|s_memory~78_combout\ & (\atr|s_memory~36_q\)) # (!\atr|s_memory~78_combout\ & ((\atr|s_memory~28_q\))))) # (!\SW[1]~input_o\ & (\atr|s_memory~78_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \atr|s_memory~78_combout\,
	datac => \atr|s_memory~36_q\,
	datad => \atr|s_memory~28_q\,
	combout => \atr|s_memory~79_combout\);

-- Location: LCCOMB_X114_Y40_N4
\atr|s_memory~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \atr|s_memory~80_combout\ = (\SW[2]~input_o\ & (\atr|s_memory~77_combout\)) # (!\SW[2]~input_o\ & ((\atr|s_memory~79_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \atr|s_memory~77_combout\,
	datad => \atr|s_memory~79_combout\,
	combout => \atr|s_memory~80_combout\);

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: FF_X114_Y36_N13
\atr|s_memory~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \atr|s_memory~116_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \atr|s_memory~53_q\);

-- Location: FF_X114_Y36_N31
\atr|s_memory~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \atr|s_memory~119_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \atr|s_memory~69_q\);

-- Location: FF_X114_Y39_N7
\atr|s_memory~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \atr|s_memory~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \atr|s_memory~45_q\);

-- Location: FF_X114_Y39_N21
\atr|s_memory~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \atr|s_memory~117_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \atr|s_memory~61_q\);

-- Location: LCCOMB_X114_Y39_N6
\atr|s_memory~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \atr|s_memory~81_combout\ = (\SW[1]~input_o\ & ((\SW[0]~input_o\) # ((\atr|s_memory~61_q\)))) # (!\SW[1]~input_o\ & (!\SW[0]~input_o\ & (\atr|s_memory~45_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \atr|s_memory~45_q\,
	datad => \atr|s_memory~61_q\,
	combout => \atr|s_memory~81_combout\);

-- Location: LCCOMB_X114_Y36_N30
\atr|s_memory~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \atr|s_memory~82_combout\ = (\SW[0]~input_o\ & ((\atr|s_memory~81_combout\ & ((\atr|s_memory~69_q\))) # (!\atr|s_memory~81_combout\ & (\atr|s_memory~53_q\)))) # (!\SW[0]~input_o\ & (((\atr|s_memory~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \atr|s_memory~53_q\,
	datac => \atr|s_memory~69_q\,
	datad => \atr|s_memory~81_combout\,
	combout => \atr|s_memory~82_combout\);

-- Location: FF_X114_Y40_N15
\atr|s_memory~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \atr|s_memory~120_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \atr|s_memory~29_q\);

-- Location: FF_X114_Y40_N17
\atr|s_memory~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \atr|s_memory~123_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \atr|s_memory~37_q\);

-- Location: LCCOMB_X114_Y38_N4
\atr|s_memory~21feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \atr|s_memory~21feeder_combout\ = \SW[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[5]~input_o\,
	combout => \atr|s_memory~21feeder_combout\);

-- Location: FF_X114_Y38_N5
\atr|s_memory~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \atr|s_memory~21feeder_combout\,
	ena => \atr|s_memory~121_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \atr|s_memory~21_q\);

-- Location: FF_X114_Y38_N23
\atr|s_memory~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \atr|s_memory~122_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \atr|s_memory~13_q\);

-- Location: LCCOMB_X114_Y38_N22
\atr|s_memory~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \atr|s_memory~83_combout\ = (\SW[1]~input_o\ & (((\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & (\atr|s_memory~21_q\)) # (!\SW[0]~input_o\ & ((\atr|s_memory~13_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \atr|s_memory~21_q\,
	datac => \atr|s_memory~13_q\,
	datad => \SW[0]~input_o\,
	combout => \atr|s_memory~83_combout\);

-- Location: LCCOMB_X114_Y40_N16
\atr|s_memory~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \atr|s_memory~84_combout\ = (\SW[1]~input_o\ & ((\atr|s_memory~83_combout\ & ((\atr|s_memory~37_q\))) # (!\atr|s_memory~83_combout\ & (\atr|s_memory~29_q\)))) # (!\SW[1]~input_o\ & (((\atr|s_memory~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \atr|s_memory~29_q\,
	datac => \atr|s_memory~37_q\,
	datad => \atr|s_memory~83_combout\,
	combout => \atr|s_memory~84_combout\);

-- Location: LCCOMB_X114_Y40_N18
\atr|s_memory~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \atr|s_memory~85_combout\ = (\SW[2]~input_o\ & (\atr|s_memory~82_combout\)) # (!\SW[2]~input_o\ & ((\atr|s_memory~84_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \atr|s_memory~82_combout\,
	datab => \atr|s_memory~84_combout\,
	datad => \SW[2]~input_o\,
	combout => \atr|s_memory~85_combout\);

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: LCCOMB_X114_Y38_N8
\atr|s_memory~22feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \atr|s_memory~22feeder_combout\ = \SW[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[6]~input_o\,
	combout => \atr|s_memory~22feeder_combout\);

-- Location: FF_X114_Y38_N9
\atr|s_memory~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \atr|s_memory~22feeder_combout\,
	ena => \atr|s_memory~121_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \atr|s_memory~22_q\);

-- Location: FF_X114_Y38_N27
\atr|s_memory~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \atr|s_memory~122_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \atr|s_memory~14_q\);

-- Location: LCCOMB_X114_Y38_N26
\atr|s_memory~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \atr|s_memory~88_combout\ = (\SW[1]~input_o\ & (((\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & (\atr|s_memory~22_q\)) # (!\SW[0]~input_o\ & ((\atr|s_memory~14_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \atr|s_memory~22_q\,
	datac => \atr|s_memory~14_q\,
	datad => \SW[0]~input_o\,
	combout => \atr|s_memory~88_combout\);

-- Location: FF_X114_Y40_N31
\atr|s_memory~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \atr|s_memory~123_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \atr|s_memory~38_q\);

-- Location: FF_X114_Y40_N13
\atr|s_memory~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \atr|s_memory~120_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \atr|s_memory~30_q\);

-- Location: LCCOMB_X114_Y40_N30
\atr|s_memory~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \atr|s_memory~89_combout\ = (\SW[1]~input_o\ & ((\atr|s_memory~88_combout\ & (\atr|s_memory~38_q\)) # (!\atr|s_memory~88_combout\ & ((\atr|s_memory~30_q\))))) # (!\SW[1]~input_o\ & (\atr|s_memory~88_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \atr|s_memory~88_combout\,
	datac => \atr|s_memory~38_q\,
	datad => \atr|s_memory~30_q\,
	combout => \atr|s_memory~89_combout\);

-- Location: FF_X114_Y39_N17
\atr|s_memory~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \atr|s_memory~117_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \atr|s_memory~62_q\);

-- Location: FF_X114_Y39_N3
\atr|s_memory~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \atr|s_memory~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \atr|s_memory~46_q\);

-- Location: LCCOMB_X114_Y39_N2
\atr|s_memory~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \atr|s_memory~86_combout\ = (\SW[1]~input_o\ & ((\atr|s_memory~62_q\) # ((\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & (((\atr|s_memory~46_q\ & !\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \atr|s_memory~62_q\,
	datac => \atr|s_memory~46_q\,
	datad => \SW[0]~input_o\,
	combout => \atr|s_memory~86_combout\);

-- Location: FF_X114_Y36_N19
\atr|s_memory~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \atr|s_memory~119_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \atr|s_memory~70_q\);

-- Location: FF_X114_Y36_N17
\atr|s_memory~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \atr|s_memory~116_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \atr|s_memory~54_q\);

-- Location: LCCOMB_X114_Y36_N18
\atr|s_memory~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \atr|s_memory~87_combout\ = (\SW[0]~input_o\ & ((\atr|s_memory~86_combout\ & (\atr|s_memory~70_q\)) # (!\atr|s_memory~86_combout\ & ((\atr|s_memory~54_q\))))) # (!\SW[0]~input_o\ & (\atr|s_memory~86_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \atr|s_memory~86_combout\,
	datac => \atr|s_memory~70_q\,
	datad => \atr|s_memory~54_q\,
	combout => \atr|s_memory~87_combout\);

-- Location: LCCOMB_X114_Y40_N8
\atr|s_memory~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \atr|s_memory~90_combout\ = (\SW[2]~input_o\ & ((\atr|s_memory~87_combout\))) # (!\SW[2]~input_o\ & (\atr|s_memory~89_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \atr|s_memory~89_combout\,
	datab => \atr|s_memory~87_combout\,
	datad => \SW[2]~input_o\,
	combout => \atr|s_memory~90_combout\);

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: FF_X114_Y36_N29
\atr|s_memory~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \atr|s_memory~116_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \atr|s_memory~55_q\);

-- Location: FF_X114_Y36_N15
\atr|s_memory~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \atr|s_memory~119_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \atr|s_memory~71_q\);

-- Location: FF_X114_Y39_N5
\atr|s_memory~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \atr|s_memory~117_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \atr|s_memory~63_q\);

-- Location: FF_X114_Y39_N23
\atr|s_memory~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \atr|s_memory~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \atr|s_memory~47_q\);

-- Location: LCCOMB_X114_Y39_N22
\atr|s_memory~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \atr|s_memory~91_combout\ = (\SW[1]~input_o\ & ((\atr|s_memory~63_q\) # ((\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & (((\atr|s_memory~47_q\ & !\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \atr|s_memory~63_q\,
	datac => \atr|s_memory~47_q\,
	datad => \SW[0]~input_o\,
	combout => \atr|s_memory~91_combout\);

-- Location: LCCOMB_X114_Y36_N14
\atr|s_memory~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \atr|s_memory~92_combout\ = (\SW[0]~input_o\ & ((\atr|s_memory~91_combout\ & ((\atr|s_memory~71_q\))) # (!\atr|s_memory~91_combout\ & (\atr|s_memory~55_q\)))) # (!\SW[0]~input_o\ & (((\atr|s_memory~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \atr|s_memory~55_q\,
	datac => \atr|s_memory~71_q\,
	datad => \atr|s_memory~91_combout\,
	combout => \atr|s_memory~92_combout\);

-- Location: LCCOMB_X114_Y38_N20
\atr|s_memory~23feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \atr|s_memory~23feeder_combout\ = \SW[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[7]~input_o\,
	combout => \atr|s_memory~23feeder_combout\);

-- Location: FF_X114_Y38_N21
\atr|s_memory~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \atr|s_memory~23feeder_combout\,
	ena => \atr|s_memory~121_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \atr|s_memory~23_q\);

-- Location: FF_X114_Y38_N7
\atr|s_memory~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \atr|s_memory~122_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \atr|s_memory~15_q\);

-- Location: LCCOMB_X114_Y38_N6
\atr|s_memory~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \atr|s_memory~93_combout\ = (\SW[1]~input_o\ & (((\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & (\atr|s_memory~23_q\)) # (!\SW[0]~input_o\ & ((\atr|s_memory~15_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \atr|s_memory~23_q\,
	datac => \atr|s_memory~15_q\,
	datad => \SW[0]~input_o\,
	combout => \atr|s_memory~93_combout\);

-- Location: FF_X114_Y40_N21
\atr|s_memory~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \atr|s_memory~123_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \atr|s_memory~39_q\);

-- Location: FF_X114_Y40_N11
\atr|s_memory~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \atr|s_memory~120_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \atr|s_memory~31_q\);

-- Location: LCCOMB_X114_Y40_N20
\atr|s_memory~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \atr|s_memory~94_combout\ = (\SW[1]~input_o\ & ((\atr|s_memory~93_combout\ & (\atr|s_memory~39_q\)) # (!\atr|s_memory~93_combout\ & ((\atr|s_memory~31_q\))))) # (!\SW[1]~input_o\ & (\atr|s_memory~93_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \atr|s_memory~93_combout\,
	datac => \atr|s_memory~39_q\,
	datad => \atr|s_memory~31_q\,
	combout => \atr|s_memory~94_combout\);

-- Location: LCCOMB_X114_Y40_N22
\atr|s_memory~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \atr|s_memory~95_combout\ = (\SW[2]~input_o\ & (\atr|s_memory~92_combout\)) # (!\SW[2]~input_o\ & ((\atr|s_memory~94_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \atr|s_memory~92_combout\,
	datab => \atr|s_memory~94_combout\,
	datad => \SW[2]~input_o\,
	combout => \atr|s_memory~95_combout\);

-- Location: IOIBUF_X115_Y4_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: FF_X114_Y36_N25
\atr|s_memory~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \atr|s_memory~116_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \atr|s_memory~56_q\);

-- Location: FF_X114_Y36_N11
\atr|s_memory~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \atr|s_memory~119_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \atr|s_memory~72_q\);

-- Location: FF_X114_Y37_N25
\atr|s_memory~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \atr|s_memory~117_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \atr|s_memory~64_q\);

-- Location: FF_X114_Y37_N27
\atr|s_memory~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \atr|s_memory~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \atr|s_memory~48_q\);

-- Location: LCCOMB_X114_Y37_N26
\atr|s_memory~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \atr|s_memory~96_combout\ = (\SW[1]~input_o\ & ((\atr|s_memory~64_q\) # ((\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & (((\atr|s_memory~48_q\ & !\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \atr|s_memory~64_q\,
	datac => \atr|s_memory~48_q\,
	datad => \SW[0]~input_o\,
	combout => \atr|s_memory~96_combout\);

-- Location: LCCOMB_X114_Y36_N10
\atr|s_memory~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \atr|s_memory~97_combout\ = (\SW[0]~input_o\ & ((\atr|s_memory~96_combout\ & ((\atr|s_memory~72_q\))) # (!\atr|s_memory~96_combout\ & (\atr|s_memory~56_q\)))) # (!\SW[0]~input_o\ & (((\atr|s_memory~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \atr|s_memory~56_q\,
	datac => \atr|s_memory~72_q\,
	datad => \atr|s_memory~96_combout\,
	combout => \atr|s_memory~97_combout\);

-- Location: FF_X114_Y40_N1
\atr|s_memory~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \atr|s_memory~123_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \atr|s_memory~40_q\);

-- Location: FF_X114_Y40_N5
\atr|s_memory~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \atr|s_memory~120_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \atr|s_memory~32_q\);

-- Location: FF_X114_Y38_N17
\atr|s_memory~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \atr|s_memory~121_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \atr|s_memory~24_q\);

-- Location: FF_X114_Y38_N19
\atr|s_memory~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \atr|s_memory~122_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \atr|s_memory~16_q\);

-- Location: LCCOMB_X114_Y38_N18
\atr|s_memory~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \atr|s_memory~98_combout\ = (\SW[1]~input_o\ & (((\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & (\atr|s_memory~24_q\)) # (!\SW[0]~input_o\ & ((\atr|s_memory~16_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \atr|s_memory~24_q\,
	datac => \atr|s_memory~16_q\,
	datad => \SW[0]~input_o\,
	combout => \atr|s_memory~98_combout\);

-- Location: LCCOMB_X114_Y37_N12
\atr|s_memory~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \atr|s_memory~99_combout\ = (\SW[1]~input_o\ & ((\atr|s_memory~98_combout\ & (\atr|s_memory~40_q\)) # (!\atr|s_memory~98_combout\ & ((\atr|s_memory~32_q\))))) # (!\SW[1]~input_o\ & (((\atr|s_memory~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \atr|s_memory~40_q\,
	datab => \atr|s_memory~32_q\,
	datac => \SW[1]~input_o\,
	datad => \atr|s_memory~98_combout\,
	combout => \atr|s_memory~99_combout\);

-- Location: LCCOMB_X114_Y37_N22
\atr|s_memory~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \atr|s_memory~100_combout\ = (\SW[2]~input_o\ & (\atr|s_memory~97_combout\)) # (!\SW[2]~input_o\ & ((\atr|s_memory~99_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \atr|s_memory~97_combout\,
	datac => \SW[2]~input_o\,
	datad => \atr|s_memory~99_combout\,
	combout => \atr|s_memory~100_combout\);

-- Location: IOIBUF_X115_Y16_N8
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: FF_X114_Y40_N19
\atr|s_memory~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \SW[9]~input_o\,
	sload => VCC,
	ena => \atr|s_memory~120_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \atr|s_memory~33_q\);

-- Location: FF_X114_Y40_N27
\atr|s_memory~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \SW[9]~input_o\,
	sload => VCC,
	ena => \atr|s_memory~123_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \atr|s_memory~41_q\);

-- Location: FF_X114_Y38_N29
\atr|s_memory~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \SW[9]~input_o\,
	sload => VCC,
	ena => \atr|s_memory~121_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \atr|s_memory~25_q\);

-- Location: FF_X114_Y38_N15
\atr|s_memory~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \SW[9]~input_o\,
	sload => VCC,
	ena => \atr|s_memory~122_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \atr|s_memory~17_q\);

-- Location: LCCOMB_X114_Y38_N14
\atr|s_memory~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \atr|s_memory~103_combout\ = (\SW[1]~input_o\ & (((\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & (\atr|s_memory~25_q\)) # (!\SW[0]~input_o\ & ((\atr|s_memory~17_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \atr|s_memory~25_q\,
	datac => \atr|s_memory~17_q\,
	datad => \SW[0]~input_o\,
	combout => \atr|s_memory~103_combout\);

-- Location: LCCOMB_X114_Y40_N26
\atr|s_memory~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \atr|s_memory~104_combout\ = (\SW[1]~input_o\ & ((\atr|s_memory~103_combout\ & ((\atr|s_memory~41_q\))) # (!\atr|s_memory~103_combout\ & (\atr|s_memory~33_q\)))) # (!\SW[1]~input_o\ & (((\atr|s_memory~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \atr|s_memory~33_q\,
	datac => \atr|s_memory~41_q\,
	datad => \atr|s_memory~103_combout\,
	combout => \atr|s_memory~104_combout\);

-- Location: FF_X114_Y36_N21
\atr|s_memory~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \SW[9]~input_o\,
	sload => VCC,
	ena => \atr|s_memory~116_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \atr|s_memory~57_q\);

-- Location: FF_X114_Y36_N23
\atr|s_memory~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \SW[9]~input_o\,
	sload => VCC,
	ena => \atr|s_memory~119_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \atr|s_memory~73_q\);

-- Location: LCCOMB_X114_Y37_N16
\atr|s_memory~65feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \atr|s_memory~65feeder_combout\ = \SW[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[9]~input_o\,
	combout => \atr|s_memory~65feeder_combout\);

-- Location: FF_X114_Y37_N17
\atr|s_memory~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \atr|s_memory~65feeder_combout\,
	ena => \atr|s_memory~117_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \atr|s_memory~65_q\);

-- Location: FF_X114_Y37_N19
\atr|s_memory~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \SW[9]~input_o\,
	sload => VCC,
	ena => \atr|s_memory~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \atr|s_memory~49_q\);

-- Location: LCCOMB_X114_Y37_N18
\atr|s_memory~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \atr|s_memory~101_combout\ = (\SW[1]~input_o\ & ((\atr|s_memory~65_q\) # ((\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & (((\atr|s_memory~49_q\ & !\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \atr|s_memory~65_q\,
	datac => \atr|s_memory~49_q\,
	datad => \SW[0]~input_o\,
	combout => \atr|s_memory~101_combout\);

-- Location: LCCOMB_X114_Y36_N22
\atr|s_memory~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \atr|s_memory~102_combout\ = (\SW[0]~input_o\ & ((\atr|s_memory~101_combout\ & ((\atr|s_memory~73_q\))) # (!\atr|s_memory~101_combout\ & (\atr|s_memory~57_q\)))) # (!\SW[0]~input_o\ & (((\atr|s_memory~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \atr|s_memory~57_q\,
	datac => \atr|s_memory~73_q\,
	datad => \atr|s_memory~101_combout\,
	combout => \atr|s_memory~102_combout\);

-- Location: LCCOMB_X114_Y40_N12
\atr|s_memory~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \atr|s_memory~105_combout\ = (\SW[2]~input_o\ & ((\atr|s_memory~102_combout\))) # (!\SW[2]~input_o\ & (\atr|s_memory~104_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \atr|s_memory~104_combout\,
	datab => \atr|s_memory~102_combout\,
	datad => \SW[2]~input_o\,
	combout => \atr|s_memory~105_combout\);

-- Location: IOIBUF_X115_Y4_N15
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: FF_X114_Y36_N9
\atr|s_memory~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \SW[10]~input_o\,
	sload => VCC,
	ena => \atr|s_memory~116_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \atr|s_memory~58_q\);

-- Location: FF_X114_Y36_N27
\atr|s_memory~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \SW[10]~input_o\,
	sload => VCC,
	ena => \atr|s_memory~119_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \atr|s_memory~74_q\);

-- Location: LCCOMB_X114_Y37_N28
\atr|s_memory~66feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \atr|s_memory~66feeder_combout\ = \SW[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[10]~input_o\,
	combout => \atr|s_memory~66feeder_combout\);

-- Location: FF_X114_Y37_N29
\atr|s_memory~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \atr|s_memory~66feeder_combout\,
	ena => \atr|s_memory~117_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \atr|s_memory~66_q\);

-- Location: FF_X114_Y37_N15
\atr|s_memory~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \SW[10]~input_o\,
	sload => VCC,
	ena => \atr|s_memory~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \atr|s_memory~50_q\);

-- Location: LCCOMB_X114_Y35_N0
\atr|s_memory~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \atr|s_memory~106_combout\ = (\SW[1]~input_o\ & ((\atr|s_memory~66_q\) # ((\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & (((\atr|s_memory~50_q\ & !\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \atr|s_memory~66_q\,
	datac => \atr|s_memory~50_q\,
	datad => \SW[0]~input_o\,
	combout => \atr|s_memory~106_combout\);

-- Location: LCCOMB_X114_Y36_N26
\atr|s_memory~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \atr|s_memory~107_combout\ = (\SW[0]~input_o\ & ((\atr|s_memory~106_combout\ & ((\atr|s_memory~74_q\))) # (!\atr|s_memory~106_combout\ & (\atr|s_memory~58_q\)))) # (!\SW[0]~input_o\ & (((\atr|s_memory~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \atr|s_memory~58_q\,
	datac => \atr|s_memory~74_q\,
	datad => \atr|s_memory~106_combout\,
	combout => \atr|s_memory~107_combout\);

-- Location: FF_X114_Y38_N25
\atr|s_memory~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \SW[10]~input_o\,
	sload => VCC,
	ena => \atr|s_memory~121_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \atr|s_memory~26_q\);

-- Location: FF_X114_Y38_N3
\atr|s_memory~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \SW[10]~input_o\,
	sload => VCC,
	ena => \atr|s_memory~122_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \atr|s_memory~18_q\);

-- Location: LCCOMB_X114_Y38_N2
\atr|s_memory~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \atr|s_memory~108_combout\ = (\SW[1]~input_o\ & (((\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & (\atr|s_memory~26_q\)) # (!\SW[0]~input_o\ & ((\atr|s_memory~18_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \atr|s_memory~26_q\,
	datac => \atr|s_memory~18_q\,
	datad => \SW[0]~input_o\,
	combout => \atr|s_memory~108_combout\);

-- Location: FF_X114_Y40_N29
\atr|s_memory~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \SW[10]~input_o\,
	sload => VCC,
	ena => \atr|s_memory~123_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \atr|s_memory~42_q\);

-- Location: FF_X114_Y40_N23
\atr|s_memory~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \SW[10]~input_o\,
	sload => VCC,
	ena => \atr|s_memory~120_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \atr|s_memory~34_q\);

-- Location: LCCOMB_X114_Y40_N28
\atr|s_memory~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \atr|s_memory~109_combout\ = (\SW[1]~input_o\ & ((\atr|s_memory~108_combout\ & (\atr|s_memory~42_q\)) # (!\atr|s_memory~108_combout\ & ((\atr|s_memory~34_q\))))) # (!\SW[1]~input_o\ & (\atr|s_memory~108_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \atr|s_memory~108_combout\,
	datac => \atr|s_memory~42_q\,
	datad => \atr|s_memory~34_q\,
	combout => \atr|s_memory~109_combout\);

-- Location: LCCOMB_X114_Y37_N8
\atr|s_memory~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \atr|s_memory~110_combout\ = (\SW[2]~input_o\ & (\atr|s_memory~107_combout\)) # (!\SW[2]~input_o\ & ((\atr|s_memory~109_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \atr|s_memory~107_combout\,
	datab => \SW[2]~input_o\,
	datad => \atr|s_memory~109_combout\,
	combout => \atr|s_memory~110_combout\);

-- Location: IOIBUF_X115_Y5_N15
\SW[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

-- Location: FF_X114_Y36_N5
\atr|s_memory~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \SW[11]~input_o\,
	sload => VCC,
	ena => \atr|s_memory~116_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \atr|s_memory~59_q\);

-- Location: FF_X114_Y36_N7
\atr|s_memory~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \SW[11]~input_o\,
	sload => VCC,
	ena => \atr|s_memory~119_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \atr|s_memory~75_q\);

-- Location: LCCOMB_X114_Y35_N10
\atr|s_memory~67feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \atr|s_memory~67feeder_combout\ = \SW[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[11]~input_o\,
	combout => \atr|s_memory~67feeder_combout\);

-- Location: FF_X114_Y35_N11
\atr|s_memory~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \atr|s_memory~67feeder_combout\,
	ena => \atr|s_memory~117_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \atr|s_memory~67_q\);

-- Location: FF_X114_Y37_N9
\atr|s_memory~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \SW[11]~input_o\,
	sload => VCC,
	ena => \atr|s_memory~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \atr|s_memory~51_q\);

-- Location: LCCOMB_X114_Y35_N4
\atr|s_memory~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \atr|s_memory~111_combout\ = (\SW[0]~input_o\ & (((\SW[1]~input_o\)))) # (!\SW[0]~input_o\ & ((\SW[1]~input_o\ & (\atr|s_memory~67_q\)) # (!\SW[1]~input_o\ & ((\atr|s_memory~51_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \atr|s_memory~67_q\,
	datab => \SW[0]~input_o\,
	datac => \atr|s_memory~51_q\,
	datad => \SW[1]~input_o\,
	combout => \atr|s_memory~111_combout\);

-- Location: LCCOMB_X114_Y36_N6
\atr|s_memory~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \atr|s_memory~112_combout\ = (\SW[0]~input_o\ & ((\atr|s_memory~111_combout\ & ((\atr|s_memory~75_q\))) # (!\atr|s_memory~111_combout\ & (\atr|s_memory~59_q\)))) # (!\SW[0]~input_o\ & (((\atr|s_memory~111_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \atr|s_memory~59_q\,
	datac => \atr|s_memory~75_q\,
	datad => \atr|s_memory~111_combout\,
	combout => \atr|s_memory~112_combout\);

-- Location: FF_X114_Y38_N31
\atr|s_memory~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \SW[11]~input_o\,
	sload => VCC,
	ena => \atr|s_memory~122_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \atr|s_memory~19_q\);

-- Location: FF_X114_Y38_N13
\atr|s_memory~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \SW[11]~input_o\,
	sload => VCC,
	ena => \atr|s_memory~121_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \atr|s_memory~27_q\);

-- Location: LCCOMB_X114_Y38_N30
\atr|s_memory~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \atr|s_memory~113_combout\ = (\SW[1]~input_o\ & (\SW[0]~input_o\)) # (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & ((\atr|s_memory~27_q\))) # (!\SW[0]~input_o\ & (\atr|s_memory~19_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \atr|s_memory~19_q\,
	datad => \atr|s_memory~27_q\,
	combout => \atr|s_memory~113_combout\);

-- Location: FF_X114_Y40_N7
\atr|s_memory~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \SW[11]~input_o\,
	sload => VCC,
	ena => \atr|s_memory~120_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \atr|s_memory~35_q\);

-- Location: FF_X114_Y40_N9
\atr|s_memory~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \SW[11]~input_o\,
	sload => VCC,
	ena => \atr|s_memory~123_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \atr|s_memory~43_q\);

-- Location: LCCOMB_X114_Y37_N10
\atr|s_memory~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \atr|s_memory~114_combout\ = (\atr|s_memory~113_combout\ & (((\atr|s_memory~43_q\) # (!\SW[1]~input_o\)))) # (!\atr|s_memory~113_combout\ & (\atr|s_memory~35_q\ & (\SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \atr|s_memory~113_combout\,
	datab => \atr|s_memory~35_q\,
	datac => \SW[1]~input_o\,
	datad => \atr|s_memory~43_q\,
	combout => \atr|s_memory~114_combout\);

-- Location: LCCOMB_X114_Y37_N14
\atr|s_memory~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \atr|s_memory~115_combout\ = (\SW[2]~input_o\ & (\atr|s_memory~112_combout\)) # (!\SW[2]~input_o\ & ((\atr|s_memory~114_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \atr|s_memory~112_combout\,
	datab => \SW[2]~input_o\,
	datad => \atr|s_memory~114_combout\,
	combout => \atr|s_memory~115_combout\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;
END structure;


