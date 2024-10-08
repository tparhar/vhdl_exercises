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
-- Generated on "12/21/2023 11:34:47"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          seqdetector
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY seqdetector_vhd_vec_tst IS
END seqdetector_vhd_vec_tst;
ARCHITECTURE seqdetector_arch OF seqdetector_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL y : STD_LOGIC;
COMPONENT seqdetector
	PORT (
	a : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	y : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : seqdetector
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	clk => clk,
	reset => reset,
	y => y
	);

-- a
t_prcs_a: PROCESS
BEGIN
	a <= '0';
	WAIT FOR 380000 ps;
	a <= '1';
	WAIT FOR 160000 ps;
	a <= '0';
	WAIT FOR 180000 ps;
	a <= '1';
	WAIT FOR 140000 ps;
	a <= '0';
	WAIT FOR 480000 ps;
	a <= '1';
	WAIT FOR 160000 ps;
	a <= '0';
WAIT;
END PROCESS t_prcs_a;

-- clk
t_prcs_clk: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		clk <= '0';
		WAIT FOR 160000 ps;
		clk <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '1';
	WAIT FOR 100000 ps;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
END seqdetector_arch;
