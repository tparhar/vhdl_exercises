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

-- DATE "01/06/2024 23:38:10"

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

ENTITY 	blockgates IS
    PORT (
	a : IN std_logic;
	b : IN std_logic;
	y_not : OUT std_logic;
	y_and : OUT std_logic;
	y_or : OUT std_logic;
	y_xor : OUT std_logic;
	y_nand : OUT std_logic;
	y_nor : OUT std_logic;
	y_xnor : OUT std_logic
	);
END blockgates;

-- Design Ports Information


ARCHITECTURE structure OF blockgates IS
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
SIGNAL ww_y_not : std_logic;
SIGNAL ww_y_and : std_logic;
SIGNAL ww_y_or : std_logic;
SIGNAL ww_y_xor : std_logic;
SIGNAL ww_y_nand : std_logic;
SIGNAL ww_y_nor : std_logic;
SIGNAL ww_y_xnor : std_logic;
SIGNAL \a~combout\ : std_logic;
SIGNAL \b~combout\ : std_logic;
SIGNAL \y_and~0_combout\ : std_logic;
SIGNAL \y_or~0_combout\ : std_logic;
SIGNAL \y_xor~0_combout\ : std_logic;
SIGNAL \ALT_INV_a~combout\ : std_logic;
SIGNAL \ALT_INV_y_or~0_combout\ : std_logic;
SIGNAL \ALT_INV_y_and~0_combout\ : std_logic;
SIGNAL \ALT_INV_y_xor~0_combout\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
y_not <= ww_y_not;
y_and <= ww_y_and;
y_or <= ww_y_or;
y_xor <= ww_y_xor;
y_nand <= ww_y_nand;
y_nor <= ww_y_nor;
y_xnor <= ww_y_xnor;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_a~combout\ <= NOT \a~combout\;
\ALT_INV_y_or~0_combout\ <= NOT \y_or~0_combout\;
\ALT_INV_y_and~0_combout\ <= NOT \y_and~0_combout\;
\ALT_INV_y_xor~0_combout\ <= NOT \y_xor~0_combout\;

-- Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a,
	combout => \a~combout\);

-- Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b,
	combout => \b~combout\);

-- Location: LC_X7_Y2_N4
\y_and~0\ : maxii_lcell
-- Equation(s):
-- \y_and~0_combout\ = (\a~combout\ & (((\b~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\,
	datad => \b~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \y_and~0_combout\);

-- Location: LC_X7_Y2_N2
\y_or~0\ : maxii_lcell
-- Equation(s):
-- \y_or~0_combout\ = (\a~combout\) # (((\b~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\,
	datad => \b~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \y_or~0_combout\);

-- Location: LC_X7_Y2_N5
\y_xor~0\ : maxii_lcell
-- Equation(s):
-- \y_xor~0_combout\ = \a~combout\ $ ((((\b~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\,
	datad => \b~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \y_xor~0_combout\);

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y_not~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_a~combout\,
	oe => VCC,
	padio => ww_y_not);

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y_and~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \y_and~0_combout\,
	oe => VCC,
	padio => ww_y_and);

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y_or~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \y_or~0_combout\,
	oe => VCC,
	padio => ww_y_or);

-- Location: PIN_K10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y_xor~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \y_xor~0_combout\,
	oe => VCC,
	padio => ww_y_xor);

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y_nand~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_y_and~0_combout\,
	oe => VCC,
	padio => ww_y_nand);

-- Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y_nor~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_y_or~0_combout\,
	oe => VCC,
	padio => ww_y_nor);

-- Location: PIN_H9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y_xnor~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_y_xor~0_combout\,
	oe => VCC,
	padio => ww_y_xnor);
END structure;


