-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "01/06/2024 23:11:40"

-- 
-- Device: Altera EPM240F100C4 Package FBGA100
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXII.MAXII_COMPONENTS.ALL;

ENTITY 	fulladder IS
    PORT (
	a : IN std_logic;
	b : IN std_logic;
	cin : IN std_logic;
	s : OUT std_logic;
	cout : OUT std_logic
	);
END fulladder;

-- Design Ports Information


ARCHITECTURE structure OF fulladder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL ww_cin : std_logic;
SIGNAL ww_s : std_logic;
SIGNAL ww_cout : std_logic;
SIGNAL \b~combout\ : std_logic;
SIGNAL \a~combout\ : std_logic;
SIGNAL \cin~combout\ : std_logic;
SIGNAL \s~0_combout\ : std_logic;
SIGNAL \cout~0_combout\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
ww_cin <= cin;
s <= ww_s;
cout <= ww_cout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b,
	combout => \b~combout\);

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a,
	combout => \a~combout\);

-- Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\cin~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_cin,
	combout => \cin~combout\);

-- Location: LC_X4_Y2_N2
\s~0\ : maxii_lcell
-- Equation(s):
-- \s~0_combout\ = (\b~combout\ $ (\a~combout\ $ (\cin~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c33c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\,
	datac => \a~combout\,
	datad => \cin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s~0_combout\);

-- Location: LC_X4_Y2_N4
\cout~0\ : maxii_lcell
-- Equation(s):
-- \cout~0_combout\ = ((\b~combout\ & ((\a~combout\) # (\cin~combout\))) # (!\b~combout\ & (\a~combout\ & \cin~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\,
	datac => \a~combout\,
	datad => \cin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cout~0_combout\);

-- Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s~0_combout\,
	oe => VCC,
	padio => ww_s);

-- Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\cout~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \cout~0_combout\,
	oe => VCC,
	padio => ww_cout);
END structure;


