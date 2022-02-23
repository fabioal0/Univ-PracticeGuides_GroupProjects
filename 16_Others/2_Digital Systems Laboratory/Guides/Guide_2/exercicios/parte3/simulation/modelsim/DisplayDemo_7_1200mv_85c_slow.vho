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

-- DATE "02/21/2017 19:31:09"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	DisplayDemo IS
    PORT (
	HEXD : OUT std_logic_vector(6 DOWNTO 0);
	SW : IN std_logic_vector(3 DOWNTO 0)
	);
END DisplayDemo;

-- Design Ports Information
-- HEXD[6]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXD[5]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXD[4]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXD[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXD[2]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXD[1]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXD[0]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DisplayDemo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_HEXD : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEXD[6]~output_o\ : std_logic;
SIGNAL \HEXD[5]~output_o\ : std_logic;
SIGNAL \HEXD[4]~output_o\ : std_logic;
SIGNAL \HEXD[3]~output_o\ : std_logic;
SIGNAL \HEXD[2]~output_o\ : std_logic;
SIGNAL \HEXD[1]~output_o\ : std_logic;
SIGNAL \HEXD[0]~output_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \inst|decOut_n[6]~0_combout\ : std_logic;
SIGNAL \inst|decOut_n[5]~1_combout\ : std_logic;
SIGNAL \inst|decOut_n[4]~2_combout\ : std_logic;
SIGNAL \inst|decOut_n[3]~3_combout\ : std_logic;
SIGNAL \inst|decOut_n[2]~4_combout\ : std_logic;
SIGNAL \inst|decOut_n[1]~5_combout\ : std_logic;
SIGNAL \inst|decOut_n[0]~6_combout\ : std_logic;

BEGIN

HEXD <= ww_HEXD;
ww_SW <= SW;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X60_Y73_N16
\HEXD[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|decOut_n[6]~0_combout\,
	devoe => ww_devoe,
	o => \HEXD[6]~output_o\);

-- Location: IOOBUF_X62_Y73_N23
\HEXD[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|decOut_n[5]~1_combout\,
	devoe => ww_devoe,
	o => \HEXD[5]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\HEXD[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|decOut_n[4]~2_combout\,
	devoe => ww_devoe,
	o => \HEXD[4]~output_o\);

-- Location: IOOBUF_X62_Y73_N16
\HEXD[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|decOut_n[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEXD[3]~output_o\);

-- Location: IOOBUF_X60_Y73_N2
\HEXD[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|decOut_n[2]~4_combout\,
	devoe => ww_devoe,
	o => \HEXD[2]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\HEXD[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|decOut_n[1]~5_combout\,
	devoe => ww_devoe,
	o => \HEXD[1]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\HEXD[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|decOut_n[0]~6_combout\,
	devoe => ww_devoe,
	o => \HEXD[0]~output_o\);

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

-- Location: LCCOMB_X61_Y69_N8
\inst|decOut_n[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[6]~0_combout\ = (\SW[1]~input_o\ & (\SW[2]~input_o\ & (!\SW[3]~input_o\ & \SW[0]~input_o\))) # (!\SW[1]~input_o\ & (\SW[2]~input_o\ $ ((!\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \inst|decOut_n[6]~0_combout\);

-- Location: LCCOMB_X61_Y69_N10
\inst|decOut_n[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[5]~1_combout\ = (!\SW[3]~input_o\ & ((\SW[2]~input_o\ & (\SW[0]~input_o\ & \SW[1]~input_o\)) # (!\SW[2]~input_o\ & ((\SW[0]~input_o\) # (\SW[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \inst|decOut_n[5]~1_combout\);

-- Location: LCCOMB_X61_Y69_N12
\inst|decOut_n[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[4]~2_combout\ = (\SW[1]~input_o\ & (((!\SW[3]~input_o\ & \SW[0]~input_o\)))) # (!\SW[1]~input_o\ & ((\SW[2]~input_o\ & (!\SW[3]~input_o\)) # (!\SW[2]~input_o\ & ((\SW[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \inst|decOut_n[4]~2_combout\);

-- Location: LCCOMB_X61_Y69_N14
\inst|decOut_n[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[3]~3_combout\ = (\SW[1]~input_o\ & ((\SW[2]~input_o\ & ((\SW[0]~input_o\))) # (!\SW[2]~input_o\ & (\SW[3]~input_o\ & !\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & (!\SW[3]~input_o\ & (\SW[2]~input_o\ $ (\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \inst|decOut_n[3]~3_combout\);

-- Location: LCCOMB_X61_Y69_N0
\inst|decOut_n[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[2]~4_combout\ = (\SW[2]~input_o\ & (\SW[3]~input_o\ & ((\SW[1]~input_o\) # (!\SW[0]~input_o\)))) # (!\SW[2]~input_o\ & (!\SW[3]~input_o\ & (!\SW[0]~input_o\ & \SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \inst|decOut_n[2]~4_combout\);

-- Location: LCCOMB_X61_Y69_N2
\inst|decOut_n[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[1]~5_combout\ = (\SW[0]~input_o\ & ((\SW[3]~input_o\ & ((\SW[1]~input_o\))) # (!\SW[3]~input_o\ & (\SW[2]~input_o\ & !\SW[1]~input_o\)))) # (!\SW[0]~input_o\ & (\SW[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \inst|decOut_n[1]~5_combout\);

-- Location: LCCOMB_X61_Y69_N4
\inst|decOut_n[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[0]~6_combout\ = (!\SW[2]~input_o\ & (\SW[0]~input_o\ & (\SW[3]~input_o\ $ (!\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \inst|decOut_n[0]~6_combout\);

ww_HEXD(6) <= \HEXD[6]~output_o\;

ww_HEXD(5) <= \HEXD[5]~output_o\;

ww_HEXD(4) <= \HEXD[4]~output_o\;

ww_HEXD(3) <= \HEXD[3]~output_o\;

ww_HEXD(2) <= \HEXD[2]~output_o\;

ww_HEXD(1) <= \HEXD[1]~output_o\;

ww_HEXD(0) <= \HEXD[0]~output_o\;
END structure;


