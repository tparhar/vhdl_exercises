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

-- DATE "12/21/2023 14:17:56"

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

ENTITY 	mux4 IS
    PORT (
	d0 : IN std_logic_vector(3 DOWNTO 0);
	d1 : IN std_logic_vector(3 DOWNTO 0);
	d2 : IN std_logic_vector(3 DOWNTO 0);
	d3 : IN std_logic_vector(3 DOWNTO 0);
	s : IN std_logic_vector(1 DOWNTO 0);
	y : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END mux4;

-- Design Ports Information


ARCHITECTURE structure OF mux4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_d0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_d1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_d2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_d3 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_s : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_y : std_logic_vector(3 DOWNTO 0);
SIGNAL \finalmux|y[0]~0_combout\ : std_logic;
SIGNAL \finalmux|y[0]~1_combout\ : std_logic;
SIGNAL \finalmux|y[1]~2_combout\ : std_logic;
SIGNAL \finalmux|y[1]~3_combout\ : std_logic;
SIGNAL \finalmux|y[2]~4_combout\ : std_logic;
SIGNAL \finalmux|y[2]~5_combout\ : std_logic;
SIGNAL \finalmux|y[3]~6_combout\ : std_logic;
SIGNAL \finalmux|y[3]~7_combout\ : std_logic;
SIGNAL \d2~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \s~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \d1~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \d0~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \d3~combout\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_d0 <= d0;
ww_d1 <= d1;
ww_d2 <= d2;
ww_d3 <= d3;
ww_s <= s;
y <= ww_y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d2[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d2(0),
	combout => \d2~combout\(0));

-- Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d3[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d3(0),
	combout => \d3~combout\(0));

-- Location: PIN_P13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\s[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_s(1),
	combout => \s~combout\(1));

-- Location: PIN_T14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\s[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_s(0),
	combout => \s~combout\(0));

-- Location: PIN_U15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d1[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d1(0),
	combout => \d1~combout\(0));

-- Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d0[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d0(0),
	combout => \d0~combout\(0));

-- Location: LC_X15_Y1_N5
\finalmux|y[0]~0\ : maxii_lcell
-- Equation(s):
-- \finalmux|y[0]~0_combout\ = (\s~combout\(1) & (\s~combout\(0))) # (!\s~combout\(1) & ((\s~combout\(0) & (\d1~combout\(0))) # (!\s~combout\(0) & ((\d0~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \s~combout\(1),
	datab => \s~combout\(0),
	datac => \d1~combout\(0),
	datad => \d0~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \finalmux|y[0]~0_combout\);

-- Location: LC_X15_Y1_N6
\finalmux|y[0]~1\ : maxii_lcell
-- Equation(s):
-- \finalmux|y[0]~1_combout\ = (\finalmux|y[0]~0_combout\ & (((\d3~combout\(0)) # (!\s~combout\(1))))) # (!\finalmux|y[0]~0_combout\ & (\d2~combout\(0) & ((\s~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "caf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d2~combout\(0),
	datab => \d3~combout\(0),
	datac => \finalmux|y[0]~0_combout\,
	datad => \s~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \finalmux|y[0]~1_combout\);

-- Location: PIN_R15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d1[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d1(1),
	combout => \d1~combout\(1));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d2[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d2(1),
	combout => \d2~combout\(1));

-- Location: PIN_T11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d0[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d0(1),
	combout => \d0~combout\(1));

-- Location: LC_X15_Y1_N4
\finalmux|y[1]~2\ : maxii_lcell
-- Equation(s):
-- \finalmux|y[1]~2_combout\ = (\s~combout\(0) & (((\s~combout\(1))))) # (!\s~combout\(0) & ((\s~combout\(1) & (\d2~combout\(1))) # (!\s~combout\(1) & ((\d0~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d2~combout\(1),
	datab => \s~combout\(0),
	datac => \d0~combout\(1),
	datad => \s~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \finalmux|y[1]~2_combout\);

-- Location: PIN_T13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d3[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d3(1),
	combout => \d3~combout\(1));

-- Location: LC_X15_Y1_N8
\finalmux|y[1]~3\ : maxii_lcell
-- Equation(s):
-- \finalmux|y[1]~3_combout\ = (\s~combout\(0) & ((\finalmux|y[1]~2_combout\ & ((\d3~combout\(1)))) # (!\finalmux|y[1]~2_combout\ & (\d1~combout\(1))))) # (!\s~combout\(0) & (((\finalmux|y[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f838",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d1~combout\(1),
	datab => \s~combout\(0),
	datac => \finalmux|y[1]~2_combout\,
	datad => \d3~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \finalmux|y[1]~3_combout\);

-- Location: PIN_R11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d2[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d2(2),
	combout => \d2~combout\(2));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d1[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d1(2),
	combout => \d1~combout\(2));

-- Location: PIN_U16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d0[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d0(2),
	combout => \d0~combout\(2));

-- Location: LC_X15_Y1_N9
\finalmux|y[2]~4\ : maxii_lcell
-- Equation(s):
-- \finalmux|y[2]~4_combout\ = (\s~combout\(1) & (\s~combout\(0))) # (!\s~combout\(1) & ((\s~combout\(0) & (\d1~combout\(2))) # (!\s~combout\(0) & ((\d0~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \s~combout\(1),
	datab => \s~combout\(0),
	datac => \d1~combout\(2),
	datad => \d0~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \finalmux|y[2]~4_combout\);

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d3[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d3(2),
	combout => \d3~combout\(2));

-- Location: LC_X15_Y1_N2
\finalmux|y[2]~5\ : maxii_lcell
-- Equation(s):
-- \finalmux|y[2]~5_combout\ = (\finalmux|y[2]~4_combout\ & (((\d3~combout\(2)) # (!\s~combout\(1))))) # (!\finalmux|y[2]~4_combout\ & (\d2~combout\(2) & ((\s~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d2~combout\(2),
	datab => \finalmux|y[2]~4_combout\,
	datac => \d3~combout\(2),
	datad => \s~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \finalmux|y[2]~5_combout\);

-- Location: PIN_R10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d0[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d0(3),
	combout => \d0~combout\(3));

-- Location: PIN_N12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d2[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d2(3),
	combout => \d2~combout\(3));

-- Location: LC_X16_Y1_N4
\finalmux|y[3]~6\ : maxii_lcell
-- Equation(s):
-- \finalmux|y[3]~6_combout\ = (\s~combout\(1) & (((\d2~combout\(3)) # (\s~combout\(0))))) # (!\s~combout\(1) & (\d0~combout\(3) & ((!\s~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d0~combout\(3),
	datab => \d2~combout\(3),
	datac => \s~combout\(1),
	datad => \s~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \finalmux|y[3]~6_combout\);

-- Location: PIN_U14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d1[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d1(3),
	combout => \d1~combout\(3));

-- Location: PIN_T15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d3[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d3(3),
	combout => \d3~combout\(3));

-- Location: LC_X16_Y1_N2
\finalmux|y[3]~7\ : maxii_lcell
-- Equation(s):
-- \finalmux|y[3]~7_combout\ = (\finalmux|y[3]~6_combout\ & (((\d3~combout\(3))) # (!\s~combout\(0)))) # (!\finalmux|y[3]~6_combout\ & (\s~combout\(0) & (\d1~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \finalmux|y[3]~6_combout\,
	datab => \s~combout\(0),
	datac => \d1~combout\(3),
	datad => \d3~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \finalmux|y[3]~7_combout\);

-- Location: PIN_N11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \finalmux|y[0]~1_combout\,
	oe => VCC,
	padio => ww_y(0));

-- Location: PIN_P12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \finalmux|y[1]~3_combout\,
	oe => VCC,
	padio => ww_y(1));

-- Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \finalmux|y[2]~5_combout\,
	oe => VCC,
	padio => ww_y(2));

-- Location: PIN_R12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \finalmux|y[3]~7_combout\,
	oe => VCC,
	padio => ww_y(3));
END structure;


