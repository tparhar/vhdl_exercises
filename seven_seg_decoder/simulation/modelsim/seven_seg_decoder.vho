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

-- DATE "01/06/2024 23:30:53"

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

ENTITY 	seven_seg_decoder IS
    PORT (
	data : IN std_logic_vector(3 DOWNTO 0);
	segments : OUT std_logic_vector(6 DOWNTO 0)
	);
END seven_seg_decoder;

-- Design Ports Information


ARCHITECTURE structure OF seven_seg_decoder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_data : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_segments : std_logic_vector(6 DOWNTO 0);
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \data~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~0_combout\ : std_logic;

BEGIN

ww_data <= data;
segments <= ww_segments;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;
\ALT_INV_Mux2~0_combout\ <= NOT \Mux2~0_combout\;
\ALT_INV_Mux3~0_combout\ <= NOT \Mux3~0_combout\;
\ALT_INV_Mux4~0_combout\ <= NOT \Mux4~0_combout\;
\ALT_INV_Mux5~0_combout\ <= NOT \Mux5~0_combout\;

-- Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_data(0),
	combout => \data~combout\(0));

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_data(2),
	combout => \data~combout\(2));

-- Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_data(1),
	combout => \data~combout\(1));

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_data(3),
	combout => \data~combout\(3));

-- Location: LC_X4_Y1_N4
\Mux6~0\ : maxii_lcell
-- Equation(s):
-- \Mux6~0_combout\ = (\data~combout\(2) & (!\data~combout\(3) & ((!\data~combout\(1)) # (!\data~combout\(0))))) # (!\data~combout\(2) & ((\data~combout\(1) $ (\data~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "037c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data~combout\(0),
	datab => \data~combout\(2),
	datac => \data~combout\(1),
	datad => \data~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~0_combout\);

-- Location: LC_X4_Y1_N7
\Mux5~0\ : maxii_lcell
-- Equation(s):
-- \Mux5~0_combout\ = (\data~combout\(0) & ((\data~combout\(1)) # (\data~combout\(2) $ (!\data~combout\(3))))) # (!\data~combout\(0) & ((\data~combout\(2) & ((\data~combout\(3)))) # (!\data~combout\(2) & (\data~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcb2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data~combout\(0),
	datab => \data~combout\(2),
	datac => \data~combout\(1),
	datad => \data~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~0_combout\);

-- Location: LC_X4_Y1_N6
\Mux4~0\ : maxii_lcell
-- Equation(s):
-- \Mux4~0_combout\ = (\data~combout\(0)) # ((\data~combout\(1) & ((\data~combout\(3)))) # (!\data~combout\(1) & (\data~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feae",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data~combout\(0),
	datab => \data~combout\(2),
	datac => \data~combout\(1),
	datad => \data~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~0_combout\);

-- Location: LC_X4_Y1_N8
\Mux3~0\ : maxii_lcell
-- Equation(s):
-- \Mux3~0_combout\ = (\data~combout\(0) & ((\data~combout\(3)) # (\data~combout\(2) $ (!\data~combout\(1))))) # (!\data~combout\(0) & ((\data~combout\(1) & ((\data~combout\(3)))) # (!\data~combout\(1) & (\data~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe86",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data~combout\(0),
	datab => \data~combout\(2),
	datac => \data~combout\(1),
	datad => \data~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~0_combout\);

-- Location: LC_X4_Y1_N2
\Mux2~0\ : maxii_lcell
-- Equation(s):
-- \Mux2~0_combout\ = (\data~combout\(2) & (((\data~combout\(3))))) # (!\data~combout\(2) & (\data~combout\(1) & ((\data~combout\(3)) # (!\data~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc10",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data~combout\(0),
	datab => \data~combout\(2),
	datac => \data~combout\(1),
	datad => \data~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~0_combout\);

-- Location: LC_X4_Y1_N9
\Mux1~0\ : maxii_lcell
-- Equation(s):
-- \Mux1~0_combout\ = (\data~combout\(2) & ((\data~combout\(3)) # (\data~combout\(0) $ (\data~combout\(1))))) # (!\data~combout\(2) & (((\data~combout\(1) & \data~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data~combout\(0),
	datab => \data~combout\(2),
	datac => \data~combout\(1),
	datad => \data~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~0_combout\);

-- Location: LC_X4_Y1_N5
\Mux0~0\ : maxii_lcell
-- Equation(s):
-- \Mux0~0_combout\ = (\data~combout\(1) & (((\data~combout\(3))))) # (!\data~combout\(1) & (\data~combout\(2) $ (((\data~combout\(0) & !\data~combout\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc06",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data~combout\(0),
	datab => \data~combout\(2),
	datac => \data~combout\(1),
	datad => \data~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~0_combout\);

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\segments[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux6~0_combout\,
	oe => VCC,
	padio => ww_segments(0));

-- Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\segments[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux5~0_combout\,
	oe => VCC,
	padio => ww_segments(1));

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\segments[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux4~0_combout\,
	oe => VCC,
	padio => ww_segments(2));

-- Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\segments[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux3~0_combout\,
	oe => VCC,
	padio => ww_segments(3));

-- Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\segments[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux2~0_combout\,
	oe => VCC,
	padio => ww_segments(4));

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\segments[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux1~0_combout\,
	oe => VCC,
	padio => ww_segments(5));

-- Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\segments[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux0~0_combout\,
	oe => VCC,
	padio => ww_segments(6));
END structure;


