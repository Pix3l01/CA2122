-- Copyright (C) 2021  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "03/17/2022 14:00:08"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          2mux
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY 2mux_vhd_vec_tst IS
END 2mux_vhd_vec_tst;
ARCHITECTURE 2mux_arch OF 2mux_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC;
SIGNAL B : STD_LOGIC;
SIGNAL K : STD_LOGIC;
SIGNAL Z : STD_LOGIC;
COMPONENT 2mux
	PORT (
	A : IN STD_LOGIC;
	B : IN STD_LOGIC;
	K : IN STD_LOGIC;
	Z : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : 2mux
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	K => K,
	Z => Z
	);

-- A
t_prcs_A: PROCESS
BEGIN
LOOP
	A <= '0';
	WAIT FOR 100000 ps;
	A <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_A;

-- B
t_prcs_B: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		B <= '0';
		WAIT FOR 200000 ps;
		B <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	B <= '0';
WAIT;
END PROCESS t_prcs_B;

-- K
t_prcs_K: PROCESS
BEGIN
	K <= '0';
	WAIT FOR 400000 ps;
	K <= '1';
	WAIT FOR 400000 ps;
	K <= '0';
WAIT;
END PROCESS t_prcs_K;
END 2mux_arch;
