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
-- Generated on "12/21/2023 14:25:16"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          mux4
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mux4_vhd_vec_tst IS
END mux4_vhd_vec_tst;
ARCHITECTURE mux4_arch OF mux4_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL d0 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL d1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL d2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL d3 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL s : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL y : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT mux4
	PORT (
	d0 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	d1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	d2 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	d3 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	s : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	y : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : mux4
	PORT MAP (
-- list connections between master ports and signals
	d0 => d0,
	d1 => d1,
	d2 => d2,
	d3 => d3,
	s => s,
	y => y
	);
-- d0[3]
t_prcs_d0_3: PROCESS
BEGIN
	d0(3) <= '0';
	WAIT FOR 800000 ps;
	d0(3) <= '1';
WAIT;
END PROCESS t_prcs_d0_3;
-- d0[2]
t_prcs_d0_2: PROCESS
BEGIN
	d0(2) <= '0';
	WAIT FOR 400000 ps;
	d0(2) <= '1';
	WAIT FOR 400000 ps;
	d0(2) <= '0';
WAIT;
END PROCESS t_prcs_d0_2;
-- d0[1]
t_prcs_d0_1: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		d0(1) <= '0';
		WAIT FOR 200000 ps;
		d0(1) <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	d0(1) <= '0';
WAIT;
END PROCESS t_prcs_d0_1;
-- d0[0]
t_prcs_d0_0: PROCESS
BEGIN
LOOP
	d0(0) <= '0';
	WAIT FOR 100000 ps;
	d0(0) <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_d0_0;
-- d1[3]
t_prcs_d1_3: PROCESS
BEGIN
	d1(3) <= '0';
	WAIT FOR 700000 ps;
	d1(3) <= '1';
WAIT;
END PROCESS t_prcs_d1_3;
-- d1[2]
t_prcs_d1_2: PROCESS
BEGIN
	d1(2) <= '0';
	WAIT FOR 300000 ps;
	d1(2) <= '1';
	WAIT FOR 400000 ps;
	d1(2) <= '0';
WAIT;
END PROCESS t_prcs_d1_2;
-- d1[1]
t_prcs_d1_1: PROCESS
BEGIN
	d1(1) <= '0';
	WAIT FOR 100000 ps;
	FOR i IN 1 TO 2
	LOOP
		d1(1) <= '1';
		WAIT FOR 200000 ps;
		d1(1) <= '0';
		WAIT FOR 200000 ps;
	END LOOP;
	d1(1) <= '1';
WAIT;
END PROCESS t_prcs_d1_1;
-- d1[0]
t_prcs_d1_0: PROCESS
BEGIN
LOOP
	d1(0) <= '1';
	WAIT FOR 100000 ps;
	d1(0) <= '0';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_d1_0;
-- d2[3]
t_prcs_d2_3: PROCESS
BEGIN
	d2(3) <= '0';
	WAIT FOR 600000 ps;
	d2(3) <= '1';
WAIT;
END PROCESS t_prcs_d2_3;
-- d2[2]
t_prcs_d2_2: PROCESS
BEGIN
	d2(2) <= '0';
	WAIT FOR 200000 ps;
	d2(2) <= '1';
	WAIT FOR 400000 ps;
	d2(2) <= '0';
WAIT;
END PROCESS t_prcs_d2_2;
-- d2[1]
t_prcs_d2_1: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		d2(1) <= '1';
		WAIT FOR 200000 ps;
		d2(1) <= '0';
		WAIT FOR 200000 ps;
	END LOOP;
	d2(1) <= '1';
WAIT;
END PROCESS t_prcs_d2_1;
-- d2[0]
t_prcs_d2_0: PROCESS
BEGIN
LOOP
	d2(0) <= '0';
	WAIT FOR 100000 ps;
	d2(0) <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_d2_0;
-- d3[3]
t_prcs_d3_3: PROCESS
BEGIN
	d3(3) <= '0';
	WAIT FOR 500000 ps;
	d3(3) <= '1';
WAIT;
END PROCESS t_prcs_d3_3;
-- d3[2]
t_prcs_d3_2: PROCESS
BEGIN
	d3(2) <= '0';
	WAIT FOR 100000 ps;
	d3(2) <= '1';
	WAIT FOR 400000 ps;
	d3(2) <= '0';
	WAIT FOR 400000 ps;
	d3(2) <= '1';
WAIT;
END PROCESS t_prcs_d3_2;
-- d3[1]
t_prcs_d3_1: PROCESS
BEGIN
	d3(1) <= '1';
	WAIT FOR 100000 ps;
	FOR i IN 1 TO 2
	LOOP
		d3(1) <= '0';
		WAIT FOR 200000 ps;
		d3(1) <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	d3(1) <= '0';
WAIT;
END PROCESS t_prcs_d3_1;
-- d3[0]
t_prcs_d3_0: PROCESS
BEGIN
LOOP
	d3(0) <= '1';
	WAIT FOR 100000 ps;
	d3(0) <= '0';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_d3_0;
-- s[1]
t_prcs_s_1: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		s(1) <= '0';
		WAIT FOR 200000 ps;
		s(1) <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	s(1) <= '0';
WAIT;
END PROCESS t_prcs_s_1;
-- s[0]
t_prcs_s_0: PROCESS
BEGIN
LOOP
	s(0) <= '0';
	WAIT FOR 100000 ps;
	s(0) <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_s_0;
END mux4_arch;
