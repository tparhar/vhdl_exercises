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
-- Generated on "12/26/2023 23:26:08"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          flopr
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY flopr_vhd_vec_tst IS
END flopr_vhd_vec_tst;
ARCHITECTURE flopr_arch OF flopr_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL d : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL q : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
COMPONENT flopr
	PORT (
	clk : IN STD_LOGIC;
	d : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	q : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : flopr
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	d => d,
	q => q,
	reset => reset
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 100000 ps;
	clk <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 2000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
-- d[3]
t_prcs_d_3: PROCESS
BEGIN
	d(3) <= '0';
	WAIT FOR 40000 ps;
	d(3) <= '1';
	WAIT FOR 120000 ps;
	d(3) <= '0';
	WAIT FOR 100000 ps;
	d(3) <= '1';
	WAIT FOR 100000 ps;
	d(3) <= '0';
WAIT;
END PROCESS t_prcs_d_3;
-- d[2]
t_prcs_d_2: PROCESS
BEGIN
	d(2) <= '0';
WAIT;
END PROCESS t_prcs_d_2;
-- d[1]
t_prcs_d_1: PROCESS
BEGIN
	d(1) <= '0';
	WAIT FOR 40000 ps;
	d(1) <= '1';
	WAIT FOR 120000 ps;
	d(1) <= '0';
	WAIT FOR 100000 ps;
	d(1) <= '1';
	WAIT FOR 100000 ps;
	d(1) <= '0';
	WAIT FOR 80000 ps;
	d(1) <= '1';
	WAIT FOR 100000 ps;
	d(1) <= '0';
	WAIT FOR 100000 ps;
	d(1) <= '1';
	WAIT FOR 120000 ps;
	d(1) <= '0';
WAIT;
END PROCESS t_prcs_d_1;
-- d[0]
t_prcs_d_0: PROCESS
BEGIN
	d(0) <= '0';
	WAIT FOR 260000 ps;
	d(0) <= '1';
	WAIT FOR 100000 ps;
	d(0) <= '0';
	WAIT FOR 280000 ps;
	d(0) <= '1';
	WAIT FOR 120000 ps;
	d(0) <= '0';
WAIT;
END PROCESS t_prcs_d_0;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
	WAIT FOR 240000 ps;
	reset <= '1';
	WAIT FOR 300000 ps;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
END flopr_arch;
