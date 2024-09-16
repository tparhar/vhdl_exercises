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

-- DATE "01/07/2024 00:03:56"

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

ENTITY 	ripple_carry_adder IS
    PORT (
	cin : IN std_logic;
	a : IN std_logic_vector(3 DOWNTO 0);
	b : IN std_logic_vector(3 DOWNTO 0);
	cout : OUT std_logic;
	s : OUT std_logic_vector(3 DOWNTO 0)
	);
END ripple_carry_adder;

-- Design Ports Information


ARCHITECTURE structure OF ripple_carry_adder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_cin : std_logic;
SIGNAL ww_a : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_cout : std_logic;
SIGNAL ww_s : std_logic_vector(3 DOWNTO 0);
SIGNAL \cin~combout\ : std_logic;
SIGNAL \cout0|cout~0_combout\ : std_logic;
SIGNAL \cout1|cout~0_combout\ : std_logic;
SIGNAL \cout2|cout~0_combout\ : std_logic;
SIGNAL \cout3|cout~0_combout\ : std_logic;
SIGNAL \cout0|s~0_combout\ : std_logic;
SIGNAL \cout1|s~combout\ : std_logic;
SIGNAL \cout2|s~combout\ : std_logic;
SIGNAL \cout3|s~combout\ : std_logic;
SIGNAL \a~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b~combout\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_cin <= cin;
ww_a <= a;
ww_b <= b;
cout <= ww_cout;
s <= ww_s;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(3),
	combout => \b~combout\(3));

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(2),
	combout => \b~combout\(2));

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(1),
	combout => \b~combout\(1));

-- Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(1),
	combout => \a~combout\(1));

-- Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(0),
	combout => \a~combout\(0));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(0),
	combout => \b~combout\(0));

-- Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\cin~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_cin,
	combout => \cin~combout\);

-- Location: LC_X3_Y1_N2
\cout0|cout~0\ : maxii_lcell
-- Equation(s):
-- \cout0|cout~0_combout\ = ((\a~combout\(0) & ((\b~combout\(0)) # (\cin~combout\))) # (!\a~combout\(0) & (\b~combout\(0) & \cin~combout\)))

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
	datab => \a~combout\(0),
	datac => \b~combout\(0),
	datad => \cin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cout0|cout~0_combout\);

-- Location: LC_X3_Y1_N4
\cout1|cout~0\ : maxii_lcell
-- Equation(s):
-- \cout1|cout~0_combout\ = (\b~combout\(1) & (((\a~combout\(1)) # (\cout0|cout~0_combout\)))) # (!\b~combout\(1) & (((\a~combout\(1) & \cout0|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(1),
	datac => \a~combout\(1),
	datad => \cout0|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cout1|cout~0_combout\);

-- Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(2),
	combout => \a~combout\(2));

-- Location: LC_X3_Y1_N7
\cout2|cout~0\ : maxii_lcell
-- Equation(s):
-- \cout2|cout~0_combout\ = (\b~combout\(2) & (((\cout1|cout~0_combout\) # (\a~combout\(2))))) # (!\b~combout\(2) & (((\cout1|cout~0_combout\ & \a~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(2),
	datac => \cout1|cout~0_combout\,
	datad => \a~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cout2|cout~0_combout\);

-- Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(3),
	combout => \a~combout\(3));

-- Location: LC_X3_Y1_N5
\cout3|cout~0\ : maxii_lcell
-- Equation(s):
-- \cout3|cout~0_combout\ = (\b~combout\(3) & (((\cout2|cout~0_combout\) # (\a~combout\(3))))) # (!\b~combout\(3) & (((\cout2|cout~0_combout\ & \a~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(3),
	datac => \cout2|cout~0_combout\,
	datad => \a~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cout3|cout~0_combout\);

-- Location: LC_X3_Y1_N9
\cout0|s~0\ : maxii_lcell
-- Equation(s):
-- \cout0|s~0_combout\ = (\a~combout\(0) $ (\b~combout\(0) $ (\cin~combout\)))

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
	datab => \a~combout\(0),
	datac => \b~combout\(0),
	datad => \cin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cout0|s~0_combout\);

-- Location: LC_X3_Y1_N3
\cout1|s\ : maxii_lcell
-- Equation(s):
-- \cout1|s~combout\ = \b~combout\(1) $ (((\a~combout\(1) $ (\cout0|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a55a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(1),
	datac => \a~combout\(1),
	datad => \cout0|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cout1|s~combout\);

-- Location: LC_X3_Y1_N6
\cout2|s\ : maxii_lcell
-- Equation(s):
-- \cout2|s~combout\ = \b~combout\(2) $ (((\cout1|cout~0_combout\ $ (\a~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a55a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(2),
	datac => \cout1|cout~0_combout\,
	datad => \a~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cout2|s~combout\);

-- Location: LC_X3_Y1_N8
\cout3|s\ : maxii_lcell
-- Equation(s):
-- \cout3|s~combout\ = \b~combout\(3) $ (((\cout2|cout~0_combout\ $ (\a~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a55a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(3),
	datac => \cout2|cout~0_combout\,
	datad => \a~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cout3|s~combout\);

-- Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\cout~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \cout3|cout~0_combout\,
	oe => VCC,
	padio => ww_cout);

-- Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \cout0|s~0_combout\,
	oe => VCC,
	padio => ww_s(0));

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \cout1|s~combout\,
	oe => VCC,
	padio => ww_s(1));

-- Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \cout2|s~combout\,
	oe => VCC,
	padio => ww_s(2));

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \cout3|s~combout\,
	oe => VCC,
	padio => ww_s(3));
END structure;


