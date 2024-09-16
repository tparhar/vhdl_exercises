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

-- DATE "12/23/2023 22:01:07"

-- 
-- Device: Altera EPM2210F324C3 Package FBGA324
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXII.MAXII_COMPONENTS.ALL;

ENTITY 	mux2_8 IS
    PORT (
	d0 : IN std_logic_vector(7 DOWNTO 0);
	d1 : IN std_logic_vector(7 DOWNTO 0);
	sel : IN std_logic;
	y : OUT std_logic_vector(7 DOWNTO 0)
	);
END mux2_8;

-- Design Ports Information


ARCHITECTURE structure OF mux2_8 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_d0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_d1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_sel : std_logic;
SIGNAL ww_y : std_logic_vector(7 DOWNTO 0);
SIGNAL \sel~combout\ : std_logic;
SIGNAL \lsbmux|y[0]~0_combout\ : std_logic;
SIGNAL \lsbmux|y[1]~1_combout\ : std_logic;
SIGNAL \lsbmux|y[2]~2_combout\ : std_logic;
SIGNAL \lsbmux|y[3]~3_combout\ : std_logic;
SIGNAL \msbmux|y[0]~0_combout\ : std_logic;
SIGNAL \msbmux|y[1]~1_combout\ : std_logic;
SIGNAL \msbmux|y[2]~2_combout\ : std_logic;
SIGNAL \msbmux|y[3]~3_combout\ : std_logic;
SIGNAL \d1~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \d0~combout\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_d0 <= d0;
ww_d1 <= d1;
ww_sel <= sel;
y <= ww_y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_P12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d1[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d1(0),
	combout => \d1~combout\(0));

-- Location: PIN_U14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d0[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d0(0),
	combout => \d0~combout\(0));

-- Location: PIN_R13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sel~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_sel,
	combout => \sel~combout\);

-- Location: LC_X16_Y1_N6
\lsbmux|y[0]~0\ : maxii_lcell
-- Equation(s):
-- \lsbmux|y[0]~0_combout\ = ((\sel~combout\ & (\d1~combout\(0))) # (!\sel~combout\ & ((\d0~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \d1~combout\(0),
	datac => \d0~combout\(0),
	datad => \sel~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lsbmux|y[0]~0_combout\);

-- Location: PIN_R16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d0[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d0(1),
	combout => \d0~combout\(1));

-- Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d1[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d1(1),
	combout => \d1~combout\(1));

-- Location: LC_X20_Y1_N2
\lsbmux|y[1]~1\ : maxii_lcell
-- Equation(s):
-- \lsbmux|y[1]~1_combout\ = ((\sel~combout\ & ((\d1~combout\(1)))) # (!\sel~combout\ & (\d0~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \sel~combout\,
	datac => \d0~combout\(1),
	datad => \d1~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lsbmux|y[1]~1_combout\);

-- Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d1[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d1(2),
	combout => \d1~combout\(2));

-- Location: PIN_T11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d0[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d0(2),
	combout => \d0~combout\(2));

-- Location: LC_X16_Y1_N5
\lsbmux|y[2]~2\ : maxii_lcell
-- Equation(s):
-- \lsbmux|y[2]~2_combout\ = ((\sel~combout\ & (\d1~combout\(2))) # (!\sel~combout\ & ((\d0~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \d1~combout\(2),
	datac => \d0~combout\(2),
	datad => \sel~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lsbmux|y[2]~2_combout\);

-- Location: PIN_R12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d1[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d1(3),
	combout => \d1~combout\(3));

-- Location: PIN_R11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d0[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d0(3),
	combout => \d0~combout\(3));

-- Location: LC_X16_Y1_N0
\lsbmux|y[3]~3\ : maxii_lcell
-- Equation(s):
-- \lsbmux|y[3]~3_combout\ = ((\sel~combout\ & (\d1~combout\(3))) # (!\sel~combout\ & ((\d0~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d1~combout\(3),
	datab => \d0~combout\(3),
	datad => \sel~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lsbmux|y[3]~3_combout\);

-- Location: PIN_T15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d1[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d1(4),
	combout => \d1~combout\(4));

-- Location: PIN_T17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d0[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d0(4),
	combout => \d0~combout\(4));

-- Location: LC_X16_Y1_N2
\msbmux|y[0]~0\ : maxii_lcell
-- Equation(s):
-- \msbmux|y[0]~0_combout\ = ((\sel~combout\ & (\d1~combout\(4))) # (!\sel~combout\ & ((\d0~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \sel~combout\,
	datac => \d1~combout\(4),
	datad => \d0~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \msbmux|y[0]~0_combout\);

-- Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d0[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d0(5),
	combout => \d0~combout\(5));

-- Location: PIN_N12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d1[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d1(5),
	combout => \d1~combout\(5));

-- Location: LC_X16_Y1_N8
\msbmux|y[1]~1\ : maxii_lcell
-- Equation(s):
-- \msbmux|y[1]~1_combout\ = ((\sel~combout\ & ((\d1~combout\(5)))) # (!\sel~combout\ & (\d0~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \d0~combout\(5),
	datac => \d1~combout\(5),
	datad => \sel~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \msbmux|y[1]~1_combout\);

-- Location: PIN_U16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d1[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d1(6),
	combout => \d1~combout\(6));

-- Location: PIN_T13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d0[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d0(6),
	combout => \d0~combout\(6));

-- Location: LC_X19_Y1_N8
\msbmux|y[2]~2\ : maxii_lcell
-- Equation(s):
-- \msbmux|y[2]~2_combout\ = (\sel~combout\ & (\d1~combout\(6))) # (!\sel~combout\ & (((\d0~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8d8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\,
	datab => \d1~combout\(6),
	datac => \d0~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \msbmux|y[2]~2_combout\);

-- Location: PIN_N11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d0[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d0(7),
	combout => \d0~combout\(7));

-- Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d1[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d1(7),
	combout => \d1~combout\(7));

-- Location: LC_X16_Y1_N7
\msbmux|y[3]~3\ : maxii_lcell
-- Equation(s):
-- \msbmux|y[3]~3_combout\ = ((\sel~combout\ & ((\d1~combout\(7)))) # (!\sel~combout\ & (\d0~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \d0~combout\(7),
	datac => \d1~combout\(7),
	datad => \sel~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \msbmux|y[3]~3_combout\);

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \lsbmux|y[0]~0_combout\,
	oe => VCC,
	padio => ww_y(0));

-- Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \lsbmux|y[1]~1_combout\,
	oe => VCC,
	padio => ww_y(1));

-- Location: PIN_T16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \lsbmux|y[2]~2_combout\,
	oe => VCC,
	padio => ww_y(2));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \lsbmux|y[3]~3_combout\,
	oe => VCC,
	padio => ww_y(3));

-- Location: PIN_R9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \msbmux|y[0]~0_combout\,
	oe => VCC,
	padio => ww_y(4));

-- Location: PIN_U15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \msbmux|y[1]~1_combout\,
	oe => VCC,
	padio => ww_y(5));

-- Location: PIN_V15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \msbmux|y[2]~2_combout\,
	oe => VCC,
	padio => ww_y(6));

-- Location: PIN_T14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \msbmux|y[3]~3_combout\,
	oe => VCC,
	padio => ww_y(7));
END structure;


