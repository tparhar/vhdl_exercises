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

-- DATE "12/21/2023 11:32:26"

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

ENTITY 	seqdetector IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	a : IN std_logic;
	y : OUT std_logic
	);
END seqdetector;

-- Design Ports Information


ARCHITECTURE structure OF seqdetector IS
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
SIGNAL ww_reset : std_logic;
SIGNAL ww_a : std_logic;
SIGNAL ww_y : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \a~combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \state.S0~regout\ : std_logic;
SIGNAL \state.S2~regout\ : std_logic;
SIGNAL \state.S3~regout\ : std_logic;
SIGNAL \state.S4~regout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_a <= a;
y <= ww_y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: PIN_U14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a,
	combout => \a~combout\);

-- Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: LC_X16_Y1_N0
\state.S0\ : maxii_lcell
-- Equation(s):
-- \state.S0~regout\ = DFFEAS((((\a~combout\) # (\state.S2~regout\))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \a~combout\,
	datad => \state.S2~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.S0~regout\);

-- Location: LC_X16_Y1_N9
\state.S2\ : maxii_lcell
-- Equation(s):
-- \state.S2~regout\ = DFFEAS((\a~combout\ & (((\state.S0~regout\ & !\state.S3~regout\)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \a~combout\,
	datac => \state.S0~regout\,
	datad => \state.S3~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.S2~regout\);

-- Location: LC_X16_Y1_N2
\state.S3\ : maxii_lcell
-- Equation(s):
-- \state.S3~regout\ = DFFEAS((((!\a~combout\ & \state.S2~regout\))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \a~combout\,
	datad => \state.S2~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.S3~regout\);

-- Location: LC_X16_Y1_N7
\state.S4\ : maxii_lcell
-- Equation(s):
-- \state.S4~regout\ = DFFEAS((((\a~combout\ & \state.S3~regout\))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \a~combout\,
	datad => \state.S3~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.S4~regout\);

-- Location: PIN_T14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \state.S4~regout\,
	oe => VCC,
	padio => ww_y);
END structure;


