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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "01/06/2024 23:39:06"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          blockgates
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY blockgates_vhd_vec_tst IS
END blockgates_vhd_vec_tst;
ARCHITECTURE blockgates_arch OF blockgates_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC;
SIGNAL b : STD_LOGIC;
SIGNAL y_and : STD_LOGIC;
SIGNAL y_nand : STD_LOGIC;
SIGNAL y_nor : STD_LOGIC;
SIGNAL y_not : STD_LOGIC;
SIGNAL y_or : STD_LOGIC;
SIGNAL y_xnor : STD_LOGIC;
SIGNAL y_xor : STD_LOGIC;
COMPONENT blockgates
	PORT (
	a : IN STD_LOGIC;
	b : IN STD_LOGIC;
	y_and : OUT STD_LOGIC;
	y_nand : OUT STD_LOGIC;
	y_nor : OUT STD_LOGIC;
	y_not : OUT STD_LOGIC;
	y_or : OUT STD_LOGIC;
	y_xnor : OUT STD_LOGIC;
	y_xor : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : blockgates
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	b => b,
	y_and => y_and,
	y_nand => y_nand,
	y_nor => y_nor,
	y_not => y_not,
	y_or => y_or,
	y_xnor => y_xnor,
	y_xor => y_xor
	);

-- a
t_prcs_a: PROCESS
BEGIN
	a <= '0';
	WAIT FOR 180000 ps;
	a <= '1';
	WAIT FOR 210000 ps;
	a <= '0';
WAIT;
END PROCESS t_prcs_a;

-- b
t_prcs_b: PROCESS
BEGIN
	b <= '0';
	WAIT FOR 80000 ps;
	b <= '1';
	WAIT FOR 100000 ps;
	b <= '0';
	WAIT FOR 100000 ps;
	b <= '1';
	WAIT FOR 110000 ps;
	b <= '0';
WAIT;
END PROCESS t_prcs_b;
END blockgates_arch;
