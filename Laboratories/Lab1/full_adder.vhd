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

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 21.1.0 Build 842 10/21/2021 SJ Lite Edition"
-- CREATED		"Thu Mar 17 14:13:07 2022"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY full_adder IS 
	PORT
	(
		B :  IN  STD_LOGIC;
		A :  IN  STD_LOGIC;
		Carry_in :  IN  STD_LOGIC;
		Sum :  OUT  STD_LOGIC;
		Carry_out :  OUT  STD_LOGIC
	);
END full_adder;

ARCHITECTURE bdf_type OF full_adder IS 

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;


BEGIN 



SYNTHESIZED_WIRE_0 <= A XOR B;


Sum <= SYNTHESIZED_WIRE_0 XOR Carry_in;


Carry_out <= SYNTHESIZED_WIRE_1 OR SYNTHESIZED_WIRE_2;


SYNTHESIZED_WIRE_2 <= Carry_in AND SYNTHESIZED_WIRE_3;


SYNTHESIZED_WIRE_1 <= A AND B;


SYNTHESIZED_WIRE_3 <= A XOR B;


END bdf_type;