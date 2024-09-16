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
-- Generated on "01/05/2024 12:29:33"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          inv
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY inv_vhd_vec_tst IS
END inv_vhd_vec_tst;
ARCHITECTURE inv_arch OF inv_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL y : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT inv
	PORT (
	a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	y : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : inv
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	y => y
	);
-- a[3]
t_prcs_a_3: PROCESS
BEGIN
	a(3) <= '0';
	WAIT FOR 440000 ps;
	a(3) <= '1';
	WAIT FOR 440000 ps;
	a(3) <= '0';
	WAIT FOR 220000 ps;
	a(3) <= '1';
	WAIT FOR 420000 ps;
	a(3) <= '0';
WAIT;
END PROCESS t_prcs_a_3;
-- a[2]
t_prcs_a_2: PROCESS
BEGIN
	a(2) <= '0';
	WAIT FOR 440000 ps;
	a(2) <= '1';
	WAIT FOR 440000 ps;
	a(2) <= '0';
	WAIT FOR 220000 ps;
	a(2) <= '1';
	WAIT FOR 420000 ps;
	a(2) <= '0';
WAIT;
END PROCESS t_prcs_a_2;
-- a[1]
t_prcs_a_1: PROCESS
BEGIN
	a(1) <= '0';
	WAIT FOR 1100000 ps;
	a(1) <= '1';
	WAIT FOR 420000 ps;
	a(1) <= '0';
WAIT;
END PROCESS t_prcs_a_1;
-- a[0]
t_prcs_a_0: PROCESS
BEGIN
	a(0) <= '0';
	WAIT FOR 440000 ps;
	a(0) <= '1';
	WAIT FOR 440000 ps;
	a(0) <= '0';
	WAIT FOR 220000 ps;
	a(0) <= '1';
	WAIT FOR 420000 ps;
	a(0) <= '0';
WAIT;
END PROCESS t_prcs_a_0;
END inv_arch;
