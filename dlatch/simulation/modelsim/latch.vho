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

-- DATE "01/05/2024 12:09:13"

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

ENTITY 	d_latch IS
    PORT (
	clk : IN std_logic;
	d : IN std_logic_vector(3 DOWNTO 0);
	q : OUT std_logic_vector(3 DOWNTO 0)
	);
END d_latch;

-- Design Ports Information


ARCHITECTURE structure OF d_latch IS
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
SIGNAL ww_d : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_q : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~combout\ : std_logic;
SIGNAL \q[0]$latch~combout\ : std_logic;
SIGNAL \q[1]$latch~combout\ : std_logic;
SIGNAL \q[2]$latch~combout\ : std_logic;
SIGNAL \q[3]$latch~combout\ : std_logic;
SIGNAL \d~combout\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_d <= d;
q <= ww_q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d(0),
	combout => \d~combout\(0));

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

-- Location: LC_X18_Y13_N5
\q[0]$latch\ : maxii_lcell
-- Equation(s):
-- \q[0]$latch~combout\ = ((GLOBAL(\clk~combout\) & (\d~combout\(0))) # (!GLOBAL(\clk~combout\) & ((\q[0]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d~combout\(0),
	datac => \q[0]$latch~combout\,
	datad => \clk~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \q[0]$latch~combout\);

-- Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d(1),
	combout => \d~combout\(1));

-- Location: LC_X14_Y3_N2
\q[1]$latch\ : maxii_lcell
-- Equation(s):
-- \q[1]$latch~combout\ = ((GLOBAL(\clk~combout\) & (\d~combout\(1))) # (!GLOBAL(\clk~combout\) & ((\q[1]$latch~combout\))))

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
	dataa => \d~combout\(1),
	datab => \q[1]$latch~combout\,
	datad => \clk~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \q[1]$latch~combout\);

-- Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d(2),
	combout => \d~combout\(2));

-- Location: LC_X20_Y12_N2
\q[2]$latch\ : maxii_lcell
-- Equation(s):
-- \q[2]$latch~combout\ = ((GLOBAL(\clk~combout\) & (\d~combout\(2))) # (!GLOBAL(\clk~combout\) & ((\q[2]$latch~combout\))))

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
	dataa => \d~combout\(2),
	datab => \q[2]$latch~combout\,
	datad => \clk~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \q[2]$latch~combout\);

-- Location: PIN_N5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d(3),
	combout => \d~combout\(3));

-- Location: LC_X1_Y5_N5
\q[3]$latch\ : maxii_lcell
-- Equation(s):
-- \q[3]$latch~combout\ = ((GLOBAL(\clk~combout\) & (\d~combout\(3))) # (!GLOBAL(\clk~combout\) & ((\q[3]$latch~combout\))))

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
	datab => \d~combout\(3),
	datac => \q[3]$latch~combout\,
	datad => \clk~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \q[3]$latch~combout\);

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\q[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \q[0]$latch~combout\,
	oe => VCC,
	padio => ww_q(0));

-- Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\q[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \q[1]$latch~combout\,
	oe => VCC,
	padio => ww_q(1));

-- Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\q[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \q[2]$latch~combout\,
	oe => VCC,
	padio => ww_q(2));

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\q[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \q[3]$latch~combout\,
	oe => VCC,
	padio => ww_q(3));
END structure;


