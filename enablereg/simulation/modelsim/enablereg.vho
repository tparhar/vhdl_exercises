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

-- DATE "01/03/2024 11:14:19"

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

ENTITY 	flopenr IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	en : IN std_logic;
	d : IN std_logic_vector(3 DOWNTO 0);
	q : OUT std_logic_vector(3 DOWNTO 0)
	);
END flopenr;

-- Design Ports Information


ARCHITECTURE structure OF flopenr IS
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
SIGNAL ww_en : std_logic;
SIGNAL ww_d : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_q : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \en~combout\ : std_logic;
SIGNAL \q[0]~reg0_regout\ : std_logic;
SIGNAL \q[1]~reg0_regout\ : std_logic;
SIGNAL \q[2]~reg0_regout\ : std_logic;
SIGNAL \q[3]~reg0_regout\ : std_logic;
SIGNAL \d~combout\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_en <= en;
ww_d <= d;
q <= ww_q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d(0),
	combout => \d~combout\(0));

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: PIN_H7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\en~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_en,
	combout => \en~combout\);

-- Location: LC_X7_Y2_N3
\q[0]~reg0\ : maxii_lcell
-- Equation(s):
-- \q[0]~reg0_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \en~combout\, \d~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \d~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \q[0]~reg0_regout\);

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d(1),
	combout => \d~combout\(1));

-- Location: LC_X5_Y2_N4
\q[1]~reg0\ : maxii_lcell
-- Equation(s):
-- \q[1]~reg0_regout\ = DFFEAS((((\d~combout\(1)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \en~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \d~combout\(1),
	aclr => \reset~combout\,
	ena => \en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \q[1]~reg0_regout\);

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d(2),
	combout => \d~combout\(2));

-- Location: LC_X5_Y2_N0
\q[2]~reg0\ : maxii_lcell
-- Equation(s):
-- \q[2]~reg0_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \en~combout\, \d~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \d~combout\(2),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \q[2]~reg0_regout\);

-- Location: PIN_J9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d(3),
	combout => \d~combout\(3));

-- Location: LC_X7_Y1_N2
\q[3]~reg0\ : maxii_lcell
-- Equation(s):
-- \q[3]~reg0_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \en~combout\, \d~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \d~combout\(3),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \q[3]~reg0_regout\);

-- Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\q[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \q[0]~reg0_regout\,
	oe => VCC,
	padio => ww_q(0));

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\q[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \q[1]~reg0_regout\,
	oe => VCC,
	padio => ww_q(1));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\q[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \q[2]~reg0_regout\,
	oe => VCC,
	padio => ww_q(2));

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\q[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \q[3]~reg0_regout\,
	oe => VCC,
	padio => ww_q(3));
END structure;


