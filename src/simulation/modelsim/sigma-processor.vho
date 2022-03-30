-- Copyright (C) 2020  Intel Corporation. All rights reserved.
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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "03/30/2022 19:07:39"

-- 
-- Device: Altera 10M16SAU169C8G Package UFBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_G1,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_F5,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_E7,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_C4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_C5,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALU IS
    PORT (
	iA : IN std_logic_vector(31 DOWNTO 0);
	iB : IN std_logic_vector(31 DOWNTO 0);
	iALUFN : IN std_logic_vector(5 DOWNTO 0);
	oOutput : BUFFER std_logic_vector(31 DOWNTO 0)
	);
END ALU;

-- Design Ports Information
-- oOutput[0]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oOutput[1]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oOutput[2]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oOutput[3]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oOutput[4]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oOutput[5]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oOutput[6]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oOutput[7]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oOutput[8]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oOutput[9]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oOutput[10]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oOutput[11]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oOutput[12]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oOutput[13]	=>  Location: PIN_M12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oOutput[14]	=>  Location: PIN_L10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oOutput[15]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oOutput[16]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oOutput[17]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oOutput[18]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oOutput[19]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oOutput[20]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oOutput[21]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oOutput[22]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oOutput[23]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oOutput[24]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oOutput[25]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oOutput[26]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oOutput[27]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oOutput[28]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oOutput[29]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oOutput[30]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oOutput[31]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iALUFN[3]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iA[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iB[0]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iALUFN[2]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iALUFN[0]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iALUFN[1]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iALUFN[5]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iALUFN[4]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iB[1]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iA[1]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iB[3]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iB[2]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iA[2]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iA[3]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iB[4]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iA[5]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iB[5]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iA[4]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iA[7]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iA[6]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iB[6]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iB[7]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iA[8]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iB[8]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iA[9]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iB[9]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iA[10]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iB[10]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iA[11]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iB[11]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iA[12]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iB[12]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iA[13]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iB[13]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iA[14]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iB[14]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iA[15]	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iB[15]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iA[16]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iB[16]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iA[17]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iB[17]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iA[18]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iB[18]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iA[19]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iB[19]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iA[20]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iB[20]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iA[21]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iB[21]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iA[22]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iB[22]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iA[23]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iB[23]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iA[27]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iA[26]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iB[26]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iB[27]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iA[25]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iB[25]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iA[24]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iB[24]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iA[28]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iB[28]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iA[29]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iB[29]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iA[30]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iB[30]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iA[31]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iB[31]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_iA : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_iB : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_iALUFN : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_oOutput : std_logic_vector(31 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \oOutput[0]~output_o\ : std_logic;
SIGNAL \oOutput[1]~output_o\ : std_logic;
SIGNAL \oOutput[2]~output_o\ : std_logic;
SIGNAL \oOutput[3]~output_o\ : std_logic;
SIGNAL \oOutput[4]~output_o\ : std_logic;
SIGNAL \oOutput[5]~output_o\ : std_logic;
SIGNAL \oOutput[6]~output_o\ : std_logic;
SIGNAL \oOutput[7]~output_o\ : std_logic;
SIGNAL \oOutput[8]~output_o\ : std_logic;
SIGNAL \oOutput[9]~output_o\ : std_logic;
SIGNAL \oOutput[10]~output_o\ : std_logic;
SIGNAL \oOutput[11]~output_o\ : std_logic;
SIGNAL \oOutput[12]~output_o\ : std_logic;
SIGNAL \oOutput[13]~output_o\ : std_logic;
SIGNAL \oOutput[14]~output_o\ : std_logic;
SIGNAL \oOutput[15]~output_o\ : std_logic;
SIGNAL \oOutput[16]~output_o\ : std_logic;
SIGNAL \oOutput[17]~output_o\ : std_logic;
SIGNAL \oOutput[18]~output_o\ : std_logic;
SIGNAL \oOutput[19]~output_o\ : std_logic;
SIGNAL \oOutput[20]~output_o\ : std_logic;
SIGNAL \oOutput[21]~output_o\ : std_logic;
SIGNAL \oOutput[22]~output_o\ : std_logic;
SIGNAL \oOutput[23]~output_o\ : std_logic;
SIGNAL \oOutput[24]~output_o\ : std_logic;
SIGNAL \oOutput[25]~output_o\ : std_logic;
SIGNAL \oOutput[26]~output_o\ : std_logic;
SIGNAL \oOutput[27]~output_o\ : std_logic;
SIGNAL \oOutput[28]~output_o\ : std_logic;
SIGNAL \oOutput[29]~output_o\ : std_logic;
SIGNAL \oOutput[30]~output_o\ : std_logic;
SIGNAL \oOutput[31]~output_o\ : std_logic;
SIGNAL \iALUFN[4]~input_o\ : std_logic;
SIGNAL \iA[31]~input_o\ : std_logic;
SIGNAL \iB[31]~input_o\ : std_logic;
SIGNAL \iB[30]~input_o\ : std_logic;
SIGNAL \iA[30]~input_o\ : std_logic;
SIGNAL \iB[29]~input_o\ : std_logic;
SIGNAL \iA[29]~input_o\ : std_logic;
SIGNAL \iB[28]~input_o\ : std_logic;
SIGNAL \iA[28]~input_o\ : std_logic;
SIGNAL \iB[27]~input_o\ : std_logic;
SIGNAL \iA[27]~input_o\ : std_logic;
SIGNAL \iA[26]~input_o\ : std_logic;
SIGNAL \iB[26]~input_o\ : std_logic;
SIGNAL \iB[25]~input_o\ : std_logic;
SIGNAL \iA[25]~input_o\ : std_logic;
SIGNAL \iB[24]~input_o\ : std_logic;
SIGNAL \iA[24]~input_o\ : std_logic;
SIGNAL \iB[23]~input_o\ : std_logic;
SIGNAL \iA[23]~input_o\ : std_logic;
SIGNAL \iA[22]~input_o\ : std_logic;
SIGNAL \iB[22]~input_o\ : std_logic;
SIGNAL \iB[21]~input_o\ : std_logic;
SIGNAL \iA[21]~input_o\ : std_logic;
SIGNAL \iB[20]~input_o\ : std_logic;
SIGNAL \iA[20]~input_o\ : std_logic;
SIGNAL \iA[19]~input_o\ : std_logic;
SIGNAL \iB[19]~input_o\ : std_logic;
SIGNAL \iA[18]~input_o\ : std_logic;
SIGNAL \iB[18]~input_o\ : std_logic;
SIGNAL \iB[17]~input_o\ : std_logic;
SIGNAL \iA[17]~input_o\ : std_logic;
SIGNAL \iA[16]~input_o\ : std_logic;
SIGNAL \iB[16]~input_o\ : std_logic;
SIGNAL \iB[15]~input_o\ : std_logic;
SIGNAL \iA[15]~input_o\ : std_logic;
SIGNAL \iB[14]~input_o\ : std_logic;
SIGNAL \iA[14]~input_o\ : std_logic;
SIGNAL \iA[13]~input_o\ : std_logic;
SIGNAL \iB[13]~input_o\ : std_logic;
SIGNAL \iA[12]~input_o\ : std_logic;
SIGNAL \iB[12]~input_o\ : std_logic;
SIGNAL \iA[11]~input_o\ : std_logic;
SIGNAL \iB[11]~input_o\ : std_logic;
SIGNAL \iB[10]~input_o\ : std_logic;
SIGNAL \iA[10]~input_o\ : std_logic;
SIGNAL \iA[9]~input_o\ : std_logic;
SIGNAL \iB[9]~input_o\ : std_logic;
SIGNAL \iA[8]~input_o\ : std_logic;
SIGNAL \iB[8]~input_o\ : std_logic;
SIGNAL \iA[7]~input_o\ : std_logic;
SIGNAL \iB[7]~input_o\ : std_logic;
SIGNAL \iA[6]~input_o\ : std_logic;
SIGNAL \iB[6]~input_o\ : std_logic;
SIGNAL \iA[5]~input_o\ : std_logic;
SIGNAL \iB[5]~input_o\ : std_logic;
SIGNAL \iA[4]~input_o\ : std_logic;
SIGNAL \iB[4]~input_o\ : std_logic;
SIGNAL \iB[3]~input_o\ : std_logic;
SIGNAL \iA[3]~input_o\ : std_logic;
SIGNAL \iB[2]~input_o\ : std_logic;
SIGNAL \iA[2]~input_o\ : std_logic;
SIGNAL \iA[1]~input_o\ : std_logic;
SIGNAL \iB[1]~input_o\ : std_logic;
SIGNAL \iB[0]~input_o\ : std_logic;
SIGNAL \iA[0]~input_o\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~13_cout\ : std_logic;
SIGNAL \LessThan0~15_cout\ : std_logic;
SIGNAL \LessThan0~17_cout\ : std_logic;
SIGNAL \LessThan0~19_cout\ : std_logic;
SIGNAL \LessThan0~21_cout\ : std_logic;
SIGNAL \LessThan0~23_cout\ : std_logic;
SIGNAL \LessThan0~25_cout\ : std_logic;
SIGNAL \LessThan0~27_cout\ : std_logic;
SIGNAL \LessThan0~29_cout\ : std_logic;
SIGNAL \LessThan0~31_cout\ : std_logic;
SIGNAL \LessThan0~33_cout\ : std_logic;
SIGNAL \LessThan0~35_cout\ : std_logic;
SIGNAL \LessThan0~37_cout\ : std_logic;
SIGNAL \LessThan0~39_cout\ : std_logic;
SIGNAL \LessThan0~41_cout\ : std_logic;
SIGNAL \LessThan0~43_cout\ : std_logic;
SIGNAL \LessThan0~45_cout\ : std_logic;
SIGNAL \LessThan0~47_cout\ : std_logic;
SIGNAL \LessThan0~49_cout\ : std_logic;
SIGNAL \LessThan0~51_cout\ : std_logic;
SIGNAL \LessThan0~53_cout\ : std_logic;
SIGNAL \LessThan0~55_cout\ : std_logic;
SIGNAL \LessThan0~57_cout\ : std_logic;
SIGNAL \LessThan0~59_cout\ : std_logic;
SIGNAL \LessThan0~61_cout\ : std_logic;
SIGNAL \LessThan0~62_combout\ : std_logic;
SIGNAL \iALUFN[1]~input_o\ : std_logic;
SIGNAL \iALUFN[2]~input_o\ : std_logic;
SIGNAL \Equal0~14_combout\ : std_logic;
SIGNAL \Equal0~13_combout\ : std_logic;
SIGNAL \Equal0~15_combout\ : std_logic;
SIGNAL \Equal0~12_combout\ : std_logic;
SIGNAL \Mux31~15_combout\ : std_logic;
SIGNAL \Equal0~16_combout\ : std_logic;
SIGNAL \Mux31~16_combout\ : std_logic;
SIGNAL \Mux31~17_combout\ : std_logic;
SIGNAL \Equal0~18_combout\ : std_logic;
SIGNAL \Equal0~19_combout\ : std_logic;
SIGNAL \Equal0~17_combout\ : std_logic;
SIGNAL \Equal0~20_combout\ : std_logic;
SIGNAL \Mux31~18_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~11_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Mux31~14_combout\ : std_logic;
SIGNAL \Mux31~19_combout\ : std_logic;
SIGNAL \LessThan1~1_cout\ : std_logic;
SIGNAL \LessThan1~3_cout\ : std_logic;
SIGNAL \LessThan1~5_cout\ : std_logic;
SIGNAL \LessThan1~7_cout\ : std_logic;
SIGNAL \LessThan1~9_cout\ : std_logic;
SIGNAL \LessThan1~11_cout\ : std_logic;
SIGNAL \LessThan1~13_cout\ : std_logic;
SIGNAL \LessThan1~15_cout\ : std_logic;
SIGNAL \LessThan1~17_cout\ : std_logic;
SIGNAL \LessThan1~19_cout\ : std_logic;
SIGNAL \LessThan1~21_cout\ : std_logic;
SIGNAL \LessThan1~23_cout\ : std_logic;
SIGNAL \LessThan1~25_cout\ : std_logic;
SIGNAL \LessThan1~27_cout\ : std_logic;
SIGNAL \LessThan1~29_cout\ : std_logic;
SIGNAL \LessThan1~31_cout\ : std_logic;
SIGNAL \LessThan1~33_cout\ : std_logic;
SIGNAL \LessThan1~35_cout\ : std_logic;
SIGNAL \LessThan1~37_cout\ : std_logic;
SIGNAL \LessThan1~39_cout\ : std_logic;
SIGNAL \LessThan1~41_cout\ : std_logic;
SIGNAL \LessThan1~43_cout\ : std_logic;
SIGNAL \LessThan1~45_cout\ : std_logic;
SIGNAL \LessThan1~47_cout\ : std_logic;
SIGNAL \LessThan1~49_cout\ : std_logic;
SIGNAL \LessThan1~51_cout\ : std_logic;
SIGNAL \LessThan1~53_cout\ : std_logic;
SIGNAL \LessThan1~55_cout\ : std_logic;
SIGNAL \LessThan1~57_cout\ : std_logic;
SIGNAL \LessThan1~59_cout\ : std_logic;
SIGNAL \LessThan1~61_cout\ : std_logic;
SIGNAL \LessThan1~62_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Mux31~12_combout\ : std_logic;
SIGNAL \Mux31~7_combout\ : std_logic;
SIGNAL \Mux31~6_combout\ : std_logic;
SIGNAL \Mux31~8_combout\ : std_logic;
SIGNAL \Mux31~9_combout\ : std_logic;
SIGNAL \Mux31~10_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Mux31~11_combout\ : std_logic;
SIGNAL \Mux31~13_combout\ : std_logic;
SIGNAL \Mux31~20_combout\ : std_logic;
SIGNAL \Mux31~21_combout\ : std_logic;
SIGNAL \iALUFN[5]~input_o\ : std_logic;
SIGNAL \iALUFN[0]~input_o\ : std_logic;
SIGNAL \Mux31~22_combout\ : std_logic;
SIGNAL \Mux20~1_combout\ : std_logic;
SIGNAL \sSHR_s4[31]~4_combout\ : std_logic;
SIGNAL \sSHL_s5[0]~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Mux31~23_combout\ : std_logic;
SIGNAL \sSHR_s2[4]~17_combout\ : std_logic;
SIGNAL \sSHR_s1[4]~1_combout\ : std_logic;
SIGNAL \sSHR_s5[0]~0_combout\ : std_logic;
SIGNAL \sSHR_s2[8]~15_combout\ : std_logic;
SIGNAL \sSHR_s2[9]~14_combout\ : std_logic;
SIGNAL \sSHR_s2[8]~16_combout\ : std_logic;
SIGNAL \sSHR_s2[12]~12_combout\ : std_logic;
SIGNAL \sSHR_s2[13]~11_combout\ : std_logic;
SIGNAL \sSHR_s2[12]~13_combout\ : std_logic;
SIGNAL \sSHR_s3[8]~1_combout\ : std_logic;
SIGNAL \sSHR_s1[2]~2_combout\ : std_logic;
SIGNAL \sSHR_s5[0]~1_combout\ : std_logic;
SIGNAL \sSHR_s5[0]~2_combout\ : std_logic;
SIGNAL \sSHR_s5[0]~3_combout\ : std_logic;
SIGNAL \sSHR_s2[24]~3_combout\ : std_logic;
SIGNAL \sSHR_s2[25]~2_combout\ : std_logic;
SIGNAL \sSHR_s2[24]~4_combout\ : std_logic;
SIGNAL \sSHR_s2[28]~0_combout\ : std_logic;
SIGNAL \sSHR_s1[30]~0_combout\ : std_logic;
SIGNAL \sSHR_s2[28]~1_combout\ : std_logic;
SIGNAL \sSHR_s4[16]~5_combout\ : std_logic;
SIGNAL \sSHR_s2[17]~8_combout\ : std_logic;
SIGNAL \sSHR_s2[16]~9_combout\ : std_logic;
SIGNAL \sSHR_s2[16]~10_combout\ : std_logic;
SIGNAL \sSHR_s2[21]~5_combout\ : std_logic;
SIGNAL \sSHR_s2[20]~6_combout\ : std_logic;
SIGNAL \sSHR_s2[20]~7_combout\ : std_logic;
SIGNAL \sSHR_s3[16]~0_combout\ : std_logic;
SIGNAL \sSHR_s4[16]~6_combout\ : std_logic;
SIGNAL \sSHR_s5[0]~4_combout\ : std_logic;
SIGNAL \Mux31~24_combout\ : std_logic;
SIGNAL \Mux31~25_combout\ : std_logic;
SIGNAL \iALUFN[3]~input_o\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Mux30~1_combout\ : std_logic;
SIGNAL \Mux31~4_combout\ : std_logic;
SIGNAL \Mux31~27_combout\ : std_logic;
SIGNAL \Mux31~2_combout\ : std_logic;
SIGNAL \Mux31~3_combout\ : std_logic;
SIGNAL \Mux31~5_combout\ : std_logic;
SIGNAL \Mux28~4_combout\ : std_logic;
SIGNAL \Mux31~26_combout\ : std_logic;
SIGNAL \Mux30~11_combout\ : std_logic;
SIGNAL \Mux30~13_combout\ : std_logic;
SIGNAL \Mux30~12_combout\ : std_logic;
SIGNAL \Mux30~14_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Mux30~2_combout\ : std_logic;
SIGNAL \sSHR_s2[5]~30_combout\ : std_logic;
SIGNAL \sSHR_s1[5]~4_combout\ : std_logic;
SIGNAL \sSHR_s2[5]~31_combout\ : std_logic;
SIGNAL \sSHR_s2[14]~26_combout\ : std_logic;
SIGNAL \sSHR_s2[13]~27_combout\ : std_logic;
SIGNAL \sSHR_s2[10]~28_combout\ : std_logic;
SIGNAL \sSHR_s2[9]~29_combout\ : std_logic;
SIGNAL \sSHR_s3[9]~3_combout\ : std_logic;
SIGNAL \Mux30~7_combout\ : std_logic;
SIGNAL \Mux30~6_combout\ : std_logic;
SIGNAL \Mux30~3_combout\ : std_logic;
SIGNAL \sSHL_s1[1]~0_combout\ : std_logic;
SIGNAL \Mux30~4_combout\ : std_logic;
SIGNAL \sSHR_s1[3]~3_combout\ : std_logic;
SIGNAL \Mux30~5_combout\ : std_logic;
SIGNAL \Mux30~8_combout\ : std_logic;
SIGNAL \sSHR_s2[29]~18_combout\ : std_logic;
SIGNAL \sSHR_s2[29]~19_combout\ : std_logic;
SIGNAL \sSHR_s2[26]~20_combout\ : std_logic;
SIGNAL \sSHR_s2[25]~21_combout\ : std_logic;
SIGNAL \sSHR_s4[17]~7_combout\ : std_logic;
SIGNAL \sSHR_s2[22]~22_combout\ : std_logic;
SIGNAL \sSHR_s2[21]~23_combout\ : std_logic;
SIGNAL \sSHR_s2[18]~24_combout\ : std_logic;
SIGNAL \sSHR_s2[17]~25_combout\ : std_logic;
SIGNAL \sSHR_s3[17]~2_combout\ : std_logic;
SIGNAL \sSHR_s4[17]~8_combout\ : std_logic;
SIGNAL \Mux30~9_combout\ : std_logic;
SIGNAL \Mux30~10_combout\ : std_logic;
SIGNAL \Mux30~15_combout\ : std_logic;
SIGNAL \Mux28~6_combout\ : std_logic;
SIGNAL \Mux28~11_combout\ : std_logic;
SIGNAL \Mux29~8_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \sSHR_s2[19]~36_combout\ : std_logic;
SIGNAL \sSHR_s2[18]~37_combout\ : std_logic;
SIGNAL \sSHR_s2[23]~34_combout\ : std_logic;
SIGNAL \sSHR_s2[22]~35_combout\ : std_logic;
SIGNAL \sSHR_s3[18]~4_combout\ : std_logic;
SIGNAL \sSHR_s2[26]~32_combout\ : std_logic;
SIGNAL \sSHR_s2[26]~33_combout\ : std_logic;
SIGNAL \sSHR_s4[26]~9_combout\ : std_logic;
SIGNAL \sSHR_s4[18]~10_combout\ : std_logic;
SIGNAL \Mux28~7_combout\ : std_logic;
SIGNAL \sSHR_s2[6]~38_combout\ : std_logic;
SIGNAL \sSHR_s2[7]~39_combout\ : std_logic;
SIGNAL \sSHR_s2[6]~40_combout\ : std_logic;
SIGNAL \Mux29~4_combout\ : std_logic;
SIGNAL \sSHR_s2[15]~41_combout\ : std_logic;
SIGNAL \sSHR_s2[14]~42_combout\ : std_logic;
SIGNAL \sSHR_s2[11]~43_combout\ : std_logic;
SIGNAL \sSHR_s2[10]~44_combout\ : std_logic;
SIGNAL \sSHR_s3[10]~5_combout\ : std_logic;
SIGNAL \Mux29~5_combout\ : std_logic;
SIGNAL \Mux28~10_combout\ : std_logic;
SIGNAL \sSHL_s2[2]~0_combout\ : std_logic;
SIGNAL \sSHL_s2[2]~1_combout\ : std_logic;
SIGNAL \sSHL_s4[2]~23_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Mux28~9_combout\ : std_logic;
SIGNAL \Mux29~6_combout\ : std_logic;
SIGNAL \Mux28~8_combout\ : std_logic;
SIGNAL \Mux29~7_combout\ : std_logic;
SIGNAL \Mux29~9_combout\ : std_logic;
SIGNAL \Mux28~12_combout\ : std_logic;
SIGNAL \Mux29~10_combout\ : std_logic;
SIGNAL \Mux29~11_combout\ : std_logic;
SIGNAL \Mux29~14_combout\ : std_logic;
SIGNAL \Mux29~12_combout\ : std_logic;
SIGNAL \Mux28~5_combout\ : std_logic;
SIGNAL \Mux29~13_combout\ : std_logic;
SIGNAL \Mux29~15_combout\ : std_logic;
SIGNAL \Mux28~19_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \sSHL_s2[3]~2_combout\ : std_logic;
SIGNAL \sSHL_s4[3]~4_combout\ : std_logic;
SIGNAL \Mux28~15_combout\ : std_logic;
SIGNAL \sSHR_s2[27]~47_combout\ : std_logic;
SIGNAL \sSHR_s2[27]~48_combout\ : std_logic;
SIGNAL \sSHR_s3[27]~7_combout\ : std_logic;
SIGNAL \sSHR_s3[27]~8_combout\ : std_logic;
SIGNAL \sSHR_s2[19]~46_combout\ : std_logic;
SIGNAL \sSHR_s2[23]~45_combout\ : std_logic;
SIGNAL \sSHR_s3[19]~6_combout\ : std_logic;
SIGNAL \sSHR_s4[19]~11_combout\ : std_logic;
SIGNAL \sSHR_s2[7]~49_combout\ : std_logic;
SIGNAL \Mux28~13_combout\ : std_logic;
SIGNAL \sSHR_s2[15]~50_combout\ : std_logic;
SIGNAL \sSHR_s2[11]~51_combout\ : std_logic;
SIGNAL \sSHR_s3[11]~9_combout\ : std_logic;
SIGNAL \Mux28~14_combout\ : std_logic;
SIGNAL \Mux28~16_combout\ : std_logic;
SIGNAL \Mux28~17_combout\ : std_logic;
SIGNAL \Mux28~18_combout\ : std_logic;
SIGNAL \Mux28~20_combout\ : std_logic;
SIGNAL \Mux28~23_combout\ : std_logic;
SIGNAL \Mux28~21_combout\ : std_logic;
SIGNAL \Mux28~22_combout\ : std_logic;
SIGNAL \Mux28~24_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux24~5_combout\ : std_logic;
SIGNAL \sSHR_s3[12]~10_combout\ : std_logic;
SIGNAL \Mux24~2_combout\ : std_logic;
SIGNAL \Mux24~1_combout\ : std_logic;
SIGNAL \sSHR_s2[4]~52_combout\ : std_logic;
SIGNAL \Mux27~3_combout\ : std_logic;
SIGNAL \sSHR_s3[20]~11_combout\ : std_logic;
SIGNAL \sSHR_s4[20]~12_combout\ : std_logic;
SIGNAL \Mux27~4_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Mux27~5_combout\ : std_logic;
SIGNAL \Mux24~3_combout\ : std_logic;
SIGNAL \sSHL_s2[4]~4_combout\ : std_logic;
SIGNAL \sSHL_s2[4]~3_combout\ : std_logic;
SIGNAL \sSHL_s2[4]~5_combout\ : std_logic;
SIGNAL \sSHL_s3[4]~0_combout\ : std_logic;
SIGNAL \sSHL_s4[4]~5_combout\ : std_logic;
SIGNAL \Mux27~6_combout\ : std_logic;
SIGNAL \Mux27~7_combout\ : std_logic;
SIGNAL \Mux24~4_combout\ : std_logic;
SIGNAL \Mux27~8_combout\ : std_logic;
SIGNAL \Mux27~9_combout\ : std_logic;
SIGNAL \Mux27~1_combout\ : std_logic;
SIGNAL \Mux27~2_combout\ : std_logic;
SIGNAL \Mux20~2_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux27~10_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \sSHL_s2[5]~6_combout\ : std_logic;
SIGNAL \sSHL_s2[5]~7_combout\ : std_logic;
SIGNAL \sSHL_s4[13]~6_combout\ : std_logic;
SIGNAL \sSHL_s4[5]~7_combout\ : std_logic;
SIGNAL \sSHR_s3[13]~12_combout\ : std_logic;
SIGNAL \Mux26~1_combout\ : std_logic;
SIGNAL \sSHR_s3[21]~13_combout\ : std_logic;
SIGNAL \sSHR_s4[21]~13_combout\ : std_logic;
SIGNAL \Mux26~2_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Mux26~3_combout\ : std_logic;
SIGNAL \Mux26~4_combout\ : std_logic;
SIGNAL \Mux26~5_combout\ : std_logic;
SIGNAL \Mux26~6_combout\ : std_logic;
SIGNAL \Mux26~7_combout\ : std_logic;
SIGNAL \Mux26~8_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Mux25~3_combout\ : std_logic;
SIGNAL \sSHR_s3[14]~14_combout\ : std_logic;
SIGNAL \Mux25~1_combout\ : std_logic;
SIGNAL \sSHL_s4[9]~9_combout\ : std_logic;
SIGNAL \sSHR_s3[22]~15_combout\ : std_logic;
SIGNAL \sSHR_s4[22]~14_combout\ : std_logic;
SIGNAL \Mux25~2_combout\ : std_logic;
SIGNAL \sSHL_s2[6]~8_combout\ : std_logic;
SIGNAL \sSHL_s2[6]~9_combout\ : std_logic;
SIGNAL \sSHL_s4[6]~8_combout\ : std_logic;
SIGNAL \Mux25~4_combout\ : std_logic;
SIGNAL \Mux25~5_combout\ : std_logic;
SIGNAL \Mux25~6_combout\ : std_logic;
SIGNAL \Mux25~7_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux25~8_combout\ : std_logic;
SIGNAL \Mux24~6_combout\ : std_logic;
SIGNAL \sSHR_s3[23]~17_combout\ : std_logic;
SIGNAL \sSHL_s4[8]~11_combout\ : std_logic;
SIGNAL \sSHR_s4[23]~15_combout\ : std_logic;
SIGNAL \sSHR_s3[15]~16_combout\ : std_logic;
SIGNAL \Mux24~7_combout\ : std_logic;
SIGNAL \Mux24~8_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Mux24~9_combout\ : std_logic;
SIGNAL \sSHL_s2[7]~11_combout\ : std_logic;
SIGNAL \sSHL_s2[7]~12_combout\ : std_logic;
SIGNAL \sSHL_s2[3]~10_combout\ : std_logic;
SIGNAL \sSHL_s4[7]~10_combout\ : std_logic;
SIGNAL \Mux24~10_combout\ : std_logic;
SIGNAL \Mux24~11_combout\ : std_logic;
SIGNAL \Mux24~12_combout\ : std_logic;
SIGNAL \Mux24~13_combout\ : std_logic;
SIGNAL \Mux24~14_combout\ : std_logic;
SIGNAL \Mux20~3_combout\ : std_logic;
SIGNAL \Mux23~1_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux20~11_combout\ : std_logic;
SIGNAL \Mux20~10_combout\ : std_logic;
SIGNAL \Mux23~7_combout\ : std_logic;
SIGNAL \Mux23~8_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Mux20~9_combout\ : std_logic;
SIGNAL \Mux20~8_combout\ : std_logic;
SIGNAL \Mux23~4_combout\ : std_logic;
SIGNAL \Mux20~6_combout\ : std_logic;
SIGNAL \sSHL_s2[8]~13_combout\ : std_logic;
SIGNAL \sSHL_s2[8]~14_combout\ : std_logic;
SIGNAL \sSHL_s3[8]~1_combout\ : std_logic;
SIGNAL \sSHL_s4[8]~12_combout\ : std_logic;
SIGNAL \Mux20~7_combout\ : std_logic;
SIGNAL \sSHR_s4[24]~16_combout\ : std_logic;
SIGNAL \Mux23~2_combout\ : std_logic;
SIGNAL \Mux20~5_combout\ : std_logic;
SIGNAL \Mux23~3_combout\ : std_logic;
SIGNAL \Mux23~5_combout\ : std_logic;
SIGNAL \Mux20~4_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Mux23~6_combout\ : std_logic;
SIGNAL \Mux23~9_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux23~10_combout\ : std_logic;
SIGNAL \Mux22~6_combout\ : std_logic;
SIGNAL \Mux22~7_combout\ : std_logic;
SIGNAL \Mux22~3_combout\ : std_logic;
SIGNAL \sSHL_s2[9]~15_combout\ : std_logic;
SIGNAL \sSHL_s2[9]~16_combout\ : std_logic;
SIGNAL \sSHL_s3[9]~2_combout\ : std_logic;
SIGNAL \sSHL_s4[9]~13_combout\ : std_logic;
SIGNAL \sSHR_s4[25]~17_combout\ : std_logic;
SIGNAL \Mux22~1_combout\ : std_logic;
SIGNAL \Mux22~2_combout\ : std_logic;
SIGNAL \Mux22~4_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Mux22~5_combout\ : std_logic;
SIGNAL \Mux22~8_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux22~9_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \sSHL_s2[10]~17_combout\ : std_logic;
SIGNAL \sSHL_s2[10]~18_combout\ : std_logic;
SIGNAL \sSHL_s3[10]~3_combout\ : std_logic;
SIGNAL \sSHL_s4[10]~14_combout\ : std_logic;
SIGNAL \sSHR_s4[26]~18_combout\ : std_logic;
SIGNAL \Mux21~1_combout\ : std_logic;
SIGNAL \Mux21~2_combout\ : std_logic;
SIGNAL \Mux21~3_combout\ : std_logic;
SIGNAL \Mux21~4_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Mux21~5_combout\ : std_logic;
SIGNAL \Mux21~6_combout\ : std_logic;
SIGNAL \Mux21~7_combout\ : std_logic;
SIGNAL \Mux21~8_combout\ : std_logic;
SIGNAL \Mux21~9_combout\ : std_logic;
SIGNAL \Mux20~15_combout\ : std_logic;
SIGNAL \sSHR_s4[27]~19_combout\ : std_logic;
SIGNAL \sSHL_s2[12]~19_combout\ : std_logic;
SIGNAL \sSHL_s2[11]~20_combout\ : std_logic;
SIGNAL \sSHL_s3[11]~4_combout\ : std_logic;
SIGNAL \sSHL_s4[11]~15_combout\ : std_logic;
SIGNAL \Mux20~13_combout\ : std_logic;
SIGNAL \Mux20~14_combout\ : std_logic;
SIGNAL \Mux20~16_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Mux20~17_combout\ : std_logic;
SIGNAL \Mux20~18_combout\ : std_logic;
SIGNAL \Mux20~19_combout\ : std_logic;
SIGNAL \Mux20~20_combout\ : std_logic;
SIGNAL \Mux20~12_combout\ : std_logic;
SIGNAL \Mux20~21_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \sSHR_s4[28]~20_combout\ : std_logic;
SIGNAL \sSHL_s2[13]~21_combout\ : std_logic;
SIGNAL \sSHL_s2[12]~22_combout\ : std_logic;
SIGNAL \sSHL_s3[12]~5_combout\ : std_logic;
SIGNAL \sSHL_s3[4]~6_combout\ : std_logic;
SIGNAL \sSHL_s4[12]~16_combout\ : std_logic;
SIGNAL \Mux19~1_combout\ : std_logic;
SIGNAL \Mux19~2_combout\ : std_logic;
SIGNAL \Mux19~3_combout\ : std_logic;
SIGNAL \Mux19~4_combout\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Mux19~5_combout\ : std_logic;
SIGNAL \Mux19~6_combout\ : std_logic;
SIGNAL \Mux19~7_combout\ : std_logic;
SIGNAL \Mux19~8_combout\ : std_logic;
SIGNAL \Mux19~9_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux18~3_combout\ : std_logic;
SIGNAL \sSHR_s4[29]~22_combout\ : std_logic;
SIGNAL \sSHL_s2[14]~23_combout\ : std_logic;
SIGNAL \sSHL_s2[13]~24_combout\ : std_logic;
SIGNAL \sSHL_s3[13]~7_combout\ : std_logic;
SIGNAL \sSHL_s4[13]~17_combout\ : std_logic;
SIGNAL \Mux18~1_combout\ : std_logic;
SIGNAL \Mux18~2_combout\ : std_logic;
SIGNAL \Mux18~4_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Mux18~5_combout\ : std_logic;
SIGNAL \Mux18~6_combout\ : std_logic;
SIGNAL \Mux18~7_combout\ : std_logic;
SIGNAL \Mux18~8_combout\ : std_logic;
SIGNAL \Mux18~9_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux17~6_combout\ : std_logic;
SIGNAL \Mux17~7_combout\ : std_logic;
SIGNAL \sSHR_s4[30]~23_combout\ : std_logic;
SIGNAL \sSHL_s2[15]~25_combout\ : std_logic;
SIGNAL \sSHL_s2[14]~26_combout\ : std_logic;
SIGNAL \sSHL_s3[14]~8_combout\ : std_logic;
SIGNAL \sSHL_s4[14]~18_combout\ : std_logic;
SIGNAL \sSHL_s4[14]~19_combout\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \Mux17~2_combout\ : std_logic;
SIGNAL \Mux17~3_combout\ : std_logic;
SIGNAL \Mux17~4_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \Mux17~5_combout\ : std_logic;
SIGNAL \Mux17~8_combout\ : std_logic;
SIGNAL \Mux17~9_combout\ : std_logic;
SIGNAL \Mux16~6_combout\ : std_logic;
SIGNAL \Mux16~7_combout\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \sSHL_s2[16]~27_combout\ : std_logic;
SIGNAL \sSHL_s2[15]~28_combout\ : std_logic;
SIGNAL \sSHL_s3[15]~9_combout\ : std_logic;
SIGNAL \sSHL_s4[15]~20_combout\ : std_logic;
SIGNAL \sSHL_s4[15]~21_combout\ : std_logic;
SIGNAL \sSHR_s4[31]~21_combout\ : std_logic;
SIGNAL \Mux16~1_combout\ : std_logic;
SIGNAL \Mux16~2_combout\ : std_logic;
SIGNAL \Mux16~3_combout\ : std_logic;
SIGNAL \Mux16~4_combout\ : std_logic;
SIGNAL \Mux16~5_combout\ : std_logic;
SIGNAL \Mux16~8_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux16~9_combout\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Mux15~3_combout\ : std_logic;
SIGNAL \sSHL_s2[17]~29_combout\ : std_logic;
SIGNAL \sSHL_s2[16]~30_combout\ : std_logic;
SIGNAL \sSHL_s3[16]~10_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \sSHL_s4[0]~22_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux15~2_combout\ : std_logic;
SIGNAL \Mux15~4_combout\ : std_logic;
SIGNAL \Mux15~5_combout\ : std_logic;
SIGNAL \Mux15~6_combout\ : std_logic;
SIGNAL \Mux15~7_combout\ : std_logic;
SIGNAL \Mux15~8_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux15~9_combout\ : std_logic;
SIGNAL \Mux14~6_combout\ : std_logic;
SIGNAL \Mux14~7_combout\ : std_logic;
SIGNAL \Mux14~3_combout\ : std_logic;
SIGNAL \sSHL_s4[1]~24_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \sSHL_s2[18]~31_combout\ : std_logic;
SIGNAL \sSHL_s2[17]~32_combout\ : std_logic;
SIGNAL \sSHL_s3[17]~11_combout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \Mux14~4_combout\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Mux14~5_combout\ : std_logic;
SIGNAL \Mux14~8_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux14~9_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux13~6_combout\ : std_logic;
SIGNAL \Mux13~7_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Mux13~3_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \sSHL_s2[19]~33_combout\ : std_logic;
SIGNAL \sSHL_s2[18]~34_combout\ : std_logic;
SIGNAL \sSHL_s3[18]~12_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \Mux13~4_combout\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \Mux13~5_combout\ : std_logic;
SIGNAL \Mux13~8_combout\ : std_logic;
SIGNAL \Mux13~9_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \sSHL_s2[20]~35_combout\ : std_logic;
SIGNAL \sSHL_s2[19]~36_combout\ : std_logic;
SIGNAL \sSHL_s3[19]~13_combout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \Mux12~3_combout\ : std_logic;
SIGNAL \Mux12~4_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \Mux12~5_combout\ : std_logic;
SIGNAL \Mux12~6_combout\ : std_logic;
SIGNAL \Mux12~7_combout\ : std_logic;
SIGNAL \Mux12~8_combout\ : std_logic;
SIGNAL \Mux12~9_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \sSHL_s2[21]~37_combout\ : std_logic;
SIGNAL \sSHL_s2[20]~38_combout\ : std_logic;
SIGNAL \sSHL_s3[20]~14_combout\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \Mux11~3_combout\ : std_logic;
SIGNAL \Mux11~4_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \Mux11~5_combout\ : std_logic;
SIGNAL \Mux11~6_combout\ : std_logic;
SIGNAL \Mux11~7_combout\ : std_logic;
SIGNAL \Mux11~8_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~9_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~6_combout\ : std_logic;
SIGNAL \Mux10~7_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \sSHL_s2[22]~39_combout\ : std_logic;
SIGNAL \sSHL_s2[21]~40_combout\ : std_logic;
SIGNAL \sSHL_s3[21]~15_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \Mux10~4_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Add1~41\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \Mux10~5_combout\ : std_logic;
SIGNAL \Mux10~8_combout\ : std_logic;
SIGNAL \Mux10~9_combout\ : std_logic;
SIGNAL \Mux9~6_combout\ : std_logic;
SIGNAL \Mux9~7_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \sSHL_s2[23]~41_combout\ : std_logic;
SIGNAL \sSHL_s2[22]~42_combout\ : std_logic;
SIGNAL \sSHL_s3[22]~16_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \Mux9~4_combout\ : std_logic;
SIGNAL \Mux9~5_combout\ : std_logic;
SIGNAL \Mux9~8_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~9_combout\ : std_logic;
SIGNAL \Mux8~3_combout\ : std_logic;
SIGNAL \Mux8~9_combout\ : std_logic;
SIGNAL \Mux8~10_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Mux8~6_combout\ : std_logic;
SIGNAL \Mux8~4_combout\ : std_logic;
SIGNAL \sSHL_s2[24]~43_combout\ : std_logic;
SIGNAL \sSHL_s2[23]~44_combout\ : std_logic;
SIGNAL \sSHL_s3[23]~17_combout\ : std_logic;
SIGNAL \Mux8~5_combout\ : std_logic;
SIGNAL \Mux8~7_combout\ : std_logic;
SIGNAL \Add1~45\ : std_logic;
SIGNAL \Add1~46_combout\ : std_logic;
SIGNAL \Mux8~8_combout\ : std_logic;
SIGNAL \Mux8~11_combout\ : std_logic;
SIGNAL \Mux8~12_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \sSHL_s2[25]~45_combout\ : std_logic;
SIGNAL \sSHL_s2[24]~46_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~48_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \Mux7~5_combout\ : std_logic;
SIGNAL \Mux7~6_combout\ : std_logic;
SIGNAL \Mux7~7_combout\ : std_logic;
SIGNAL \Mux7~8_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add1~49\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \sSHL_s2[25]~47_combout\ : std_logic;
SIGNAL \sSHL_s2[25]~48_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Mux6~5_combout\ : std_logic;
SIGNAL \Mux6~6_combout\ : std_logic;
SIGNAL \Mux6~7_combout\ : std_logic;
SIGNAL \Mux6~8_combout\ : std_logic;
SIGNAL \Mux6~9_combout\ : std_logic;
SIGNAL \Add1~51\ : std_logic;
SIGNAL \Add1~52_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \sSHL_s2[26]~49_combout\ : std_logic;
SIGNAL \sSHL_s1[26]~1_combout\ : std_logic;
SIGNAL \sSHL_s2[26]~50_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \Mux5~5_combout\ : std_logic;
SIGNAL \Mux5~6_combout\ : std_logic;
SIGNAL \Mux5~7_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~8_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \sSHL_s2[27]~51_combout\ : std_logic;
SIGNAL \sSHL_s1[27]~2_combout\ : std_logic;
SIGNAL \sSHL_s2[27]~52_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Add1~53\ : std_logic;
SIGNAL \Add1~54_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \Mux4~5_combout\ : std_logic;
SIGNAL \Mux4~6_combout\ : std_logic;
SIGNAL \Mux4~7_combout\ : std_logic;
SIGNAL \Mux4~8_combout\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~56_combout\ : std_logic;
SIGNAL \Mux3~9_combout\ : std_logic;
SIGNAL \Mux3~10_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Mux3~6_combout\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \Mux3~7_combout\ : std_logic;
SIGNAL \sSHL_s1[28]~3_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux3~8_combout\ : std_logic;
SIGNAL \Mux3~11_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~12_combout\ : std_logic;
SIGNAL \Mux3~13_combout\ : std_logic;
SIGNAL \Mux3~14_combout\ : std_logic;
SIGNAL \Mux3~15_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Add1~57\ : std_logic;
SIGNAL \Add1~58_combout\ : std_logic;
SIGNAL \Mux2~7_combout\ : std_logic;
SIGNAL \Mux2~8_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \sSHL_s1[29]~4_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mux2~6_combout\ : std_logic;
SIGNAL \Mux2~9_combout\ : std_logic;
SIGNAL \Mux2~10_combout\ : std_logic;
SIGNAL \Mux2~11_combout\ : std_logic;
SIGNAL \Mux2~12_combout\ : std_logic;
SIGNAL \Mux2~13_combout\ : std_logic;
SIGNAL \Mux1~6_combout\ : std_logic;
SIGNAL \Mux1~7_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Mux1~8_combout\ : std_logic;
SIGNAL \Mux1~9_combout\ : std_logic;
SIGNAL \sOutput~0_combout\ : std_logic;
SIGNAL \Mux1~10_combout\ : std_logic;
SIGNAL \Add1~59\ : std_logic;
SIGNAL \Add1~60_combout\ : std_logic;
SIGNAL \Mux1~11_combout\ : std_logic;
SIGNAL \Mux1~12_combout\ : std_logic;
SIGNAL \sSHL_s5[0]~1_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \Mux1~13_combout\ : std_logic;
SIGNAL \Mux1~5_combout\ : std_logic;
SIGNAL \Mux1~15_combout\ : std_logic;
SIGNAL \Mux1~16_combout\ : std_logic;
SIGNAL \Mux1~14_combout\ : std_logic;
SIGNAL \Add1~61\ : std_logic;
SIGNAL \Add1~62_combout\ : std_logic;
SIGNAL \sOutput~1_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Mux0~5_combout\ : std_logic;
SIGNAL \Mux0~6_combout\ : std_logic;
SIGNAL \Mux0~7_combout\ : std_logic;
SIGNAL \Mux0~8_combout\ : std_logic;
SIGNAL \Mux0~9_combout\ : std_logic;
SIGNAL \Mux0~11_combout\ : std_logic;
SIGNAL \Mux0~12_combout\ : std_logic;
SIGNAL \Mux0~10_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_iA <= iA;
ww_iB <= iB;
ww_iALUFN <= iALUFN;
oOutput <= ww_oOutput;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X26_Y24_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X0_Y15_N23
\oOutput[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux31~26_combout\,
	devoe => ww_devoe,
	o => \oOutput[0]~output_o\);

-- Location: IOOBUF_X0_Y11_N23
\oOutput[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux30~15_combout\,
	devoe => ww_devoe,
	o => \oOutput[1]~output_o\);

-- Location: IOOBUF_X50_Y22_N9
\oOutput[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux29~15_combout\,
	devoe => ww_devoe,
	o => \oOutput[2]~output_o\);

-- Location: IOOBUF_X50_Y15_N23
\oOutput[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux28~24_combout\,
	devoe => ww_devoe,
	o => \oOutput[3]~output_o\);

-- Location: IOOBUF_X25_Y23_N16
\oOutput[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux27~10_combout\,
	devoe => ww_devoe,
	o => \oOutput[4]~output_o\);

-- Location: IOOBUF_X6_Y0_N2
\oOutput[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux26~8_combout\,
	devoe => ww_devoe,
	o => \oOutput[5]~output_o\);

-- Location: IOOBUF_X50_Y25_N16
\oOutput[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux25~8_combout\,
	devoe => ww_devoe,
	o => \oOutput[6]~output_o\);

-- Location: IOOBUF_X50_Y24_N2
\oOutput[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux24~14_combout\,
	devoe => ww_devoe,
	o => \oOutput[7]~output_o\);

-- Location: IOOBUF_X50_Y2_N9
\oOutput[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux23~10_combout\,
	devoe => ww_devoe,
	o => \oOutput[8]~output_o\);

-- Location: IOOBUF_X21_Y0_N2
\oOutput[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux22~9_combout\,
	devoe => ww_devoe,
	o => \oOutput[9]~output_o\);

-- Location: IOOBUF_X50_Y11_N16
\oOutput[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux21~9_combout\,
	devoe => ww_devoe,
	o => \oOutput[10]~output_o\);

-- Location: IOOBUF_X8_Y0_N16
\oOutput[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux20~21_combout\,
	devoe => ww_devoe,
	o => \oOutput[11]~output_o\);

-- Location: IOOBUF_X0_Y7_N23
\oOutput[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux19~9_combout\,
	devoe => ww_devoe,
	o => \oOutput[12]~output_o\);

-- Location: IOOBUF_X19_Y0_N16
\oOutput[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux18~9_combout\,
	devoe => ww_devoe,
	o => \oOutput[13]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\oOutput[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux17~9_combout\,
	devoe => ww_devoe,
	o => \oOutput[14]~output_o\);

-- Location: IOOBUF_X50_Y8_N23
\oOutput[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~9_combout\,
	devoe => ww_devoe,
	o => \oOutput[15]~output_o\);

-- Location: IOOBUF_X50_Y8_N9
\oOutput[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~9_combout\,
	devoe => ww_devoe,
	o => \oOutput[16]~output_o\);

-- Location: IOOBUF_X0_Y12_N23
\oOutput[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~9_combout\,
	devoe => ww_devoe,
	o => \oOutput[17]~output_o\);

-- Location: IOOBUF_X19_Y0_N30
\oOutput[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~9_combout\,
	devoe => ww_devoe,
	o => \oOutput[18]~output_o\);

-- Location: IOOBUF_X50_Y8_N16
\oOutput[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~9_combout\,
	devoe => ww_devoe,
	o => \oOutput[19]~output_o\);

-- Location: IOOBUF_X50_Y10_N9
\oOutput[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~9_combout\,
	devoe => ww_devoe,
	o => \oOutput[20]~output_o\);

-- Location: IOOBUF_X0_Y3_N23
\oOutput[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~9_combout\,
	devoe => ww_devoe,
	o => \oOutput[21]~output_o\);

-- Location: IOOBUF_X50_Y8_N2
\oOutput[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~9_combout\,
	devoe => ww_devoe,
	o => \oOutput[22]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\oOutput[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~12_combout\,
	devoe => ww_devoe,
	o => \oOutput[23]~output_o\);

-- Location: IOOBUF_X50_Y22_N2
\oOutput[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~8_combout\,
	devoe => ww_devoe,
	o => \oOutput[24]~output_o\);

-- Location: IOOBUF_X50_Y15_N16
\oOutput[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~9_combout\,
	devoe => ww_devoe,
	o => \oOutput[25]~output_o\);

-- Location: IOOBUF_X50_Y14_N16
\oOutput[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~8_combout\,
	devoe => ww_devoe,
	o => \oOutput[26]~output_o\);

-- Location: IOOBUF_X50_Y21_N24
\oOutput[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~8_combout\,
	devoe => ww_devoe,
	o => \oOutput[27]~output_o\);

-- Location: IOOBUF_X6_Y0_N30
\oOutput[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~15_combout\,
	devoe => ww_devoe,
	o => \oOutput[28]~output_o\);

-- Location: IOOBUF_X50_Y22_N23
\oOutput[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~13_combout\,
	devoe => ww_devoe,
	o => \oOutput[29]~output_o\);

-- Location: IOOBUF_X12_Y17_N2
\oOutput[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~14_combout\,
	devoe => ww_devoe,
	o => \oOutput[30]~output_o\);

-- Location: IOOBUF_X50_Y10_N2
\oOutput[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~10_combout\,
	devoe => ww_devoe,
	o => \oOutput[31]~output_o\);

-- Location: IOIBUF_X19_Y17_N15
\iALUFN[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iALUFN(4),
	o => \iALUFN[4]~input_o\);

-- Location: IOIBUF_X19_Y0_N22
\iA[31]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iA(31),
	o => \iA[31]~input_o\);

-- Location: IOIBUF_X24_Y0_N8
\iB[31]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iB(31),
	o => \iB[31]~input_o\);

-- Location: IOIBUF_X8_Y0_N22
\iB[30]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iB(30),
	o => \iB[30]~input_o\);

-- Location: IOIBUF_X12_Y17_N22
\iA[30]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iA(30),
	o => \iA[30]~input_o\);

-- Location: IOIBUF_X25_Y24_N22
\iB[29]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iB(29),
	o => \iB[29]~input_o\);

-- Location: IOIBUF_X50_Y21_N8
\iA[29]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iA(29),
	o => \iA[29]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\iB[28]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iB(28),
	o => \iB[28]~input_o\);

-- Location: IOIBUF_X25_Y22_N22
\iA[28]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iA(28),
	o => \iA[28]~input_o\);

-- Location: IOIBUF_X16_Y17_N15
\iB[27]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iB(27),
	o => \iB[27]~input_o\);

-- Location: IOIBUF_X0_Y9_N8
\iA[27]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iA(27),
	o => \iA[27]~input_o\);

-- Location: IOIBUF_X25_Y25_N15
\iA[26]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iA(26),
	o => \iA[26]~input_o\);

-- Location: IOIBUF_X8_Y17_N22
\iB[26]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iB(26),
	o => \iB[26]~input_o\);

-- Location: IOIBUF_X50_Y21_N1
\iB[25]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iB(25),
	o => \iB[25]~input_o\);

-- Location: IOIBUF_X0_Y9_N22
\iA[25]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iA(25),
	o => \iA[25]~input_o\);

-- Location: IOIBUF_X14_Y17_N22
\iB[24]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iB(24),
	o => \iB[24]~input_o\);

-- Location: IOIBUF_X50_Y16_N22
\iA[24]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iA(24),
	o => \iA[24]~input_o\);

-- Location: IOIBUF_X0_Y8_N15
\iB[23]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iB(23),
	o => \iB[23]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\iA[23]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iA(23),
	o => \iA[23]~input_o\);

-- Location: IOIBUF_X0_Y11_N15
\iA[22]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iA(22),
	o => \iA[22]~input_o\);

-- Location: IOIBUF_X16_Y0_N29
\iB[22]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iB(22),
	o => \iB[22]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\iB[21]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iB(21),
	o => \iB[21]~input_o\);

-- Location: IOIBUF_X14_Y0_N22
\iA[21]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iA(21),
	o => \iA[21]~input_o\);

-- Location: IOIBUF_X0_Y9_N15
\iB[20]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iB(20),
	o => \iB[20]~input_o\);

-- Location: IOIBUF_X0_Y9_N1
\iA[20]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iA(20),
	o => \iA[20]~input_o\);

-- Location: IOIBUF_X10_Y17_N15
\iA[19]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iA(19),
	o => \iA[19]~input_o\);

-- Location: IOIBUF_X8_Y17_N15
\iB[19]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iB(19),
	o => \iB[19]~input_o\);

-- Location: IOIBUF_X6_Y0_N8
\iA[18]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iA(18),
	o => \iA[18]~input_o\);

-- Location: IOIBUF_X50_Y10_N22
\iB[18]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iB(18),
	o => \iB[18]~input_o\);

-- Location: IOIBUF_X50_Y10_N15
\iB[17]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iB(17),
	o => \iB[17]~input_o\);

-- Location: IOIBUF_X0_Y7_N8
\iA[17]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iA(17),
	o => \iA[17]~input_o\);

-- Location: IOIBUF_X12_Y17_N15
\iA[16]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iA(16),
	o => \iA[16]~input_o\);

-- Location: IOIBUF_X16_Y0_N15
\iB[16]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iB(16),
	o => \iB[16]~input_o\);

-- Location: IOIBUF_X50_Y11_N8
\iB[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iB(15),
	o => \iB[15]~input_o\);

-- Location: IOIBUF_X0_Y12_N15
\iA[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iA(15),
	o => \iA[15]~input_o\);

-- Location: IOIBUF_X50_Y11_N1
\iB[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iB(14),
	o => \iB[14]~input_o\);

-- Location: IOIBUF_X8_Y0_N29
\iA[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iA(14),
	o => \iA[14]~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\iA[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iA(13),
	o => \iA[13]~input_o\);

-- Location: IOIBUF_X50_Y14_N22
\iB[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iB(13),
	o => \iB[13]~input_o\);

-- Location: IOIBUF_X6_Y0_N15
\iA[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iA(12),
	o => \iA[12]~input_o\);

-- Location: IOIBUF_X21_Y0_N29
\iB[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iB(12),
	o => \iB[12]~input_o\);

-- Location: IOIBUF_X12_Y17_N29
\iA[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iA(11),
	o => \iA[11]~input_o\);

-- Location: IOIBUF_X14_Y0_N15
\iB[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iB(11),
	o => \iB[11]~input_o\);

-- Location: IOIBUF_X50_Y11_N23
\iB[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iB(10),
	o => \iB[10]~input_o\);

-- Location: IOIBUF_X16_Y17_N22
\iA[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iA(10),
	o => \iA[10]~input_o\);

-- Location: IOIBUF_X19_Y17_N22
\iA[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iA(9),
	o => \iA[9]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\iB[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iB(9),
	o => \iB[9]~input_o\);

-- Location: IOIBUF_X8_Y0_N8
\iA[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iA(8),
	o => \iA[8]~input_o\);

-- Location: IOIBUF_X25_Y25_N22
\iB[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iB(8),
	o => \iB[8]~input_o\);

-- Location: IOIBUF_X10_Y17_N8
\iA[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iA(7),
	o => \iA[7]~input_o\);

-- Location: IOIBUF_X50_Y22_N15
\iB[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iB(7),
	o => \iB[7]~input_o\);

-- Location: IOIBUF_X14_Y17_N1
\iA[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iA(6),
	o => \iA[6]~input_o\);

-- Location: IOIBUF_X50_Y26_N15
\iB[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iB(6),
	o => \iB[6]~input_o\);

-- Location: IOIBUF_X24_Y0_N29
\iA[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iA(5),
	o => \iA[5]~input_o\);

-- Location: IOIBUF_X50_Y16_N15
\iB[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iB(5),
	o => \iB[5]~input_o\);

-- Location: IOIBUF_X0_Y8_N22
\iA[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iA(4),
	o => \iA[4]~input_o\);

-- Location: IOIBUF_X21_Y17_N29
\iB[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iB(4),
	o => \iB[4]~input_o\);

-- Location: IOIBUF_X16_Y17_N8
\iB[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iB(3),
	o => \iB[3]~input_o\);

-- Location: IOIBUF_X25_Y22_N15
\iA[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iA(3),
	o => \iA[3]~input_o\);

-- Location: IOIBUF_X19_Y17_N1
\iB[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iB(2),
	o => \iB[2]~input_o\);

-- Location: IOIBUF_X25_Y23_N22
\iA[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iA(2),
	o => \iA[2]~input_o\);

-- Location: IOIBUF_X16_Y17_N1
\iA[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iA(1),
	o => \iA[1]~input_o\);

-- Location: IOIBUF_X10_Y17_N1
\iB[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iB(1),
	o => \iB[1]~input_o\);

-- Location: IOIBUF_X12_Y17_N8
\iB[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iB(0),
	o => \iB[0]~input_o\);

-- Location: IOIBUF_X19_Y17_N8
\iA[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iA(0),
	o => \iA[0]~input_o\);

-- Location: LCCOMB_X26_Y12_N0
\LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((\iB[0]~input_o\ & !\iA[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iB[0]~input_o\,
	datab => \iA[0]~input_o\,
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X26_Y12_N2
\LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((\iA[1]~input_o\ & ((!\LessThan0~1_cout\) # (!\iB[1]~input_o\))) # (!\iA[1]~input_o\ & (!\iB[1]~input_o\ & !\LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iA[1]~input_o\,
	datab => \iB[1]~input_o\,
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X26_Y12_N4
\LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((\iB[2]~input_o\ & ((!\LessThan0~3_cout\) # (!\iA[2]~input_o\))) # (!\iB[2]~input_o\ & (!\iA[2]~input_o\ & !\LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iB[2]~input_o\,
	datab => \iA[2]~input_o\,
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X26_Y12_N6
\LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((\iB[3]~input_o\ & (\iA[3]~input_o\ & !\LessThan0~5_cout\)) # (!\iB[3]~input_o\ & ((\iA[3]~input_o\) # (!\LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iB[3]~input_o\,
	datab => \iA[3]~input_o\,
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X26_Y12_N8
\LessThan0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((\iA[4]~input_o\ & (\iB[4]~input_o\ & !\LessThan0~7_cout\)) # (!\iA[4]~input_o\ & ((\iB[4]~input_o\) # (!\LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iA[4]~input_o\,
	datab => \iB[4]~input_o\,
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X26_Y12_N10
\LessThan0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((\iA[5]~input_o\ & ((!\LessThan0~9_cout\) # (!\iB[5]~input_o\))) # (!\iA[5]~input_o\ & (!\iB[5]~input_o\ & !\LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iA[5]~input_o\,
	datab => \iB[5]~input_o\,
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X26_Y12_N12
\LessThan0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((\iA[6]~input_o\ & (\iB[6]~input_o\ & !\LessThan0~11_cout\)) # (!\iA[6]~input_o\ & ((\iB[6]~input_o\) # (!\LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iA[6]~input_o\,
	datab => \iB[6]~input_o\,
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X26_Y12_N14
\LessThan0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~15_cout\ = CARRY((\iA[7]~input_o\ & ((!\LessThan0~13_cout\) # (!\iB[7]~input_o\))) # (!\iA[7]~input_o\ & (!\iB[7]~input_o\ & !\LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iA[7]~input_o\,
	datab => \iB[7]~input_o\,
	datad => VCC,
	cin => \LessThan0~13_cout\,
	cout => \LessThan0~15_cout\);

-- Location: LCCOMB_X26_Y12_N16
\LessThan0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~17_cout\ = CARRY((\iA[8]~input_o\ & (\iB[8]~input_o\ & !\LessThan0~15_cout\)) # (!\iA[8]~input_o\ & ((\iB[8]~input_o\) # (!\LessThan0~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iA[8]~input_o\,
	datab => \iB[8]~input_o\,
	datad => VCC,
	cin => \LessThan0~15_cout\,
	cout => \LessThan0~17_cout\);

-- Location: LCCOMB_X26_Y12_N18
\LessThan0~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~19_cout\ = CARRY((\iA[9]~input_o\ & ((!\LessThan0~17_cout\) # (!\iB[9]~input_o\))) # (!\iA[9]~input_o\ & (!\iB[9]~input_o\ & !\LessThan0~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iA[9]~input_o\,
	datab => \iB[9]~input_o\,
	datad => VCC,
	cin => \LessThan0~17_cout\,
	cout => \LessThan0~19_cout\);

-- Location: LCCOMB_X26_Y12_N20
\LessThan0~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~21_cout\ = CARRY((\iB[10]~input_o\ & ((!\LessThan0~19_cout\) # (!\iA[10]~input_o\))) # (!\iB[10]~input_o\ & (!\iA[10]~input_o\ & !\LessThan0~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iB[10]~input_o\,
	datab => \iA[10]~input_o\,
	datad => VCC,
	cin => \LessThan0~19_cout\,
	cout => \LessThan0~21_cout\);

-- Location: LCCOMB_X26_Y12_N22
\LessThan0~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~23_cout\ = CARRY((\iA[11]~input_o\ & ((!\LessThan0~21_cout\) # (!\iB[11]~input_o\))) # (!\iA[11]~input_o\ & (!\iB[11]~input_o\ & !\LessThan0~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iA[11]~input_o\,
	datab => \iB[11]~input_o\,
	datad => VCC,
	cin => \LessThan0~21_cout\,
	cout => \LessThan0~23_cout\);

-- Location: LCCOMB_X26_Y12_N24
\LessThan0~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~25_cout\ = CARRY((\iA[12]~input_o\ & (\iB[12]~input_o\ & !\LessThan0~23_cout\)) # (!\iA[12]~input_o\ & ((\iB[12]~input_o\) # (!\LessThan0~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iA[12]~input_o\,
	datab => \iB[12]~input_o\,
	datad => VCC,
	cin => \LessThan0~23_cout\,
	cout => \LessThan0~25_cout\);

-- Location: LCCOMB_X26_Y12_N26
\LessThan0~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~27_cout\ = CARRY((\iA[13]~input_o\ & ((!\LessThan0~25_cout\) # (!\iB[13]~input_o\))) # (!\iA[13]~input_o\ & (!\iB[13]~input_o\ & !\LessThan0~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iA[13]~input_o\,
	datab => \iB[13]~input_o\,
	datad => VCC,
	cin => \LessThan0~25_cout\,
	cout => \LessThan0~27_cout\);

-- Location: LCCOMB_X26_Y12_N28
\LessThan0~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~29_cout\ = CARRY((\iB[14]~input_o\ & ((!\LessThan0~27_cout\) # (!\iA[14]~input_o\))) # (!\iB[14]~input_o\ & (!\iA[14]~input_o\ & !\LessThan0~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iB[14]~input_o\,
	datab => \iA[14]~input_o\,
	datad => VCC,
	cin => \LessThan0~27_cout\,
	cout => \LessThan0~29_cout\);

-- Location: LCCOMB_X26_Y12_N30
\LessThan0~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~31_cout\ = CARRY((\iB[15]~input_o\ & (\iA[15]~input_o\ & !\LessThan0~29_cout\)) # (!\iB[15]~input_o\ & ((\iA[15]~input_o\) # (!\LessThan0~29_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iB[15]~input_o\,
	datab => \iA[15]~input_o\,
	datad => VCC,
	cin => \LessThan0~29_cout\,
	cout => \LessThan0~31_cout\);

-- Location: LCCOMB_X26_Y11_N0
\LessThan0~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~33_cout\ = CARRY((\iA[16]~input_o\ & (\iB[16]~input_o\ & !\LessThan0~31_cout\)) # (!\iA[16]~input_o\ & ((\iB[16]~input_o\) # (!\LessThan0~31_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iA[16]~input_o\,
	datab => \iB[16]~input_o\,
	datad => VCC,
	cin => \LessThan0~31_cout\,
	cout => \LessThan0~33_cout\);

-- Location: LCCOMB_X26_Y11_N2
\LessThan0~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~35_cout\ = CARRY((\iB[17]~input_o\ & (\iA[17]~input_o\ & !\LessThan0~33_cout\)) # (!\iB[17]~input_o\ & ((\iA[17]~input_o\) # (!\LessThan0~33_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iB[17]~input_o\,
	datab => \iA[17]~input_o\,
	datad => VCC,
	cin => \LessThan0~33_cout\,
	cout => \LessThan0~35_cout\);

-- Location: LCCOMB_X26_Y11_N4
\LessThan0~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~37_cout\ = CARRY((\iA[18]~input_o\ & (\iB[18]~input_o\ & !\LessThan0~35_cout\)) # (!\iA[18]~input_o\ & ((\iB[18]~input_o\) # (!\LessThan0~35_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iA[18]~input_o\,
	datab => \iB[18]~input_o\,
	datad => VCC,
	cin => \LessThan0~35_cout\,
	cout => \LessThan0~37_cout\);

-- Location: LCCOMB_X26_Y11_N6
\LessThan0~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~39_cout\ = CARRY((\iA[19]~input_o\ & ((!\LessThan0~37_cout\) # (!\iB[19]~input_o\))) # (!\iA[19]~input_o\ & (!\iB[19]~input_o\ & !\LessThan0~37_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iA[19]~input_o\,
	datab => \iB[19]~input_o\,
	datad => VCC,
	cin => \LessThan0~37_cout\,
	cout => \LessThan0~39_cout\);

-- Location: LCCOMB_X26_Y11_N8
\LessThan0~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~41_cout\ = CARRY((\iB[20]~input_o\ & ((!\LessThan0~39_cout\) # (!\iA[20]~input_o\))) # (!\iB[20]~input_o\ & (!\iA[20]~input_o\ & !\LessThan0~39_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iB[20]~input_o\,
	datab => \iA[20]~input_o\,
	datad => VCC,
	cin => \LessThan0~39_cout\,
	cout => \LessThan0~41_cout\);

-- Location: LCCOMB_X26_Y11_N10
\LessThan0~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~43_cout\ = CARRY((\iB[21]~input_o\ & (\iA[21]~input_o\ & !\LessThan0~41_cout\)) # (!\iB[21]~input_o\ & ((\iA[21]~input_o\) # (!\LessThan0~41_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iB[21]~input_o\,
	datab => \iA[21]~input_o\,
	datad => VCC,
	cin => \LessThan0~41_cout\,
	cout => \LessThan0~43_cout\);

-- Location: LCCOMB_X26_Y11_N12
\LessThan0~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~45_cout\ = CARRY((\iA[22]~input_o\ & (\iB[22]~input_o\ & !\LessThan0~43_cout\)) # (!\iA[22]~input_o\ & ((\iB[22]~input_o\) # (!\LessThan0~43_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iA[22]~input_o\,
	datab => \iB[22]~input_o\,
	datad => VCC,
	cin => \LessThan0~43_cout\,
	cout => \LessThan0~45_cout\);

-- Location: LCCOMB_X26_Y11_N14
\LessThan0~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~47_cout\ = CARRY((\iB[23]~input_o\ & (\iA[23]~input_o\ & !\LessThan0~45_cout\)) # (!\iB[23]~input_o\ & ((\iA[23]~input_o\) # (!\LessThan0~45_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iB[23]~input_o\,
	datab => \iA[23]~input_o\,
	datad => VCC,
	cin => \LessThan0~45_cout\,
	cout => \LessThan0~47_cout\);

-- Location: LCCOMB_X26_Y11_N16
\LessThan0~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~49_cout\ = CARRY((\iB[24]~input_o\ & ((!\LessThan0~47_cout\) # (!\iA[24]~input_o\))) # (!\iB[24]~input_o\ & (!\iA[24]~input_o\ & !\LessThan0~47_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iB[24]~input_o\,
	datab => \iA[24]~input_o\,
	datad => VCC,
	cin => \LessThan0~47_cout\,
	cout => \LessThan0~49_cout\);

-- Location: LCCOMB_X26_Y11_N18
\LessThan0~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~51_cout\ = CARRY((\iB[25]~input_o\ & (\iA[25]~input_o\ & !\LessThan0~49_cout\)) # (!\iB[25]~input_o\ & ((\iA[25]~input_o\) # (!\LessThan0~49_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iB[25]~input_o\,
	datab => \iA[25]~input_o\,
	datad => VCC,
	cin => \LessThan0~49_cout\,
	cout => \LessThan0~51_cout\);

-- Location: LCCOMB_X26_Y11_N20
\LessThan0~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~53_cout\ = CARRY((\iA[26]~input_o\ & (\iB[26]~input_o\ & !\LessThan0~51_cout\)) # (!\iA[26]~input_o\ & ((\iB[26]~input_o\) # (!\LessThan0~51_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iA[26]~input_o\,
	datab => \iB[26]~input_o\,
	datad => VCC,
	cin => \LessThan0~51_cout\,
	cout => \LessThan0~53_cout\);

-- Location: LCCOMB_X26_Y11_N22
\LessThan0~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~55_cout\ = CARRY((\iB[27]~input_o\ & (\iA[27]~input_o\ & !\LessThan0~53_cout\)) # (!\iB[27]~input_o\ & ((\iA[27]~input_o\) # (!\LessThan0~53_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iB[27]~input_o\,
	datab => \iA[27]~input_o\,
	datad => VCC,
	cin => \LessThan0~53_cout\,
	cout => \LessThan0~55_cout\);

-- Location: LCCOMB_X26_Y11_N24
\LessThan0~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~57_cout\ = CARRY((\iB[28]~input_o\ & ((!\LessThan0~55_cout\) # (!\iA[28]~input_o\))) # (!\iB[28]~input_o\ & (!\iA[28]~input_o\ & !\LessThan0~55_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iB[28]~input_o\,
	datab => \iA[28]~input_o\,
	datad => VCC,
	cin => \LessThan0~55_cout\,
	cout => \LessThan0~57_cout\);

-- Location: LCCOMB_X26_Y11_N26
\LessThan0~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~59_cout\ = CARRY((\iB[29]~input_o\ & (\iA[29]~input_o\ & !\LessThan0~57_cout\)) # (!\iB[29]~input_o\ & ((\iA[29]~input_o\) # (!\LessThan0~57_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iB[29]~input_o\,
	datab => \iA[29]~input_o\,
	datad => VCC,
	cin => \LessThan0~57_cout\,
	cout => \LessThan0~59_cout\);

-- Location: LCCOMB_X26_Y11_N28
\LessThan0~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~61_cout\ = CARRY((\iB[30]~input_o\ & ((!\LessThan0~59_cout\) # (!\iA[30]~input_o\))) # (!\iB[30]~input_o\ & (!\iA[30]~input_o\ & !\LessThan0~59_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iB[30]~input_o\,
	datab => \iA[30]~input_o\,
	datad => VCC,
	cin => \LessThan0~59_cout\,
	cout => \LessThan0~61_cout\);

-- Location: LCCOMB_X26_Y11_N30
\LessThan0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~62_combout\ = (\iA[31]~input_o\ & (\LessThan0~61_cout\ & \iB[31]~input_o\)) # (!\iA[31]~input_o\ & ((\LessThan0~61_cout\) # (\iB[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iA[31]~input_o\,
	datad => \iB[31]~input_o\,
	cin => \LessThan0~61_cout\,
	combout => \LessThan0~62_combout\);

-- Location: IOIBUF_X14_Y17_N29
\iALUFN[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iALUFN(1),
	o => \iALUFN[1]~input_o\);

-- Location: IOIBUF_X21_Y0_N22
\iALUFN[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iALUFN(2),
	o => \iALUFN[2]~input_o\);

-- Location: LCCOMB_X24_Y10_N12
\Equal0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~14_combout\ = \iA[22]~input_o\ $ (\iB[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \iA[22]~input_o\,
	datad => \iB[22]~input_o\,
	combout => \Equal0~14_combout\);

-- Location: LCCOMB_X24_Y10_N18
\Equal0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~13_combout\ = \iA[21]~input_o\ $ (\iB[21]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \iA[21]~input_o\,
	datad => \iB[21]~input_o\,
	combout => \Equal0~13_combout\);

-- Location: LCCOMB_X21_Y12_N16
\Equal0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~15_combout\ = \iB[23]~input_o\ $ (\iA[23]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \iB[23]~input_o\,
	datad => \iA[23]~input_o\,
	combout => \Equal0~15_combout\);

-- Location: LCCOMB_X24_Y10_N24
\Equal0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~12_combout\ = \iA[20]~input_o\ $ (\iB[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iA[20]~input_o\,
	datad => \iB[20]~input_o\,
	combout => \Equal0~12_combout\);

-- Location: LCCOMB_X24_Y10_N14
\Mux31~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~15_combout\ = (!\Equal0~14_combout\ & (!\Equal0~13_combout\ & (!\Equal0~15_combout\ & !\Equal0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~14_combout\,
	datab => \Equal0~13_combout\,
	datac => \Equal0~15_combout\,
	datad => \Equal0~12_combout\,
	combout => \Mux31~15_combout\);

-- Location: LCCOMB_X29_Y11_N16
\Equal0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~16_combout\ = \iA[24]~input_o\ $ (\iB[24]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iA[24]~input_o\,
	datac => \iB[24]~input_o\,
	combout => \Equal0~16_combout\);

-- Location: LCCOMB_X26_Y14_N0
\Mux31~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~16_combout\ = (\iA[27]~input_o\ & (\iB[27]~input_o\ & (\iB[26]~input_o\ $ (!\iA[26]~input_o\)))) # (!\iA[27]~input_o\ & (!\iB[27]~input_o\ & (\iB[26]~input_o\ $ (!\iA[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[27]~input_o\,
	datab => \iB[26]~input_o\,
	datac => \iB[27]~input_o\,
	datad => \iA[26]~input_o\,
	combout => \Mux31~16_combout\);

-- Location: LCCOMB_X28_Y14_N16
\Mux31~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~17_combout\ = (!\Equal0~16_combout\ & (\Mux31~16_combout\ & (\iA[25]~input_o\ $ (!\iB[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[25]~input_o\,
	datab => \Equal0~16_combout\,
	datac => \iB[25]~input_o\,
	datad => \Mux31~16_combout\,
	combout => \Mux31~17_combout\);

-- Location: LCCOMB_X28_Y12_N16
\Equal0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~18_combout\ = \iB[29]~input_o\ $ (\iA[29]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[29]~input_o\,
	datad => \iA[29]~input_o\,
	combout => \Equal0~18_combout\);

-- Location: LCCOMB_X24_Y14_N24
\Equal0~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~19_combout\ = \iA[30]~input_o\ $ (\iB[30]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iA[30]~input_o\,
	datac => \iB[30]~input_o\,
	combout => \Equal0~19_combout\);

-- Location: LCCOMB_X26_Y13_N16
\Equal0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~17_combout\ = \iB[28]~input_o\ $ (\iA[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iB[28]~input_o\,
	datac => \iA[28]~input_o\,
	combout => \Equal0~17_combout\);

-- Location: LCCOMB_X24_Y14_N2
\Equal0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~20_combout\ = \iA[31]~input_o\ $ (\iB[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \iA[31]~input_o\,
	datad => \iB[31]~input_o\,
	combout => \Equal0~20_combout\);

-- Location: LCCOMB_X24_Y14_N20
\Mux31~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~18_combout\ = (!\Equal0~18_combout\ & (!\Equal0~19_combout\ & (!\Equal0~17_combout\ & !\Equal0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~18_combout\,
	datab => \Equal0~19_combout\,
	datac => \Equal0~17_combout\,
	datad => \Equal0~20_combout\,
	combout => \Mux31~18_combout\);

-- Location: LCCOMB_X26_Y9_N10
\Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = \iB[18]~input_o\ $ (\iA[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \iB[18]~input_o\,
	datad => \iA[18]~input_o\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X26_Y9_N24
\Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = \iB[16]~input_o\ $ (\iA[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[16]~input_o\,
	datac => \iA[16]~input_o\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X26_Y10_N18
\Equal0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~11_combout\ = \iB[19]~input_o\ $ (\iA[19]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \iB[19]~input_o\,
	datad => \iA[19]~input_o\,
	combout => \Equal0~11_combout\);

-- Location: LCCOMB_X24_Y12_N0
\Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = \iA[17]~input_o\ $ (\iB[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \iA[17]~input_o\,
	datad => \iB[17]~input_o\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X26_Y9_N4
\Mux31~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~14_combout\ = (!\Equal0~10_combout\ & (!\Equal0~8_combout\ & (!\Equal0~11_combout\ & !\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datab => \Equal0~8_combout\,
	datac => \Equal0~11_combout\,
	datad => \Equal0~9_combout\,
	combout => \Mux31~14_combout\);

-- Location: LCCOMB_X25_Y12_N10
\Mux31~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~19_combout\ = (\Mux31~15_combout\ & (\Mux31~17_combout\ & (\Mux31~18_combout\ & \Mux31~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~15_combout\,
	datab => \Mux31~17_combout\,
	datac => \Mux31~18_combout\,
	datad => \Mux31~14_combout\,
	combout => \Mux31~19_combout\);

-- Location: LCCOMB_X22_Y11_N0
\LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~1_cout\ = CARRY((\iA[0]~input_o\ & !\iB[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iA[0]~input_o\,
	datab => \iB[0]~input_o\,
	datad => VCC,
	cout => \LessThan1~1_cout\);

-- Location: LCCOMB_X22_Y11_N2
\LessThan1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~3_cout\ = CARRY((\iA[1]~input_o\ & (\iB[1]~input_o\ & !\LessThan1~1_cout\)) # (!\iA[1]~input_o\ & ((\iB[1]~input_o\) # (!\LessThan1~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iA[1]~input_o\,
	datab => \iB[1]~input_o\,
	datad => VCC,
	cin => \LessThan1~1_cout\,
	cout => \LessThan1~3_cout\);

-- Location: LCCOMB_X22_Y11_N4
\LessThan1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~5_cout\ = CARRY((\iB[2]~input_o\ & (\iA[2]~input_o\ & !\LessThan1~3_cout\)) # (!\iB[2]~input_o\ & ((\iA[2]~input_o\) # (!\LessThan1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iB[2]~input_o\,
	datab => \iA[2]~input_o\,
	datad => VCC,
	cin => \LessThan1~3_cout\,
	cout => \LessThan1~5_cout\);

-- Location: LCCOMB_X22_Y11_N6
\LessThan1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~7_cout\ = CARRY((\iA[3]~input_o\ & (\iB[3]~input_o\ & !\LessThan1~5_cout\)) # (!\iA[3]~input_o\ & ((\iB[3]~input_o\) # (!\LessThan1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iA[3]~input_o\,
	datab => \iB[3]~input_o\,
	datad => VCC,
	cin => \LessThan1~5_cout\,
	cout => \LessThan1~7_cout\);

-- Location: LCCOMB_X22_Y11_N8
\LessThan1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~9_cout\ = CARRY((\iA[4]~input_o\ & ((!\LessThan1~7_cout\) # (!\iB[4]~input_o\))) # (!\iA[4]~input_o\ & (!\iB[4]~input_o\ & !\LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iA[4]~input_o\,
	datab => \iB[4]~input_o\,
	datad => VCC,
	cin => \LessThan1~7_cout\,
	cout => \LessThan1~9_cout\);

-- Location: LCCOMB_X22_Y11_N10
\LessThan1~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~11_cout\ = CARRY((\iA[5]~input_o\ & (\iB[5]~input_o\ & !\LessThan1~9_cout\)) # (!\iA[5]~input_o\ & ((\iB[5]~input_o\) # (!\LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iA[5]~input_o\,
	datab => \iB[5]~input_o\,
	datad => VCC,
	cin => \LessThan1~9_cout\,
	cout => \LessThan1~11_cout\);

-- Location: LCCOMB_X22_Y11_N12
\LessThan1~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~13_cout\ = CARRY((\iB[6]~input_o\ & (\iA[6]~input_o\ & !\LessThan1~11_cout\)) # (!\iB[6]~input_o\ & ((\iA[6]~input_o\) # (!\LessThan1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iB[6]~input_o\,
	datab => \iA[6]~input_o\,
	datad => VCC,
	cin => \LessThan1~11_cout\,
	cout => \LessThan1~13_cout\);

-- Location: LCCOMB_X22_Y11_N14
\LessThan1~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~15_cout\ = CARRY((\iB[7]~input_o\ & ((!\LessThan1~13_cout\) # (!\iA[7]~input_o\))) # (!\iB[7]~input_o\ & (!\iA[7]~input_o\ & !\LessThan1~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iB[7]~input_o\,
	datab => \iA[7]~input_o\,
	datad => VCC,
	cin => \LessThan1~13_cout\,
	cout => \LessThan1~15_cout\);

-- Location: LCCOMB_X22_Y11_N16
\LessThan1~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~17_cout\ = CARRY((\iA[8]~input_o\ & ((!\LessThan1~15_cout\) # (!\iB[8]~input_o\))) # (!\iA[8]~input_o\ & (!\iB[8]~input_o\ & !\LessThan1~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iA[8]~input_o\,
	datab => \iB[8]~input_o\,
	datad => VCC,
	cin => \LessThan1~15_cout\,
	cout => \LessThan1~17_cout\);

-- Location: LCCOMB_X22_Y11_N18
\LessThan1~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~19_cout\ = CARRY((\iA[9]~input_o\ & (\iB[9]~input_o\ & !\LessThan1~17_cout\)) # (!\iA[9]~input_o\ & ((\iB[9]~input_o\) # (!\LessThan1~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iA[9]~input_o\,
	datab => \iB[9]~input_o\,
	datad => VCC,
	cin => \LessThan1~17_cout\,
	cout => \LessThan1~19_cout\);

-- Location: LCCOMB_X22_Y11_N20
\LessThan1~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~21_cout\ = CARRY((\iB[10]~input_o\ & (\iA[10]~input_o\ & !\LessThan1~19_cout\)) # (!\iB[10]~input_o\ & ((\iA[10]~input_o\) # (!\LessThan1~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iB[10]~input_o\,
	datab => \iA[10]~input_o\,
	datad => VCC,
	cin => \LessThan1~19_cout\,
	cout => \LessThan1~21_cout\);

-- Location: LCCOMB_X22_Y11_N22
\LessThan1~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~23_cout\ = CARRY((\iA[11]~input_o\ & (\iB[11]~input_o\ & !\LessThan1~21_cout\)) # (!\iA[11]~input_o\ & ((\iB[11]~input_o\) # (!\LessThan1~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iA[11]~input_o\,
	datab => \iB[11]~input_o\,
	datad => VCC,
	cin => \LessThan1~21_cout\,
	cout => \LessThan1~23_cout\);

-- Location: LCCOMB_X22_Y11_N24
\LessThan1~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~25_cout\ = CARRY((\iA[12]~input_o\ & ((!\LessThan1~23_cout\) # (!\iB[12]~input_o\))) # (!\iA[12]~input_o\ & (!\iB[12]~input_o\ & !\LessThan1~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iA[12]~input_o\,
	datab => \iB[12]~input_o\,
	datad => VCC,
	cin => \LessThan1~23_cout\,
	cout => \LessThan1~25_cout\);

-- Location: LCCOMB_X22_Y11_N26
\LessThan1~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~27_cout\ = CARRY((\iB[13]~input_o\ & ((!\LessThan1~25_cout\) # (!\iA[13]~input_o\))) # (!\iB[13]~input_o\ & (!\iA[13]~input_o\ & !\LessThan1~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iB[13]~input_o\,
	datab => \iA[13]~input_o\,
	datad => VCC,
	cin => \LessThan1~25_cout\,
	cout => \LessThan1~27_cout\);

-- Location: LCCOMB_X22_Y11_N28
\LessThan1~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~29_cout\ = CARRY((\iB[14]~input_o\ & (\iA[14]~input_o\ & !\LessThan1~27_cout\)) # (!\iB[14]~input_o\ & ((\iA[14]~input_o\) # (!\LessThan1~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iB[14]~input_o\,
	datab => \iA[14]~input_o\,
	datad => VCC,
	cin => \LessThan1~27_cout\,
	cout => \LessThan1~29_cout\);

-- Location: LCCOMB_X22_Y11_N30
\LessThan1~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~31_cout\ = CARRY((\iB[15]~input_o\ & ((!\LessThan1~29_cout\) # (!\iA[15]~input_o\))) # (!\iB[15]~input_o\ & (!\iA[15]~input_o\ & !\LessThan1~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iB[15]~input_o\,
	datab => \iA[15]~input_o\,
	datad => VCC,
	cin => \LessThan1~29_cout\,
	cout => \LessThan1~31_cout\);

-- Location: LCCOMB_X22_Y10_N0
\LessThan1~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~33_cout\ = CARRY((\iB[16]~input_o\ & (\iA[16]~input_o\ & !\LessThan1~31_cout\)) # (!\iB[16]~input_o\ & ((\iA[16]~input_o\) # (!\LessThan1~31_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iB[16]~input_o\,
	datab => \iA[16]~input_o\,
	datad => VCC,
	cin => \LessThan1~31_cout\,
	cout => \LessThan1~33_cout\);

-- Location: LCCOMB_X22_Y10_N2
\LessThan1~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~35_cout\ = CARRY((\iB[17]~input_o\ & ((!\LessThan1~33_cout\) # (!\iA[17]~input_o\))) # (!\iB[17]~input_o\ & (!\iA[17]~input_o\ & !\LessThan1~33_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iB[17]~input_o\,
	datab => \iA[17]~input_o\,
	datad => VCC,
	cin => \LessThan1~33_cout\,
	cout => \LessThan1~35_cout\);

-- Location: LCCOMB_X22_Y10_N4
\LessThan1~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~37_cout\ = CARRY((\iB[18]~input_o\ & (\iA[18]~input_o\ & !\LessThan1~35_cout\)) # (!\iB[18]~input_o\ & ((\iA[18]~input_o\) # (!\LessThan1~35_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iB[18]~input_o\,
	datab => \iA[18]~input_o\,
	datad => VCC,
	cin => \LessThan1~35_cout\,
	cout => \LessThan1~37_cout\);

-- Location: LCCOMB_X22_Y10_N6
\LessThan1~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~39_cout\ = CARRY((\iB[19]~input_o\ & ((!\LessThan1~37_cout\) # (!\iA[19]~input_o\))) # (!\iB[19]~input_o\ & (!\iA[19]~input_o\ & !\LessThan1~37_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iB[19]~input_o\,
	datab => \iA[19]~input_o\,
	datad => VCC,
	cin => \LessThan1~37_cout\,
	cout => \LessThan1~39_cout\);

-- Location: LCCOMB_X22_Y10_N8
\LessThan1~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~41_cout\ = CARRY((\iB[20]~input_o\ & (\iA[20]~input_o\ & !\LessThan1~39_cout\)) # (!\iB[20]~input_o\ & ((\iA[20]~input_o\) # (!\LessThan1~39_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iB[20]~input_o\,
	datab => \iA[20]~input_o\,
	datad => VCC,
	cin => \LessThan1~39_cout\,
	cout => \LessThan1~41_cout\);

-- Location: LCCOMB_X22_Y10_N10
\LessThan1~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~43_cout\ = CARRY((\iA[21]~input_o\ & (\iB[21]~input_o\ & !\LessThan1~41_cout\)) # (!\iA[21]~input_o\ & ((\iB[21]~input_o\) # (!\LessThan1~41_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iA[21]~input_o\,
	datab => \iB[21]~input_o\,
	datad => VCC,
	cin => \LessThan1~41_cout\,
	cout => \LessThan1~43_cout\);

-- Location: LCCOMB_X22_Y10_N12
\LessThan1~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~45_cout\ = CARRY((\iA[22]~input_o\ & ((!\LessThan1~43_cout\) # (!\iB[22]~input_o\))) # (!\iA[22]~input_o\ & (!\iB[22]~input_o\ & !\LessThan1~43_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iA[22]~input_o\,
	datab => \iB[22]~input_o\,
	datad => VCC,
	cin => \LessThan1~43_cout\,
	cout => \LessThan1~45_cout\);

-- Location: LCCOMB_X22_Y10_N14
\LessThan1~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~47_cout\ = CARRY((\iA[23]~input_o\ & (\iB[23]~input_o\ & !\LessThan1~45_cout\)) # (!\iA[23]~input_o\ & ((\iB[23]~input_o\) # (!\LessThan1~45_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iA[23]~input_o\,
	datab => \iB[23]~input_o\,
	datad => VCC,
	cin => \LessThan1~45_cout\,
	cout => \LessThan1~47_cout\);

-- Location: LCCOMB_X22_Y10_N16
\LessThan1~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~49_cout\ = CARRY((\iA[24]~input_o\ & ((!\LessThan1~47_cout\) # (!\iB[24]~input_o\))) # (!\iA[24]~input_o\ & (!\iB[24]~input_o\ & !\LessThan1~47_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iA[24]~input_o\,
	datab => \iB[24]~input_o\,
	datad => VCC,
	cin => \LessThan1~47_cout\,
	cout => \LessThan1~49_cout\);

-- Location: LCCOMB_X22_Y10_N18
\LessThan1~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~51_cout\ = CARRY((\iB[25]~input_o\ & ((!\LessThan1~49_cout\) # (!\iA[25]~input_o\))) # (!\iB[25]~input_o\ & (!\iA[25]~input_o\ & !\LessThan1~49_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iB[25]~input_o\,
	datab => \iA[25]~input_o\,
	datad => VCC,
	cin => \LessThan1~49_cout\,
	cout => \LessThan1~51_cout\);

-- Location: LCCOMB_X22_Y10_N20
\LessThan1~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~53_cout\ = CARRY((\iA[26]~input_o\ & ((!\LessThan1~51_cout\) # (!\iB[26]~input_o\))) # (!\iA[26]~input_o\ & (!\iB[26]~input_o\ & !\LessThan1~51_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iA[26]~input_o\,
	datab => \iB[26]~input_o\,
	datad => VCC,
	cin => \LessThan1~51_cout\,
	cout => \LessThan1~53_cout\);

-- Location: LCCOMB_X22_Y10_N22
\LessThan1~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~55_cout\ = CARRY((\iB[27]~input_o\ & ((!\LessThan1~53_cout\) # (!\iA[27]~input_o\))) # (!\iB[27]~input_o\ & (!\iA[27]~input_o\ & !\LessThan1~53_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iB[27]~input_o\,
	datab => \iA[27]~input_o\,
	datad => VCC,
	cin => \LessThan1~53_cout\,
	cout => \LessThan1~55_cout\);

-- Location: LCCOMB_X22_Y10_N24
\LessThan1~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~57_cout\ = CARRY((\iB[28]~input_o\ & (\iA[28]~input_o\ & !\LessThan1~55_cout\)) # (!\iB[28]~input_o\ & ((\iA[28]~input_o\) # (!\LessThan1~55_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iB[28]~input_o\,
	datab => \iA[28]~input_o\,
	datad => VCC,
	cin => \LessThan1~55_cout\,
	cout => \LessThan1~57_cout\);

-- Location: LCCOMB_X22_Y10_N26
\LessThan1~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~59_cout\ = CARRY((\iA[29]~input_o\ & (\iB[29]~input_o\ & !\LessThan1~57_cout\)) # (!\iA[29]~input_o\ & ((\iB[29]~input_o\) # (!\LessThan1~57_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iA[29]~input_o\,
	datab => \iB[29]~input_o\,
	datad => VCC,
	cin => \LessThan1~57_cout\,
	cout => \LessThan1~59_cout\);

-- Location: LCCOMB_X22_Y10_N28
\LessThan1~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~61_cout\ = CARRY((\iA[30]~input_o\ & ((!\LessThan1~59_cout\) # (!\iB[30]~input_o\))) # (!\iA[30]~input_o\ & (!\iB[30]~input_o\ & !\LessThan1~59_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iA[30]~input_o\,
	datab => \iB[30]~input_o\,
	datad => VCC,
	cin => \LessThan1~59_cout\,
	cout => \LessThan1~61_cout\);

-- Location: LCCOMB_X22_Y10_N30
\LessThan1~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~62_combout\ = (\iA[31]~input_o\ & ((\LessThan1~61_cout\) # (!\iB[31]~input_o\))) # (!\iA[31]~input_o\ & (\LessThan1~61_cout\ & !\iB[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \iA[31]~input_o\,
	datad => \iB[31]~input_o\,
	cin => \LessThan1~61_cout\,
	combout => \LessThan1~62_combout\);

-- Location: LCCOMB_X25_Y9_N24
\Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = \iA[14]~input_o\ $ (\iB[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \iA[14]~input_o\,
	datad => \iB[14]~input_o\,
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X24_Y9_N16
\Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = \iA[12]~input_o\ $ (\iB[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \iA[12]~input_o\,
	datad => \iB[12]~input_o\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X22_Y9_N2
\Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = \iA[13]~input_o\ $ (\iB[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[13]~input_o\,
	datad => \iB[13]~input_o\,
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X26_Y10_N16
\Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = \iA[15]~input_o\ $ (\iB[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iA[15]~input_o\,
	datad => \iB[15]~input_o\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X24_Y9_N26
\Mux31~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~12_combout\ = (!\Equal0~6_combout\ & (!\Equal0~4_combout\ & (!\Equal0~5_combout\ & !\Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \Equal0~4_combout\,
	datac => \Equal0~5_combout\,
	datad => \Equal0~7_combout\,
	combout => \Mux31~12_combout\);

-- Location: LCCOMB_X25_Y13_N10
\Mux31~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~7_combout\ = (\iA[3]~input_o\ & (\iB[3]~input_o\ & (\iB[2]~input_o\ $ (!\iA[2]~input_o\)))) # (!\iA[3]~input_o\ & (!\iB[3]~input_o\ & (\iB[2]~input_o\ $ (!\iA[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[3]~input_o\,
	datab => \iB[2]~input_o\,
	datac => \iB[3]~input_o\,
	datad => \iA[2]~input_o\,
	combout => \Mux31~7_combout\);

-- Location: LCCOMB_X25_Y13_N0
\Mux31~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~6_combout\ = (\iB[0]~input_o\ & (\iA[0]~input_o\ & (\iA[1]~input_o\ $ (!\iB[1]~input_o\)))) # (!\iB[0]~input_o\ & (!\iA[0]~input_o\ & (\iA[1]~input_o\ $ (!\iB[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[0]~input_o\,
	datab => \iA[1]~input_o\,
	datac => \iB[1]~input_o\,
	datad => \iA[0]~input_o\,
	combout => \Mux31~6_combout\);

-- Location: LCCOMB_X25_Y13_N28
\Mux31~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~8_combout\ = (\iA[4]~input_o\ & (\iB[4]~input_o\ & (\iA[5]~input_o\ $ (!\iB[5]~input_o\)))) # (!\iA[4]~input_o\ & (!\iB[4]~input_o\ & (\iA[5]~input_o\ $ (!\iB[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[4]~input_o\,
	datab => \iA[5]~input_o\,
	datac => \iB[4]~input_o\,
	datad => \iB[5]~input_o\,
	combout => \Mux31~8_combout\);

-- Location: LCCOMB_X26_Y15_N18
\Mux31~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~9_combout\ = (\iB[7]~input_o\ & (\iA[7]~input_o\ & (\iA[6]~input_o\ $ (!\iB[6]~input_o\)))) # (!\iB[7]~input_o\ & (!\iA[7]~input_o\ & (\iA[6]~input_o\ $ (!\iB[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[7]~input_o\,
	datab => \iA[6]~input_o\,
	datac => \iA[7]~input_o\,
	datad => \iB[6]~input_o\,
	combout => \Mux31~9_combout\);

-- Location: LCCOMB_X25_Y13_N30
\Mux31~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~10_combout\ = (\Mux31~7_combout\ & (\Mux31~6_combout\ & (\Mux31~8_combout\ & \Mux31~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~7_combout\,
	datab => \Mux31~6_combout\,
	datac => \Mux31~8_combout\,
	datad => \Mux31~9_combout\,
	combout => \Mux31~10_combout\);

-- Location: LCCOMB_X28_Y8_N10
\Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = \iB[11]~input_o\ $ (\iA[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[11]~input_o\,
	datad => \iA[11]~input_o\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X28_Y11_N24
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = \iB[8]~input_o\ $ (\iA[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[8]~input_o\,
	datac => \iA[8]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X22_Y9_N16
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = \iB[9]~input_o\ $ (\iA[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \iB[9]~input_o\,
	datad => \iA[9]~input_o\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X28_Y11_N10
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = \iA[10]~input_o\ $ (\iB[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[10]~input_o\,
	datac => \iB[10]~input_o\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X28_Y11_N12
\Mux31~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~11_combout\ = (!\Equal0~3_combout\ & (!\Equal0~0_combout\ & (!\Equal0~1_combout\ & !\Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~2_combout\,
	combout => \Mux31~11_combout\);

-- Location: LCCOMB_X25_Y12_N24
\Mux31~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~13_combout\ = (\Mux31~12_combout\ & (\Mux31~10_combout\ & \Mux31~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux31~12_combout\,
	datac => \Mux31~10_combout\,
	datad => \Mux31~11_combout\,
	combout => \Mux31~13_combout\);

-- Location: LCCOMB_X25_Y12_N12
\Mux31~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~20_combout\ = (\iALUFN[2]~input_o\ & (((!\LessThan1~62_combout\)))) # (!\iALUFN[2]~input_o\ & (\Mux31~19_combout\ & ((\Mux31~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~19_combout\,
	datab => \LessThan1~62_combout\,
	datac => \iALUFN[2]~input_o\,
	datad => \Mux31~13_combout\,
	combout => \Mux31~20_combout\);

-- Location: LCCOMB_X25_Y12_N22
\Mux31~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~21_combout\ = (\iALUFN[1]~input_o\ & (((\Mux31~20_combout\)))) # (!\iALUFN[1]~input_o\ & (\LessThan0~62_combout\ & (\iALUFN[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~62_combout\,
	datab => \iALUFN[1]~input_o\,
	datac => \iALUFN[2]~input_o\,
	datad => \Mux31~20_combout\,
	combout => \Mux31~21_combout\);

-- Location: IOIBUF_X19_Y17_N29
\iALUFN[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iALUFN(5),
	o => \iALUFN[5]~input_o\);

-- Location: IOIBUF_X25_Y24_N15
\iALUFN[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iALUFN(0),
	o => \iALUFN[0]~input_o\);

-- Location: LCCOMB_X24_Y11_N8
\Mux31~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~22_combout\ = (\Mux31~21_combout\ & (!\iALUFN[5]~input_o\ & (!\iALUFN[4]~input_o\ & \iALUFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~21_combout\,
	datab => \iALUFN[5]~input_o\,
	datac => \iALUFN[4]~input_o\,
	datad => \iALUFN[0]~input_o\,
	combout => \Mux31~22_combout\);

-- Location: LCCOMB_X28_Y8_N12
\Mux20~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~1_combout\ = (!\iALUFN[2]~input_o\ & !\iALUFN[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iALUFN[2]~input_o\,
	datad => \iALUFN[1]~input_o\,
	combout => \Mux20~1_combout\);

-- Location: LCCOMB_X20_Y14_N24
\sSHR_s4[31]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s4[31]~4_combout\ = (!\iB[1]~input_o\ & (!\iB[0]~input_o\ & (!\iB[3]~input_o\ & !\iB[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[1]~input_o\,
	datab => \iB[0]~input_o\,
	datac => \iB[3]~input_o\,
	datad => \iB[2]~input_o\,
	combout => \sSHR_s4[31]~4_combout\);

-- Location: LCCOMB_X20_Y11_N4
\sSHL_s5[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s5[0]~0_combout\ = (\iA[0]~input_o\ & (\sSHR_s4[31]~4_combout\ & !\iB[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iA[0]~input_o\,
	datac => \sSHR_s4[31]~4_combout\,
	datad => \iB[4]~input_o\,
	combout => \sSHL_s5[0]~0_combout\);

-- Location: LCCOMB_X25_Y11_N0
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\iB[0]~input_o\ & (\iA[0]~input_o\ $ (VCC))) # (!\iB[0]~input_o\ & (\iA[0]~input_o\ & VCC))
-- \Add0~1\ = CARRY((\iB[0]~input_o\ & \iA[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[0]~input_o\,
	datab => \iA[0]~input_o\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X27_Y11_N0
\Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\iA[0]~input_o\ & ((GND) # (!\iB[0]~input_o\))) # (!\iA[0]~input_o\ & (\iB[0]~input_o\ $ (GND)))
-- \Add1~1\ = CARRY((\iA[0]~input_o\) # (!\iB[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[0]~input_o\,
	datab => \iB[0]~input_o\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X20_Y11_N22
\Mux31~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~23_combout\ = (\iALUFN[5]~input_o\ & (((\iALUFN[0]~input_o\)))) # (!\iALUFN[5]~input_o\ & ((\iALUFN[0]~input_o\ & ((\Add1~0_combout\))) # (!\iALUFN[0]~input_o\ & (\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iALUFN[5]~input_o\,
	datab => \Add0~0_combout\,
	datac => \Add1~0_combout\,
	datad => \iALUFN[0]~input_o\,
	combout => \Mux31~23_combout\);

-- Location: LCCOMB_X24_Y15_N8
\sSHR_s2[4]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s2[4]~17_combout\ = (\iB[1]~input_o\ & ((\iB[0]~input_o\ & (\iA[7]~input_o\)) # (!\iB[0]~input_o\ & ((\iA[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[7]~input_o\,
	datab => \iB[0]~input_o\,
	datac => \iB[1]~input_o\,
	datad => \iA[6]~input_o\,
	combout => \sSHR_s2[4]~17_combout\);

-- Location: LCCOMB_X26_Y13_N18
\sSHR_s1[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s1[4]~1_combout\ = (\iB[0]~input_o\ & ((\iA[5]~input_o\))) # (!\iB[0]~input_o\ & (\iA[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[0]~input_o\,
	datab => \iA[4]~input_o\,
	datad => \iA[5]~input_o\,
	combout => \sSHR_s1[4]~1_combout\);

-- Location: LCCOMB_X21_Y15_N26
\sSHR_s5[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s5[0]~0_combout\ = (\iB[2]~input_o\ & ((\sSHR_s2[4]~17_combout\) # ((!\iB[1]~input_o\ & \sSHR_s1[4]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[1]~input_o\,
	datab => \iB[2]~input_o\,
	datac => \sSHR_s2[4]~17_combout\,
	datad => \sSHR_s1[4]~1_combout\,
	combout => \sSHR_s5[0]~0_combout\);

-- Location: LCCOMB_X19_Y13_N26
\sSHR_s2[8]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s2[8]~15_combout\ = (\iB[1]~input_o\ & ((\iA[10]~input_o\))) # (!\iB[1]~input_o\ & (\iA[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[8]~input_o\,
	datac => \iA[10]~input_o\,
	datad => \iB[1]~input_o\,
	combout => \sSHR_s2[8]~15_combout\);

-- Location: LCCOMB_X19_Y13_N0
\sSHR_s2[9]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s2[9]~14_combout\ = (\iB[1]~input_o\ & ((\iA[11]~input_o\))) # (!\iB[1]~input_o\ & (\iA[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[1]~input_o\,
	datac => \iA[9]~input_o\,
	datad => \iA[11]~input_o\,
	combout => \sSHR_s2[9]~14_combout\);

-- Location: LCCOMB_X19_Y13_N20
\sSHR_s2[8]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s2[8]~16_combout\ = (\iB[0]~input_o\ & ((\sSHR_s2[9]~14_combout\))) # (!\iB[0]~input_o\ & (\sSHR_s2[8]~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHR_s2[8]~15_combout\,
	datab => \sSHR_s2[9]~14_combout\,
	datac => \iB[0]~input_o\,
	combout => \sSHR_s2[8]~16_combout\);

-- Location: LCCOMB_X17_Y13_N2
\sSHR_s2[12]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s2[12]~12_combout\ = (\iB[1]~input_o\ & (\iA[14]~input_o\)) # (!\iB[1]~input_o\ & ((\iA[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iA[14]~input_o\,
	datac => \iA[12]~input_o\,
	datad => \iB[1]~input_o\,
	combout => \sSHR_s2[12]~12_combout\);

-- Location: LCCOMB_X17_Y13_N24
\sSHR_s2[13]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s2[13]~11_combout\ = (\iB[1]~input_o\ & ((\iA[15]~input_o\))) # (!\iB[1]~input_o\ & (\iA[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[13]~input_o\,
	datac => \iA[15]~input_o\,
	datad => \iB[1]~input_o\,
	combout => \sSHR_s2[13]~11_combout\);

-- Location: LCCOMB_X17_Y13_N12
\sSHR_s2[12]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s2[12]~13_combout\ = (\iB[0]~input_o\ & ((\sSHR_s2[13]~11_combout\))) # (!\iB[0]~input_o\ & (\sSHR_s2[12]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[0]~input_o\,
	datab => \sSHR_s2[12]~12_combout\,
	datad => \sSHR_s2[13]~11_combout\,
	combout => \sSHR_s2[12]~13_combout\);

-- Location: LCCOMB_X21_Y15_N8
\sSHR_s3[8]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s3[8]~1_combout\ = (\iB[2]~input_o\ & ((\sSHR_s2[12]~13_combout\))) # (!\iB[2]~input_o\ & (\sSHR_s2[8]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHR_s2[8]~16_combout\,
	datac => \sSHR_s2[12]~13_combout\,
	datad => \iB[2]~input_o\,
	combout => \sSHR_s3[8]~1_combout\);

-- Location: LCCOMB_X25_Y13_N26
\sSHR_s1[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s1[2]~2_combout\ = (\iB[0]~input_o\ & (\iA[3]~input_o\)) # (!\iB[0]~input_o\ & ((\iA[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[3]~input_o\,
	datac => \iB[0]~input_o\,
	datad => \iA[2]~input_o\,
	combout => \sSHR_s1[2]~2_combout\);

-- Location: LCCOMB_X25_Y13_N16
\sSHR_s5[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s5[0]~1_combout\ = (!\iB[1]~input_o\ & ((\iB[0]~input_o\ & (\iA[1]~input_o\)) # (!\iB[0]~input_o\ & ((\iA[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[0]~input_o\,
	datab => \iA[1]~input_o\,
	datac => \iB[1]~input_o\,
	datad => \iA[0]~input_o\,
	combout => \sSHR_s5[0]~1_combout\);

-- Location: LCCOMB_X25_Y13_N20
\sSHR_s5[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s5[0]~2_combout\ = (!\iB[2]~input_o\ & ((\sSHR_s5[0]~1_combout\) # ((\sSHR_s1[2]~2_combout\ & \iB[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHR_s1[2]~2_combout\,
	datab => \iB[2]~input_o\,
	datac => \iB[1]~input_o\,
	datad => \sSHR_s5[0]~1_combout\,
	combout => \sSHR_s5[0]~2_combout\);

-- Location: LCCOMB_X21_Y15_N12
\sSHR_s5[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s5[0]~3_combout\ = (\iB[3]~input_o\ & (((\sSHR_s3[8]~1_combout\)))) # (!\iB[3]~input_o\ & ((\sSHR_s5[0]~0_combout\) # ((\sSHR_s5[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHR_s5[0]~0_combout\,
	datab => \sSHR_s3[8]~1_combout\,
	datac => \iB[3]~input_o\,
	datad => \sSHR_s5[0]~2_combout\,
	combout => \sSHR_s5[0]~3_combout\);

-- Location: LCCOMB_X26_Y14_N12
\sSHR_s2[24]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s2[24]~3_combout\ = (\iB[1]~input_o\ & ((\iA[26]~input_o\))) # (!\iB[1]~input_o\ & (\iA[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iB[1]~input_o\,
	datac => \iA[24]~input_o\,
	datad => \iA[26]~input_o\,
	combout => \sSHR_s2[24]~3_combout\);

-- Location: LCCOMB_X26_Y14_N10
\sSHR_s2[25]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s2[25]~2_combout\ = (\iB[1]~input_o\ & (\iA[27]~input_o\)) # (!\iB[1]~input_o\ & ((\iA[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[27]~input_o\,
	datab => \iB[1]~input_o\,
	datac => \iA[25]~input_o\,
	combout => \sSHR_s2[25]~2_combout\);

-- Location: LCCOMB_X26_Y14_N14
\sSHR_s2[24]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s2[24]~4_combout\ = (\iB[0]~input_o\ & ((\sSHR_s2[25]~2_combout\))) # (!\iB[0]~input_o\ & (\sSHR_s2[24]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHR_s2[24]~3_combout\,
	datac => \iB[0]~input_o\,
	datad => \sSHR_s2[25]~2_combout\,
	combout => \sSHR_s2[24]~4_combout\);

-- Location: LCCOMB_X20_Y14_N26
\sSHR_s2[28]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s2[28]~0_combout\ = (!\iB[1]~input_o\ & ((\iB[0]~input_o\ & (\iA[29]~input_o\)) # (!\iB[0]~input_o\ & ((\iA[28]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[29]~input_o\,
	datab => \iB[1]~input_o\,
	datac => \iB[0]~input_o\,
	datad => \iA[28]~input_o\,
	combout => \sSHR_s2[28]~0_combout\);

-- Location: LCCOMB_X20_Y14_N12
\sSHR_s1[30]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s1[30]~0_combout\ = (\iB[0]~input_o\ & ((\iA[31]~input_o\))) # (!\iB[0]~input_o\ & (\iA[30]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iA[30]~input_o\,
	datac => \iB[0]~input_o\,
	datad => \iA[31]~input_o\,
	combout => \sSHR_s1[30]~0_combout\);

-- Location: LCCOMB_X21_Y15_N24
\sSHR_s2[28]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s2[28]~1_combout\ = (\sSHR_s2[28]~0_combout\) # ((\iB[1]~input_o\ & \sSHR_s1[30]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[1]~input_o\,
	datac => \sSHR_s2[28]~0_combout\,
	datad => \sSHR_s1[30]~0_combout\,
	combout => \sSHR_s2[28]~1_combout\);

-- Location: LCCOMB_X21_Y15_N2
\sSHR_s4[16]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s4[16]~5_combout\ = (\iB[3]~input_o\ & ((\iB[2]~input_o\ & ((\sSHR_s2[28]~1_combout\))) # (!\iB[2]~input_o\ & (\sSHR_s2[24]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[3]~input_o\,
	datab => \iB[2]~input_o\,
	datac => \sSHR_s2[24]~4_combout\,
	datad => \sSHR_s2[28]~1_combout\,
	combout => \sSHR_s4[16]~5_combout\);

-- Location: LCCOMB_X16_Y13_N18
\sSHR_s2[17]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s2[17]~8_combout\ = (\iB[1]~input_o\ & ((\iA[19]~input_o\))) # (!\iB[1]~input_o\ & (\iA[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[17]~input_o\,
	datac => \iB[1]~input_o\,
	datad => \iA[19]~input_o\,
	combout => \sSHR_s2[17]~8_combout\);

-- Location: LCCOMB_X16_Y13_N28
\sSHR_s2[16]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s2[16]~9_combout\ = (\iB[1]~input_o\ & (\iA[18]~input_o\)) # (!\iB[1]~input_o\ & ((\iA[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[18]~input_o\,
	datab => \iA[16]~input_o\,
	datac => \iB[1]~input_o\,
	combout => \sSHR_s2[16]~9_combout\);

-- Location: LCCOMB_X16_Y13_N30
\sSHR_s2[16]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s2[16]~10_combout\ = (\iB[0]~input_o\ & (\sSHR_s2[17]~8_combout\)) # (!\iB[0]~input_o\ & ((\sSHR_s2[16]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[0]~input_o\,
	datab => \sSHR_s2[17]~8_combout\,
	datad => \sSHR_s2[16]~9_combout\,
	combout => \sSHR_s2[16]~10_combout\);

-- Location: LCCOMB_X21_Y12_N10
\sSHR_s2[21]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s2[21]~5_combout\ = (\iB[1]~input_o\ & ((\iA[23]~input_o\))) # (!\iB[1]~input_o\ & (\iA[21]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[1]~input_o\,
	datac => \iA[21]~input_o\,
	datad => \iA[23]~input_o\,
	combout => \sSHR_s2[21]~5_combout\);

-- Location: LCCOMB_X16_Y13_N16
\sSHR_s2[20]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s2[20]~6_combout\ = (\iB[1]~input_o\ & ((\iA[22]~input_o\))) # (!\iB[1]~input_o\ & (\iA[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[20]~input_o\,
	datab => \iA[22]~input_o\,
	datac => \iB[1]~input_o\,
	combout => \sSHR_s2[20]~6_combout\);

-- Location: LCCOMB_X21_Y12_N4
\sSHR_s2[20]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s2[20]~7_combout\ = (\iB[0]~input_o\ & (\sSHR_s2[21]~5_combout\)) # (!\iB[0]~input_o\ & ((\sSHR_s2[20]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHR_s2[21]~5_combout\,
	datab => \iB[0]~input_o\,
	datad => \sSHR_s2[20]~6_combout\,
	combout => \sSHR_s2[20]~7_combout\);

-- Location: LCCOMB_X21_Y15_N20
\sSHR_s3[16]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s3[16]~0_combout\ = (\iB[2]~input_o\ & ((\sSHR_s2[20]~7_combout\))) # (!\iB[2]~input_o\ & (\sSHR_s2[16]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHR_s2[16]~10_combout\,
	datab => \iB[2]~input_o\,
	datad => \sSHR_s2[20]~7_combout\,
	combout => \sSHR_s3[16]~0_combout\);

-- Location: LCCOMB_X21_Y15_N6
\sSHR_s4[16]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s4[16]~6_combout\ = (\sSHR_s4[16]~5_combout\) # ((!\iB[3]~input_o\ & \sSHR_s3[16]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[3]~input_o\,
	datab => \sSHR_s4[16]~5_combout\,
	datad => \sSHR_s3[16]~0_combout\,
	combout => \sSHR_s4[16]~6_combout\);

-- Location: LCCOMB_X21_Y11_N24
\sSHR_s5[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s5[0]~4_combout\ = (\iB[4]~input_o\ & ((\sSHR_s4[16]~6_combout\))) # (!\iB[4]~input_o\ & (\sSHR_s5[0]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sSHR_s5[0]~3_combout\,
	datac => \iB[4]~input_o\,
	datad => \sSHR_s4[16]~6_combout\,
	combout => \sSHR_s5[0]~4_combout\);

-- Location: LCCOMB_X20_Y11_N8
\Mux31~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~24_combout\ = (\iALUFN[5]~input_o\ & ((\Mux31~23_combout\ & ((\sSHR_s5[0]~4_combout\))) # (!\Mux31~23_combout\ & (\sSHL_s5[0]~0_combout\)))) # (!\iALUFN[5]~input_o\ & (((\Mux31~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iALUFN[5]~input_o\,
	datab => \sSHL_s5[0]~0_combout\,
	datac => \Mux31~23_combout\,
	datad => \sSHR_s5[0]~4_combout\,
	combout => \Mux31~24_combout\);

-- Location: LCCOMB_X24_Y11_N2
\Mux31~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~25_combout\ = (\Mux31~22_combout\) # ((\iALUFN[4]~input_o\ & (\Mux20~1_combout\ & \Mux31~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iALUFN[4]~input_o\,
	datab => \Mux31~22_combout\,
	datac => \Mux20~1_combout\,
	datad => \Mux31~24_combout\,
	combout => \Mux31~25_combout\);

-- Location: IOIBUF_X8_Y17_N1
\iALUFN[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iALUFN(3),
	o => \iALUFN[3]~input_o\);

-- Location: LCCOMB_X20_Y11_N6
\Mux30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (\iALUFN[3]~input_o\ & !\iALUFN[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iALUFN[3]~input_o\,
	datac => \iALUFN[2]~input_o\,
	combout => \Mux30~0_combout\);

-- Location: LCCOMB_X20_Y11_N0
\Mux30~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~1_combout\ = (!\iALUFN[0]~input_o\ & \iALUFN[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iALUFN[0]~input_o\,
	datad => \iALUFN[1]~input_o\,
	combout => \Mux30~1_combout\);

-- Location: LCCOMB_X20_Y11_N20
\Mux31~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~4_combout\ = (\iB[0]~input_o\ & (!\iALUFN[0]~input_o\ & \iA[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[0]~input_o\,
	datab => \iALUFN[0]~input_o\,
	datad => \iA[0]~input_o\,
	combout => \Mux31~4_combout\);

-- Location: LCCOMB_X20_Y11_N30
\Mux31~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~27_combout\ = (\Mux31~4_combout\) # ((!\iALUFN[1]~input_o\ & (!\Add0~0_combout\ & \iALUFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iALUFN[1]~input_o\,
	datab => \Mux31~4_combout\,
	datac => \Add0~0_combout\,
	datad => \iALUFN[0]~input_o\,
	combout => \Mux31~27_combout\);

-- Location: LCCOMB_X20_Y11_N24
\Mux31~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~2_combout\ = (\iALUFN[3]~input_o\ & ((\iA[0]~input_o\) # ((\iB[0]~input_o\ & \iALUFN[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[0]~input_o\,
	datab => \iALUFN[3]~input_o\,
	datac => \iALUFN[2]~input_o\,
	datad => \iA[0]~input_o\,
	combout => \Mux31~2_combout\);

-- Location: LCCOMB_X20_Y11_N2
\Mux31~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~3_combout\ = (\Mux31~2_combout\) # ((\iALUFN[2]~input_o\ & (!\iALUFN[3]~input_o\ & \Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iALUFN[2]~input_o\,
	datab => \iALUFN[3]~input_o\,
	datac => \Add0~0_combout\,
	datad => \Mux31~2_combout\,
	combout => \Mux31~3_combout\);

-- Location: LCCOMB_X20_Y11_N26
\Mux31~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~5_combout\ = (\Mux30~0_combout\ & ((\Mux31~27_combout\) # ((\Mux30~1_combout\ & \Mux31~3_combout\)))) # (!\Mux30~0_combout\ & (\Mux30~1_combout\ & ((\Mux31~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~0_combout\,
	datab => \Mux30~1_combout\,
	datac => \Mux31~27_combout\,
	datad => \Mux31~3_combout\,
	combout => \Mux31~5_combout\);

-- Location: LCCOMB_X26_Y15_N24
\Mux28~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~4_combout\ = (!\iALUFN[4]~input_o\ & \iALUFN[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iALUFN[4]~input_o\,
	datad => \iALUFN[5]~input_o\,
	combout => \Mux28~4_combout\);

-- Location: LCCOMB_X20_Y11_N10
\Mux31~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~26_combout\ = (\Mux31~25_combout\ & (((\Mux31~5_combout\ & \Mux28~4_combout\)) # (!\iALUFN[3]~input_o\))) # (!\Mux31~25_combout\ & (((\Mux31~5_combout\ & \Mux28~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~25_combout\,
	datab => \iALUFN[3]~input_o\,
	datac => \Mux31~5_combout\,
	datad => \Mux28~4_combout\,
	combout => \Mux31~26_combout\);

-- Location: LCCOMB_X20_Y11_N12
\Mux30~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~11_combout\ = (!\iALUFN[1]~input_o\ & (!\iALUFN[3]~input_o\ & (!\iALUFN[2]~input_o\ & \iALUFN[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iALUFN[1]~input_o\,
	datab => \iALUFN[3]~input_o\,
	datac => \iALUFN[2]~input_o\,
	datad => \iALUFN[4]~input_o\,
	combout => \Mux30~11_combout\);

-- Location: LCCOMB_X20_Y11_N16
\Mux30~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~13_combout\ = (\iALUFN[2]~input_o\ & ((\iA[1]~input_o\ & ((\iALUFN[3]~input_o\) # (!\iB[1]~input_o\))) # (!\iA[1]~input_o\ & ((\iB[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[1]~input_o\,
	datab => \iALUFN[3]~input_o\,
	datac => \iALUFN[2]~input_o\,
	datad => \iB[1]~input_o\,
	combout => \Mux30~13_combout\);

-- Location: LCCOMB_X20_Y11_N14
\Mux30~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~12_combout\ = (\iALUFN[0]~input_o\ & (!\iALUFN[1]~input_o\ & (\iB[1]~input_o\ $ (!\iA[1]~input_o\)))) # (!\iALUFN[0]~input_o\ & (\iA[1]~input_o\ & ((\iB[1]~input_o\) # (\iALUFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[1]~input_o\,
	datab => \iALUFN[0]~input_o\,
	datac => \iA[1]~input_o\,
	datad => \iALUFN[1]~input_o\,
	combout => \Mux30~12_combout\);

-- Location: LCCOMB_X20_Y11_N18
\Mux30~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~14_combout\ = (\Mux30~0_combout\ & ((\Mux30~12_combout\) # ((\Mux30~13_combout\ & \Mux30~1_combout\)))) # (!\Mux30~0_combout\ & (\Mux30~13_combout\ & ((\Mux30~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~0_combout\,
	datab => \Mux30~13_combout\,
	datac => \Mux30~12_combout\,
	datad => \Mux30~1_combout\,
	combout => \Mux30~14_combout\);

-- Location: LCCOMB_X25_Y11_N2
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\iA[1]~input_o\ & ((\iB[1]~input_o\ & (\Add0~1\ & VCC)) # (!\iB[1]~input_o\ & (!\Add0~1\)))) # (!\iA[1]~input_o\ & ((\iB[1]~input_o\ & (!\Add0~1\)) # (!\iB[1]~input_o\ & ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((\iA[1]~input_o\ & (!\iB[1]~input_o\ & !\Add0~1\)) # (!\iA[1]~input_o\ & ((!\Add0~1\) # (!\iB[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iA[1]~input_o\,
	datab => \iB[1]~input_o\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X27_Y11_N2
\Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\iA[1]~input_o\ & ((\iB[1]~input_o\ & (!\Add1~1\)) # (!\iB[1]~input_o\ & (\Add1~1\ & VCC)))) # (!\iA[1]~input_o\ & ((\iB[1]~input_o\ & ((\Add1~1\) # (GND))) # (!\iB[1]~input_o\ & (!\Add1~1\))))
-- \Add1~3\ = CARRY((\iA[1]~input_o\ & (\iB[1]~input_o\ & !\Add1~1\)) # (!\iA[1]~input_o\ & ((\iB[1]~input_o\) # (!\Add1~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iA[1]~input_o\,
	datab => \iB[1]~input_o\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X24_Y11_N28
\Mux30~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~2_combout\ = (!\iALUFN[5]~input_o\ & ((\iALUFN[0]~input_o\ & ((\Add1~2_combout\))) # (!\iALUFN[0]~input_o\ & (\Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \iALUFN[5]~input_o\,
	datac => \Add1~2_combout\,
	datad => \iALUFN[0]~input_o\,
	combout => \Mux30~2_combout\);

-- Location: LCCOMB_X24_Y15_N2
\sSHR_s2[5]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s2[5]~30_combout\ = (\iB[1]~input_o\ & ((\iB[0]~input_o\ & ((\iA[8]~input_o\))) # (!\iB[0]~input_o\ & (\iA[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[7]~input_o\,
	datab => \iB[1]~input_o\,
	datac => \iB[0]~input_o\,
	datad => \iA[8]~input_o\,
	combout => \sSHR_s2[5]~30_combout\);

-- Location: LCCOMB_X24_Y15_N20
\sSHR_s1[5]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s1[5]~4_combout\ = (\iB[0]~input_o\ & ((\iA[6]~input_o\))) # (!\iB[0]~input_o\ & (\iA[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[5]~input_o\,
	datac => \iB[0]~input_o\,
	datad => \iA[6]~input_o\,
	combout => \sSHR_s1[5]~4_combout\);

-- Location: LCCOMB_X24_Y15_N22
\sSHR_s2[5]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s2[5]~31_combout\ = (\sSHR_s2[5]~30_combout\) # ((!\iB[1]~input_o\ & \sSHR_s1[5]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sSHR_s2[5]~30_combout\,
	datac => \iB[1]~input_o\,
	datad => \sSHR_s1[5]~4_combout\,
	combout => \sSHR_s2[5]~31_combout\);

-- Location: LCCOMB_X17_Y13_N14
\sSHR_s2[14]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s2[14]~26_combout\ = (\iB[1]~input_o\ & ((\iA[16]~input_o\))) # (!\iB[1]~input_o\ & (\iA[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[1]~input_o\,
	datac => \iA[14]~input_o\,
	datad => \iA[16]~input_o\,
	combout => \sSHR_s2[14]~26_combout\);

-- Location: LCCOMB_X17_Y13_N8
\sSHR_s2[13]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s2[13]~27_combout\ = (\iB[0]~input_o\ & ((\sSHR_s2[14]~26_combout\))) # (!\iB[0]~input_o\ & (\sSHR_s2[13]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[0]~input_o\,
	datab => \sSHR_s2[13]~11_combout\,
	datac => \sSHR_s2[14]~26_combout\,
	combout => \sSHR_s2[13]~27_combout\);

-- Location: LCCOMB_X19_Y13_N22
\sSHR_s2[10]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s2[10]~28_combout\ = (\iB[1]~input_o\ & (\iA[12]~input_o\)) # (!\iB[1]~input_o\ & ((\iA[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[1]~input_o\,
	datab => \iA[12]~input_o\,
	datac => \iA[10]~input_o\,
	combout => \sSHR_s2[10]~28_combout\);

-- Location: LCCOMB_X19_Y13_N16
\sSHR_s2[9]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s2[9]~29_combout\ = (\iB[0]~input_o\ & (\sSHR_s2[10]~28_combout\)) # (!\iB[0]~input_o\ & ((\sSHR_s2[9]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHR_s2[10]~28_combout\,
	datab => \sSHR_s2[9]~14_combout\,
	datac => \iB[0]~input_o\,
	combout => \sSHR_s2[9]~29_combout\);

-- Location: LCCOMB_X21_Y10_N16
\sSHR_s3[9]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s3[9]~3_combout\ = (\iB[2]~input_o\ & (\sSHR_s2[13]~27_combout\)) # (!\iB[2]~input_o\ & ((\sSHR_s2[9]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHR_s2[13]~27_combout\,
	datac => \iB[2]~input_o\,
	datad => \sSHR_s2[9]~29_combout\,
	combout => \sSHR_s3[9]~3_combout\);

-- Location: LCCOMB_X20_Y12_N28
\Mux30~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~7_combout\ = (\iB[3]~input_o\ & (((\sSHR_s3[9]~3_combout\)))) # (!\iB[3]~input_o\ & (\sSHR_s2[5]~31_combout\ & (\iB[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHR_s2[5]~31_combout\,
	datab => \iB[3]~input_o\,
	datac => \iB[2]~input_o\,
	datad => \sSHR_s3[9]~3_combout\,
	combout => \Mux30~7_combout\);

-- Location: LCCOMB_X20_Y12_N2
\Mux30~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~6_combout\ = (!\iB[3]~input_o\ & !\iB[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iB[3]~input_o\,
	datac => \iB[2]~input_o\,
	combout => \Mux30~6_combout\);

-- Location: LCCOMB_X25_Y13_N22
\Mux30~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~3_combout\ = (\iALUFN[0]~input_o\ & ((\iB[0]~input_o\ & (\iA[2]~input_o\)) # (!\iB[0]~input_o\ & ((\iA[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[0]~input_o\,
	datab => \iA[2]~input_o\,
	datac => \iA[1]~input_o\,
	datad => \iALUFN[0]~input_o\,
	combout => \Mux30~3_combout\);

-- Location: LCCOMB_X25_Y13_N8
\sSHL_s1[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s1[1]~0_combout\ = (\iB[0]~input_o\ & ((\iA[0]~input_o\))) # (!\iB[0]~input_o\ & (\iA[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iA[1]~input_o\,
	datac => \iB[0]~input_o\,
	datad => \iA[0]~input_o\,
	combout => \sSHL_s1[1]~0_combout\);

-- Location: LCCOMB_X25_Y13_N18
\Mux30~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~4_combout\ = (!\iB[1]~input_o\ & ((\Mux30~3_combout\) # ((\sSHL_s1[1]~0_combout\ & !\iALUFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~3_combout\,
	datab => \iB[1]~input_o\,
	datac => \sSHL_s1[1]~0_combout\,
	datad => \iALUFN[0]~input_o\,
	combout => \Mux30~4_combout\);

-- Location: LCCOMB_X26_Y13_N12
\sSHR_s1[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s1[3]~3_combout\ = (\iB[0]~input_o\ & ((\iA[4]~input_o\))) # (!\iB[0]~input_o\ & (\iA[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[0]~input_o\,
	datab => \iA[3]~input_o\,
	datac => \iA[4]~input_o\,
	combout => \sSHR_s1[3]~3_combout\);

-- Location: LCCOMB_X20_Y12_N8
\Mux30~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~5_combout\ = (\Mux30~4_combout\) # ((\iALUFN[0]~input_o\ & (\iB[1]~input_o\ & \sSHR_s1[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~4_combout\,
	datab => \iALUFN[0]~input_o\,
	datac => \iB[1]~input_o\,
	datad => \sSHR_s1[3]~3_combout\,
	combout => \Mux30~5_combout\);

-- Location: LCCOMB_X20_Y12_N14
\Mux30~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~8_combout\ = (\Mux30~7_combout\ & ((\iALUFN[0]~input_o\) # ((\Mux30~6_combout\ & \Mux30~5_combout\)))) # (!\Mux30~7_combout\ & (\Mux30~6_combout\ & (\Mux30~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~7_combout\,
	datab => \Mux30~6_combout\,
	datac => \Mux30~5_combout\,
	datad => \iALUFN[0]~input_o\,
	combout => \Mux30~8_combout\);

-- Location: LCCOMB_X20_Y14_N30
\sSHR_s2[29]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s2[29]~18_combout\ = (!\iB[0]~input_o\ & ((\iB[1]~input_o\ & ((\iA[31]~input_o\))) # (!\iB[1]~input_o\ & (\iA[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[29]~input_o\,
	datab => \iB[0]~input_o\,
	datac => \iB[1]~input_o\,
	datad => \iA[31]~input_o\,
	combout => \sSHR_s2[29]~18_combout\);

-- Location: LCCOMB_X20_Y14_N16
\sSHR_s2[29]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s2[29]~19_combout\ = (\sSHR_s2[29]~18_combout\) # ((\iB[0]~input_o\ & (\iA[30]~input_o\ & !\iB[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHR_s2[29]~18_combout\,
	datab => \iB[0]~input_o\,
	datac => \iA[30]~input_o\,
	datad => \iB[1]~input_o\,
	combout => \sSHR_s2[29]~19_combout\);

-- Location: LCCOMB_X26_Y14_N8
\sSHR_s2[26]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s2[26]~20_combout\ = (\iB[1]~input_o\ & (\iA[28]~input_o\)) # (!\iB[1]~input_o\ & ((\iA[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iA[28]~input_o\,
	datac => \iB[1]~input_o\,
	datad => \iA[26]~input_o\,
	combout => \sSHR_s2[26]~20_combout\);

-- Location: LCCOMB_X26_Y14_N18
\sSHR_s2[25]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s2[25]~21_combout\ = (\iB[0]~input_o\ & ((\sSHR_s2[26]~20_combout\))) # (!\iB[0]~input_o\ & (\sSHR_s2[25]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHR_s2[25]~2_combout\,
	datab => \sSHR_s2[26]~20_combout\,
	datac => \iB[0]~input_o\,
	combout => \sSHR_s2[25]~21_combout\);

-- Location: LCCOMB_X24_Y13_N24
\sSHR_s4[17]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s4[17]~7_combout\ = (\iB[3]~input_o\ & ((\iB[2]~input_o\ & (\sSHR_s2[29]~19_combout\)) # (!\iB[2]~input_o\ & ((\sSHR_s2[25]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[3]~input_o\,
	datab => \iB[2]~input_o\,
	datac => \sSHR_s2[29]~19_combout\,
	datad => \sSHR_s2[25]~21_combout\,
	combout => \sSHR_s4[17]~7_combout\);

-- Location: LCCOMB_X21_Y12_N14
\sSHR_s2[22]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s2[22]~22_combout\ = (\iB[1]~input_o\ & ((\iA[24]~input_o\))) # (!\iB[1]~input_o\ & (\iA[22]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iA[22]~input_o\,
	datac => \iA[24]~input_o\,
	datad => \iB[1]~input_o\,
	combout => \sSHR_s2[22]~22_combout\);

-- Location: LCCOMB_X21_Y12_N0
\sSHR_s2[21]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s2[21]~23_combout\ = (\iB[0]~input_o\ & ((\sSHR_s2[22]~22_combout\))) # (!\iB[0]~input_o\ & (\sSHR_s2[21]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHR_s2[21]~5_combout\,
	datab => \iB[0]~input_o\,
	datac => \sSHR_s2[22]~22_combout\,
	combout => \sSHR_s2[21]~23_combout\);

-- Location: LCCOMB_X16_Y13_N8
\sSHR_s2[18]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s2[18]~24_combout\ = (\iB[1]~input_o\ & (\iA[20]~input_o\)) # (!\iB[1]~input_o\ & ((\iA[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[20]~input_o\,
	datac => \iB[1]~input_o\,
	datad => \iA[18]~input_o\,
	combout => \sSHR_s2[18]~24_combout\);

-- Location: LCCOMB_X16_Y13_N26
\sSHR_s2[17]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s2[17]~25_combout\ = (\iB[0]~input_o\ & ((\sSHR_s2[18]~24_combout\))) # (!\iB[0]~input_o\ & (\sSHR_s2[17]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[0]~input_o\,
	datab => \sSHR_s2[17]~8_combout\,
	datac => \sSHR_s2[18]~24_combout\,
	combout => \sSHR_s2[17]~25_combout\);

-- Location: LCCOMB_X24_Y13_N26
\sSHR_s3[17]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s3[17]~2_combout\ = (\iB[2]~input_o\ & (\sSHR_s2[21]~23_combout\)) # (!\iB[2]~input_o\ & ((\sSHR_s2[17]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHR_s2[21]~23_combout\,
	datab => \sSHR_s2[17]~25_combout\,
	datac => \iB[2]~input_o\,
	combout => \sSHR_s3[17]~2_combout\);

-- Location: LCCOMB_X24_Y13_N28
\sSHR_s4[17]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s4[17]~8_combout\ = (\sSHR_s4[17]~7_combout\) # ((!\iB[3]~input_o\ & \sSHR_s3[17]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[3]~input_o\,
	datab => \sSHR_s4[17]~7_combout\,
	datac => \sSHR_s3[17]~2_combout\,
	combout => \sSHR_s4[17]~8_combout\);

-- Location: LCCOMB_X24_Y13_N14
\Mux30~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~9_combout\ = (\iB[4]~input_o\ & (((\sSHR_s4[17]~8_combout\ & \iALUFN[0]~input_o\)))) # (!\iB[4]~input_o\ & (\Mux30~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~8_combout\,
	datab => \sSHR_s4[17]~8_combout\,
	datac => \iALUFN[0]~input_o\,
	datad => \iB[4]~input_o\,
	combout => \Mux30~9_combout\);

-- Location: LCCOMB_X24_Y11_N6
\Mux30~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~10_combout\ = (\Mux30~2_combout\) # ((\iALUFN[5]~input_o\ & \Mux30~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux30~2_combout\,
	datac => \iALUFN[5]~input_o\,
	datad => \Mux30~9_combout\,
	combout => \Mux30~10_combout\);

-- Location: LCCOMB_X20_Y11_N28
\Mux30~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~15_combout\ = (\Mux30~11_combout\ & ((\Mux30~10_combout\) # ((\Mux30~14_combout\ & \Mux28~4_combout\)))) # (!\Mux30~11_combout\ & (\Mux30~14_combout\ & ((\Mux28~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~11_combout\,
	datab => \Mux30~14_combout\,
	datac => \Mux30~10_combout\,
	datad => \Mux28~4_combout\,
	combout => \Mux30~15_combout\);

-- Location: LCCOMB_X28_Y12_N18
\Mux28~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~6_combout\ = (\iALUFN[2]~input_o\ & ((\iALUFN[3]~input_o\))) # (!\iALUFN[2]~input_o\ & (\iALUFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iALUFN[1]~input_o\,
	datac => \iALUFN[2]~input_o\,
	datad => \iALUFN[3]~input_o\,
	combout => \Mux28~6_combout\);

-- Location: LCCOMB_X27_Y12_N0
\Mux28~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~11_combout\ = (\iALUFN[0]~input_o\ & ((\iALUFN[3]~input_o\) # (!\iALUFN[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iALUFN[5]~input_o\,
	datab => \iALUFN[3]~input_o\,
	datad => \iALUFN[0]~input_o\,
	combout => \Mux28~11_combout\);

-- Location: LCCOMB_X28_Y12_N30
\Mux29~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~8_combout\ = (\iALUFN[3]~input_o\ & ((\iB[2]~input_o\ & (\iA[2]~input_o\)) # (!\iB[2]~input_o\ & (!\iA[2]~input_o\ & \Mux28~11_combout\)))) # (!\iALUFN[3]~input_o\ & (((\Mux28~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[2]~input_o\,
	datab => \iA[2]~input_o\,
	datac => \Mux28~11_combout\,
	datad => \iALUFN[3]~input_o\,
	combout => \Mux29~8_combout\);

-- Location: LCCOMB_X27_Y11_N4
\Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((\iA[2]~input_o\ $ (\iB[2]~input_o\ $ (\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((\iA[2]~input_o\ & ((!\Add1~3\) # (!\iB[2]~input_o\))) # (!\iA[2]~input_o\ & (!\iB[2]~input_o\ & !\Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iA[2]~input_o\,
	datab => \iB[2]~input_o\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X16_Y13_N12
\sSHR_s2[19]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s2[19]~36_combout\ = (\iB[1]~input_o\ & ((\iA[21]~input_o\))) # (!\iB[1]~input_o\ & (\iA[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iA[19]~input_o\,
	datac => \iB[1]~input_o\,
	datad => \iA[21]~input_o\,
	combout => \sSHR_s2[19]~36_combout\);

-- Location: LCCOMB_X16_Y13_N14
\sSHR_s2[18]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s2[18]~37_combout\ = (\iB[0]~input_o\ & ((\sSHR_s2[19]~36_combout\))) # (!\iB[0]~input_o\ & (\sSHR_s2[18]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[0]~input_o\,
	datac => \sSHR_s2[18]~24_combout\,
	datad => \sSHR_s2[19]~36_combout\,
	combout => \sSHR_s2[18]~37_combout\);

-- Location: LCCOMB_X21_Y12_N2
\sSHR_s2[23]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s2[23]~34_combout\ = (\iB[1]~input_o\ & (\iA[25]~input_o\)) # (!\iB[1]~input_o\ & ((\iA[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[1]~input_o\,
	datac => \iA[25]~input_o\,
	datad => \iA[23]~input_o\,
	combout => \sSHR_s2[23]~34_combout\);

-- Location: LCCOMB_X21_Y12_N20
\sSHR_s2[22]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s2[22]~35_combout\ = (\iB[0]~input_o\ & ((\sSHR_s2[23]~34_combout\))) # (!\iB[0]~input_o\ & (\sSHR_s2[22]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iB[0]~input_o\,
	datac => \sSHR_s2[22]~22_combout\,
	datad => \sSHR_s2[23]~34_combout\,
	combout => \sSHR_s2[22]~35_combout\);

-- Location: LCCOMB_X22_Y13_N10
\sSHR_s3[18]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s3[18]~4_combout\ = (\iB[2]~input_o\ & ((\sSHR_s2[22]~35_combout\))) # (!\iB[2]~input_o\ & (\sSHR_s2[18]~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iB[2]~input_o\,
	datac => \sSHR_s2[18]~37_combout\,
	datad => \sSHR_s2[22]~35_combout\,
	combout => \sSHR_s3[18]~4_combout\);

-- Location: LCCOMB_X26_Y13_N22
\sSHR_s2[26]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s2[26]~32_combout\ = (\iB[0]~input_o\ & ((\iB[1]~input_o\ & ((\iA[29]~input_o\))) # (!\iB[1]~input_o\ & (\iA[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[1]~input_o\,
	datab => \iA[27]~input_o\,
	datac => \iA[29]~input_o\,
	datad => \iB[0]~input_o\,
	combout => \sSHR_s2[26]~32_combout\);

-- Location: LCCOMB_X26_Y13_N24
\sSHR_s2[26]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s2[26]~33_combout\ = (\sSHR_s2[26]~32_combout\) # ((!\iB[0]~input_o\ & \sSHR_s2[26]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[0]~input_o\,
	datac => \sSHR_s2[26]~32_combout\,
	datad => \sSHR_s2[26]~20_combout\,
	combout => \sSHR_s2[26]~33_combout\);

-- Location: LCCOMB_X22_Y13_N24
\sSHR_s4[26]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s4[26]~9_combout\ = (\iB[2]~input_o\ & (\sSHR_s1[30]~0_combout\ & (!\iB[1]~input_o\))) # (!\iB[2]~input_o\ & (((\sSHR_s2[26]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHR_s1[30]~0_combout\,
	datab => \iB[2]~input_o\,
	datac => \iB[1]~input_o\,
	datad => \sSHR_s2[26]~33_combout\,
	combout => \sSHR_s4[26]~9_combout\);

-- Location: LCCOMB_X22_Y13_N4
\sSHR_s4[18]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s4[18]~10_combout\ = (\iB[3]~input_o\ & ((\sSHR_s4[26]~9_combout\))) # (!\iB[3]~input_o\ & (\sSHR_s3[18]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHR_s3[18]~4_combout\,
	datab => \sSHR_s4[26]~9_combout\,
	datad => \iB[3]~input_o\,
	combout => \sSHR_s4[18]~10_combout\);

-- Location: LCCOMB_X20_Y12_N16
\Mux28~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~7_combout\ = (\iB[3]~input_o\) # ((!\iB[2]~input_o\ & \iB[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[2]~input_o\,
	datab => \iB[3]~input_o\,
	datac => \iB[1]~input_o\,
	combout => \Mux28~7_combout\);

-- Location: LCCOMB_X24_Y15_N0
\sSHR_s2[6]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s2[6]~38_combout\ = (!\iB[0]~input_o\ & ((\iB[1]~input_o\ & (\iA[8]~input_o\)) # (!\iB[1]~input_o\ & ((\iA[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[8]~input_o\,
	datab => \iB[1]~input_o\,
	datac => \iB[0]~input_o\,
	datad => \iA[6]~input_o\,
	combout => \sSHR_s2[6]~38_combout\);

-- Location: LCCOMB_X24_Y15_N10
\sSHR_s2[7]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s2[7]~39_combout\ = (\iB[1]~input_o\ & ((\iA[9]~input_o\))) # (!\iB[1]~input_o\ & (\iA[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[7]~input_o\,
	datac => \iB[1]~input_o\,
	datad => \iA[9]~input_o\,
	combout => \sSHR_s2[7]~39_combout\);

-- Location: LCCOMB_X24_Y15_N28
\sSHR_s2[6]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s2[6]~40_combout\ = (\sSHR_s2[6]~38_combout\) # ((\iB[0]~input_o\ & \sSHR_s2[7]~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sSHR_s2[6]~38_combout\,
	datac => \iB[0]~input_o\,
	datad => \sSHR_s2[7]~39_combout\,
	combout => \sSHR_s2[6]~40_combout\);

-- Location: LCCOMB_X22_Y13_N30
\Mux29~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~4_combout\ = (\Mux30~6_combout\ & (!\Mux28~7_combout\ & ((\sSHR_s1[2]~2_combout\)))) # (!\Mux30~6_combout\ & ((\Mux28~7_combout\) # ((\sSHR_s2[6]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~6_combout\,
	datab => \Mux28~7_combout\,
	datac => \sSHR_s2[6]~40_combout\,
	datad => \sSHR_s1[2]~2_combout\,
	combout => \Mux29~4_combout\);

-- Location: LCCOMB_X17_Y13_N26
\sSHR_s2[15]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s2[15]~41_combout\ = (\iB[1]~input_o\ & (\iA[17]~input_o\)) # (!\iB[1]~input_o\ & ((\iA[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iA[17]~input_o\,
	datac => \iA[15]~input_o\,
	datad => \iB[1]~input_o\,
	combout => \sSHR_s2[15]~41_combout\);

-- Location: LCCOMB_X17_Y13_N20
\sSHR_s2[14]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s2[14]~42_combout\ = (\iB[0]~input_o\ & ((\sSHR_s2[15]~41_combout\))) # (!\iB[0]~input_o\ & (\sSHR_s2[14]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[0]~input_o\,
	datab => \sSHR_s2[14]~26_combout\,
	datac => \sSHR_s2[15]~41_combout\,
	combout => \sSHR_s2[14]~42_combout\);

-- Location: LCCOMB_X19_Y13_N10
\sSHR_s2[11]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s2[11]~43_combout\ = (\iB[1]~input_o\ & (\iA[13]~input_o\)) # (!\iB[1]~input_o\ & ((\iA[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[1]~input_o\,
	datac => \iA[13]~input_o\,
	datad => \iA[11]~input_o\,
	combout => \sSHR_s2[11]~43_combout\);

-- Location: LCCOMB_X19_Y13_N4
\sSHR_s2[10]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s2[10]~44_combout\ = (\iB[0]~input_o\ & ((\sSHR_s2[11]~43_combout\))) # (!\iB[0]~input_o\ & (\sSHR_s2[10]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHR_s2[10]~28_combout\,
	datac => \iB[0]~input_o\,
	datad => \sSHR_s2[11]~43_combout\,
	combout => \sSHR_s2[10]~44_combout\);

-- Location: LCCOMB_X22_Y13_N8
\sSHR_s3[10]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s3[10]~5_combout\ = (\iB[2]~input_o\ & (\sSHR_s2[14]~42_combout\)) # (!\iB[2]~input_o\ & ((\sSHR_s2[10]~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHR_s2[14]~42_combout\,
	datab => \iB[2]~input_o\,
	datac => \sSHR_s2[10]~44_combout\,
	combout => \sSHR_s3[10]~5_combout\);

-- Location: LCCOMB_X22_Y13_N2
\Mux29~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~5_combout\ = (\Mux29~4_combout\ & (((\sSHR_s3[10]~5_combout\)) # (!\Mux28~7_combout\))) # (!\Mux29~4_combout\ & (\Mux28~7_combout\ & ((\sSHR_s1[4]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~4_combout\,
	datab => \Mux28~7_combout\,
	datac => \sSHR_s3[10]~5_combout\,
	datad => \sSHR_s1[4]~1_combout\,
	combout => \Mux29~5_combout\);

-- Location: LCCOMB_X26_Y17_N26
\Mux28~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~10_combout\ = (\iALUFN[5]~input_o\ & ((\iB[4]~input_o\) # (!\iALUFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iALUFN[5]~input_o\,
	datac => \iALUFN[0]~input_o\,
	datad => \iB[4]~input_o\,
	combout => \Mux28~10_combout\);

-- Location: LCCOMB_X25_Y13_N12
\sSHL_s2[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s2[2]~0_combout\ = (!\iB[0]~input_o\ & ((\iB[1]~input_o\ & ((\iA[0]~input_o\))) # (!\iB[1]~input_o\ & (\iA[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[0]~input_o\,
	datab => \iA[2]~input_o\,
	datac => \iB[1]~input_o\,
	datad => \iA[0]~input_o\,
	combout => \sSHL_s2[2]~0_combout\);

-- Location: LCCOMB_X25_Y13_N6
\sSHL_s2[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s2[2]~1_combout\ = (\sSHL_s2[2]~0_combout\) # ((\iB[0]~input_o\ & (\iA[1]~input_o\ & !\iB[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[0]~input_o\,
	datab => \iA[1]~input_o\,
	datac => \iB[1]~input_o\,
	datad => \sSHL_s2[2]~0_combout\,
	combout => \sSHL_s2[2]~1_combout\);

-- Location: LCCOMB_X24_Y13_N20
\sSHL_s4[2]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s4[2]~23_combout\ = (!\iB[3]~input_o\ & (!\iB[2]~input_o\ & \sSHL_s2[2]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[3]~input_o\,
	datac => \iB[2]~input_o\,
	datad => \sSHL_s2[2]~1_combout\,
	combout => \sSHL_s4[2]~23_combout\);

-- Location: LCCOMB_X25_Y11_N4
\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\iB[2]~input_o\ $ (\iA[2]~input_o\ $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\iB[2]~input_o\ & ((\iA[2]~input_o\) # (!\Add0~3\))) # (!\iB[2]~input_o\ & (\iA[2]~input_o\ & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iB[2]~input_o\,
	datab => \iA[2]~input_o\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X26_Y17_N24
\Mux28~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~9_combout\ = ((!\iALUFN[0]~input_o\ & !\iB[4]~input_o\)) # (!\iALUFN[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iALUFN[5]~input_o\,
	datac => \iALUFN[0]~input_o\,
	datad => \iB[4]~input_o\,
	combout => \Mux28~9_combout\);

-- Location: LCCOMB_X24_Y13_N8
\Mux29~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~6_combout\ = (\Mux28~10_combout\ & (\sSHL_s4[2]~23_combout\ & ((\Mux28~9_combout\)))) # (!\Mux28~10_combout\ & (((\Add0~4_combout\) # (!\Mux28~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~10_combout\,
	datab => \sSHL_s4[2]~23_combout\,
	datac => \Add0~4_combout\,
	datad => \Mux28~9_combout\,
	combout => \Mux29~6_combout\);

-- Location: LCCOMB_X24_Y11_N16
\Mux28~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~8_combout\ = (\iALUFN[5]~input_o\ & \iALUFN[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \iALUFN[5]~input_o\,
	datad => \iALUFN[0]~input_o\,
	combout => \Mux28~8_combout\);

-- Location: LCCOMB_X28_Y12_N20
\Mux29~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~7_combout\ = (\Mux29~6_combout\ & (((\Mux29~5_combout\) # (!\Mux28~8_combout\)))) # (!\Mux29~6_combout\ & (\sSHR_s4[18]~10_combout\ & ((\Mux28~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHR_s4[18]~10_combout\,
	datab => \Mux29~5_combout\,
	datac => \Mux29~6_combout\,
	datad => \Mux28~8_combout\,
	combout => \Mux29~7_combout\);

-- Location: LCCOMB_X28_Y12_N24
\Mux29~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~9_combout\ = (\Mux29~8_combout\ & ((\iALUFN[3]~input_o\) # ((\Add1~4_combout\)))) # (!\Mux29~8_combout\ & (!\iALUFN[3]~input_o\ & ((\Mux29~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~8_combout\,
	datab => \iALUFN[3]~input_o\,
	datac => \Add1~4_combout\,
	datad => \Mux29~7_combout\,
	combout => \Mux29~9_combout\);

-- Location: LCCOMB_X26_Y13_N26
\Mux28~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~12_combout\ = (\iALUFN[3]~input_o\ & ((\iALUFN[4]~input_o\) # (!\iALUFN[5]~input_o\))) # (!\iALUFN[3]~input_o\ & ((!\iALUFN[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iALUFN[5]~input_o\,
	datab => \iALUFN[3]~input_o\,
	datac => \iALUFN[4]~input_o\,
	combout => \Mux28~12_combout\);

-- Location: LCCOMB_X28_Y12_N2
\Mux29~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~10_combout\ = (\Mux28~4_combout\ & (\iA[2]~input_o\ & (!\iALUFN[0]~input_o\ & \iALUFN[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~4_combout\,
	datab => \iA[2]~input_o\,
	datac => \iALUFN[0]~input_o\,
	datad => \iALUFN[3]~input_o\,
	combout => \Mux29~10_combout\);

-- Location: LCCOMB_X28_Y12_N28
\Mux29~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~11_combout\ = (\Mux28~6_combout\ & (((\Mux29~10_combout\)))) # (!\Mux28~6_combout\ & (\Mux29~9_combout\ & (!\Mux28~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~6_combout\,
	datab => \Mux29~9_combout\,
	datac => \Mux28~12_combout\,
	datad => \Mux29~10_combout\,
	combout => \Mux29~11_combout\);

-- Location: LCCOMB_X27_Y12_N22
\Mux29~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~14_combout\ = (\iALUFN[2]~input_o\ & (!\iALUFN[3]~input_o\)) # (!\iALUFN[2]~input_o\ & ((\Mux29~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iALUFN[3]~input_o\,
	datac => \iALUFN[2]~input_o\,
	datad => \Mux29~11_combout\,
	combout => \Mux29~14_combout\);

-- Location: LCCOMB_X27_Y12_N26
\Mux29~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~12_combout\ = (\Mux29~14_combout\ & (\iALUFN[5]~input_o\ & (\iA[2]~input_o\ $ (\iB[2]~input_o\)))) # (!\Mux29~14_combout\ & (((\iA[2]~input_o\) # (\iB[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iALUFN[5]~input_o\,
	datab => \iA[2]~input_o\,
	datac => \Mux29~14_combout\,
	datad => \iB[2]~input_o\,
	combout => \Mux29~12_combout\);

-- Location: LCCOMB_X28_Y14_N18
\Mux28~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~5_combout\ = (\iALUFN[2]~input_o\ & (((\iALUFN[5]~input_o\ & \iALUFN[1]~input_o\)) # (!\iALUFN[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iALUFN[5]~input_o\,
	datab => \iALUFN[3]~input_o\,
	datac => \iALUFN[1]~input_o\,
	datad => \iALUFN[2]~input_o\,
	combout => \Mux28~5_combout\);

-- Location: LCCOMB_X27_Y12_N12
\Mux29~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~13_combout\ = (\Mux28~5_combout\ & (\Mux29~12_combout\ & ((\iALUFN[1]~input_o\) # (!\Mux29~14_combout\)))) # (!\Mux28~5_combout\ & (\Mux29~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~14_combout\,
	datab => \iALUFN[1]~input_o\,
	datac => \Mux29~12_combout\,
	datad => \Mux28~5_combout\,
	combout => \Mux29~13_combout\);

-- Location: LCCOMB_X27_Y12_N8
\Mux29~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~15_combout\ = (\Mux29~13_combout\ & (((!\iALUFN[0]~input_o\ & !\iALUFN[4]~input_o\)) # (!\iALUFN[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iALUFN[0]~input_o\,
	datab => \iALUFN[2]~input_o\,
	datac => \iALUFN[4]~input_o\,
	datad => \Mux29~13_combout\,
	combout => \Mux29~15_combout\);

-- Location: LCCOMB_X28_Y12_N12
\Mux28~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~19_combout\ = (\Mux28~4_combout\ & (\iALUFN[3]~input_o\ & (!\iALUFN[0]~input_o\ & \iA[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~4_combout\,
	datab => \iALUFN[3]~input_o\,
	datac => \iALUFN[0]~input_o\,
	datad => \iA[3]~input_o\,
	combout => \Mux28~19_combout\);

-- Location: LCCOMB_X27_Y11_N6
\Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\iB[3]~input_o\ & ((\iA[3]~input_o\ & (!\Add1~5\)) # (!\iA[3]~input_o\ & ((\Add1~5\) # (GND))))) # (!\iB[3]~input_o\ & ((\iA[3]~input_o\ & (\Add1~5\ & VCC)) # (!\iA[3]~input_o\ & (!\Add1~5\))))
-- \Add1~7\ = CARRY((\iB[3]~input_o\ & ((!\Add1~5\) # (!\iA[3]~input_o\))) # (!\iB[3]~input_o\ & (!\iA[3]~input_o\ & !\Add1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iB[3]~input_o\,
	datab => \iA[3]~input_o\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X25_Y11_N6
\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\iA[3]~input_o\ & ((\iB[3]~input_o\ & (\Add0~5\ & VCC)) # (!\iB[3]~input_o\ & (!\Add0~5\)))) # (!\iA[3]~input_o\ & ((\iB[3]~input_o\ & (!\Add0~5\)) # (!\iB[3]~input_o\ & ((\Add0~5\) # (GND)))))
-- \Add0~7\ = CARRY((\iA[3]~input_o\ & (!\iB[3]~input_o\ & !\Add0~5\)) # (!\iA[3]~input_o\ & ((!\Add0~5\) # (!\iB[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iA[3]~input_o\,
	datab => \iB[3]~input_o\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X25_Y13_N24
\sSHL_s2[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s2[3]~2_combout\ = (!\iB[1]~input_o\ & ((\iB[0]~input_o\ & (\iA[2]~input_o\)) # (!\iB[0]~input_o\ & ((\iA[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[0]~input_o\,
	datab => \iA[2]~input_o\,
	datac => \iB[1]~input_o\,
	datad => \iA[3]~input_o\,
	combout => \sSHL_s2[3]~2_combout\);

-- Location: LCCOMB_X24_Y13_N10
\sSHL_s4[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s4[3]~4_combout\ = (\Mux30~6_combout\ & ((\sSHL_s2[3]~2_combout\) # ((\sSHL_s1[1]~0_combout\ & \iB[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~6_combout\,
	datab => \sSHL_s1[1]~0_combout\,
	datac => \iB[1]~input_o\,
	datad => \sSHL_s2[3]~2_combout\,
	combout => \sSHL_s4[3]~4_combout\);

-- Location: LCCOMB_X24_Y13_N4
\Mux28~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~15_combout\ = (\Mux28~9_combout\ & ((\Mux28~10_combout\ & ((\sSHL_s4[3]~4_combout\))) # (!\Mux28~10_combout\ & (\Add0~6_combout\)))) # (!\Mux28~9_combout\ & (((!\Mux28~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Mux28~9_combout\,
	datac => \Mux28~10_combout\,
	datad => \sSHL_s4[3]~4_combout\,
	combout => \Mux28~15_combout\);

-- Location: LCCOMB_X20_Y14_N28
\sSHR_s2[27]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s2[27]~47_combout\ = (\iB[0]~input_o\ & ((\iB[1]~input_o\ & (\iA[30]~input_o\)) # (!\iB[1]~input_o\ & ((\iA[28]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[1]~input_o\,
	datab => \iA[30]~input_o\,
	datac => \iB[0]~input_o\,
	datad => \iA[28]~input_o\,
	combout => \sSHR_s2[27]~47_combout\);

-- Location: LCCOMB_X26_Y13_N20
\sSHR_s2[27]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s2[27]~48_combout\ = (!\iB[0]~input_o\ & ((\iB[1]~input_o\ & ((\iA[29]~input_o\))) # (!\iB[1]~input_o\ & (\iA[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[1]~input_o\,
	datab => \iA[27]~input_o\,
	datac => \iA[29]~input_o\,
	datad => \iB[0]~input_o\,
	combout => \sSHR_s2[27]~48_combout\);

-- Location: LCCOMB_X20_Y14_N22
\sSHR_s3[27]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s3[27]~7_combout\ = (!\iB[2]~input_o\ & ((\sSHR_s2[27]~47_combout\) # (\sSHR_s2[27]~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[2]~input_o\,
	datab => \sSHR_s2[27]~47_combout\,
	datac => \sSHR_s2[27]~48_combout\,
	combout => \sSHR_s3[27]~7_combout\);

-- Location: LCCOMB_X20_Y14_N8
\sSHR_s3[27]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s3[27]~8_combout\ = (\iB[2]~input_o\ & (!\iB[0]~input_o\ & (!\iB[1]~input_o\ & \iA[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[2]~input_o\,
	datab => \iB[0]~input_o\,
	datac => \iB[1]~input_o\,
	datad => \iA[31]~input_o\,
	combout => \sSHR_s3[27]~8_combout\);

-- Location: LCCOMB_X16_Y13_N0
\sSHR_s2[19]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s2[19]~46_combout\ = (\iB[0]~input_o\ & (\sSHR_s2[20]~6_combout\)) # (!\iB[0]~input_o\ & ((\sSHR_s2[19]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[0]~input_o\,
	datab => \sSHR_s2[20]~6_combout\,
	datad => \sSHR_s2[19]~36_combout\,
	combout => \sSHR_s2[19]~46_combout\);

-- Location: LCCOMB_X26_Y14_N28
\sSHR_s2[23]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s2[23]~45_combout\ = (\iB[0]~input_o\ & ((\sSHR_s2[24]~3_combout\))) # (!\iB[0]~input_o\ & (\sSHR_s2[23]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHR_s2[23]~34_combout\,
	datac => \iB[0]~input_o\,
	datad => \sSHR_s2[24]~3_combout\,
	combout => \sSHR_s2[23]~45_combout\);

-- Location: LCCOMB_X20_Y14_N10
\sSHR_s3[19]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s3[19]~6_combout\ = (\iB[2]~input_o\ & ((\sSHR_s2[23]~45_combout\))) # (!\iB[2]~input_o\ & (\sSHR_s2[19]~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[2]~input_o\,
	datac => \sSHR_s2[19]~46_combout\,
	datad => \sSHR_s2[23]~45_combout\,
	combout => \sSHR_s3[19]~6_combout\);

-- Location: LCCOMB_X20_Y14_N18
\sSHR_s4[19]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s4[19]~11_combout\ = (\iB[3]~input_o\ & ((\sSHR_s3[27]~7_combout\) # ((\sSHR_s3[27]~8_combout\)))) # (!\iB[3]~input_o\ & (((\sSHR_s3[19]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHR_s3[27]~7_combout\,
	datab => \sSHR_s3[27]~8_combout\,
	datac => \iB[3]~input_o\,
	datad => \sSHR_s3[19]~6_combout\,
	combout => \sSHR_s4[19]~11_combout\);

-- Location: LCCOMB_X24_Y15_N14
\sSHR_s2[7]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s2[7]~49_combout\ = (\iB[0]~input_o\ & (\sSHR_s2[8]~15_combout\)) # (!\iB[0]~input_o\ & ((\sSHR_s2[7]~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHR_s2[8]~15_combout\,
	datab => \iB[0]~input_o\,
	datad => \sSHR_s2[7]~39_combout\,
	combout => \sSHR_s2[7]~49_combout\);

-- Location: LCCOMB_X20_Y12_N26
\Mux28~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~13_combout\ = (\Mux30~6_combout\ & (!\Mux28~7_combout\ & ((\sSHR_s1[3]~3_combout\)))) # (!\Mux30~6_combout\ & ((\Mux28~7_combout\) # ((\sSHR_s2[7]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~6_combout\,
	datab => \Mux28~7_combout\,
	datac => \sSHR_s2[7]~49_combout\,
	datad => \sSHR_s1[3]~3_combout\,
	combout => \Mux28~13_combout\);

-- Location: LCCOMB_X17_Y13_N6
\sSHR_s2[15]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s2[15]~50_combout\ = (\iB[0]~input_o\ & (\sSHR_s2[16]~9_combout\)) # (!\iB[0]~input_o\ & ((\sSHR_s2[15]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[0]~input_o\,
	datab => \sSHR_s2[16]~9_combout\,
	datac => \sSHR_s2[15]~41_combout\,
	combout => \sSHR_s2[15]~50_combout\);

-- Location: LCCOMB_X17_Y13_N0
\sSHR_s2[11]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s2[11]~51_combout\ = (\iB[0]~input_o\ & (\sSHR_s2[12]~12_combout\)) # (!\iB[0]~input_o\ & ((\sSHR_s2[11]~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[0]~input_o\,
	datab => \sSHR_s2[12]~12_combout\,
	datad => \sSHR_s2[11]~43_combout\,
	combout => \sSHR_s2[11]~51_combout\);

-- Location: LCCOMB_X20_Y14_N4
\sSHR_s3[11]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s3[11]~9_combout\ = (\iB[2]~input_o\ & (\sSHR_s2[15]~50_combout\)) # (!\iB[2]~input_o\ & ((\sSHR_s2[11]~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHR_s2[15]~50_combout\,
	datac => \sSHR_s2[11]~51_combout\,
	datad => \iB[2]~input_o\,
	combout => \sSHR_s3[11]~9_combout\);

-- Location: LCCOMB_X20_Y12_N4
\Mux28~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~14_combout\ = (\Mux28~13_combout\ & (((\sSHR_s3[11]~9_combout\)) # (!\Mux28~7_combout\))) # (!\Mux28~13_combout\ & (\Mux28~7_combout\ & (\sSHR_s1[5]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~13_combout\,
	datab => \Mux28~7_combout\,
	datac => \sSHR_s1[5]~4_combout\,
	datad => \sSHR_s3[11]~9_combout\,
	combout => \Mux28~14_combout\);

-- Location: LCCOMB_X28_Y12_N14
\Mux28~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~16_combout\ = (\Mux28~8_combout\ & ((\Mux28~15_combout\ & ((\Mux28~14_combout\))) # (!\Mux28~15_combout\ & (\sSHR_s4[19]~11_combout\)))) # (!\Mux28~8_combout\ & (\Mux28~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~8_combout\,
	datab => \Mux28~15_combout\,
	datac => \sSHR_s4[19]~11_combout\,
	datad => \Mux28~14_combout\,
	combout => \Mux28~16_combout\);

-- Location: LCCOMB_X28_Y12_N0
\Mux28~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~17_combout\ = (\iALUFN[3]~input_o\ & ((\iB[3]~input_o\ & ((\iA[3]~input_o\))) # (!\iB[3]~input_o\ & (\Mux28~11_combout\ & !\iA[3]~input_o\)))) # (!\iALUFN[3]~input_o\ & (((\Mux28~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[3]~input_o\,
	datab => \iALUFN[3]~input_o\,
	datac => \Mux28~11_combout\,
	datad => \iA[3]~input_o\,
	combout => \Mux28~17_combout\);

-- Location: LCCOMB_X28_Y12_N10
\Mux28~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~18_combout\ = (\iALUFN[3]~input_o\ & (((\Mux28~17_combout\)))) # (!\iALUFN[3]~input_o\ & ((\Mux28~17_combout\ & (\Add1~6_combout\)) # (!\Mux28~17_combout\ & ((\Mux28~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datab => \iALUFN[3]~input_o\,
	datac => \Mux28~16_combout\,
	datad => \Mux28~17_combout\,
	combout => \Mux28~18_combout\);

-- Location: LCCOMB_X28_Y12_N22
\Mux28~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~20_combout\ = (\Mux28~6_combout\ & (\Mux28~19_combout\)) # (!\Mux28~6_combout\ & (((!\Mux28~12_combout\ & \Mux28~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~19_combout\,
	datab => \Mux28~6_combout\,
	datac => \Mux28~12_combout\,
	datad => \Mux28~18_combout\,
	combout => \Mux28~20_combout\);

-- Location: LCCOMB_X27_Y12_N10
\Mux28~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~23_combout\ = (\iALUFN[2]~input_o\ & (!\iALUFN[3]~input_o\)) # (!\iALUFN[2]~input_o\ & ((\Mux28~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iALUFN[3]~input_o\,
	datac => \iALUFN[2]~input_o\,
	datad => \Mux28~20_combout\,
	combout => \Mux28~23_combout\);

-- Location: LCCOMB_X27_Y12_N30
\Mux28~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~21_combout\ = (\Mux28~23_combout\ & (\iALUFN[5]~input_o\ & (\iB[3]~input_o\ $ (\iA[3]~input_o\)))) # (!\Mux28~23_combout\ & (((\iB[3]~input_o\) # (\iA[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iALUFN[5]~input_o\,
	datab => \iB[3]~input_o\,
	datac => \iA[3]~input_o\,
	datad => \Mux28~23_combout\,
	combout => \Mux28~21_combout\);

-- Location: LCCOMB_X27_Y12_N16
\Mux28~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~22_combout\ = (\Mux28~5_combout\ & (\Mux28~21_combout\ & ((\iALUFN[1]~input_o\) # (!\Mux28~23_combout\)))) # (!\Mux28~5_combout\ & (\Mux28~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~23_combout\,
	datab => \iALUFN[1]~input_o\,
	datac => \Mux28~21_combout\,
	datad => \Mux28~5_combout\,
	combout => \Mux28~22_combout\);

-- Location: LCCOMB_X27_Y12_N4
\Mux28~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~24_combout\ = (\Mux28~22_combout\ & (((!\iALUFN[0]~input_o\ & !\iALUFN[4]~input_o\)) # (!\iALUFN[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iALUFN[0]~input_o\,
	datab => \iALUFN[2]~input_o\,
	datac => \iALUFN[4]~input_o\,
	datad => \Mux28~22_combout\,
	combout => \Mux28~24_combout\);

-- Location: LCCOMB_X25_Y15_N8
\Mux24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (\iALUFN[3]~input_o\ & !\iALUFN[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iALUFN[3]~input_o\,
	datad => \iALUFN[1]~input_o\,
	combout => \Mux24~0_combout\);

-- Location: LCCOMB_X25_Y15_N6
\Mux24~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux24~5_combout\ = (\iALUFN[1]~input_o\) # ((\iALUFN[3]~input_o\ & \iALUFN[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iALUFN[3]~input_o\,
	datac => \iALUFN[0]~input_o\,
	datad => \iALUFN[1]~input_o\,
	combout => \Mux24~5_combout\);

-- Location: LCCOMB_X21_Y15_N30
\sSHR_s3[12]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s3[12]~10_combout\ = (\iB[2]~input_o\ & (\sSHR_s2[16]~10_combout\)) # (!\iB[2]~input_o\ & ((\sSHR_s2[12]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHR_s2[16]~10_combout\,
	datac => \sSHR_s2[12]~13_combout\,
	datad => \iB[2]~input_o\,
	combout => \sSHR_s3[12]~10_combout\);

-- Location: LCCOMB_X20_Y13_N10
\Mux24~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux24~2_combout\ = (\iB[4]~input_o\) # ((!\iB[3]~input_o\ & \iB[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[3]~input_o\,
	datac => \iB[4]~input_o\,
	datad => \iB[2]~input_o\,
	combout => \Mux24~2_combout\);

-- Location: LCCOMB_X20_Y13_N0
\Mux24~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux24~1_combout\ = (\iB[3]~input_o\) # (\iB[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[3]~input_o\,
	datac => \iB[4]~input_o\,
	combout => \Mux24~1_combout\);

-- Location: LCCOMB_X22_Y15_N22
\sSHR_s2[4]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s2[4]~52_combout\ = (\sSHR_s2[4]~17_combout\) # ((\sSHR_s1[4]~1_combout\ & !\iB[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHR_s1[4]~1_combout\,
	datab => \sSHR_s2[4]~17_combout\,
	datac => \iB[1]~input_o\,
	combout => \sSHR_s2[4]~52_combout\);

-- Location: LCCOMB_X21_Y15_N16
\Mux27~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~3_combout\ = (\Mux24~2_combout\ & ((\sSHR_s2[8]~16_combout\) # ((\Mux24~1_combout\)))) # (!\Mux24~2_combout\ & (((!\Mux24~1_combout\ & \sSHR_s2[4]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHR_s2[8]~16_combout\,
	datab => \Mux24~2_combout\,
	datac => \Mux24~1_combout\,
	datad => \sSHR_s2[4]~52_combout\,
	combout => \Mux27~3_combout\);

-- Location: LCCOMB_X21_Y15_N10
\sSHR_s3[20]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s3[20]~11_combout\ = (\iB[2]~input_o\ & (\sSHR_s2[24]~4_combout\)) # (!\iB[2]~input_o\ & ((\sSHR_s2[20]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iB[2]~input_o\,
	datac => \sSHR_s2[24]~4_combout\,
	datad => \sSHR_s2[20]~7_combout\,
	combout => \sSHR_s3[20]~11_combout\);

-- Location: LCCOMB_X21_Y15_N28
\sSHR_s4[20]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s4[20]~12_combout\ = (\iB[3]~input_o\ & (((!\iB[2]~input_o\ & \sSHR_s2[28]~1_combout\)))) # (!\iB[3]~input_o\ & (\sSHR_s3[20]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHR_s3[20]~11_combout\,
	datab => \iB[2]~input_o\,
	datac => \iB[3]~input_o\,
	datad => \sSHR_s2[28]~1_combout\,
	combout => \sSHR_s4[20]~12_combout\);

-- Location: LCCOMB_X21_Y15_N14
\Mux27~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~4_combout\ = (\Mux27~3_combout\ & (((\sSHR_s4[20]~12_combout\) # (!\Mux24~1_combout\)))) # (!\Mux27~3_combout\ & (\sSHR_s3[12]~10_combout\ & (\Mux24~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHR_s3[12]~10_combout\,
	datab => \Mux27~3_combout\,
	datac => \Mux24~1_combout\,
	datad => \sSHR_s4[20]~12_combout\,
	combout => \Mux27~4_combout\);

-- Location: LCCOMB_X27_Y11_N8
\Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((\iB[4]~input_o\ $ (\iA[4]~input_o\ $ (\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((\iB[4]~input_o\ & (\iA[4]~input_o\ & !\Add1~7\)) # (!\iB[4]~input_o\ & ((\iA[4]~input_o\) # (!\Add1~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iB[4]~input_o\,
	datab => \iA[4]~input_o\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X25_Y11_N8
\Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\iA[4]~input_o\ $ (\iB[4]~input_o\ $ (!\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\iA[4]~input_o\ & ((\iB[4]~input_o\) # (!\Add0~7\))) # (!\iA[4]~input_o\ & (\iB[4]~input_o\ & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iA[4]~input_o\,
	datab => \iB[4]~input_o\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X26_Y13_N6
\Mux27~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~5_combout\ = (\iALUFN[5]~input_o\ & (\iALUFN[0]~input_o\)) # (!\iALUFN[5]~input_o\ & ((\iALUFN[0]~input_o\ & (\Add1~8_combout\)) # (!\iALUFN[0]~input_o\ & ((\Add0~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iALUFN[5]~input_o\,
	datab => \iALUFN[0]~input_o\,
	datac => \Add1~8_combout\,
	datad => \Add0~8_combout\,
	combout => \Mux27~5_combout\);

-- Location: LCCOMB_X21_Y11_N2
\Mux24~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux24~3_combout\ = (\iALUFN[5]~input_o\ & ((\iALUFN[0]~input_o\) # (!\iB[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[4]~input_o\,
	datac => \iALUFN[0]~input_o\,
	datad => \iALUFN[5]~input_o\,
	combout => \Mux24~3_combout\);

-- Location: LCCOMB_X25_Y13_N4
\sSHL_s2[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s2[4]~4_combout\ = (\iB[1]~input_o\ & ((\iA[2]~input_o\))) # (!\iB[1]~input_o\ & (\iA[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[4]~input_o\,
	datac => \iB[1]~input_o\,
	datad => \iA[2]~input_o\,
	combout => \sSHL_s2[4]~4_combout\);

-- Location: LCCOMB_X25_Y13_N2
\sSHL_s2[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s2[4]~3_combout\ = (\iB[0]~input_o\ & ((\iB[1]~input_o\ & (\iA[1]~input_o\)) # (!\iB[1]~input_o\ & ((\iA[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[0]~input_o\,
	datab => \iA[1]~input_o\,
	datac => \iB[1]~input_o\,
	datad => \iA[3]~input_o\,
	combout => \sSHL_s2[4]~3_combout\);

-- Location: LCCOMB_X22_Y15_N10
\sSHL_s2[4]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s2[4]~5_combout\ = (\sSHL_s2[4]~3_combout\) # ((!\iB[0]~input_o\ & \sSHL_s2[4]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[0]~input_o\,
	datac => \sSHL_s2[4]~4_combout\,
	datad => \sSHL_s2[4]~3_combout\,
	combout => \sSHL_s2[4]~5_combout\);

-- Location: LCCOMB_X22_Y15_N8
\sSHL_s3[4]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s3[4]~0_combout\ = (!\iB[0]~input_o\ & (\iB[2]~input_o\ & (!\iB[1]~input_o\ & \iA[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[0]~input_o\,
	datab => \iB[2]~input_o\,
	datac => \iB[1]~input_o\,
	datad => \iA[0]~input_o\,
	combout => \sSHL_s3[4]~0_combout\);

-- Location: LCCOMB_X22_Y15_N28
\sSHL_s4[4]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s4[4]~5_combout\ = (!\iB[3]~input_o\ & ((\sSHL_s3[4]~0_combout\) # ((\sSHL_s2[4]~5_combout\ & !\iB[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHL_s2[4]~5_combout\,
	datab => \iB[2]~input_o\,
	datac => \sSHL_s3[4]~0_combout\,
	datad => \iB[3]~input_o\,
	combout => \sSHL_s4[4]~5_combout\);

-- Location: LCCOMB_X22_Y15_N24
\Mux27~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~6_combout\ = (\Mux27~5_combout\ & ((\Mux27~4_combout\) # ((!\Mux24~3_combout\)))) # (!\Mux27~5_combout\ & (((\Mux24~3_combout\ & \sSHL_s4[4]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~4_combout\,
	datab => \Mux27~5_combout\,
	datac => \Mux24~3_combout\,
	datad => \sSHL_s4[4]~5_combout\,
	combout => \Mux27~6_combout\);

-- Location: LCCOMB_X25_Y15_N10
\Mux27~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~7_combout\ = (\iALUFN[4]~input_o\ & \Mux27~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iALUFN[4]~input_o\,
	datad => \Mux27~6_combout\,
	combout => \Mux27~7_combout\);

-- Location: LCCOMB_X25_Y15_N28
\Mux24~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux24~4_combout\ = (\iALUFN[1]~input_o\ & (\Mux28~4_combout\ & (!\iALUFN[0]~input_o\ & \iALUFN[3]~input_o\))) # (!\iALUFN[1]~input_o\ & (((!\iALUFN[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iALUFN[1]~input_o\,
	datab => \Mux28~4_combout\,
	datac => \iALUFN[0]~input_o\,
	datad => \iALUFN[3]~input_o\,
	combout => \Mux24~4_combout\);

-- Location: LCCOMB_X25_Y15_N24
\Mux27~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~8_combout\ = (\Mux24~5_combout\ & (\iA[4]~input_o\ & ((\Mux24~4_combout\)))) # (!\Mux24~5_combout\ & (((\Mux27~7_combout\) # (!\Mux24~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~5_combout\,
	datab => \iA[4]~input_o\,
	datac => \Mux27~7_combout\,
	datad => \Mux24~4_combout\,
	combout => \Mux27~8_combout\);

-- Location: LCCOMB_X26_Y15_N2
\Mux27~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~9_combout\ = (\Mux24~0_combout\ & ((\iB[4]~input_o\ & (\iA[4]~input_o\)) # (!\iB[4]~input_o\ & (!\iA[4]~input_o\ & !\Mux27~8_combout\)))) # (!\Mux24~0_combout\ & (((\Mux27~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~0_combout\,
	datab => \iB[4]~input_o\,
	datac => \iA[4]~input_o\,
	datad => \Mux27~8_combout\,
	combout => \Mux27~9_combout\);

-- Location: LCCOMB_X28_Y14_N12
\Mux27~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~1_combout\ = (\iALUFN[5]~input_o\ & (\iALUFN[1]~input_o\ & \iALUFN[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iALUFN[5]~input_o\,
	datac => \iALUFN[1]~input_o\,
	datad => \iALUFN[2]~input_o\,
	combout => \Mux27~1_combout\);

-- Location: LCCOMB_X26_Y15_N0
\Mux27~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~2_combout\ = (\Mux27~1_combout\ & ((\iB[4]~input_o\ & ((\iALUFN[3]~input_o\) # (!\iA[4]~input_o\))) # (!\iB[4]~input_o\ & ((\iA[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iALUFN[3]~input_o\,
	datab => \iB[4]~input_o\,
	datac => \iA[4]~input_o\,
	datad => \Mux27~1_combout\,
	combout => \Mux27~2_combout\);

-- Location: LCCOMB_X26_Y15_N12
\Mux20~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~2_combout\ = (!\iALUFN[0]~input_o\ & !\iALUFN[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \iALUFN[0]~input_o\,
	datad => \iALUFN[4]~input_o\,
	combout => \Mux20~2_combout\);

-- Location: LCCOMB_X26_Y15_N30
\Mux27~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (\iALUFN[2]~input_o\ & (((\Mux20~2_combout\)))) # (!\iALUFN[2]~input_o\ & (((\Mux28~4_combout\)) # (!\Mux24~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~0_combout\,
	datab => \Mux28~4_combout\,
	datac => \iALUFN[2]~input_o\,
	datad => \Mux20~2_combout\,
	combout => \Mux27~0_combout\);

-- Location: LCCOMB_X26_Y15_N20
\Mux27~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~10_combout\ = (\Mux27~0_combout\ & ((\Mux27~2_combout\) # ((\Mux27~9_combout\ & !\iALUFN[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~9_combout\,
	datab => \Mux27~2_combout\,
	datac => \iALUFN[2]~input_o\,
	datad => \Mux27~0_combout\,
	combout => \Mux27~10_combout\);

-- Location: LCCOMB_X26_Y15_N6
\Mux26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (\Mux27~1_combout\ & ((\iA[5]~input_o\ & ((\iALUFN[3]~input_o\) # (!\iB[5]~input_o\))) # (!\iA[5]~input_o\ & ((\iB[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[5]~input_o\,
	datab => \iALUFN[3]~input_o\,
	datac => \Mux27~1_combout\,
	datad => \iB[5]~input_o\,
	combout => \Mux26~0_combout\);

-- Location: LCCOMB_X26_Y13_N8
\sSHL_s2[5]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s2[5]~6_combout\ = (\iB[1]~input_o\ & ((\iA[3]~input_o\))) # (!\iB[1]~input_o\ & (\iA[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[1]~input_o\,
	datab => \iA[5]~input_o\,
	datac => \iA[3]~input_o\,
	combout => \sSHL_s2[5]~6_combout\);

-- Location: LCCOMB_X22_Y15_N26
\sSHL_s2[5]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s2[5]~7_combout\ = (\iB[0]~input_o\ & ((\sSHL_s2[4]~4_combout\))) # (!\iB[0]~input_o\ & (\sSHL_s2[5]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[0]~input_o\,
	datab => \sSHL_s2[5]~6_combout\,
	datac => \sSHL_s2[4]~4_combout\,
	combout => \sSHL_s2[5]~7_combout\);

-- Location: LCCOMB_X22_Y12_N16
\sSHL_s4[13]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s4[13]~6_combout\ = (\iB[2]~input_o\ & (!\iB[1]~input_o\ & ((\sSHL_s1[1]~0_combout\)))) # (!\iB[2]~input_o\ & (((\sSHL_s2[5]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[1]~input_o\,
	datab => \sSHL_s2[5]~7_combout\,
	datac => \iB[2]~input_o\,
	datad => \sSHL_s1[1]~0_combout\,
	combout => \sSHL_s4[13]~6_combout\);

-- Location: LCCOMB_X22_Y12_N18
\sSHL_s4[5]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s4[5]~7_combout\ = (!\iB[3]~input_o\ & \sSHL_s4[13]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \iB[3]~input_o\,
	datad => \sSHL_s4[13]~6_combout\,
	combout => \sSHL_s4[5]~7_combout\);

-- Location: LCCOMB_X21_Y10_N18
\sSHR_s3[13]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s3[13]~12_combout\ = (\iB[2]~input_o\ & (\sSHR_s2[17]~25_combout\)) # (!\iB[2]~input_o\ & ((\sSHR_s2[13]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHR_s2[17]~25_combout\,
	datac => \iB[2]~input_o\,
	datad => \sSHR_s2[13]~27_combout\,
	combout => \sSHR_s3[13]~12_combout\);

-- Location: LCCOMB_X24_Y12_N18
\Mux26~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux26~1_combout\ = (\Mux24~1_combout\ & ((\sSHR_s3[13]~12_combout\) # ((\Mux24~2_combout\)))) # (!\Mux24~1_combout\ & (((\sSHR_s2[5]~31_combout\ & !\Mux24~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHR_s3[13]~12_combout\,
	datab => \Mux24~1_combout\,
	datac => \sSHR_s2[5]~31_combout\,
	datad => \Mux24~2_combout\,
	combout => \Mux26~1_combout\);

-- Location: LCCOMB_X22_Y12_N20
\sSHR_s3[21]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s3[21]~13_combout\ = (\iB[2]~input_o\ & ((\sSHR_s2[25]~21_combout\))) # (!\iB[2]~input_o\ & (\sSHR_s2[21]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHR_s2[21]~23_combout\,
	datac => \iB[2]~input_o\,
	datad => \sSHR_s2[25]~21_combout\,
	combout => \sSHR_s3[21]~13_combout\);

-- Location: LCCOMB_X22_Y12_N30
\sSHR_s4[21]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s4[21]~13_combout\ = (\iB[3]~input_o\ & (!\iB[2]~input_o\ & (\sSHR_s2[29]~19_combout\))) # (!\iB[3]~input_o\ & (((\sSHR_s3[21]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[3]~input_o\,
	datab => \iB[2]~input_o\,
	datac => \sSHR_s2[29]~19_combout\,
	datad => \sSHR_s3[21]~13_combout\,
	combout => \sSHR_s4[21]~13_combout\);

-- Location: LCCOMB_X21_Y11_N4
\Mux26~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux26~2_combout\ = (\Mux24~2_combout\ & ((\Mux26~1_combout\ & ((\sSHR_s4[21]~13_combout\))) # (!\Mux26~1_combout\ & (\sSHR_s2[9]~29_combout\)))) # (!\Mux24~2_combout\ & (((\Mux26~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHR_s2[9]~29_combout\,
	datab => \Mux24~2_combout\,
	datac => \Mux26~1_combout\,
	datad => \sSHR_s4[21]~13_combout\,
	combout => \Mux26~2_combout\);

-- Location: LCCOMB_X27_Y11_N10
\Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\iB[5]~input_o\ & ((\iA[5]~input_o\ & (!\Add1~9\)) # (!\iA[5]~input_o\ & ((\Add1~9\) # (GND))))) # (!\iB[5]~input_o\ & ((\iA[5]~input_o\ & (\Add1~9\ & VCC)) # (!\iA[5]~input_o\ & (!\Add1~9\))))
-- \Add1~11\ = CARRY((\iB[5]~input_o\ & ((!\Add1~9\) # (!\iA[5]~input_o\))) # (!\iB[5]~input_o\ & (!\iA[5]~input_o\ & !\Add1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iB[5]~input_o\,
	datab => \iA[5]~input_o\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X25_Y11_N10
\Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\iB[5]~input_o\ & ((\iA[5]~input_o\ & (\Add0~9\ & VCC)) # (!\iA[5]~input_o\ & (!\Add0~9\)))) # (!\iB[5]~input_o\ & ((\iA[5]~input_o\ & (!\Add0~9\)) # (!\iA[5]~input_o\ & ((\Add0~9\) # (GND)))))
-- \Add0~11\ = CARRY((\iB[5]~input_o\ & (!\iA[5]~input_o\ & !\Add0~9\)) # (!\iB[5]~input_o\ & ((!\Add0~9\) # (!\iA[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iB[5]~input_o\,
	datab => \iA[5]~input_o\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X21_Y11_N30
\Mux26~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux26~3_combout\ = (\iALUFN[0]~input_o\ & ((\Add1~10_combout\) # ((\iALUFN[5]~input_o\)))) # (!\iALUFN[0]~input_o\ & (((\Add0~10_combout\ & !\iALUFN[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~10_combout\,
	datab => \Add0~10_combout\,
	datac => \iALUFN[0]~input_o\,
	datad => \iALUFN[5]~input_o\,
	combout => \Mux26~3_combout\);

-- Location: LCCOMB_X21_Y11_N8
\Mux26~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux26~4_combout\ = (\Mux26~3_combout\ & (((\Mux26~2_combout\) # (!\Mux24~3_combout\)))) # (!\Mux26~3_combout\ & (\sSHL_s4[5]~7_combout\ & ((\Mux24~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHL_s4[5]~7_combout\,
	datab => \Mux26~2_combout\,
	datac => \Mux26~3_combout\,
	datad => \Mux24~3_combout\,
	combout => \Mux26~4_combout\);

-- Location: LCCOMB_X25_Y15_N2
\Mux26~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux26~5_combout\ = (\iALUFN[4]~input_o\ & \Mux26~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iALUFN[4]~input_o\,
	datad => \Mux26~4_combout\,
	combout => \Mux26~5_combout\);

-- Location: LCCOMB_X25_Y15_N20
\Mux26~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux26~6_combout\ = (\Mux24~5_combout\ & (((\iA[5]~input_o\ & \Mux24~4_combout\)))) # (!\Mux24~5_combout\ & ((\Mux26~5_combout\) # ((!\Mux24~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~5_combout\,
	datab => \Mux26~5_combout\,
	datac => \iA[5]~input_o\,
	datad => \Mux24~4_combout\,
	combout => \Mux26~6_combout\);

-- Location: LCCOMB_X26_Y15_N8
\Mux26~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux26~7_combout\ = (\Mux24~0_combout\ & ((\iA[5]~input_o\ & ((\iB[5]~input_o\))) # (!\iA[5]~input_o\ & (!\Mux26~6_combout\ & !\iB[5]~input_o\)))) # (!\Mux24~0_combout\ & (\Mux26~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~0_combout\,
	datab => \Mux26~6_combout\,
	datac => \iA[5]~input_o\,
	datad => \iB[5]~input_o\,
	combout => \Mux26~7_combout\);

-- Location: LCCOMB_X26_Y15_N26
\Mux26~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux26~8_combout\ = (\Mux27~0_combout\ & ((\Mux26~0_combout\) # ((\Mux26~7_combout\ & !\iALUFN[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~0_combout\,
	datab => \Mux26~7_combout\,
	datac => \iALUFN[2]~input_o\,
	datad => \Mux27~0_combout\,
	combout => \Mux26~8_combout\);

-- Location: LCCOMB_X25_Y11_N12
\Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\iA[6]~input_o\ $ (\iB[6]~input_o\ $ (!\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((\iA[6]~input_o\ & ((\iB[6]~input_o\) # (!\Add0~11\))) # (!\iA[6]~input_o\ & (\iB[6]~input_o\ & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iA[6]~input_o\,
	datab => \iB[6]~input_o\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X27_Y11_N12
\Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((\iA[6]~input_o\ $ (\iB[6]~input_o\ $ (\Add1~11\)))) # (GND)
-- \Add1~13\ = CARRY((\iA[6]~input_o\ & ((!\Add1~11\) # (!\iB[6]~input_o\))) # (!\iA[6]~input_o\ & (!\iB[6]~input_o\ & !\Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iA[6]~input_o\,
	datab => \iB[6]~input_o\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X21_Y11_N10
\Mux25~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux25~3_combout\ = (\iALUFN[5]~input_o\ & (((\iALUFN[0]~input_o\)))) # (!\iALUFN[5]~input_o\ & ((\iALUFN[0]~input_o\ & ((\Add1~12_combout\))) # (!\iALUFN[0]~input_o\ & (\Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iALUFN[5]~input_o\,
	datab => \Add0~12_combout\,
	datac => \iALUFN[0]~input_o\,
	datad => \Add1~12_combout\,
	combout => \Mux25~3_combout\);

-- Location: LCCOMB_X22_Y13_N28
\sSHR_s3[14]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s3[14]~14_combout\ = (\iB[2]~input_o\ & ((\sSHR_s2[18]~37_combout\))) # (!\iB[2]~input_o\ & (\sSHR_s2[14]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHR_s2[14]~42_combout\,
	datab => \iB[2]~input_o\,
	datac => \sSHR_s2[18]~37_combout\,
	combout => \sSHR_s3[14]~14_combout\);

-- Location: LCCOMB_X22_Y13_N22
\Mux25~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux25~1_combout\ = (\Mux24~1_combout\ & (((\Mux24~2_combout\)))) # (!\Mux24~1_combout\ & ((\Mux24~2_combout\ & (\sSHR_s2[10]~44_combout\)) # (!\Mux24~2_combout\ & ((\sSHR_s2[6]~40_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHR_s2[10]~44_combout\,
	datab => \Mux24~1_combout\,
	datac => \sSHR_s2[6]~40_combout\,
	datad => \Mux24~2_combout\,
	combout => \Mux25~1_combout\);

-- Location: LCCOMB_X20_Y13_N20
\sSHL_s4[9]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s4[9]~9_combout\ = (\iB[3]~input_o\ & (!\iB[1]~input_o\ & !\iB[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[3]~input_o\,
	datab => \iB[1]~input_o\,
	datad => \iB[2]~input_o\,
	combout => \sSHL_s4[9]~9_combout\);

-- Location: LCCOMB_X22_Y13_N16
\sSHR_s3[22]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s3[22]~15_combout\ = (\iB[2]~input_o\ & ((\sSHR_s2[26]~33_combout\))) # (!\iB[2]~input_o\ & (\sSHR_s2[22]~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHR_s2[22]~35_combout\,
	datac => \iB[2]~input_o\,
	datad => \sSHR_s2[26]~33_combout\,
	combout => \sSHR_s3[22]~15_combout\);

-- Location: LCCOMB_X22_Y13_N18
\sSHR_s4[22]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s4[22]~14_combout\ = (\sSHL_s4[9]~9_combout\ & ((\sSHR_s1[30]~0_combout\) # ((\sSHR_s3[22]~15_combout\ & !\iB[3]~input_o\)))) # (!\sSHL_s4[9]~9_combout\ & (\sSHR_s3[22]~15_combout\ & ((!\iB[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHL_s4[9]~9_combout\,
	datab => \sSHR_s3[22]~15_combout\,
	datac => \sSHR_s1[30]~0_combout\,
	datad => \iB[3]~input_o\,
	combout => \sSHR_s4[22]~14_combout\);

-- Location: LCCOMB_X22_Y13_N20
\Mux25~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux25~2_combout\ = (\Mux24~1_combout\ & ((\Mux25~1_combout\ & ((\sSHR_s4[22]~14_combout\))) # (!\Mux25~1_combout\ & (\sSHR_s3[14]~14_combout\)))) # (!\Mux24~1_combout\ & (((\Mux25~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~1_combout\,
	datab => \sSHR_s3[14]~14_combout\,
	datac => \Mux25~1_combout\,
	datad => \sSHR_s4[22]~14_combout\,
	combout => \Mux25~2_combout\);

-- Location: LCCOMB_X24_Y15_N24
\sSHL_s2[6]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s2[6]~8_combout\ = (\iB[1]~input_o\ & (\iA[4]~input_o\)) # (!\iB[1]~input_o\ & ((\iA[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[4]~input_o\,
	datac => \iB[1]~input_o\,
	datad => \iA[6]~input_o\,
	combout => \sSHL_s2[6]~8_combout\);

-- Location: LCCOMB_X24_Y15_N18
\sSHL_s2[6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s2[6]~9_combout\ = (\iB[0]~input_o\ & ((\sSHL_s2[5]~6_combout\))) # (!\iB[0]~input_o\ & (\sSHL_s2[6]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sSHL_s2[6]~8_combout\,
	datac => \iB[0]~input_o\,
	datad => \sSHL_s2[5]~6_combout\,
	combout => \sSHL_s2[6]~9_combout\);

-- Location: LCCOMB_X24_Y13_N6
\sSHL_s4[6]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s4[6]~8_combout\ = (!\iB[3]~input_o\ & ((\iB[2]~input_o\ & ((\sSHL_s2[2]~1_combout\))) # (!\iB[2]~input_o\ & (\sSHL_s2[6]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[3]~input_o\,
	datab => \sSHL_s2[6]~9_combout\,
	datac => \iB[2]~input_o\,
	datad => \sSHL_s2[2]~1_combout\,
	combout => \sSHL_s4[6]~8_combout\);

-- Location: LCCOMB_X21_Y11_N12
\Mux25~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux25~4_combout\ = (\Mux25~3_combout\ & (((\Mux25~2_combout\)) # (!\Mux24~3_combout\))) # (!\Mux25~3_combout\ & (\Mux24~3_combout\ & ((\sSHL_s4[6]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~3_combout\,
	datab => \Mux24~3_combout\,
	datac => \Mux25~2_combout\,
	datad => \sSHL_s4[6]~8_combout\,
	combout => \Mux25~4_combout\);

-- Location: LCCOMB_X25_Y15_N14
\Mux25~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux25~5_combout\ = (\iALUFN[4]~input_o\ & \Mux25~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iALUFN[4]~input_o\,
	datad => \Mux25~4_combout\,
	combout => \Mux25~5_combout\);

-- Location: LCCOMB_X25_Y15_N16
\Mux25~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux25~6_combout\ = (\Mux24~5_combout\ & (((\iA[6]~input_o\ & \Mux24~4_combout\)))) # (!\Mux24~5_combout\ & ((\Mux25~5_combout\) # ((!\Mux24~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~5_combout\,
	datab => \Mux25~5_combout\,
	datac => \iA[6]~input_o\,
	datad => \Mux24~4_combout\,
	combout => \Mux25~6_combout\);

-- Location: LCCOMB_X26_Y15_N14
\Mux25~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux25~7_combout\ = (\Mux24~0_combout\ & ((\iB[6]~input_o\ & ((\iA[6]~input_o\))) # (!\iB[6]~input_o\ & (!\Mux25~6_combout\ & !\iA[6]~input_o\)))) # (!\Mux24~0_combout\ & (((\Mux25~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~0_combout\,
	datab => \iB[6]~input_o\,
	datac => \Mux25~6_combout\,
	datad => \iA[6]~input_o\,
	combout => \Mux25~7_combout\);

-- Location: LCCOMB_X26_Y15_N4
\Mux25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (\Mux27~1_combout\ & ((\iA[6]~input_o\ & ((\iALUFN[3]~input_o\) # (!\iB[6]~input_o\))) # (!\iA[6]~input_o\ & ((\iB[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~1_combout\,
	datab => \iA[6]~input_o\,
	datac => \iALUFN[3]~input_o\,
	datad => \iB[6]~input_o\,
	combout => \Mux25~0_combout\);

-- Location: LCCOMB_X26_Y15_N16
\Mux25~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux25~8_combout\ = (\Mux27~0_combout\ & ((\Mux25~0_combout\) # ((!\iALUFN[2]~input_o\ & \Mux25~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iALUFN[2]~input_o\,
	datab => \Mux25~7_combout\,
	datac => \Mux25~0_combout\,
	datad => \Mux27~0_combout\,
	combout => \Mux25~8_combout\);

-- Location: LCCOMB_X26_Y15_N10
\Mux24~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux24~6_combout\ = (\Mux27~1_combout\ & ((\iA[7]~input_o\ & ((\iALUFN[3]~input_o\) # (!\iB[7]~input_o\))) # (!\iA[7]~input_o\ & ((\iB[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[7]~input_o\,
	datab => \iALUFN[3]~input_o\,
	datac => \Mux27~1_combout\,
	datad => \iB[7]~input_o\,
	combout => \Mux24~6_combout\);

-- Location: LCCOMB_X20_Y14_N2
\sSHR_s3[23]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s3[23]~17_combout\ = (\iB[2]~input_o\ & ((\sSHR_s2[27]~47_combout\) # ((\sSHR_s2[27]~48_combout\)))) # (!\iB[2]~input_o\ & (((\sSHR_s2[23]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[2]~input_o\,
	datab => \sSHR_s2[27]~47_combout\,
	datac => \sSHR_s2[27]~48_combout\,
	datad => \sSHR_s2[23]~45_combout\,
	combout => \sSHR_s3[23]~17_combout\);

-- Location: LCCOMB_X20_Y14_N0
\sSHL_s4[8]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s4[8]~11_combout\ = (!\iB[1]~input_o\ & (!\iB[0]~input_o\ & (\iB[3]~input_o\ & !\iB[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[1]~input_o\,
	datab => \iB[0]~input_o\,
	datac => \iB[3]~input_o\,
	datad => \iB[2]~input_o\,
	combout => \sSHL_s4[8]~11_combout\);

-- Location: LCCOMB_X20_Y14_N20
\sSHR_s4[23]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s4[23]~15_combout\ = (\iA[31]~input_o\ & ((\sSHL_s4[8]~11_combout\) # ((\sSHR_s3[23]~17_combout\ & !\iB[3]~input_o\)))) # (!\iA[31]~input_o\ & (\sSHR_s3[23]~17_combout\ & (!\iB[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[31]~input_o\,
	datab => \sSHR_s3[23]~17_combout\,
	datac => \iB[3]~input_o\,
	datad => \sSHL_s4[8]~11_combout\,
	combout => \sSHR_s4[23]~15_combout\);

-- Location: LCCOMB_X20_Y14_N14
\sSHR_s3[15]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s3[15]~16_combout\ = (\iB[2]~input_o\ & ((\sSHR_s2[19]~46_combout\))) # (!\iB[2]~input_o\ & (\sSHR_s2[15]~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHR_s2[15]~50_combout\,
	datac => \sSHR_s2[19]~46_combout\,
	datad => \iB[2]~input_o\,
	combout => \sSHR_s3[15]~16_combout\);

-- Location: LCCOMB_X20_Y13_N8
\Mux24~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux24~7_combout\ = (\Mux24~2_combout\ & (\Mux24~1_combout\)) # (!\Mux24~2_combout\ & ((\Mux24~1_combout\ & (\sSHR_s3[15]~16_combout\)) # (!\Mux24~1_combout\ & ((\sSHR_s2[7]~49_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~2_combout\,
	datab => \Mux24~1_combout\,
	datac => \sSHR_s3[15]~16_combout\,
	datad => \sSHR_s2[7]~49_combout\,
	combout => \Mux24~7_combout\);

-- Location: LCCOMB_X21_Y11_N6
\Mux24~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux24~8_combout\ = (\Mux24~7_combout\ & ((\sSHR_s4[23]~15_combout\) # ((!\Mux24~2_combout\)))) # (!\Mux24~7_combout\ & (((\sSHR_s2[11]~51_combout\ & \Mux24~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHR_s4[23]~15_combout\,
	datab => \sSHR_s2[11]~51_combout\,
	datac => \Mux24~7_combout\,
	datad => \Mux24~2_combout\,
	combout => \Mux24~8_combout\);

-- Location: LCCOMB_X25_Y11_N14
\Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\iA[7]~input_o\ & ((\iB[7]~input_o\ & (\Add0~13\ & VCC)) # (!\iB[7]~input_o\ & (!\Add0~13\)))) # (!\iA[7]~input_o\ & ((\iB[7]~input_o\ & (!\Add0~13\)) # (!\iB[7]~input_o\ & ((\Add0~13\) # (GND)))))
-- \Add0~15\ = CARRY((\iA[7]~input_o\ & (!\iB[7]~input_o\ & !\Add0~13\)) # (!\iA[7]~input_o\ & ((!\Add0~13\) # (!\iB[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iA[7]~input_o\,
	datab => \iB[7]~input_o\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X27_Y11_N14
\Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (\iB[7]~input_o\ & ((\iA[7]~input_o\ & (!\Add1~13\)) # (!\iA[7]~input_o\ & ((\Add1~13\) # (GND))))) # (!\iB[7]~input_o\ & ((\iA[7]~input_o\ & (\Add1~13\ & VCC)) # (!\iA[7]~input_o\ & (!\Add1~13\))))
-- \Add1~15\ = CARRY((\iB[7]~input_o\ & ((!\Add1~13\) # (!\iA[7]~input_o\))) # (!\iB[7]~input_o\ & (!\iA[7]~input_o\ & !\Add1~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iB[7]~input_o\,
	datab => \iA[7]~input_o\,
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X21_Y11_N16
\Mux24~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux24~9_combout\ = (\iALUFN[5]~input_o\ & (((\iALUFN[0]~input_o\)))) # (!\iALUFN[5]~input_o\ & ((\iALUFN[0]~input_o\ & ((\Add1~14_combout\))) # (!\iALUFN[0]~input_o\ & (\Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iALUFN[5]~input_o\,
	datab => \Add0~14_combout\,
	datac => \iALUFN[0]~input_o\,
	datad => \Add1~14_combout\,
	combout => \Mux24~9_combout\);

-- Location: LCCOMB_X24_Y15_N12
\sSHL_s2[7]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s2[7]~11_combout\ = (\iB[1]~input_o\ & ((\iA[5]~input_o\))) # (!\iB[1]~input_o\ & (\iA[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[7]~input_o\,
	datab => \iB[1]~input_o\,
	datac => \iA[5]~input_o\,
	combout => \sSHL_s2[7]~11_combout\);

-- Location: LCCOMB_X24_Y15_N6
\sSHL_s2[7]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s2[7]~12_combout\ = (\iB[0]~input_o\ & (\sSHL_s2[6]~8_combout\)) # (!\iB[0]~input_o\ & ((\sSHL_s2[7]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sSHL_s2[6]~8_combout\,
	datac => \iB[0]~input_o\,
	datad => \sSHL_s2[7]~11_combout\,
	combout => \sSHL_s2[7]~12_combout\);

-- Location: LCCOMB_X25_Y13_N14
\sSHL_s2[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s2[3]~10_combout\ = (\sSHL_s2[3]~2_combout\) # ((\sSHL_s1[1]~0_combout\ & \iB[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sSHL_s1[1]~0_combout\,
	datac => \iB[1]~input_o\,
	datad => \sSHL_s2[3]~2_combout\,
	combout => \sSHL_s2[3]~10_combout\);

-- Location: LCCOMB_X20_Y13_N22
\sSHL_s4[7]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s4[7]~10_combout\ = (!\iB[3]~input_o\ & ((\iB[2]~input_o\ & ((\sSHL_s2[3]~10_combout\))) # (!\iB[2]~input_o\ & (\sSHL_s2[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[2]~input_o\,
	datab => \sSHL_s2[7]~12_combout\,
	datac => \iB[3]~input_o\,
	datad => \sSHL_s2[3]~10_combout\,
	combout => \sSHL_s4[7]~10_combout\);

-- Location: LCCOMB_X21_Y11_N18
\Mux24~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux24~10_combout\ = (\Mux24~9_combout\ & ((\Mux24~8_combout\) # ((!\Mux24~3_combout\)))) # (!\Mux24~9_combout\ & (((\Mux24~3_combout\ & \sSHL_s4[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~8_combout\,
	datab => \Mux24~9_combout\,
	datac => \Mux24~3_combout\,
	datad => \sSHL_s4[7]~10_combout\,
	combout => \Mux24~10_combout\);

-- Location: LCCOMB_X25_Y15_N26
\Mux24~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux24~11_combout\ = (\iALUFN[4]~input_o\ & \Mux24~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iALUFN[4]~input_o\,
	datad => \Mux24~10_combout\,
	combout => \Mux24~11_combout\);

-- Location: LCCOMB_X25_Y15_N4
\Mux24~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux24~12_combout\ = (\Mux24~5_combout\ & (\iA[7]~input_o\ & ((\Mux24~4_combout\)))) # (!\Mux24~5_combout\ & (((\Mux24~11_combout\) # (!\Mux24~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~5_combout\,
	datab => \iA[7]~input_o\,
	datac => \Mux24~11_combout\,
	datad => \Mux24~4_combout\,
	combout => \Mux24~12_combout\);

-- Location: LCCOMB_X26_Y15_N28
\Mux24~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux24~13_combout\ = (\Mux24~0_combout\ & ((\iA[7]~input_o\ & ((\iB[7]~input_o\))) # (!\iA[7]~input_o\ & (!\Mux24~12_combout\ & !\iB[7]~input_o\)))) # (!\Mux24~0_combout\ & (\Mux24~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~0_combout\,
	datab => \Mux24~12_combout\,
	datac => \iA[7]~input_o\,
	datad => \iB[7]~input_o\,
	combout => \Mux24~13_combout\);

-- Location: LCCOMB_X26_Y15_N22
\Mux24~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux24~14_combout\ = (\Mux27~0_combout\ & ((\Mux24~6_combout\) # ((\Mux24~13_combout\ & !\iALUFN[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~6_combout\,
	datab => \Mux24~13_combout\,
	datac => \iALUFN[2]~input_o\,
	datad => \Mux27~0_combout\,
	combout => \Mux24~14_combout\);

-- Location: LCCOMB_X27_Y12_N18
\Mux20~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~3_combout\ = (!\iALUFN[4]~input_o\ & (\iALUFN[3]~input_o\ & (\iALUFN[2]~input_o\ & !\iALUFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iALUFN[4]~input_o\,
	datab => \iALUFN[3]~input_o\,
	datac => \iALUFN[2]~input_o\,
	datad => \iALUFN[0]~input_o\,
	combout => \Mux20~3_combout\);

-- Location: LCCOMB_X27_Y12_N20
\Mux23~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~1_combout\ = (\iALUFN[1]~input_o\ & (\iALUFN[5]~input_o\ & \Mux20~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iALUFN[1]~input_o\,
	datac => \iALUFN[5]~input_o\,
	datad => \Mux20~3_combout\,
	combout => \Mux23~1_combout\);

-- Location: LCCOMB_X28_Y8_N8
\Mux20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (!\iALUFN[1]~input_o\ & \iALUFN[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iALUFN[1]~input_o\,
	datac => \iALUFN[0]~input_o\,
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X28_Y8_N2
\Mux20~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~11_combout\ = (\iALUFN[2]~input_o\) # ((\iALUFN[3]~input_o\ & (\Mux20~0_combout\ & \Mux28~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iALUFN[3]~input_o\,
	datab => \iALUFN[2]~input_o\,
	datac => \Mux20~0_combout\,
	datad => \Mux28~4_combout\,
	combout => \Mux20~11_combout\);

-- Location: LCCOMB_X28_Y8_N0
\Mux20~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~10_combout\ = (\iALUFN[1]~input_o\ & (((\Mux28~4_combout\ & !\iALUFN[0]~input_o\)) # (!\iALUFN[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~4_combout\,
	datab => \iALUFN[2]~input_o\,
	datac => \iALUFN[0]~input_o\,
	datad => \iALUFN[1]~input_o\,
	combout => \Mux20~10_combout\);

-- Location: LCCOMB_X28_Y8_N6
\Mux23~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~7_combout\ = (\iA[8]~input_o\ & (\iALUFN[3]~input_o\ & (!\iALUFN[0]~input_o\ & \Mux28~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[8]~input_o\,
	datab => \iALUFN[3]~input_o\,
	datac => \iALUFN[0]~input_o\,
	datad => \Mux28~4_combout\,
	combout => \Mux23~7_combout\);

-- Location: LCCOMB_X28_Y11_N18
\Mux23~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~8_combout\ = (\Mux20~11_combout\ & (\Equal0~0_combout\ & (\Mux20~10_combout\))) # (!\Mux20~11_combout\ & (((\Mux23~7_combout\) # (!\Mux20~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~11_combout\,
	datab => \Equal0~0_combout\,
	datac => \Mux20~10_combout\,
	datad => \Mux23~7_combout\,
	combout => \Mux23~8_combout\);

-- Location: LCCOMB_X27_Y11_N16
\Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = ((\iA[8]~input_o\ $ (\iB[8]~input_o\ $ (\Add1~15\)))) # (GND)
-- \Add1~17\ = CARRY((\iA[8]~input_o\ & ((!\Add1~15\) # (!\iB[8]~input_o\))) # (!\iA[8]~input_o\ & (!\iB[8]~input_o\ & !\Add1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iA[8]~input_o\,
	datab => \iB[8]~input_o\,
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X24_Y11_N30
\Mux20~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~9_combout\ = (\iALUFN[4]~input_o\ & (!\iALUFN[3]~input_o\ & \iALUFN[5]~input_o\)) # (!\iALUFN[4]~input_o\ & ((\iALUFN[5]~input_o\) # (!\iALUFN[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iALUFN[4]~input_o\,
	datab => \iALUFN[3]~input_o\,
	datac => \iALUFN[5]~input_o\,
	combout => \Mux20~9_combout\);

-- Location: LCCOMB_X24_Y11_N12
\Mux20~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~8_combout\ = (\iALUFN[3]~input_o\) # ((\iALUFN[4]~input_o\ & (!\iALUFN[5]~input_o\ & \iALUFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iALUFN[4]~input_o\,
	datab => \iALUFN[3]~input_o\,
	datac => \iALUFN[5]~input_o\,
	datad => \iALUFN[0]~input_o\,
	combout => \Mux20~8_combout\);

-- Location: LCCOMB_X21_Y10_N6
\Mux23~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~4_combout\ = (\Mux20~9_combout\ & (((\iA[8]~input_o\ & \iB[8]~input_o\)) # (!\Mux20~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[8]~input_o\,
	datab => \Mux20~9_combout\,
	datac => \Mux20~8_combout\,
	datad => \iB[8]~input_o\,
	combout => \Mux23~4_combout\);

-- Location: LCCOMB_X21_Y14_N26
\Mux20~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~6_combout\ = \iALUFN[0]~input_o\ $ (\iB[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iALUFN[0]~input_o\,
	datac => \iB[4]~input_o\,
	combout => \Mux20~6_combout\);

-- Location: LCCOMB_X24_Y15_N16
\sSHL_s2[8]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s2[8]~13_combout\ = (\iB[1]~input_o\ & ((\iA[6]~input_o\))) # (!\iB[1]~input_o\ & (\iA[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iA[8]~input_o\,
	datac => \iB[1]~input_o\,
	datad => \iA[6]~input_o\,
	combout => \sSHL_s2[8]~13_combout\);

-- Location: LCCOMB_X24_Y15_N26
\sSHL_s2[8]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s2[8]~14_combout\ = (\iB[0]~input_o\ & ((\sSHL_s2[7]~11_combout\))) # (!\iB[0]~input_o\ & (\sSHL_s2[8]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sSHL_s2[8]~13_combout\,
	datac => \iB[0]~input_o\,
	datad => \sSHL_s2[7]~11_combout\,
	combout => \sSHL_s2[8]~14_combout\);

-- Location: LCCOMB_X22_Y15_N20
\sSHL_s3[8]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s3[8]~1_combout\ = (\iB[2]~input_o\ & (\sSHL_s2[4]~5_combout\)) # (!\iB[2]~input_o\ & ((\sSHL_s2[8]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHL_s2[4]~5_combout\,
	datac => \iB[2]~input_o\,
	datad => \sSHL_s2[8]~14_combout\,
	combout => \sSHL_s3[8]~1_combout\);

-- Location: LCCOMB_X21_Y14_N8
\sSHL_s4[8]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s4[8]~12_combout\ = (\iA[0]~input_o\ & ((\sSHL_s4[8]~11_combout\) # ((!\iB[3]~input_o\ & \sSHL_s3[8]~1_combout\)))) # (!\iA[0]~input_o\ & (((!\iB[3]~input_o\ & \sSHL_s3[8]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[0]~input_o\,
	datab => \sSHL_s4[8]~11_combout\,
	datac => \iB[3]~input_o\,
	datad => \sSHL_s3[8]~1_combout\,
	combout => \sSHL_s4[8]~12_combout\);

-- Location: LCCOMB_X21_Y14_N28
\Mux20~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~7_combout\ = (\iALUFN[0]~input_o\ & ((\iB[4]~input_o\) # (\iB[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[4]~input_o\,
	datab => \iALUFN[0]~input_o\,
	datac => \iB[3]~input_o\,
	combout => \Mux20~7_combout\);

-- Location: LCCOMB_X21_Y15_N0
\sSHR_s4[24]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s4[24]~16_combout\ = (!\iB[3]~input_o\ & ((\iB[2]~input_o\ & ((\sSHR_s2[28]~1_combout\))) # (!\iB[2]~input_o\ & (\sSHR_s2[24]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[3]~input_o\,
	datab => \iB[2]~input_o\,
	datac => \sSHR_s2[24]~4_combout\,
	datad => \sSHR_s2[28]~1_combout\,
	combout => \sSHR_s4[24]~16_combout\);

-- Location: LCCOMB_X21_Y14_N6
\Mux23~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~2_combout\ = (\Mux20~6_combout\ & (((\Mux20~7_combout\)))) # (!\Mux20~6_combout\ & ((\Mux20~7_combout\ & ((\sSHR_s4[24]~16_combout\))) # (!\Mux20~7_combout\ & (\sSHL_s4[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~6_combout\,
	datab => \sSHL_s4[8]~12_combout\,
	datac => \Mux20~7_combout\,
	datad => \sSHR_s4[24]~16_combout\,
	combout => \Mux23~2_combout\);

-- Location: LCCOMB_X26_Y17_N20
\Mux20~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~5_combout\ = (\iB[4]~input_o\) # (!\iALUFN[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iB[4]~input_o\,
	datac => \iALUFN[0]~input_o\,
	combout => \Mux20~5_combout\);

-- Location: LCCOMB_X21_Y10_N4
\Mux23~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~3_combout\ = (\Mux23~2_combout\ & ((\sSHR_s3[16]~0_combout\) # ((\Mux20~5_combout\)))) # (!\Mux23~2_combout\ & (((\sSHR_s3[8]~1_combout\ & !\Mux20~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHR_s3[16]~0_combout\,
	datab => \sSHR_s3[8]~1_combout\,
	datac => \Mux23~2_combout\,
	datad => \Mux20~5_combout\,
	combout => \Mux23~3_combout\);

-- Location: LCCOMB_X21_Y10_N0
\Mux23~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~5_combout\ = (\Mux23~4_combout\ & ((\Mux20~8_combout\) # ((\Mux23~3_combout\ & \iALUFN[4]~input_o\)))) # (!\Mux23~4_combout\ & (((!\Mux20~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~4_combout\,
	datab => \Mux23~3_combout\,
	datac => \Mux20~8_combout\,
	datad => \iALUFN[4]~input_o\,
	combout => \Mux23~5_combout\);

-- Location: LCCOMB_X24_Y11_N18
\Mux20~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~4_combout\ = ((\iALUFN[3]~input_o\) # (\iALUFN[5]~input_o\)) # (!\iALUFN[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iALUFN[4]~input_o\,
	datab => \iALUFN[3]~input_o\,
	datac => \iALUFN[5]~input_o\,
	combout => \Mux20~4_combout\);

-- Location: LCCOMB_X25_Y11_N16
\Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = ((\iA[8]~input_o\ $ (\iB[8]~input_o\ $ (!\Add0~15\)))) # (GND)
-- \Add0~17\ = CARRY((\iA[8]~input_o\ & ((\iB[8]~input_o\) # (!\Add0~15\))) # (!\iA[8]~input_o\ & (\iB[8]~input_o\ & !\Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iA[8]~input_o\,
	datab => \iB[8]~input_o\,
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X28_Y11_N0
\Mux23~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~6_combout\ = (\Mux23~5_combout\ & (((\Mux20~4_combout\) # (\Add0~16_combout\)))) # (!\Mux23~5_combout\ & (\Add1~16_combout\ & (!\Mux20~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~16_combout\,
	datab => \Mux23~5_combout\,
	datac => \Mux20~4_combout\,
	datad => \Add0~16_combout\,
	combout => \Mux23~6_combout\);

-- Location: LCCOMB_X28_Y11_N4
\Mux23~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~9_combout\ = (\Mux23~8_combout\ & ((\Mux23~6_combout\) # ((!\Mux20~1_combout\)))) # (!\Mux23~8_combout\ & (((\Mux20~1_combout\ & !\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~8_combout\,
	datab => \Mux23~6_combout\,
	datac => \Mux20~1_combout\,
	datad => \Equal0~0_combout\,
	combout => \Mux23~9_combout\);

-- Location: LCCOMB_X28_Y11_N6
\Mux23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (\iB[8]~input_o\) # (\iA[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[8]~input_o\,
	datac => \iA[8]~input_o\,
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X28_Y11_N30
\Mux23~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~10_combout\ = (\Mux23~1_combout\ & ((\Mux23~0_combout\) # ((!\Mux20~3_combout\ & \Mux23~9_combout\)))) # (!\Mux23~1_combout\ & (!\Mux20~3_combout\ & (\Mux23~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~1_combout\,
	datab => \Mux20~3_combout\,
	datac => \Mux23~9_combout\,
	datad => \Mux23~0_combout\,
	combout => \Mux23~10_combout\);

-- Location: LCCOMB_X28_Y8_N28
\Mux22~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~6_combout\ = (\iALUFN[3]~input_o\ & (\iA[9]~input_o\ & (!\iALUFN[0]~input_o\ & \Mux28~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iALUFN[3]~input_o\,
	datab => \iA[9]~input_o\,
	datac => \iALUFN[0]~input_o\,
	datad => \Mux28~4_combout\,
	combout => \Mux22~6_combout\);

-- Location: LCCOMB_X28_Y11_N26
\Mux22~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~7_combout\ = (\Mux20~10_combout\ & ((\Mux20~11_combout\ & ((\Equal0~1_combout\))) # (!\Mux20~11_combout\ & (\Mux22~6_combout\)))) # (!\Mux20~10_combout\ & (((!\Mux20~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~6_combout\,
	datab => \Mux20~10_combout\,
	datac => \Equal0~1_combout\,
	datad => \Mux20~11_combout\,
	combout => \Mux22~7_combout\);

-- Location: LCCOMB_X21_Y10_N12
\Mux22~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~3_combout\ = (\Mux20~9_combout\ & (((\iB[9]~input_o\ & \iA[9]~input_o\)) # (!\Mux20~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[9]~input_o\,
	datab => \Mux20~9_combout\,
	datac => \Mux20~8_combout\,
	datad => \iA[9]~input_o\,
	combout => \Mux22~3_combout\);

-- Location: LCCOMB_X24_Y15_N4
\sSHL_s2[9]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s2[9]~15_combout\ = (\iB[1]~input_o\ & (\iA[7]~input_o\)) # (!\iB[1]~input_o\ & ((\iA[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[7]~input_o\,
	datac => \iB[1]~input_o\,
	datad => \iA[9]~input_o\,
	combout => \sSHL_s2[9]~15_combout\);

-- Location: LCCOMB_X24_Y15_N30
\sSHL_s2[9]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s2[9]~16_combout\ = (\iB[0]~input_o\ & (\sSHL_s2[8]~13_combout\)) # (!\iB[0]~input_o\ & ((\sSHL_s2[9]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sSHL_s2[8]~13_combout\,
	datac => \iB[0]~input_o\,
	datad => \sSHL_s2[9]~15_combout\,
	combout => \sSHL_s2[9]~16_combout\);

-- Location: LCCOMB_X22_Y12_N24
\sSHL_s3[9]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s3[9]~2_combout\ = (\iB[2]~input_o\ & (\sSHL_s2[5]~7_combout\)) # (!\iB[2]~input_o\ & ((\sSHL_s2[9]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sSHL_s2[5]~7_combout\,
	datac => \iB[2]~input_o\,
	datad => \sSHL_s2[9]~16_combout\,
	combout => \sSHL_s3[9]~2_combout\);

-- Location: LCCOMB_X24_Y12_N4
\sSHL_s4[9]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s4[9]~13_combout\ = (\sSHL_s3[9]~2_combout\ & (((\sSHL_s4[9]~9_combout\ & \sSHL_s1[1]~0_combout\)) # (!\iB[3]~input_o\))) # (!\sSHL_s3[9]~2_combout\ & (((\sSHL_s4[9]~9_combout\ & \sSHL_s1[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHL_s3[9]~2_combout\,
	datab => \iB[3]~input_o\,
	datac => \sSHL_s4[9]~9_combout\,
	datad => \sSHL_s1[1]~0_combout\,
	combout => \sSHL_s4[9]~13_combout\);

-- Location: LCCOMB_X24_Y13_N0
\sSHR_s4[25]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s4[25]~17_combout\ = (!\iB[3]~input_o\ & ((\iB[2]~input_o\ & (\sSHR_s2[29]~19_combout\)) # (!\iB[2]~input_o\ & ((\sSHR_s2[25]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[3]~input_o\,
	datab => \iB[2]~input_o\,
	datac => \sSHR_s2[29]~19_combout\,
	datad => \sSHR_s2[25]~21_combout\,
	combout => \sSHR_s4[25]~17_combout\);

-- Location: LCCOMB_X24_Y12_N22
\Mux22~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~1_combout\ = (\Mux20~6_combout\ & (((\Mux20~7_combout\)))) # (!\Mux20~6_combout\ & ((\Mux20~7_combout\ & ((\sSHR_s4[25]~17_combout\))) # (!\Mux20~7_combout\ & (\sSHL_s4[9]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~6_combout\,
	datab => \sSHL_s4[9]~13_combout\,
	datac => \Mux20~7_combout\,
	datad => \sSHR_s4[25]~17_combout\,
	combout => \Mux22~1_combout\);

-- Location: LCCOMB_X21_Y10_N2
\Mux22~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~2_combout\ = (\Mux22~1_combout\ & ((\sSHR_s3[17]~2_combout\) # ((\Mux20~5_combout\)))) # (!\Mux22~1_combout\ & (((\sSHR_s3[9]~3_combout\ & !\Mux20~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHR_s3[17]~2_combout\,
	datab => \Mux22~1_combout\,
	datac => \sSHR_s3[9]~3_combout\,
	datad => \Mux20~5_combout\,
	combout => \Mux22~2_combout\);

-- Location: LCCOMB_X21_Y10_N30
\Mux22~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~4_combout\ = (\Mux22~3_combout\ & ((\Mux20~8_combout\) # ((\Mux22~2_combout\ & \iALUFN[4]~input_o\)))) # (!\Mux22~3_combout\ & (((!\Mux20~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~3_combout\,
	datab => \Mux22~2_combout\,
	datac => \Mux20~8_combout\,
	datad => \iALUFN[4]~input_o\,
	combout => \Mux22~4_combout\);

-- Location: LCCOMB_X25_Y11_N18
\Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (\iB[9]~input_o\ & ((\iA[9]~input_o\ & (\Add0~17\ & VCC)) # (!\iA[9]~input_o\ & (!\Add0~17\)))) # (!\iB[9]~input_o\ & ((\iA[9]~input_o\ & (!\Add0~17\)) # (!\iA[9]~input_o\ & ((\Add0~17\) # (GND)))))
-- \Add0~19\ = CARRY((\iB[9]~input_o\ & (!\iA[9]~input_o\ & !\Add0~17\)) # (!\iB[9]~input_o\ & ((!\Add0~17\) # (!\iA[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iB[9]~input_o\,
	datab => \iA[9]~input_o\,
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X27_Y11_N18
\Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (\iA[9]~input_o\ & ((\iB[9]~input_o\ & (!\Add1~17\)) # (!\iB[9]~input_o\ & (\Add1~17\ & VCC)))) # (!\iA[9]~input_o\ & ((\iB[9]~input_o\ & ((\Add1~17\) # (GND))) # (!\iB[9]~input_o\ & (!\Add1~17\))))
-- \Add1~19\ = CARRY((\iA[9]~input_o\ & (\iB[9]~input_o\ & !\Add1~17\)) # (!\iA[9]~input_o\ & ((\iB[9]~input_o\) # (!\Add1~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iA[9]~input_o\,
	datab => \iB[9]~input_o\,
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X28_Y11_N8
\Mux22~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~5_combout\ = (\Mux22~4_combout\ & ((\Add0~18_combout\) # ((\Mux20~4_combout\)))) # (!\Mux22~4_combout\ & (((!\Mux20~4_combout\ & \Add1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~4_combout\,
	datab => \Add0~18_combout\,
	datac => \Mux20~4_combout\,
	datad => \Add1~18_combout\,
	combout => \Mux22~5_combout\);

-- Location: LCCOMB_X28_Y11_N20
\Mux22~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~8_combout\ = (\Mux22~7_combout\ & (((\Mux22~5_combout\) # (!\Mux20~1_combout\)))) # (!\Mux22~7_combout\ & (!\Equal0~1_combout\ & ((\Mux20~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~7_combout\,
	datab => \Equal0~1_combout\,
	datac => \Mux22~5_combout\,
	datad => \Mux20~1_combout\,
	combout => \Mux22~8_combout\);

-- Location: LCCOMB_X22_Y9_N28
\Mux22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (\iB[9]~input_o\) # (\iA[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \iB[9]~input_o\,
	datad => \iA[9]~input_o\,
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X22_Y9_N30
\Mux22~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~9_combout\ = (\Mux22~8_combout\ & (((\Mux22~0_combout\ & \Mux23~1_combout\)) # (!\Mux20~3_combout\))) # (!\Mux22~8_combout\ & (\Mux22~0_combout\ & ((\Mux23~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~8_combout\,
	datab => \Mux22~0_combout\,
	datac => \Mux20~3_combout\,
	datad => \Mux23~1_combout\,
	combout => \Mux22~9_combout\);

-- Location: LCCOMB_X28_Y11_N22
\Mux21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (\iA[10]~input_o\) # (\iB[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[10]~input_o\,
	datac => \iB[10]~input_o\,
	combout => \Mux21~0_combout\);

-- Location: LCCOMB_X19_Y13_N14
\sSHL_s2[10]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s2[10]~17_combout\ = (\iB[1]~input_o\ & (\iA[8]~input_o\)) # (!\iB[1]~input_o\ & ((\iA[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[8]~input_o\,
	datac => \iA[10]~input_o\,
	datad => \iB[1]~input_o\,
	combout => \sSHL_s2[10]~17_combout\);

-- Location: LCCOMB_X20_Y13_N2
\sSHL_s2[10]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s2[10]~18_combout\ = (\iB[0]~input_o\ & ((\sSHL_s2[9]~15_combout\))) # (!\iB[0]~input_o\ & (\sSHL_s2[10]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHL_s2[10]~17_combout\,
	datab => \iB[0]~input_o\,
	datac => \sSHL_s2[9]~15_combout\,
	combout => \sSHL_s2[10]~18_combout\);

-- Location: LCCOMB_X21_Y13_N0
\sSHL_s3[10]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s3[10]~3_combout\ = (\iB[2]~input_o\ & ((\sSHL_s2[6]~9_combout\))) # (!\iB[2]~input_o\ & (\sSHL_s2[10]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHL_s2[10]~18_combout\,
	datac => \iB[2]~input_o\,
	datad => \sSHL_s2[6]~9_combout\,
	combout => \sSHL_s3[10]~3_combout\);

-- Location: LCCOMB_X21_Y13_N2
\sSHL_s4[10]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s4[10]~14_combout\ = (\iB[3]~input_o\ & (!\iB[2]~input_o\ & (\sSHL_s2[2]~1_combout\))) # (!\iB[3]~input_o\ & (((\sSHL_s3[10]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[2]~input_o\,
	datab => \iB[3]~input_o\,
	datac => \sSHL_s2[2]~1_combout\,
	datad => \sSHL_s3[10]~3_combout\,
	combout => \sSHL_s4[10]~14_combout\);

-- Location: LCCOMB_X22_Y13_N6
\sSHR_s4[26]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s4[26]~18_combout\ = (!\iB[3]~input_o\ & \sSHR_s4[26]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[3]~input_o\,
	datad => \sSHR_s4[26]~9_combout\,
	combout => \sSHR_s4[26]~18_combout\);

-- Location: LCCOMB_X22_Y13_N0
\Mux21~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux21~1_combout\ = (\Mux20~7_combout\ & (((\Mux20~6_combout\) # (\sSHR_s4[26]~18_combout\)))) # (!\Mux20~7_combout\ & (\sSHL_s4[10]~14_combout\ & (!\Mux20~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~7_combout\,
	datab => \sSHL_s4[10]~14_combout\,
	datac => \Mux20~6_combout\,
	datad => \sSHR_s4[26]~18_combout\,
	combout => \Mux21~1_combout\);

-- Location: LCCOMB_X22_Y13_N26
\Mux21~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux21~2_combout\ = (\Mux21~1_combout\ & ((\sSHR_s3[18]~4_combout\) # ((\Mux20~5_combout\)))) # (!\Mux21~1_combout\ & (((\sSHR_s3[10]~5_combout\ & !\Mux20~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHR_s3[18]~4_combout\,
	datab => \Mux21~1_combout\,
	datac => \sSHR_s3[10]~5_combout\,
	datad => \Mux20~5_combout\,
	combout => \Mux21~2_combout\);

-- Location: LCCOMB_X24_Y11_N0
\Mux21~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux21~3_combout\ = (\Mux20~9_combout\ & (((\iA[10]~input_o\ & \iB[10]~input_o\)) # (!\Mux20~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[10]~input_o\,
	datab => \iB[10]~input_o\,
	datac => \Mux20~9_combout\,
	datad => \Mux20~8_combout\,
	combout => \Mux21~3_combout\);

-- Location: LCCOMB_X24_Y11_N26
\Mux21~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux21~4_combout\ = (\Mux20~8_combout\ & (((\Mux21~3_combout\)))) # (!\Mux20~8_combout\ & (((\Mux21~2_combout\ & \iALUFN[4]~input_o\)) # (!\Mux21~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~8_combout\,
	datab => \Mux21~2_combout\,
	datac => \iALUFN[4]~input_o\,
	datad => \Mux21~3_combout\,
	combout => \Mux21~4_combout\);

-- Location: LCCOMB_X25_Y11_N20
\Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = ((\iB[10]~input_o\ $ (\iA[10]~input_o\ $ (!\Add0~19\)))) # (GND)
-- \Add0~21\ = CARRY((\iB[10]~input_o\ & ((\iA[10]~input_o\) # (!\Add0~19\))) # (!\iB[10]~input_o\ & (\iA[10]~input_o\ & !\Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iB[10]~input_o\,
	datab => \iA[10]~input_o\,
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X27_Y11_N20
\Add1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = ((\iB[10]~input_o\ $ (\iA[10]~input_o\ $ (\Add1~19\)))) # (GND)
-- \Add1~21\ = CARRY((\iB[10]~input_o\ & (\iA[10]~input_o\ & !\Add1~19\)) # (!\iB[10]~input_o\ & ((\iA[10]~input_o\) # (!\Add1~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iB[10]~input_o\,
	datab => \iA[10]~input_o\,
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCCOMB_X24_Y11_N4
\Mux21~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux21~5_combout\ = (\Mux21~4_combout\ & ((\Mux20~4_combout\) # ((\Add0~20_combout\)))) # (!\Mux21~4_combout\ & (!\Mux20~4_combout\ & ((\Add1~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~4_combout\,
	datab => \Mux20~4_combout\,
	datac => \Add0~20_combout\,
	datad => \Add1~20_combout\,
	combout => \Mux21~5_combout\);

-- Location: LCCOMB_X28_Y8_N22
\Mux21~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux21~6_combout\ = (\iA[10]~input_o\ & (\iALUFN[3]~input_o\ & (!\iALUFN[0]~input_o\ & \Mux28~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[10]~input_o\,
	datab => \iALUFN[3]~input_o\,
	datac => \iALUFN[0]~input_o\,
	datad => \Mux28~4_combout\,
	combout => \Mux21~6_combout\);

-- Location: LCCOMB_X28_Y11_N16
\Mux21~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux21~7_combout\ = (\Mux20~11_combout\ & (((\Mux20~10_combout\ & \Equal0~2_combout\)))) # (!\Mux20~11_combout\ & ((\Mux21~6_combout\) # ((!\Mux20~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~11_combout\,
	datab => \Mux21~6_combout\,
	datac => \Mux20~10_combout\,
	datad => \Equal0~2_combout\,
	combout => \Mux21~7_combout\);

-- Location: LCCOMB_X28_Y11_N2
\Mux21~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux21~8_combout\ = (\Mux20~1_combout\ & ((\Mux21~7_combout\ & ((\Mux21~5_combout\))) # (!\Mux21~7_combout\ & (!\Equal0~2_combout\)))) # (!\Mux20~1_combout\ & (((\Mux21~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Mux20~1_combout\,
	datac => \Mux21~5_combout\,
	datad => \Mux21~7_combout\,
	combout => \Mux21~8_combout\);

-- Location: LCCOMB_X28_Y11_N28
\Mux21~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux21~9_combout\ = (\Mux23~1_combout\ & ((\Mux21~0_combout\) # ((!\Mux20~3_combout\ & \Mux21~8_combout\)))) # (!\Mux23~1_combout\ & (!\Mux20~3_combout\ & ((\Mux21~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~1_combout\,
	datab => \Mux20~3_combout\,
	datac => \Mux21~0_combout\,
	datad => \Mux21~8_combout\,
	combout => \Mux21~9_combout\);

-- Location: LCCOMB_X21_Y10_N10
\Mux20~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~15_combout\ = (\Mux20~9_combout\ & (((\iA[11]~input_o\ & \iB[11]~input_o\)) # (!\Mux20~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[11]~input_o\,
	datab => \Mux20~9_combout\,
	datac => \Mux20~8_combout\,
	datad => \iB[11]~input_o\,
	combout => \Mux20~15_combout\);

-- Location: LCCOMB_X20_Y14_N6
\sSHR_s4[27]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s4[27]~19_combout\ = (!\iB[3]~input_o\ & ((\sSHR_s3[27]~7_combout\) # (\sSHR_s3[27]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHR_s3[27]~7_combout\,
	datab => \sSHR_s3[27]~8_combout\,
	datac => \iB[3]~input_o\,
	combout => \sSHR_s4[27]~19_combout\);

-- Location: LCCOMB_X19_Y13_N8
\sSHL_s2[12]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s2[12]~19_combout\ = (\iB[1]~input_o\ & (\iA[9]~input_o\)) # (!\iB[1]~input_o\ & ((\iA[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[1]~input_o\,
	datac => \iA[9]~input_o\,
	datad => \iA[11]~input_o\,
	combout => \sSHL_s2[12]~19_combout\);

-- Location: LCCOMB_X19_Y13_N2
\sSHL_s2[11]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s2[11]~20_combout\ = (\iB[0]~input_o\ & ((\sSHL_s2[10]~17_combout\))) # (!\iB[0]~input_o\ & (\sSHL_s2[12]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sSHL_s2[12]~19_combout\,
	datac => \sSHL_s2[10]~17_combout\,
	datad => \iB[0]~input_o\,
	combout => \sSHL_s2[11]~20_combout\);

-- Location: LCCOMB_X20_Y13_N12
\sSHL_s3[11]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s3[11]~4_combout\ = (\iB[2]~input_o\ & ((\sSHL_s2[7]~12_combout\))) # (!\iB[2]~input_o\ & (\sSHL_s2[11]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHL_s2[11]~20_combout\,
	datab => \sSHL_s2[7]~12_combout\,
	datad => \iB[2]~input_o\,
	combout => \sSHL_s3[11]~4_combout\);

-- Location: LCCOMB_X20_Y13_N30
\sSHL_s4[11]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s4[11]~15_combout\ = (\iB[3]~input_o\ & (!\iB[2]~input_o\ & (\sSHL_s2[3]~10_combout\))) # (!\iB[3]~input_o\ & (((\sSHL_s3[11]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[2]~input_o\,
	datab => \sSHL_s2[3]~10_combout\,
	datac => \iB[3]~input_o\,
	datad => \sSHL_s3[11]~4_combout\,
	combout => \sSHL_s4[11]~15_combout\);

-- Location: LCCOMB_X21_Y14_N16
\Mux20~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~13_combout\ = (\Mux20~7_combout\ & ((\sSHR_s4[27]~19_combout\) # ((\Mux20~6_combout\)))) # (!\Mux20~7_combout\ & (((!\Mux20~6_combout\ & \sSHL_s4[11]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~7_combout\,
	datab => \sSHR_s4[27]~19_combout\,
	datac => \Mux20~6_combout\,
	datad => \sSHL_s4[11]~15_combout\,
	combout => \Mux20~13_combout\);

-- Location: LCCOMB_X21_Y10_N8
\Mux20~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~14_combout\ = (\Mux20~13_combout\ & (((\sSHR_s3[19]~6_combout\) # (\Mux20~5_combout\)))) # (!\Mux20~13_combout\ & (\sSHR_s3[11]~9_combout\ & ((!\Mux20~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHR_s3[11]~9_combout\,
	datab => \Mux20~13_combout\,
	datac => \sSHR_s3[19]~6_combout\,
	datad => \Mux20~5_combout\,
	combout => \Mux20~14_combout\);

-- Location: LCCOMB_X21_Y10_N28
\Mux20~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~16_combout\ = (\Mux20~15_combout\ & ((\Mux20~8_combout\) # ((\Mux20~14_combout\ & \iALUFN[4]~input_o\)))) # (!\Mux20~15_combout\ & (((!\Mux20~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~15_combout\,
	datab => \Mux20~14_combout\,
	datac => \Mux20~8_combout\,
	datad => \iALUFN[4]~input_o\,
	combout => \Mux20~16_combout\);

-- Location: LCCOMB_X27_Y11_N22
\Add1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (\iA[11]~input_o\ & ((\iB[11]~input_o\ & (!\Add1~21\)) # (!\iB[11]~input_o\ & (\Add1~21\ & VCC)))) # (!\iA[11]~input_o\ & ((\iB[11]~input_o\ & ((\Add1~21\) # (GND))) # (!\iB[11]~input_o\ & (!\Add1~21\))))
-- \Add1~23\ = CARRY((\iA[11]~input_o\ & (\iB[11]~input_o\ & !\Add1~21\)) # (!\iA[11]~input_o\ & ((\iB[11]~input_o\) # (!\Add1~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iA[11]~input_o\,
	datab => \iB[11]~input_o\,
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: LCCOMB_X25_Y11_N22
\Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (\iA[11]~input_o\ & ((\iB[11]~input_o\ & (\Add0~21\ & VCC)) # (!\iB[11]~input_o\ & (!\Add0~21\)))) # (!\iA[11]~input_o\ & ((\iB[11]~input_o\ & (!\Add0~21\)) # (!\iB[11]~input_o\ & ((\Add0~21\) # (GND)))))
-- \Add0~23\ = CARRY((\iA[11]~input_o\ & (!\iB[11]~input_o\ & !\Add0~21\)) # (!\iA[11]~input_o\ & ((!\Add0~21\) # (!\iB[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iA[11]~input_o\,
	datab => \iB[11]~input_o\,
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X28_Y8_N18
\Mux20~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~17_combout\ = (\Mux20~16_combout\ & ((\Mux20~4_combout\) # ((\Add0~22_combout\)))) # (!\Mux20~16_combout\ & (!\Mux20~4_combout\ & (\Add1~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~16_combout\,
	datab => \Mux20~4_combout\,
	datac => \Add1~22_combout\,
	datad => \Add0~22_combout\,
	combout => \Mux20~17_combout\);

-- Location: LCCOMB_X28_Y8_N20
\Mux20~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~18_combout\ = (\iA[11]~input_o\ & (\iALUFN[3]~input_o\ & (!\iALUFN[0]~input_o\ & \Mux28~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[11]~input_o\,
	datab => \iALUFN[3]~input_o\,
	datac => \iALUFN[0]~input_o\,
	datad => \Mux28~4_combout\,
	combout => \Mux20~18_combout\);

-- Location: LCCOMB_X28_Y8_N30
\Mux20~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~19_combout\ = (\Mux20~11_combout\ & (\Equal0~3_combout\ & ((\Mux20~10_combout\)))) # (!\Mux20~11_combout\ & (((\Mux20~18_combout\) # (!\Mux20~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Mux20~18_combout\,
	datac => \Mux20~11_combout\,
	datad => \Mux20~10_combout\,
	combout => \Mux20~19_combout\);

-- Location: LCCOMB_X28_Y8_N16
\Mux20~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~20_combout\ = (\Mux20~1_combout\ & ((\Mux20~19_combout\ & (\Mux20~17_combout\)) # (!\Mux20~19_combout\ & ((!\Equal0~3_combout\))))) # (!\Mux20~1_combout\ & (((\Mux20~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~1_combout\,
	datab => \Mux20~17_combout\,
	datac => \Mux20~19_combout\,
	datad => \Equal0~3_combout\,
	combout => \Mux20~20_combout\);

-- Location: LCCOMB_X28_Y8_N24
\Mux20~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~12_combout\ = (\iB[11]~input_o\) # (\iA[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[11]~input_o\,
	datad => \iA[11]~input_o\,
	combout => \Mux20~12_combout\);

-- Location: LCCOMB_X28_Y8_N26
\Mux20~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~21_combout\ = (\Mux23~1_combout\ & ((\Mux20~12_combout\) # ((\Mux20~20_combout\ & !\Mux20~3_combout\)))) # (!\Mux23~1_combout\ & (\Mux20~20_combout\ & (!\Mux20~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~1_combout\,
	datab => \Mux20~20_combout\,
	datac => \Mux20~3_combout\,
	datad => \Mux20~12_combout\,
	combout => \Mux20~21_combout\);

-- Location: LCCOMB_X24_Y11_N14
\Mux19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (\iA[12]~input_o\) # (\iB[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iA[12]~input_o\,
	datad => \iB[12]~input_o\,
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X21_Y15_N18
\sSHR_s4[28]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s4[28]~20_combout\ = (\Mux30~6_combout\ & ((\sSHR_s2[28]~0_combout\) # ((\iB[1]~input_o\ & \sSHR_s1[30]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[1]~input_o\,
	datab => \Mux30~6_combout\,
	datac => \sSHR_s2[28]~0_combout\,
	datad => \sSHR_s1[30]~0_combout\,
	combout => \sSHR_s4[28]~20_combout\);

-- Location: LCCOMB_X19_Y13_N12
\sSHL_s2[13]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s2[13]~21_combout\ = (\iB[1]~input_o\ & ((\iA[10]~input_o\))) # (!\iB[1]~input_o\ & (\iA[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[1]~input_o\,
	datab => \iA[12]~input_o\,
	datac => \iA[10]~input_o\,
	combout => \sSHL_s2[13]~21_combout\);

-- Location: LCCOMB_X19_Y13_N30
\sSHL_s2[12]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s2[12]~22_combout\ = (\iB[0]~input_o\ & (\sSHL_s2[12]~19_combout\)) # (!\iB[0]~input_o\ & ((\sSHL_s2[13]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sSHL_s2[12]~19_combout\,
	datac => \iB[0]~input_o\,
	datad => \sSHL_s2[13]~21_combout\,
	combout => \sSHL_s2[12]~22_combout\);

-- Location: LCCOMB_X22_Y15_N30
\sSHL_s3[12]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s3[12]~5_combout\ = (\iB[2]~input_o\ & ((\sSHL_s2[8]~14_combout\))) # (!\iB[2]~input_o\ & (\sSHL_s2[12]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iB[2]~input_o\,
	datac => \sSHL_s2[12]~22_combout\,
	datad => \sSHL_s2[8]~14_combout\,
	combout => \sSHL_s3[12]~5_combout\);

-- Location: LCCOMB_X22_Y15_N0
\sSHL_s3[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s3[4]~6_combout\ = (!\iB[2]~input_o\ & ((\sSHL_s2[4]~3_combout\) # ((!\iB[0]~input_o\ & \sSHL_s2[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[0]~input_o\,
	datab => \sSHL_s2[4]~4_combout\,
	datac => \iB[2]~input_o\,
	datad => \sSHL_s2[4]~3_combout\,
	combout => \sSHL_s3[4]~6_combout\);

-- Location: LCCOMB_X22_Y15_N2
\sSHL_s4[12]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s4[12]~16_combout\ = (\iB[3]~input_o\ & (((\sSHL_s3[4]~6_combout\) # (\sSHL_s3[4]~0_combout\)))) # (!\iB[3]~input_o\ & (\sSHL_s3[12]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHL_s3[12]~5_combout\,
	datab => \sSHL_s3[4]~6_combout\,
	datac => \sSHL_s3[4]~0_combout\,
	datad => \iB[3]~input_o\,
	combout => \sSHL_s4[12]~16_combout\);

-- Location: LCCOMB_X21_Y15_N4
\Mux19~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux19~1_combout\ = (\Mux20~7_combout\ & ((\Mux20~6_combout\) # ((\sSHR_s4[28]~20_combout\)))) # (!\Mux20~7_combout\ & (!\Mux20~6_combout\ & ((\sSHL_s4[12]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~7_combout\,
	datab => \Mux20~6_combout\,
	datac => \sSHR_s4[28]~20_combout\,
	datad => \sSHL_s4[12]~16_combout\,
	combout => \Mux19~1_combout\);

-- Location: LCCOMB_X21_Y15_N22
\Mux19~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux19~2_combout\ = (\Mux19~1_combout\ & (((\Mux20~5_combout\) # (\sSHR_s3[20]~11_combout\)))) # (!\Mux19~1_combout\ & (\sSHR_s3[12]~10_combout\ & (!\Mux20~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHR_s3[12]~10_combout\,
	datab => \Mux19~1_combout\,
	datac => \Mux20~5_combout\,
	datad => \sSHR_s3[20]~11_combout\,
	combout => \Mux19~2_combout\);

-- Location: LCCOMB_X24_Y11_N24
\Mux19~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux19~3_combout\ = (\Mux20~9_combout\ & (((\iB[12]~input_o\ & \iA[12]~input_o\)) # (!\Mux20~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[12]~input_o\,
	datab => \iA[12]~input_o\,
	datac => \Mux20~9_combout\,
	datad => \Mux20~8_combout\,
	combout => \Mux19~3_combout\);

-- Location: LCCOMB_X24_Y11_N10
\Mux19~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux19~4_combout\ = (\Mux20~8_combout\ & (((\Mux19~3_combout\)))) # (!\Mux20~8_combout\ & (((\Mux19~2_combout\ & \iALUFN[4]~input_o\)) # (!\Mux19~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~8_combout\,
	datab => \Mux19~2_combout\,
	datac => \iALUFN[4]~input_o\,
	datad => \Mux19~3_combout\,
	combout => \Mux19~4_combout\);

-- Location: LCCOMB_X27_Y11_N24
\Add1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = ((\iB[12]~input_o\ $ (\iA[12]~input_o\ $ (\Add1~23\)))) # (GND)
-- \Add1~25\ = CARRY((\iB[12]~input_o\ & (\iA[12]~input_o\ & !\Add1~23\)) # (!\iB[12]~input_o\ & ((\iA[12]~input_o\) # (!\Add1~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iB[12]~input_o\,
	datab => \iA[12]~input_o\,
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X25_Y11_N24
\Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = ((\iA[12]~input_o\ $ (\iB[12]~input_o\ $ (!\Add0~23\)))) # (GND)
-- \Add0~25\ = CARRY((\iA[12]~input_o\ & ((\iB[12]~input_o\) # (!\Add0~23\))) # (!\iA[12]~input_o\ & (\iB[12]~input_o\ & !\Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iA[12]~input_o\,
	datab => \iB[12]~input_o\,
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X24_Y11_N20
\Mux19~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux19~5_combout\ = (\Mux19~4_combout\ & ((\Mux20~4_combout\) # ((\Add0~24_combout\)))) # (!\Mux19~4_combout\ & (!\Mux20~4_combout\ & (\Add1~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~4_combout\,
	datab => \Mux20~4_combout\,
	datac => \Add1~24_combout\,
	datad => \Add0~24_combout\,
	combout => \Mux19~5_combout\);

-- Location: LCCOMB_X24_Y9_N12
\Mux19~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux19~6_combout\ = (\iA[12]~input_o\ & (\Mux28~4_combout\ & (!\iALUFN[0]~input_o\ & \iALUFN[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[12]~input_o\,
	datab => \Mux28~4_combout\,
	datac => \iALUFN[0]~input_o\,
	datad => \iALUFN[3]~input_o\,
	combout => \Mux19~6_combout\);

-- Location: LCCOMB_X24_Y9_N30
\Mux19~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux19~7_combout\ = (\Mux20~10_combout\ & ((\Mux20~11_combout\ & ((\Equal0~4_combout\))) # (!\Mux20~11_combout\ & (\Mux19~6_combout\)))) # (!\Mux20~10_combout\ & (((!\Mux20~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~6_combout\,
	datab => \Equal0~4_combout\,
	datac => \Mux20~10_combout\,
	datad => \Mux20~11_combout\,
	combout => \Mux19~7_combout\);

-- Location: LCCOMB_X24_Y9_N24
\Mux19~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux19~8_combout\ = (\Mux20~1_combout\ & ((\Mux19~7_combout\ & (\Mux19~5_combout\)) # (!\Mux19~7_combout\ & ((!\Equal0~4_combout\))))) # (!\Mux20~1_combout\ & (((\Mux19~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~1_combout\,
	datab => \Mux19~5_combout\,
	datac => \Mux19~7_combout\,
	datad => \Equal0~4_combout\,
	combout => \Mux19~8_combout\);

-- Location: LCCOMB_X22_Y9_N24
\Mux19~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux19~9_combout\ = (\Mux20~3_combout\ & (\Mux19~0_combout\ & ((\Mux23~1_combout\)))) # (!\Mux20~3_combout\ & ((\Mux19~8_combout\) # ((\Mux19~0_combout\ & \Mux23~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~3_combout\,
	datab => \Mux19~0_combout\,
	datac => \Mux19~8_combout\,
	datad => \Mux23~1_combout\,
	combout => \Mux19~9_combout\);

-- Location: LCCOMB_X22_Y9_N10
\Mux18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\iA[13]~input_o\) # (\iB[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[13]~input_o\,
	datad => \iB[13]~input_o\,
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X22_Y9_N12
\Mux18~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~3_combout\ = (\Mux20~9_combout\ & (((\iA[13]~input_o\ & \iB[13]~input_o\)) # (!\Mux20~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[13]~input_o\,
	datab => \iB[13]~input_o\,
	datac => \Mux20~9_combout\,
	datad => \Mux20~8_combout\,
	combout => \Mux18~3_combout\);

-- Location: LCCOMB_X22_Y12_N14
\sSHR_s4[29]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s4[29]~22_combout\ = (!\iB[3]~input_o\ & (!\iB[2]~input_o\ & \sSHR_s2[29]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[3]~input_o\,
	datab => \iB[2]~input_o\,
	datac => \sSHR_s2[29]~19_combout\,
	combout => \sSHR_s4[29]~22_combout\);

-- Location: LCCOMB_X19_Y13_N24
\sSHL_s2[14]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s2[14]~23_combout\ = (\iB[1]~input_o\ & ((\iA[11]~input_o\))) # (!\iB[1]~input_o\ & (\iA[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[1]~input_o\,
	datac => \iA[13]~input_o\,
	datad => \iA[11]~input_o\,
	combout => \sSHL_s2[14]~23_combout\);

-- Location: LCCOMB_X19_Y13_N18
\sSHL_s2[13]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s2[13]~24_combout\ = (\iB[0]~input_o\ & (\sSHL_s2[13]~21_combout\)) # (!\iB[0]~input_o\ & ((\sSHL_s2[14]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHL_s2[13]~21_combout\,
	datac => \iB[0]~input_o\,
	datad => \sSHL_s2[14]~23_combout\,
	combout => \sSHL_s2[13]~24_combout\);

-- Location: LCCOMB_X22_Y12_N10
\sSHL_s3[13]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s3[13]~7_combout\ = (\iB[2]~input_o\ & ((\sSHL_s2[9]~16_combout\))) # (!\iB[2]~input_o\ & (\sSHL_s2[13]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iB[2]~input_o\,
	datac => \sSHL_s2[13]~24_combout\,
	datad => \sSHL_s2[9]~16_combout\,
	combout => \sSHL_s3[13]~7_combout\);

-- Location: LCCOMB_X22_Y12_N28
\sSHL_s4[13]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s4[13]~17_combout\ = (\iB[3]~input_o\ & (\sSHL_s4[13]~6_combout\)) # (!\iB[3]~input_o\ & ((\sSHL_s3[13]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sSHL_s4[13]~6_combout\,
	datac => \iB[3]~input_o\,
	datad => \sSHL_s3[13]~7_combout\,
	combout => \sSHL_s4[13]~17_combout\);

-- Location: LCCOMB_X22_Y12_N22
\Mux18~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~1_combout\ = (\Mux20~6_combout\ & (((\Mux20~7_combout\)))) # (!\Mux20~6_combout\ & ((\Mux20~7_combout\ & (\sSHR_s4[29]~22_combout\)) # (!\Mux20~7_combout\ & ((\sSHL_s4[13]~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~6_combout\,
	datab => \sSHR_s4[29]~22_combout\,
	datac => \Mux20~7_combout\,
	datad => \sSHL_s4[13]~17_combout\,
	combout => \Mux18~1_combout\);

-- Location: LCCOMB_X22_Y12_N8
\Mux18~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~2_combout\ = (\Mux18~1_combout\ & ((\sSHR_s3[21]~13_combout\) # ((\Mux20~5_combout\)))) # (!\Mux18~1_combout\ & (((!\Mux20~5_combout\ & \sSHR_s3[13]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~1_combout\,
	datab => \sSHR_s3[21]~13_combout\,
	datac => \Mux20~5_combout\,
	datad => \sSHR_s3[13]~12_combout\,
	combout => \Mux18~2_combout\);

-- Location: LCCOMB_X22_Y9_N22
\Mux18~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~4_combout\ = (\Mux18~3_combout\ & ((\Mux20~8_combout\) # ((\iALUFN[4]~input_o\ & \Mux18~2_combout\)))) # (!\Mux18~3_combout\ & (((!\Mux20~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~3_combout\,
	datab => \iALUFN[4]~input_o\,
	datac => \Mux18~2_combout\,
	datad => \Mux20~8_combout\,
	combout => \Mux18~4_combout\);

-- Location: LCCOMB_X25_Y11_N26
\Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (\iA[13]~input_o\ & ((\iB[13]~input_o\ & (\Add0~25\ & VCC)) # (!\iB[13]~input_o\ & (!\Add0~25\)))) # (!\iA[13]~input_o\ & ((\iB[13]~input_o\ & (!\Add0~25\)) # (!\iB[13]~input_o\ & ((\Add0~25\) # (GND)))))
-- \Add0~27\ = CARRY((\iA[13]~input_o\ & (!\iB[13]~input_o\ & !\Add0~25\)) # (!\iA[13]~input_o\ & ((!\Add0~25\) # (!\iB[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iA[13]~input_o\,
	datab => \iB[13]~input_o\,
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X27_Y11_N26
\Add1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (\iB[13]~input_o\ & ((\iA[13]~input_o\ & (!\Add1~25\)) # (!\iA[13]~input_o\ & ((\Add1~25\) # (GND))))) # (!\iB[13]~input_o\ & ((\iA[13]~input_o\ & (\Add1~25\ & VCC)) # (!\iA[13]~input_o\ & (!\Add1~25\))))
-- \Add1~27\ = CARRY((\iB[13]~input_o\ & ((!\Add1~25\) # (!\iA[13]~input_o\))) # (!\iB[13]~input_o\ & (!\iA[13]~input_o\ & !\Add1~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iB[13]~input_o\,
	datab => \iA[13]~input_o\,
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: LCCOMB_X26_Y10_N20
\Mux18~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~5_combout\ = (\Mux18~4_combout\ & ((\Mux20~4_combout\) # ((\Add0~26_combout\)))) # (!\Mux18~4_combout\ & (!\Mux20~4_combout\ & ((\Add1~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~4_combout\,
	datab => \Mux20~4_combout\,
	datac => \Add0~26_combout\,
	datad => \Add1~26_combout\,
	combout => \Mux18~5_combout\);

-- Location: LCCOMB_X24_Y9_N10
\Mux18~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~6_combout\ = (\iALUFN[3]~input_o\ & (\Mux28~4_combout\ & (!\iALUFN[0]~input_o\ & \iA[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iALUFN[3]~input_o\,
	datab => \Mux28~4_combout\,
	datac => \iALUFN[0]~input_o\,
	datad => \iA[13]~input_o\,
	combout => \Mux18~6_combout\);

-- Location: LCCOMB_X24_Y9_N4
\Mux18~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~7_combout\ = (\Mux20~10_combout\ & ((\Mux20~11_combout\ & ((\Equal0~5_combout\))) # (!\Mux20~11_combout\ & (\Mux18~6_combout\)))) # (!\Mux20~10_combout\ & (((!\Mux20~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~6_combout\,
	datab => \Equal0~5_combout\,
	datac => \Mux20~10_combout\,
	datad => \Mux20~11_combout\,
	combout => \Mux18~7_combout\);

-- Location: LCCOMB_X24_Y9_N6
\Mux18~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~8_combout\ = (\Mux18~7_combout\ & ((\Mux18~5_combout\) # ((!\Mux20~1_combout\)))) # (!\Mux18~7_combout\ & (((!\Equal0~5_combout\ & \Mux20~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~5_combout\,
	datab => \Mux18~7_combout\,
	datac => \Equal0~5_combout\,
	datad => \Mux20~1_combout\,
	combout => \Mux18~8_combout\);

-- Location: LCCOMB_X22_Y9_N0
\Mux18~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~9_combout\ = (\Mux18~0_combout\ & ((\Mux23~1_combout\) # ((\Mux18~8_combout\ & !\Mux20~3_combout\)))) # (!\Mux18~0_combout\ & (\Mux18~8_combout\ & (!\Mux20~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~0_combout\,
	datab => \Mux18~8_combout\,
	datac => \Mux20~3_combout\,
	datad => \Mux23~1_combout\,
	combout => \Mux18~9_combout\);

-- Location: LCCOMB_X25_Y9_N10
\Mux17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\iA[14]~input_o\) # (\iB[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \iA[14]~input_o\,
	datad => \iB[14]~input_o\,
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X24_Y9_N2
\Mux17~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~6_combout\ = (\iALUFN[3]~input_o\ & (\iA[14]~input_o\ & (!\iALUFN[0]~input_o\ & \Mux28~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iALUFN[3]~input_o\,
	datab => \iA[14]~input_o\,
	datac => \iALUFN[0]~input_o\,
	datad => \Mux28~4_combout\,
	combout => \Mux17~6_combout\);

-- Location: LCCOMB_X24_Y9_N28
\Mux17~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~7_combout\ = (\Mux20~11_combout\ & (\Equal0~6_combout\ & (\Mux20~10_combout\))) # (!\Mux20~11_combout\ & (((\Mux17~6_combout\) # (!\Mux20~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \Mux20~11_combout\,
	datac => \Mux20~10_combout\,
	datad => \Mux17~6_combout\,
	combout => \Mux17~7_combout\);

-- Location: LCCOMB_X20_Y13_N6
\sSHR_s4[30]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s4[30]~23_combout\ = (!\iB[3]~input_o\ & (!\iB[1]~input_o\ & (\sSHR_s1[30]~0_combout\ & !\iB[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[3]~input_o\,
	datab => \iB[1]~input_o\,
	datac => \sSHR_s1[30]~0_combout\,
	datad => \iB[2]~input_o\,
	combout => \sSHR_s4[30]~23_combout\);

-- Location: LCCOMB_X17_Y13_N10
\sSHL_s2[15]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s2[15]~25_combout\ = (\iB[1]~input_o\ & ((\iA[12]~input_o\))) # (!\iB[1]~input_o\ & (\iA[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iA[14]~input_o\,
	datac => \iA[12]~input_o\,
	datad => \iB[1]~input_o\,
	combout => \sSHL_s2[15]~25_combout\);

-- Location: LCCOMB_X19_Y13_N28
\sSHL_s2[14]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s2[14]~26_combout\ = (\iB[0]~input_o\ & ((\sSHL_s2[14]~23_combout\))) # (!\iB[0]~input_o\ & (\sSHL_s2[15]~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHL_s2[15]~25_combout\,
	datac => \iB[0]~input_o\,
	datad => \sSHL_s2[14]~23_combout\,
	combout => \sSHL_s2[14]~26_combout\);

-- Location: LCCOMB_X21_Y13_N28
\sSHL_s3[14]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s3[14]~8_combout\ = (\iB[2]~input_o\ & ((\sSHL_s2[10]~18_combout\))) # (!\iB[2]~input_o\ & (\sSHL_s2[14]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sSHL_s2[14]~26_combout\,
	datac => \iB[2]~input_o\,
	datad => \sSHL_s2[10]~18_combout\,
	combout => \sSHL_s3[14]~8_combout\);

-- Location: LCCOMB_X24_Y13_N18
\sSHL_s4[14]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s4[14]~18_combout\ = (\iB[3]~input_o\ & ((\iB[2]~input_o\ & ((\sSHL_s2[2]~1_combout\))) # (!\iB[2]~input_o\ & (\sSHL_s2[6]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[3]~input_o\,
	datab => \sSHL_s2[6]~9_combout\,
	datac => \iB[2]~input_o\,
	datad => \sSHL_s2[2]~1_combout\,
	combout => \sSHL_s4[14]~18_combout\);

-- Location: LCCOMB_X21_Y13_N6
\sSHL_s4[14]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s4[14]~19_combout\ = (\sSHL_s4[14]~18_combout\) # ((\sSHL_s3[14]~8_combout\ & !\iB[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sSHL_s3[14]~8_combout\,
	datac => \iB[3]~input_o\,
	datad => \sSHL_s4[14]~18_combout\,
	combout => \sSHL_s4[14]~19_combout\);

-- Location: LCCOMB_X22_Y13_N12
\Mux17~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = (\Mux20~6_combout\ & (((\Mux20~7_combout\)))) # (!\Mux20~6_combout\ & ((\Mux20~7_combout\ & (\sSHR_s4[30]~23_combout\)) # (!\Mux20~7_combout\ & ((\sSHL_s4[14]~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHR_s4[30]~23_combout\,
	datab => \sSHL_s4[14]~19_combout\,
	datac => \Mux20~6_combout\,
	datad => \Mux20~7_combout\,
	combout => \Mux17~1_combout\);

-- Location: LCCOMB_X22_Y13_N14
\Mux17~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~2_combout\ = (\Mux17~1_combout\ & ((\sSHR_s3[22]~15_combout\) # ((\Mux20~5_combout\)))) # (!\Mux17~1_combout\ & (((\sSHR_s3[14]~14_combout\ & !\Mux20~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~1_combout\,
	datab => \sSHR_s3[22]~15_combout\,
	datac => \sSHR_s3[14]~14_combout\,
	datad => \Mux20~5_combout\,
	combout => \Mux17~2_combout\);

-- Location: LCCOMB_X25_Y9_N12
\Mux17~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~3_combout\ = (\Mux20~9_combout\ & (((\iA[14]~input_o\ & \iB[14]~input_o\)) # (!\Mux20~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[14]~input_o\,
	datab => \iB[14]~input_o\,
	datac => \Mux20~8_combout\,
	datad => \Mux20~9_combout\,
	combout => \Mux17~3_combout\);

-- Location: LCCOMB_X25_Y9_N6
\Mux17~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~4_combout\ = (\Mux20~8_combout\ & (((\Mux17~3_combout\)))) # (!\Mux20~8_combout\ & (((\Mux17~2_combout\ & \iALUFN[4]~input_o\)) # (!\Mux17~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~2_combout\,
	datab => \iALUFN[4]~input_o\,
	datac => \Mux20~8_combout\,
	datad => \Mux17~3_combout\,
	combout => \Mux17~4_combout\);

-- Location: LCCOMB_X25_Y11_N28
\Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = ((\iA[14]~input_o\ $ (\iB[14]~input_o\ $ (!\Add0~27\)))) # (GND)
-- \Add0~29\ = CARRY((\iA[14]~input_o\ & ((\iB[14]~input_o\) # (!\Add0~27\))) # (!\iA[14]~input_o\ & (\iB[14]~input_o\ & !\Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iA[14]~input_o\,
	datab => \iB[14]~input_o\,
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X27_Y11_N28
\Add1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = ((\iB[14]~input_o\ $ (\iA[14]~input_o\ $ (\Add1~27\)))) # (GND)
-- \Add1~29\ = CARRY((\iB[14]~input_o\ & (\iA[14]~input_o\ & !\Add1~27\)) # (!\iB[14]~input_o\ & ((\iA[14]~input_o\) # (!\Add1~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iB[14]~input_o\,
	datab => \iA[14]~input_o\,
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: LCCOMB_X24_Y9_N8
\Mux17~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~5_combout\ = (\Mux17~4_combout\ & ((\Mux20~4_combout\) # ((\Add0~28_combout\)))) # (!\Mux17~4_combout\ & (!\Mux20~4_combout\ & ((\Add1~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~4_combout\,
	datab => \Mux20~4_combout\,
	datac => \Add0~28_combout\,
	datad => \Add1~28_combout\,
	combout => \Mux17~5_combout\);

-- Location: LCCOMB_X24_Y9_N14
\Mux17~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~8_combout\ = (\Mux17~7_combout\ & (((\Mux17~5_combout\) # (!\Mux20~1_combout\)))) # (!\Mux17~7_combout\ & (!\Equal0~6_combout\ & ((\Mux20~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \Mux17~7_combout\,
	datac => \Mux17~5_combout\,
	datad => \Mux20~1_combout\,
	combout => \Mux17~8_combout\);

-- Location: LCCOMB_X25_Y9_N16
\Mux17~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~9_combout\ = (\Mux17~0_combout\ & ((\Mux23~1_combout\) # ((!\Mux20~3_combout\ & \Mux17~8_combout\)))) # (!\Mux17~0_combout\ & (!\Mux20~3_combout\ & ((\Mux17~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~0_combout\,
	datab => \Mux20~3_combout\,
	datac => \Mux23~1_combout\,
	datad => \Mux17~8_combout\,
	combout => \Mux17~9_combout\);

-- Location: LCCOMB_X26_Y10_N10
\Mux16~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~6_combout\ = (!\iALUFN[0]~input_o\ & (\iALUFN[3]~input_o\ & (\iA[15]~input_o\ & \Mux28~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iALUFN[0]~input_o\,
	datab => \iALUFN[3]~input_o\,
	datac => \iA[15]~input_o\,
	datad => \Mux28~4_combout\,
	combout => \Mux16~6_combout\);

-- Location: LCCOMB_X26_Y10_N12
\Mux16~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~7_combout\ = (\Mux20~11_combout\ & (\Equal0~7_combout\ & (\Mux20~10_combout\))) # (!\Mux20~11_combout\ & (((\Mux16~6_combout\) # (!\Mux20~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~11_combout\,
	datab => \Equal0~7_combout\,
	datac => \Mux20~10_combout\,
	datad => \Mux16~6_combout\,
	combout => \Mux16~7_combout\);

-- Location: LCCOMB_X27_Y11_N30
\Add1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (\iB[15]~input_o\ & ((\iA[15]~input_o\ & (!\Add1~29\)) # (!\iA[15]~input_o\ & ((\Add1~29\) # (GND))))) # (!\iB[15]~input_o\ & ((\iA[15]~input_o\ & (\Add1~29\ & VCC)) # (!\iA[15]~input_o\ & (!\Add1~29\))))
-- \Add1~31\ = CARRY((\iB[15]~input_o\ & ((!\Add1~29\) # (!\iA[15]~input_o\))) # (!\iB[15]~input_o\ & (!\iA[15]~input_o\ & !\Add1~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iB[15]~input_o\,
	datab => \iA[15]~input_o\,
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: LCCOMB_X25_Y11_N30
\Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (\iA[15]~input_o\ & ((\iB[15]~input_o\ & (\Add0~29\ & VCC)) # (!\iB[15]~input_o\ & (!\Add0~29\)))) # (!\iA[15]~input_o\ & ((\iB[15]~input_o\ & (!\Add0~29\)) # (!\iB[15]~input_o\ & ((\Add0~29\) # (GND)))))
-- \Add0~31\ = CARRY((\iA[15]~input_o\ & (!\iB[15]~input_o\ & !\Add0~29\)) # (!\iA[15]~input_o\ & ((!\Add0~29\) # (!\iB[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iA[15]~input_o\,
	datab => \iB[15]~input_o\,
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X17_Y13_N28
\sSHL_s2[16]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s2[16]~27_combout\ = (\iB[1]~input_o\ & (\iA[13]~input_o\)) # (!\iB[1]~input_o\ & ((\iA[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[13]~input_o\,
	datac => \iA[15]~input_o\,
	datad => \iB[1]~input_o\,
	combout => \sSHL_s2[16]~27_combout\);

-- Location: LCCOMB_X17_Y13_N22
\sSHL_s2[15]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s2[15]~28_combout\ = (\iB[0]~input_o\ & ((\sSHL_s2[15]~25_combout\))) # (!\iB[0]~input_o\ & (\sSHL_s2[16]~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[0]~input_o\,
	datab => \sSHL_s2[16]~27_combout\,
	datad => \sSHL_s2[15]~25_combout\,
	combout => \sSHL_s2[15]~28_combout\);

-- Location: LCCOMB_X20_Y13_N18
\sSHL_s3[15]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s3[15]~9_combout\ = (\iB[2]~input_o\ & (\sSHL_s2[11]~20_combout\)) # (!\iB[2]~input_o\ & ((\sSHL_s2[15]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHL_s2[11]~20_combout\,
	datac => \sSHL_s2[15]~28_combout\,
	datad => \iB[2]~input_o\,
	combout => \sSHL_s3[15]~9_combout\);

-- Location: LCCOMB_X20_Y13_N16
\sSHL_s4[15]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s4[15]~20_combout\ = (\iB[3]~input_o\ & ((\iB[2]~input_o\ & ((\sSHL_s2[3]~10_combout\))) # (!\iB[2]~input_o\ & (\sSHL_s2[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[2]~input_o\,
	datab => \sSHL_s2[7]~12_combout\,
	datac => \iB[3]~input_o\,
	datad => \sSHL_s2[3]~10_combout\,
	combout => \sSHL_s4[15]~20_combout\);

-- Location: LCCOMB_X20_Y13_N4
\sSHL_s4[15]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s4[15]~21_combout\ = (\sSHL_s4[15]~20_combout\) # ((!\iB[3]~input_o\ & \sSHL_s3[15]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[3]~input_o\,
	datab => \sSHL_s3[15]~9_combout\,
	datad => \sSHL_s4[15]~20_combout\,
	combout => \sSHL_s4[15]~21_combout\);

-- Location: LCCOMB_X24_Y14_N6
\sSHR_s4[31]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHR_s4[31]~21_combout\ = (\iA[31]~input_o\ & \sSHR_s4[31]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \iA[31]~input_o\,
	datad => \sSHR_s4[31]~4_combout\,
	combout => \sSHR_s4[31]~21_combout\);

-- Location: LCCOMB_X24_Y14_N8
\Mux16~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~1_combout\ = (\Mux20~7_combout\ & (((\Mux20~6_combout\) # (\sSHR_s4[31]~21_combout\)))) # (!\Mux20~7_combout\ & (\sSHL_s4[15]~21_combout\ & (!\Mux20~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHL_s4[15]~21_combout\,
	datab => \Mux20~7_combout\,
	datac => \Mux20~6_combout\,
	datad => \sSHR_s4[31]~21_combout\,
	combout => \Mux16~1_combout\);

-- Location: LCCOMB_X21_Y10_N14
\Mux16~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~2_combout\ = (\Mux16~1_combout\ & (((\sSHR_s3[23]~17_combout\) # (\Mux20~5_combout\)))) # (!\Mux16~1_combout\ & (\sSHR_s3[15]~16_combout\ & ((!\Mux20~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHR_s3[15]~16_combout\,
	datab => \Mux16~1_combout\,
	datac => \sSHR_s3[23]~17_combout\,
	datad => \Mux20~5_combout\,
	combout => \Mux16~2_combout\);

-- Location: LCCOMB_X21_Y10_N24
\Mux16~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~3_combout\ = (\Mux20~9_combout\ & (((\iA[15]~input_o\ & \iB[15]~input_o\)) # (!\Mux20~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[15]~input_o\,
	datab => \Mux20~9_combout\,
	datac => \Mux20~8_combout\,
	datad => \iB[15]~input_o\,
	combout => \Mux16~3_combout\);

-- Location: LCCOMB_X21_Y10_N26
\Mux16~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~4_combout\ = (\Mux20~8_combout\ & (((\Mux16~3_combout\)))) # (!\Mux20~8_combout\ & (((\iALUFN[4]~input_o\ & \Mux16~2_combout\)) # (!\Mux16~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iALUFN[4]~input_o\,
	datab => \Mux20~8_combout\,
	datac => \Mux16~2_combout\,
	datad => \Mux16~3_combout\,
	combout => \Mux16~4_combout\);

-- Location: LCCOMB_X26_Y10_N24
\Mux16~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~5_combout\ = (\Mux20~4_combout\ & (((\Mux16~4_combout\)))) # (!\Mux20~4_combout\ & ((\Mux16~4_combout\ & ((\Add0~30_combout\))) # (!\Mux16~4_combout\ & (\Add1~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~30_combout\,
	datab => \Mux20~4_combout\,
	datac => \Add0~30_combout\,
	datad => \Mux16~4_combout\,
	combout => \Mux16~5_combout\);

-- Location: LCCOMB_X26_Y10_N22
\Mux16~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~8_combout\ = (\Mux20~1_combout\ & ((\Mux16~7_combout\ & ((\Mux16~5_combout\))) # (!\Mux16~7_combout\ & (!\Equal0~7_combout\)))) # (!\Mux20~1_combout\ & (((\Mux16~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~1_combout\,
	datab => \Equal0~7_combout\,
	datac => \Mux16~7_combout\,
	datad => \Mux16~5_combout\,
	combout => \Mux16~8_combout\);

-- Location: LCCOMB_X26_Y10_N6
\Mux16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (\iA[15]~input_o\) # (\iB[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iA[15]~input_o\,
	datad => \iB[15]~input_o\,
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X26_Y10_N0
\Mux16~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~9_combout\ = (\Mux16~8_combout\ & (((\Mux23~1_combout\ & \Mux16~0_combout\)) # (!\Mux20~3_combout\))) # (!\Mux16~8_combout\ & (\Mux23~1_combout\ & ((\Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~8_combout\,
	datab => \Mux23~1_combout\,
	datac => \Mux20~3_combout\,
	datad => \Mux16~0_combout\,
	combout => \Mux16~9_combout\);

-- Location: LCCOMB_X27_Y10_N0
\Add1~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = ((\iA[16]~input_o\ $ (\iB[16]~input_o\ $ (\Add1~31\)))) # (GND)
-- \Add1~33\ = CARRY((\iA[16]~input_o\ & ((!\Add1~31\) # (!\iB[16]~input_o\))) # (!\iA[16]~input_o\ & (!\iB[16]~input_o\ & !\Add1~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iA[16]~input_o\,
	datab => \iB[16]~input_o\,
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: LCCOMB_X25_Y10_N0
\Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = ((\iA[16]~input_o\ $ (\iB[16]~input_o\ $ (!\Add0~31\)))) # (GND)
-- \Add0~33\ = CARRY((\iA[16]~input_o\ & ((\iB[16]~input_o\) # (!\Add0~31\))) # (!\iA[16]~input_o\ & (\iB[16]~input_o\ & !\Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iA[16]~input_o\,
	datab => \iB[16]~input_o\,
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X26_Y9_N26
\Mux15~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~3_combout\ = (\Mux20~9_combout\ & (((\iB[16]~input_o\ & \iA[16]~input_o\)) # (!\Mux20~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[16]~input_o\,
	datab => \Mux20~9_combout\,
	datac => \iA[16]~input_o\,
	datad => \Mux20~8_combout\,
	combout => \Mux15~3_combout\);

-- Location: LCCOMB_X17_Y13_N16
\sSHL_s2[17]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s2[17]~29_combout\ = (\iB[1]~input_o\ & (\iA[14]~input_o\)) # (!\iB[1]~input_o\ & ((\iA[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[1]~input_o\,
	datac => \iA[14]~input_o\,
	datad => \iA[16]~input_o\,
	combout => \sSHL_s2[17]~29_combout\);

-- Location: LCCOMB_X17_Y13_N18
\sSHL_s2[16]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s2[16]~30_combout\ = (\iB[0]~input_o\ & (\sSHL_s2[16]~27_combout\)) # (!\iB[0]~input_o\ & ((\sSHL_s2[17]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[0]~input_o\,
	datab => \sSHL_s2[16]~27_combout\,
	datad => \sSHL_s2[17]~29_combout\,
	combout => \sSHL_s2[16]~30_combout\);

-- Location: LCCOMB_X22_Y15_N12
\sSHL_s3[16]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s3[16]~10_combout\ = (\iB[2]~input_o\ & ((\sSHL_s2[12]~22_combout\))) # (!\iB[2]~input_o\ & (\sSHL_s2[16]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHL_s2[16]~30_combout\,
	datab => \iB[2]~input_o\,
	datac => \sSHL_s2[12]~22_combout\,
	combout => \sSHL_s3[16]~10_combout\);

-- Location: LCCOMB_X21_Y11_N14
\Mux8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = \iALUFN[0]~input_o\ $ (!\iB[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iALUFN[0]~input_o\,
	datac => \iB[4]~input_o\,
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X24_Y13_N12
\Mux8~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (\iALUFN[0]~input_o\) # ((\iB[3]~input_o\ & !\iB[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[3]~input_o\,
	datac => \iALUFN[0]~input_o\,
	datad => \iB[4]~input_o\,
	combout => \Mux8~2_combout\);

-- Location: LCCOMB_X21_Y11_N20
\sSHL_s4[0]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s4[0]~22_combout\ = (\sSHR_s4[31]~4_combout\ & \iA[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHR_s4[31]~4_combout\,
	datad => \iA[0]~input_o\,
	combout => \sSHL_s4[0]~22_combout\);

-- Location: LCCOMB_X21_Y11_N0
\Mux15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (\Mux8~1_combout\ & (((!\Mux8~2_combout\)))) # (!\Mux8~1_combout\ & ((\Mux8~2_combout\ & (\sSHR_s4[16]~6_combout\)) # (!\Mux8~2_combout\ & ((\sSHL_s4[0]~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHR_s4[16]~6_combout\,
	datab => \Mux8~1_combout\,
	datac => \Mux8~2_combout\,
	datad => \sSHL_s4[0]~22_combout\,
	combout => \Mux15~1_combout\);

-- Location: LCCOMB_X26_Y17_N22
\Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\iB[4]~input_o\) # (\iALUFN[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iB[4]~input_o\,
	datac => \iALUFN[0]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X26_Y9_N0
\Mux15~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~2_combout\ = (\Mux15~1_combout\ & (((\sSHL_s3[16]~10_combout\) # (\Mux8~0_combout\)))) # (!\Mux15~1_combout\ & (\sSHL_s3[8]~1_combout\ & ((!\Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHL_s3[8]~1_combout\,
	datab => \sSHL_s3[16]~10_combout\,
	datac => \Mux15~1_combout\,
	datad => \Mux8~0_combout\,
	combout => \Mux15~2_combout\);

-- Location: LCCOMB_X26_Y9_N20
\Mux15~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~4_combout\ = (\Mux20~8_combout\ & (((\Mux15~3_combout\)))) # (!\Mux20~8_combout\ & (((\iALUFN[4]~input_o\ & \Mux15~2_combout\)) # (!\Mux15~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iALUFN[4]~input_o\,
	datab => \Mux20~8_combout\,
	datac => \Mux15~3_combout\,
	datad => \Mux15~2_combout\,
	combout => \Mux15~4_combout\);

-- Location: LCCOMB_X26_Y9_N6
\Mux15~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~5_combout\ = (\Mux20~4_combout\ & (((\Mux15~4_combout\)))) # (!\Mux20~4_combout\ & ((\Mux15~4_combout\ & ((\Add0~32_combout\))) # (!\Mux15~4_combout\ & (\Add1~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~32_combout\,
	datab => \Add0~32_combout\,
	datac => \Mux20~4_combout\,
	datad => \Mux15~4_combout\,
	combout => \Mux15~5_combout\);

-- Location: LCCOMB_X26_Y9_N16
\Mux15~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~6_combout\ = (\iALUFN[3]~input_o\ & (!\iALUFN[0]~input_o\ & (\iA[16]~input_o\ & \Mux28~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iALUFN[3]~input_o\,
	datab => \iALUFN[0]~input_o\,
	datac => \iA[16]~input_o\,
	datad => \Mux28~4_combout\,
	combout => \Mux15~6_combout\);

-- Location: LCCOMB_X26_Y9_N2
\Mux15~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~7_combout\ = (\Mux20~10_combout\ & ((\Mux20~11_combout\ & ((\Equal0~8_combout\))) # (!\Mux20~11_combout\ & (\Mux15~6_combout\)))) # (!\Mux20~10_combout\ & (((!\Mux20~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~6_combout\,
	datab => \Equal0~8_combout\,
	datac => \Mux20~10_combout\,
	datad => \Mux20~11_combout\,
	combout => \Mux15~7_combout\);

-- Location: LCCOMB_X26_Y9_N12
\Mux15~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~8_combout\ = (\Mux15~7_combout\ & ((\Mux15~5_combout\) # ((!\Mux20~1_combout\)))) # (!\Mux15~7_combout\ & (((!\Equal0~8_combout\ & \Mux20~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~5_combout\,
	datab => \Equal0~8_combout\,
	datac => \Mux15~7_combout\,
	datad => \Mux20~1_combout\,
	combout => \Mux15~8_combout\);

-- Location: LCCOMB_X26_Y9_N14
\Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\iB[16]~input_o\) # (\iA[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[16]~input_o\,
	datac => \iA[16]~input_o\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X26_Y9_N30
\Mux15~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~9_combout\ = (\Mux15~8_combout\ & (((\Mux15~0_combout\ & \Mux23~1_combout\)) # (!\Mux20~3_combout\))) # (!\Mux15~8_combout\ & (((\Mux15~0_combout\ & \Mux23~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~8_combout\,
	datab => \Mux20~3_combout\,
	datac => \Mux15~0_combout\,
	datad => \Mux23~1_combout\,
	combout => \Mux15~9_combout\);

-- Location: LCCOMB_X25_Y15_N22
\Mux14~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~6_combout\ = (\iALUFN[3]~input_o\ & (!\iALUFN[0]~input_o\ & (\iA[17]~input_o\ & \Mux28~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iALUFN[3]~input_o\,
	datab => \iALUFN[0]~input_o\,
	datac => \iA[17]~input_o\,
	datad => \Mux28~4_combout\,
	combout => \Mux14~6_combout\);

-- Location: LCCOMB_X24_Y12_N26
\Mux14~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~7_combout\ = (\Mux20~10_combout\ & ((\Mux20~11_combout\ & ((\Equal0~9_combout\))) # (!\Mux20~11_combout\ & (\Mux14~6_combout\)))) # (!\Mux20~10_combout\ & (((!\Mux20~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~10_combout\,
	datab => \Mux14~6_combout\,
	datac => \Mux20~11_combout\,
	datad => \Equal0~9_combout\,
	combout => \Mux14~7_combout\);

-- Location: LCCOMB_X24_Y12_N28
\Mux14~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~3_combout\ = (\Mux20~9_combout\ & (((\iA[17]~input_o\ & \iB[17]~input_o\)) # (!\Mux20~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~8_combout\,
	datab => \Mux20~9_combout\,
	datac => \iA[17]~input_o\,
	datad => \iB[17]~input_o\,
	combout => \Mux14~3_combout\);

-- Location: LCCOMB_X24_Y13_N22
\sSHL_s4[1]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s4[1]~24_combout\ = (!\iB[3]~input_o\ & (!\iB[2]~input_o\ & (\sSHL_s1[1]~0_combout\ & !\iB[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[3]~input_o\,
	datab => \iB[2]~input_o\,
	datac => \sSHL_s1[1]~0_combout\,
	datad => \iB[1]~input_o\,
	combout => \sSHL_s4[1]~24_combout\);

-- Location: LCCOMB_X24_Y13_N30
\Mux14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = (\Mux8~1_combout\ & (((!\Mux8~2_combout\)))) # (!\Mux8~1_combout\ & ((\Mux8~2_combout\ & ((\sSHR_s4[17]~8_combout\))) # (!\Mux8~2_combout\ & (\sSHL_s4[1]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHL_s4[1]~24_combout\,
	datab => \sSHR_s4[17]~8_combout\,
	datac => \Mux8~1_combout\,
	datad => \Mux8~2_combout\,
	combout => \Mux14~1_combout\);

-- Location: LCCOMB_X17_Y13_N4
\sSHL_s2[18]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s2[18]~31_combout\ = (\iB[1]~input_o\ & ((\iA[15]~input_o\))) # (!\iB[1]~input_o\ & (\iA[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iA[17]~input_o\,
	datac => \iA[15]~input_o\,
	datad => \iB[1]~input_o\,
	combout => \sSHL_s2[18]~31_combout\);

-- Location: LCCOMB_X17_Y13_N30
\sSHL_s2[17]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s2[17]~32_combout\ = (\iB[0]~input_o\ & (\sSHL_s2[17]~29_combout\)) # (!\iB[0]~input_o\ & ((\sSHL_s2[18]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[0]~input_o\,
	datab => \sSHL_s2[17]~29_combout\,
	datac => \sSHL_s2[18]~31_combout\,
	combout => \sSHL_s2[17]~32_combout\);

-- Location: LCCOMB_X22_Y12_N2
\sSHL_s3[17]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s3[17]~11_combout\ = (\iB[2]~input_o\ & (\sSHL_s2[13]~24_combout\)) # (!\iB[2]~input_o\ & ((\sSHL_s2[17]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHL_s2[13]~24_combout\,
	datab => \iB[2]~input_o\,
	datac => \sSHL_s2[17]~32_combout\,
	combout => \sSHL_s3[17]~11_combout\);

-- Location: LCCOMB_X24_Y12_N10
\Mux14~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = (\Mux8~0_combout\ & (((\Mux14~1_combout\)))) # (!\Mux8~0_combout\ & ((\Mux14~1_combout\ & ((\sSHL_s3[17]~11_combout\))) # (!\Mux14~1_combout\ & (\sSHL_s3[9]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHL_s3[9]~2_combout\,
	datab => \Mux8~0_combout\,
	datac => \Mux14~1_combout\,
	datad => \sSHL_s3[17]~11_combout\,
	combout => \Mux14~2_combout\);

-- Location: LCCOMB_X24_Y12_N30
\Mux14~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~4_combout\ = (\Mux20~8_combout\ & (\Mux14~3_combout\)) # (!\Mux20~8_combout\ & (((\iALUFN[4]~input_o\ & \Mux14~2_combout\)) # (!\Mux14~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~8_combout\,
	datab => \Mux14~3_combout\,
	datac => \iALUFN[4]~input_o\,
	datad => \Mux14~2_combout\,
	combout => \Mux14~4_combout\);

-- Location: LCCOMB_X27_Y10_N2
\Add1~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (\iA[17]~input_o\ & ((\iB[17]~input_o\ & (!\Add1~33\)) # (!\iB[17]~input_o\ & (\Add1~33\ & VCC)))) # (!\iA[17]~input_o\ & ((\iB[17]~input_o\ & ((\Add1~33\) # (GND))) # (!\iB[17]~input_o\ & (!\Add1~33\))))
-- \Add1~35\ = CARRY((\iA[17]~input_o\ & (\iB[17]~input_o\ & !\Add1~33\)) # (!\iA[17]~input_o\ & ((\iB[17]~input_o\) # (!\Add1~33\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iA[17]~input_o\,
	datab => \iB[17]~input_o\,
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

-- Location: LCCOMB_X25_Y10_N2
\Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (\iB[17]~input_o\ & ((\iA[17]~input_o\ & (\Add0~33\ & VCC)) # (!\iA[17]~input_o\ & (!\Add0~33\)))) # (!\iB[17]~input_o\ & ((\iA[17]~input_o\ & (!\Add0~33\)) # (!\iA[17]~input_o\ & ((\Add0~33\) # (GND)))))
-- \Add0~35\ = CARRY((\iB[17]~input_o\ & (!\iA[17]~input_o\ & !\Add0~33\)) # (!\iB[17]~input_o\ & ((!\Add0~33\) # (!\iA[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iB[17]~input_o\,
	datab => \iA[17]~input_o\,
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X24_Y12_N8
\Mux14~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~5_combout\ = (\Mux14~4_combout\ & (((\Mux20~4_combout\) # (\Add0~34_combout\)))) # (!\Mux14~4_combout\ & (\Add1~34_combout\ & (!\Mux20~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~4_combout\,
	datab => \Add1~34_combout\,
	datac => \Mux20~4_combout\,
	datad => \Add0~34_combout\,
	combout => \Mux14~5_combout\);

-- Location: LCCOMB_X24_Y12_N12
\Mux14~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~8_combout\ = (\Mux14~7_combout\ & ((\Mux14~5_combout\) # ((!\Mux20~1_combout\)))) # (!\Mux14~7_combout\ & (((\Mux20~1_combout\ & !\Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~7_combout\,
	datab => \Mux14~5_combout\,
	datac => \Mux20~1_combout\,
	datad => \Equal0~9_combout\,
	combout => \Mux14~8_combout\);

-- Location: LCCOMB_X24_Y12_N16
\Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\iA[17]~input_o\) # (\iB[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \iA[17]~input_o\,
	datad => \iB[17]~input_o\,
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X24_Y12_N6
\Mux14~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~9_combout\ = (\Mux14~8_combout\ & (((\Mux14~0_combout\ & \Mux23~1_combout\)) # (!\Mux20~3_combout\))) # (!\Mux14~8_combout\ & (\Mux14~0_combout\ & ((\Mux23~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~8_combout\,
	datab => \Mux14~0_combout\,
	datac => \Mux20~3_combout\,
	datad => \Mux23~1_combout\,
	combout => \Mux14~9_combout\);

-- Location: LCCOMB_X21_Y13_N16
\Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\iB[18]~input_o\) # (\iA[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[18]~input_o\,
	datac => \iA[18]~input_o\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X26_Y9_N18
\Mux13~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~6_combout\ = (\iA[18]~input_o\ & (\Mux28~4_combout\ & (!\iALUFN[0]~input_o\ & \iALUFN[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[18]~input_o\,
	datab => \Mux28~4_combout\,
	datac => \iALUFN[0]~input_o\,
	datad => \iALUFN[3]~input_o\,
	combout => \Mux13~6_combout\);

-- Location: LCCOMB_X26_Y9_N28
\Mux13~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~7_combout\ = (\Mux20~10_combout\ & ((\Mux20~11_combout\ & (\Equal0~10_combout\)) # (!\Mux20~11_combout\ & ((\Mux13~6_combout\))))) # (!\Mux20~10_combout\ & (((!\Mux20~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datab => \Mux13~6_combout\,
	datac => \Mux20~10_combout\,
	datad => \Mux20~11_combout\,
	combout => \Mux13~7_combout\);

-- Location: LCCOMB_X25_Y10_N4
\Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = ((\iB[18]~input_o\ $ (\iA[18]~input_o\ $ (!\Add0~35\)))) # (GND)
-- \Add0~37\ = CARRY((\iB[18]~input_o\ & ((\iA[18]~input_o\) # (!\Add0~35\))) # (!\iB[18]~input_o\ & (\iA[18]~input_o\ & !\Add0~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iB[18]~input_o\,
	datab => \iA[18]~input_o\,
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X21_Y13_N22
\Mux13~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~3_combout\ = (\Mux20~9_combout\ & (((\iB[18]~input_o\ & \iA[18]~input_o\)) # (!\Mux20~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[18]~input_o\,
	datab => \Mux20~8_combout\,
	datac => \iA[18]~input_o\,
	datad => \Mux20~9_combout\,
	combout => \Mux13~3_combout\);

-- Location: LCCOMB_X24_Y13_N16
\Mux13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (\Mux8~2_combout\ & (\sSHR_s4[18]~10_combout\ & (!\Mux8~1_combout\))) # (!\Mux8~2_combout\ & (((\Mux8~1_combout\) # (\sSHL_s4[2]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~2_combout\,
	datab => \sSHR_s4[18]~10_combout\,
	datac => \Mux8~1_combout\,
	datad => \sSHL_s4[2]~23_combout\,
	combout => \Mux13~1_combout\);

-- Location: LCCOMB_X16_Y13_N2
\sSHL_s2[19]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s2[19]~33_combout\ = (\iB[1]~input_o\ & ((\iA[16]~input_o\))) # (!\iB[1]~input_o\ & (\iA[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[18]~input_o\,
	datab => \iA[16]~input_o\,
	datac => \iB[1]~input_o\,
	combout => \sSHL_s2[19]~33_combout\);

-- Location: LCCOMB_X16_Y13_N20
\sSHL_s2[18]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s2[18]~34_combout\ = (\iB[0]~input_o\ & ((\sSHL_s2[18]~31_combout\))) # (!\iB[0]~input_o\ & (\sSHL_s2[19]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[0]~input_o\,
	datab => \sSHL_s2[19]~33_combout\,
	datad => \sSHL_s2[18]~31_combout\,
	combout => \sSHL_s2[18]~34_combout\);

-- Location: LCCOMB_X21_Y13_N26
\sSHL_s3[18]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s3[18]~12_combout\ = (\iB[2]~input_o\ & ((\sSHL_s2[14]~26_combout\))) # (!\iB[2]~input_o\ & (\sSHL_s2[18]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sSHL_s2[18]~34_combout\,
	datac => \iB[2]~input_o\,
	datad => \sSHL_s2[14]~26_combout\,
	combout => \sSHL_s3[18]~12_combout\);

-- Location: LCCOMB_X21_Y13_N4
\Mux13~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = (\Mux13~1_combout\ & (((\sSHL_s3[18]~12_combout\) # (\Mux8~0_combout\)))) # (!\Mux13~1_combout\ & (\sSHL_s3[10]~3_combout\ & ((!\Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \sSHL_s3[10]~3_combout\,
	datac => \sSHL_s3[18]~12_combout\,
	datad => \Mux8~0_combout\,
	combout => \Mux13~2_combout\);

-- Location: LCCOMB_X21_Y13_N24
\Mux13~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~4_combout\ = (\Mux13~3_combout\ & ((\Mux20~8_combout\) # ((\Mux13~2_combout\ & \iALUFN[4]~input_o\)))) # (!\Mux13~3_combout\ & (((!\Mux20~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~3_combout\,
	datab => \Mux13~2_combout\,
	datac => \Mux20~8_combout\,
	datad => \iALUFN[4]~input_o\,
	combout => \Mux13~4_combout\);

-- Location: LCCOMB_X27_Y10_N4
\Add1~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = ((\iA[18]~input_o\ $ (\iB[18]~input_o\ $ (\Add1~35\)))) # (GND)
-- \Add1~37\ = CARRY((\iA[18]~input_o\ & ((!\Add1~35\) # (!\iB[18]~input_o\))) # (!\iA[18]~input_o\ & (!\iB[18]~input_o\ & !\Add1~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iA[18]~input_o\,
	datab => \iB[18]~input_o\,
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: LCCOMB_X26_Y9_N8
\Mux13~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~5_combout\ = (\Mux20~4_combout\ & (((\Mux13~4_combout\)))) # (!\Mux20~4_combout\ & ((\Mux13~4_combout\ & (\Add0~36_combout\)) # (!\Mux13~4_combout\ & ((\Add1~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~36_combout\,
	datab => \Mux20~4_combout\,
	datac => \Mux13~4_combout\,
	datad => \Add1~36_combout\,
	combout => \Mux13~5_combout\);

-- Location: LCCOMB_X26_Y9_N22
\Mux13~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~8_combout\ = (\Mux13~7_combout\ & (((\Mux13~5_combout\) # (!\Mux20~1_combout\)))) # (!\Mux13~7_combout\ & (!\Equal0~10_combout\ & ((\Mux20~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datab => \Mux13~7_combout\,
	datac => \Mux13~5_combout\,
	datad => \Mux20~1_combout\,
	combout => \Mux13~8_combout\);

-- Location: LCCOMB_X22_Y9_N18
\Mux13~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~9_combout\ = (\Mux20~3_combout\ & (\Mux13~0_combout\ & ((\Mux23~1_combout\)))) # (!\Mux20~3_combout\ & ((\Mux13~8_combout\) # ((\Mux13~0_combout\ & \Mux23~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~3_combout\,
	datab => \Mux13~0_combout\,
	datac => \Mux13~8_combout\,
	datad => \Mux23~1_combout\,
	combout => \Mux13~9_combout\);

-- Location: LCCOMB_X26_Y10_N26
\Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\iB[19]~input_o\) # (\iA[19]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \iB[19]~input_o\,
	datad => \iA[19]~input_o\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X24_Y13_N2
\Mux12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (\Mux8~1_combout\ & (((!\Mux8~2_combout\)))) # (!\Mux8~1_combout\ & ((\Mux8~2_combout\ & ((\sSHR_s4[19]~11_combout\))) # (!\Mux8~2_combout\ & (\sSHL_s4[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHL_s4[3]~4_combout\,
	datab => \Mux8~1_combout\,
	datac => \sSHR_s4[19]~11_combout\,
	datad => \Mux8~2_combout\,
	combout => \Mux12~1_combout\);

-- Location: LCCOMB_X16_Y13_N6
\sSHL_s2[20]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s2[20]~35_combout\ = (\iB[1]~input_o\ & (\iA[17]~input_o\)) # (!\iB[1]~input_o\ & ((\iA[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[17]~input_o\,
	datac => \iB[1]~input_o\,
	datad => \iA[19]~input_o\,
	combout => \sSHL_s2[20]~35_combout\);

-- Location: LCCOMB_X16_Y13_N24
\sSHL_s2[19]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s2[19]~36_combout\ = (\iB[0]~input_o\ & (\sSHL_s2[19]~33_combout\)) # (!\iB[0]~input_o\ & ((\sSHL_s2[20]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[0]~input_o\,
	datab => \sSHL_s2[19]~33_combout\,
	datad => \sSHL_s2[20]~35_combout\,
	combout => \sSHL_s2[19]~36_combout\);

-- Location: LCCOMB_X20_Y13_N14
\sSHL_s3[19]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s3[19]~13_combout\ = (\iB[2]~input_o\ & ((\sSHL_s2[15]~28_combout\))) # (!\iB[2]~input_o\ & (\sSHL_s2[19]~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHL_s2[19]~36_combout\,
	datac => \sSHL_s2[15]~28_combout\,
	datad => \iB[2]~input_o\,
	combout => \sSHL_s3[19]~13_combout\);

-- Location: LCCOMB_X20_Y13_N24
\Mux12~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = (\Mux12~1_combout\ & (((\sSHL_s3[19]~13_combout\) # (\Mux8~0_combout\)))) # (!\Mux12~1_combout\ & (\sSHL_s3[11]~4_combout\ & ((!\Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHL_s3[11]~4_combout\,
	datab => \Mux12~1_combout\,
	datac => \sSHL_s3[19]~13_combout\,
	datad => \Mux8~0_combout\,
	combout => \Mux12~2_combout\);

-- Location: LCCOMB_X21_Y10_N20
\Mux12~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~3_combout\ = (\Mux20~9_combout\ & (((\iB[19]~input_o\ & \iA[19]~input_o\)) # (!\Mux20~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[19]~input_o\,
	datab => \Mux20~9_combout\,
	datac => \Mux20~8_combout\,
	datad => \iA[19]~input_o\,
	combout => \Mux12~3_combout\);

-- Location: LCCOMB_X21_Y10_N22
\Mux12~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~4_combout\ = (\Mux12~3_combout\ & ((\Mux20~8_combout\) # ((\Mux12~2_combout\ & \iALUFN[4]~input_o\)))) # (!\Mux12~3_combout\ & (((!\Mux20~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~2_combout\,
	datab => \Mux12~3_combout\,
	datac => \Mux20~8_combout\,
	datad => \iALUFN[4]~input_o\,
	combout => \Mux12~4_combout\);

-- Location: LCCOMB_X25_Y10_N6
\Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (\iB[19]~input_o\ & ((\iA[19]~input_o\ & (\Add0~37\ & VCC)) # (!\iA[19]~input_o\ & (!\Add0~37\)))) # (!\iB[19]~input_o\ & ((\iA[19]~input_o\ & (!\Add0~37\)) # (!\iA[19]~input_o\ & ((\Add0~37\) # (GND)))))
-- \Add0~39\ = CARRY((\iB[19]~input_o\ & (!\iA[19]~input_o\ & !\Add0~37\)) # (!\iB[19]~input_o\ & ((!\Add0~37\) # (!\iA[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iB[19]~input_o\,
	datab => \iA[19]~input_o\,
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X27_Y10_N6
\Add1~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (\iB[19]~input_o\ & ((\iA[19]~input_o\ & (!\Add1~37\)) # (!\iA[19]~input_o\ & ((\Add1~37\) # (GND))))) # (!\iB[19]~input_o\ & ((\iA[19]~input_o\ & (\Add1~37\ & VCC)) # (!\iA[19]~input_o\ & (!\Add1~37\))))
-- \Add1~39\ = CARRY((\iB[19]~input_o\ & ((!\Add1~37\) # (!\iA[19]~input_o\))) # (!\iB[19]~input_o\ & (!\iA[19]~input_o\ & !\Add1~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iB[19]~input_o\,
	datab => \iA[19]~input_o\,
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~38_combout\,
	cout => \Add1~39\);

-- Location: LCCOMB_X26_Y10_N28
\Mux12~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~5_combout\ = (\Mux12~4_combout\ & ((\Mux20~4_combout\) # ((\Add0~38_combout\)))) # (!\Mux12~4_combout\ & (!\Mux20~4_combout\ & ((\Add1~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~4_combout\,
	datab => \Mux20~4_combout\,
	datac => \Add0~38_combout\,
	datad => \Add1~38_combout\,
	combout => \Mux12~5_combout\);

-- Location: LCCOMB_X26_Y10_N14
\Mux12~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~6_combout\ = (\iA[19]~input_o\ & (\iALUFN[3]~input_o\ & (!\iALUFN[0]~input_o\ & \Mux28~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[19]~input_o\,
	datab => \iALUFN[3]~input_o\,
	datac => \iALUFN[0]~input_o\,
	datad => \Mux28~4_combout\,
	combout => \Mux12~6_combout\);

-- Location: LCCOMB_X26_Y10_N8
\Mux12~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~7_combout\ = (\Mux20~11_combout\ & (\Equal0~11_combout\ & (\Mux20~10_combout\))) # (!\Mux20~11_combout\ & (((\Mux12~6_combout\) # (!\Mux20~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~11_combout\,
	datab => \Equal0~11_combout\,
	datac => \Mux20~10_combout\,
	datad => \Mux12~6_combout\,
	combout => \Mux12~7_combout\);

-- Location: LCCOMB_X26_Y10_N2
\Mux12~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~8_combout\ = (\Mux20~1_combout\ & ((\Mux12~7_combout\ & (\Mux12~5_combout\)) # (!\Mux12~7_combout\ & ((!\Equal0~11_combout\))))) # (!\Mux20~1_combout\ & (((\Mux12~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~1_combout\,
	datab => \Mux12~5_combout\,
	datac => \Mux12~7_combout\,
	datad => \Equal0~11_combout\,
	combout => \Mux12~8_combout\);

-- Location: LCCOMB_X26_Y10_N4
\Mux12~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~9_combout\ = (\Mux20~3_combout\ & (\Mux23~1_combout\ & (\Mux12~0_combout\))) # (!\Mux20~3_combout\ & ((\Mux12~8_combout\) # ((\Mux23~1_combout\ & \Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~3_combout\,
	datab => \Mux23~1_combout\,
	datac => \Mux12~0_combout\,
	datad => \Mux12~8_combout\,
	combout => \Mux12~9_combout\);

-- Location: LCCOMB_X22_Y15_N16
\Mux11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (\Mux8~1_combout\ & (((!\Mux8~2_combout\)))) # (!\Mux8~1_combout\ & ((\Mux8~2_combout\ & (\sSHR_s4[20]~12_combout\)) # (!\Mux8~2_combout\ & ((\sSHL_s4[4]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~1_combout\,
	datab => \sSHR_s4[20]~12_combout\,
	datac => \Mux8~2_combout\,
	datad => \sSHL_s4[4]~5_combout\,
	combout => \Mux11~1_combout\);

-- Location: LCCOMB_X16_Y13_N10
\sSHL_s2[21]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s2[21]~37_combout\ = (\iB[1]~input_o\ & ((\iA[18]~input_o\))) # (!\iB[1]~input_o\ & (\iA[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[20]~input_o\,
	datac => \iB[1]~input_o\,
	datad => \iA[18]~input_o\,
	combout => \sSHL_s2[21]~37_combout\);

-- Location: LCCOMB_X16_Y13_N4
\sSHL_s2[20]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s2[20]~38_combout\ = (\iB[0]~input_o\ & (\sSHL_s2[20]~35_combout\)) # (!\iB[0]~input_o\ & ((\sSHL_s2[21]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHL_s2[20]~35_combout\,
	datac => \iB[0]~input_o\,
	datad => \sSHL_s2[21]~37_combout\,
	combout => \sSHL_s2[20]~38_combout\);

-- Location: LCCOMB_X22_Y15_N14
\sSHL_s3[20]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s3[20]~14_combout\ = (\iB[2]~input_o\ & (\sSHL_s2[16]~30_combout\)) # (!\iB[2]~input_o\ & ((\sSHL_s2[20]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHL_s2[16]~30_combout\,
	datab => \sSHL_s2[20]~38_combout\,
	datac => \iB[2]~input_o\,
	combout => \sSHL_s3[20]~14_combout\);

-- Location: LCCOMB_X22_Y15_N18
\Mux11~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = (\Mux11~1_combout\ & (((\sSHL_s3[20]~14_combout\) # (\Mux8~0_combout\)))) # (!\Mux11~1_combout\ & (\sSHL_s3[12]~5_combout\ & ((!\Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHL_s3[12]~5_combout\,
	datab => \Mux11~1_combout\,
	datac => \sSHL_s3[20]~14_combout\,
	datad => \Mux8~0_combout\,
	combout => \Mux11~2_combout\);

-- Location: LCCOMB_X25_Y9_N20
\Mux11~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~3_combout\ = (\Mux20~9_combout\ & (((\iB[20]~input_o\ & \iA[20]~input_o\)) # (!\Mux20~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[20]~input_o\,
	datab => \iA[20]~input_o\,
	datac => \Mux20~8_combout\,
	datad => \Mux20~9_combout\,
	combout => \Mux11~3_combout\);

-- Location: LCCOMB_X25_Y9_N30
\Mux11~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~4_combout\ = (\Mux20~8_combout\ & (((\Mux11~3_combout\)))) # (!\Mux20~8_combout\ & (((\iALUFN[4]~input_o\ & \Mux11~2_combout\)) # (!\Mux11~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~8_combout\,
	datab => \iALUFN[4]~input_o\,
	datac => \Mux11~2_combout\,
	datad => \Mux11~3_combout\,
	combout => \Mux11~4_combout\);

-- Location: LCCOMB_X25_Y10_N8
\Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = ((\iB[20]~input_o\ $ (\iA[20]~input_o\ $ (!\Add0~39\)))) # (GND)
-- \Add0~41\ = CARRY((\iB[20]~input_o\ & ((\iA[20]~input_o\) # (!\Add0~39\))) # (!\iB[20]~input_o\ & (\iA[20]~input_o\ & !\Add0~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iB[20]~input_o\,
	datab => \iA[20]~input_o\,
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X27_Y10_N8
\Add1~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~40_combout\ = ((\iB[20]~input_o\ $ (\iA[20]~input_o\ $ (\Add1~39\)))) # (GND)
-- \Add1~41\ = CARRY((\iB[20]~input_o\ & (\iA[20]~input_o\ & !\Add1~39\)) # (!\iB[20]~input_o\ & ((\iA[20]~input_o\) # (!\Add1~39\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iB[20]~input_o\,
	datab => \iA[20]~input_o\,
	datad => VCC,
	cin => \Add1~39\,
	combout => \Add1~40_combout\,
	cout => \Add1~41\);

-- Location: LCCOMB_X24_Y10_N0
\Mux11~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~5_combout\ = (\Mux20~4_combout\ & (\Mux11~4_combout\)) # (!\Mux20~4_combout\ & ((\Mux11~4_combout\ & (\Add0~40_combout\)) # (!\Mux11~4_combout\ & ((\Add1~40_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~4_combout\,
	datab => \Mux11~4_combout\,
	datac => \Add0~40_combout\,
	datad => \Add1~40_combout\,
	combout => \Mux11~5_combout\);

-- Location: LCCOMB_X24_Y10_N2
\Mux11~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~6_combout\ = (\iA[20]~input_o\ & (\iALUFN[3]~input_o\ & (!\iALUFN[0]~input_o\ & \Mux28~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[20]~input_o\,
	datab => \iALUFN[3]~input_o\,
	datac => \iALUFN[0]~input_o\,
	datad => \Mux28~4_combout\,
	combout => \Mux11~6_combout\);

-- Location: LCCOMB_X24_Y10_N20
\Mux11~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~7_combout\ = (\Mux20~10_combout\ & ((\Mux20~11_combout\ & (\Equal0~12_combout\)) # (!\Mux20~11_combout\ & ((\Mux11~6_combout\))))) # (!\Mux20~10_combout\ & (((!\Mux20~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~10_combout\,
	datab => \Equal0~12_combout\,
	datac => \Mux11~6_combout\,
	datad => \Mux20~11_combout\,
	combout => \Mux11~7_combout\);

-- Location: LCCOMB_X24_Y10_N30
\Mux11~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~8_combout\ = (\Mux20~1_combout\ & ((\Mux11~7_combout\ & (\Mux11~5_combout\)) # (!\Mux11~7_combout\ & ((!\Equal0~12_combout\))))) # (!\Mux20~1_combout\ & (((\Mux11~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~1_combout\,
	datab => \Mux11~5_combout\,
	datac => \Mux11~7_combout\,
	datad => \Equal0~12_combout\,
	combout => \Mux11~8_combout\);

-- Location: LCCOMB_X25_Y9_N2
\Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\iB[20]~input_o\) # (\iA[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \iB[20]~input_o\,
	datad => \iA[20]~input_o\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X25_Y9_N8
\Mux11~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~9_combout\ = (\Mux11~8_combout\ & (((\Mux11~0_combout\ & \Mux23~1_combout\)) # (!\Mux20~3_combout\))) # (!\Mux11~8_combout\ & (\Mux11~0_combout\ & (\Mux23~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~8_combout\,
	datab => \Mux11~0_combout\,
	datac => \Mux23~1_combout\,
	datad => \Mux20~3_combout\,
	combout => \Mux11~9_combout\);

-- Location: LCCOMB_X25_Y9_N18
\Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\iA[21]~input_o\) # (\iB[21]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[21]~input_o\,
	datac => \iB[21]~input_o\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X24_Y10_N26
\Mux10~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~6_combout\ = (\iA[21]~input_o\ & (\Mux28~4_combout\ & (!\iALUFN[0]~input_o\ & \iALUFN[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[21]~input_o\,
	datab => \Mux28~4_combout\,
	datac => \iALUFN[0]~input_o\,
	datad => \iALUFN[3]~input_o\,
	combout => \Mux10~6_combout\);

-- Location: LCCOMB_X24_Y10_N4
\Mux10~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~7_combout\ = (\Mux20~10_combout\ & ((\Mux20~11_combout\ & (\Equal0~13_combout\)) # (!\Mux20~11_combout\ & ((\Mux10~6_combout\))))) # (!\Mux20~10_combout\ & (((!\Mux20~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~10_combout\,
	datab => \Equal0~13_combout\,
	datac => \Mux10~6_combout\,
	datad => \Mux20~11_combout\,
	combout => \Mux10~7_combout\);

-- Location: LCCOMB_X21_Y11_N26
\Mux10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (\Mux8~1_combout\ & (((!\Mux8~2_combout\)))) # (!\Mux8~1_combout\ & ((\Mux8~2_combout\ & ((\sSHR_s4[21]~13_combout\))) # (!\Mux8~2_combout\ & (\sSHL_s4[5]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHL_s4[5]~7_combout\,
	datab => \Mux8~1_combout\,
	datac => \Mux8~2_combout\,
	datad => \sSHR_s4[21]~13_combout\,
	combout => \Mux10~1_combout\);

-- Location: LCCOMB_X16_Y13_N22
\sSHL_s2[22]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s2[22]~39_combout\ = (\iB[1]~input_o\ & (\iA[19]~input_o\)) # (!\iB[1]~input_o\ & ((\iA[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iA[19]~input_o\,
	datac => \iB[1]~input_o\,
	datad => \iA[21]~input_o\,
	combout => \sSHL_s2[22]~39_combout\);

-- Location: LCCOMB_X24_Y12_N24
\sSHL_s2[21]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s2[21]~40_combout\ = (\iB[0]~input_o\ & (\sSHL_s2[21]~37_combout\)) # (!\iB[0]~input_o\ & ((\sSHL_s2[22]~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[0]~input_o\,
	datab => \sSHL_s2[21]~37_combout\,
	datad => \sSHL_s2[22]~39_combout\,
	combout => \sSHL_s2[21]~40_combout\);

-- Location: LCCOMB_X22_Y12_N4
\sSHL_s3[21]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s3[21]~15_combout\ = (\iB[2]~input_o\ & (\sSHL_s2[17]~32_combout\)) # (!\iB[2]~input_o\ & ((\sSHL_s2[21]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iB[2]~input_o\,
	datac => \sSHL_s2[17]~32_combout\,
	datad => \sSHL_s2[21]~40_combout\,
	combout => \sSHL_s3[21]~15_combout\);

-- Location: LCCOMB_X22_Y12_N6
\Mux10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (\Mux10~1_combout\ & ((\Mux8~0_combout\) # ((\sSHL_s3[21]~15_combout\)))) # (!\Mux10~1_combout\ & (!\Mux8~0_combout\ & ((\sSHL_s3[13]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~1_combout\,
	datab => \Mux8~0_combout\,
	datac => \sSHL_s3[21]~15_combout\,
	datad => \sSHL_s3[13]~7_combout\,
	combout => \Mux10~2_combout\);

-- Location: LCCOMB_X25_Y9_N28
\Mux10~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = (\Mux20~9_combout\ & (((\iA[21]~input_o\ & \iB[21]~input_o\)) # (!\Mux20~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[21]~input_o\,
	datab => \iB[21]~input_o\,
	datac => \Mux20~8_combout\,
	datad => \Mux20~9_combout\,
	combout => \Mux10~3_combout\);

-- Location: LCCOMB_X25_Y9_N14
\Mux10~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~4_combout\ = (\Mux20~8_combout\ & (((\Mux10~3_combout\)))) # (!\Mux20~8_combout\ & (((\iALUFN[4]~input_o\ & \Mux10~2_combout\)) # (!\Mux10~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~8_combout\,
	datab => \iALUFN[4]~input_o\,
	datac => \Mux10~2_combout\,
	datad => \Mux10~3_combout\,
	combout => \Mux10~4_combout\);

-- Location: LCCOMB_X25_Y10_N10
\Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (\iA[21]~input_o\ & ((\iB[21]~input_o\ & (\Add0~41\ & VCC)) # (!\iB[21]~input_o\ & (!\Add0~41\)))) # (!\iA[21]~input_o\ & ((\iB[21]~input_o\ & (!\Add0~41\)) # (!\iB[21]~input_o\ & ((\Add0~41\) # (GND)))))
-- \Add0~43\ = CARRY((\iA[21]~input_o\ & (!\iB[21]~input_o\ & !\Add0~41\)) # (!\iA[21]~input_o\ & ((!\Add0~41\) # (!\iB[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iA[21]~input_o\,
	datab => \iB[21]~input_o\,
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X27_Y10_N10
\Add1~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (\iA[21]~input_o\ & ((\iB[21]~input_o\ & (!\Add1~41\)) # (!\iB[21]~input_o\ & (\Add1~41\ & VCC)))) # (!\iA[21]~input_o\ & ((\iB[21]~input_o\ & ((\Add1~41\) # (GND))) # (!\iB[21]~input_o\ & (!\Add1~41\))))
-- \Add1~43\ = CARRY((\iA[21]~input_o\ & (\iB[21]~input_o\ & !\Add1~41\)) # (!\iA[21]~input_o\ & ((\iB[21]~input_o\) # (!\Add1~41\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iA[21]~input_o\,
	datab => \iB[21]~input_o\,
	datad => VCC,
	cin => \Add1~41\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

-- Location: LCCOMB_X24_Y10_N16
\Mux10~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~5_combout\ = (\Mux20~4_combout\ & (\Mux10~4_combout\)) # (!\Mux20~4_combout\ & ((\Mux10~4_combout\ & (\Add0~42_combout\)) # (!\Mux10~4_combout\ & ((\Add1~42_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~4_combout\,
	datab => \Mux10~4_combout\,
	datac => \Add0~42_combout\,
	datad => \Add1~42_combout\,
	combout => \Mux10~5_combout\);

-- Location: LCCOMB_X24_Y10_N6
\Mux10~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~8_combout\ = (\Mux20~1_combout\ & ((\Mux10~7_combout\ & ((\Mux10~5_combout\))) # (!\Mux10~7_combout\ & (!\Equal0~13_combout\)))) # (!\Mux20~1_combout\ & (((\Mux10~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~1_combout\,
	datab => \Equal0~13_combout\,
	datac => \Mux10~7_combout\,
	datad => \Mux10~5_combout\,
	combout => \Mux10~8_combout\);

-- Location: LCCOMB_X25_Y9_N0
\Mux10~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~9_combout\ = (\Mux23~1_combout\ & ((\Mux10~0_combout\) # ((\Mux10~8_combout\ & !\Mux20~3_combout\)))) # (!\Mux23~1_combout\ & (((\Mux10~8_combout\ & !\Mux20~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~1_combout\,
	datab => \Mux10~0_combout\,
	datac => \Mux10~8_combout\,
	datad => \Mux20~3_combout\,
	combout => \Mux10~9_combout\);

-- Location: LCCOMB_X24_Y10_N10
\Mux9~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~6_combout\ = (\iA[22]~input_o\ & (\iALUFN[3]~input_o\ & (!\iALUFN[0]~input_o\ & \Mux28~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[22]~input_o\,
	datab => \iALUFN[3]~input_o\,
	datac => \iALUFN[0]~input_o\,
	datad => \Mux28~4_combout\,
	combout => \Mux9~6_combout\);

-- Location: LCCOMB_X24_Y10_N28
\Mux9~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~7_combout\ = (\Mux20~11_combout\ & (\Equal0~14_combout\ & (\Mux20~10_combout\))) # (!\Mux20~11_combout\ & (((\Mux9~6_combout\) # (!\Mux20~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~14_combout\,
	datab => \Mux20~11_combout\,
	datac => \Mux20~10_combout\,
	datad => \Mux9~6_combout\,
	combout => \Mux9~7_combout\);

-- Location: LCCOMB_X25_Y10_N12
\Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = ((\iA[22]~input_o\ $ (\iB[22]~input_o\ $ (!\Add0~43\)))) # (GND)
-- \Add0~45\ = CARRY((\iA[22]~input_o\ & ((\iB[22]~input_o\) # (!\Add0~43\))) # (!\iA[22]~input_o\ & (\iB[22]~input_o\ & !\Add0~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iA[22]~input_o\,
	datab => \iB[22]~input_o\,
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X27_Y10_N12
\Add1~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = ((\iA[22]~input_o\ $ (\iB[22]~input_o\ $ (\Add1~43\)))) # (GND)
-- \Add1~45\ = CARRY((\iA[22]~input_o\ & ((!\Add1~43\) # (!\iB[22]~input_o\))) # (!\iA[22]~input_o\ & (!\iB[22]~input_o\ & !\Add1~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iA[22]~input_o\,
	datab => \iB[22]~input_o\,
	datad => VCC,
	cin => \Add1~43\,
	combout => \Add1~44_combout\,
	cout => \Add1~45\);

-- Location: LCCOMB_X21_Y11_N28
\Mux9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\Mux8~2_combout\ & (\sSHR_s4[22]~14_combout\ & (!\Mux8~1_combout\))) # (!\Mux8~2_combout\ & (((\Mux8~1_combout\) # (\sSHL_s4[6]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~2_combout\,
	datab => \sSHR_s4[22]~14_combout\,
	datac => \Mux8~1_combout\,
	datad => \sSHL_s4[6]~8_combout\,
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X21_Y12_N6
\sSHL_s2[23]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s2[23]~41_combout\ = (\iB[1]~input_o\ & ((\iA[20]~input_o\))) # (!\iB[1]~input_o\ & (\iA[22]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iA[22]~input_o\,
	datac => \iA[20]~input_o\,
	datad => \iB[1]~input_o\,
	combout => \sSHL_s2[23]~41_combout\);

-- Location: LCCOMB_X21_Y13_N18
\sSHL_s2[22]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s2[22]~42_combout\ = (\iB[0]~input_o\ & (\sSHL_s2[22]~39_combout\)) # (!\iB[0]~input_o\ & ((\sSHL_s2[23]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sSHL_s2[22]~39_combout\,
	datac => \iB[0]~input_o\,
	datad => \sSHL_s2[23]~41_combout\,
	combout => \sSHL_s2[22]~42_combout\);

-- Location: LCCOMB_X21_Y13_N20
\sSHL_s3[22]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s3[22]~16_combout\ = (\iB[2]~input_o\ & (\sSHL_s2[18]~34_combout\)) # (!\iB[2]~input_o\ & ((\sSHL_s2[22]~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sSHL_s2[18]~34_combout\,
	datac => \iB[2]~input_o\,
	datad => \sSHL_s2[22]~42_combout\,
	combout => \sSHL_s3[22]~16_combout\);

-- Location: LCCOMB_X21_Y13_N30
\Mux9~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (\Mux9~1_combout\ & ((\sSHL_s3[22]~16_combout\) # ((\Mux8~0_combout\)))) # (!\Mux9~1_combout\ & (((\sSHL_s3[14]~8_combout\ & !\Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~1_combout\,
	datab => \sSHL_s3[22]~16_combout\,
	datac => \sSHL_s3[14]~8_combout\,
	datad => \Mux8~0_combout\,
	combout => \Mux9~2_combout\);

-- Location: LCCOMB_X21_Y13_N8
\Mux9~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = (\Mux20~9_combout\ & (((\iA[22]~input_o\ & \iB[22]~input_o\)) # (!\Mux20~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~9_combout\,
	datab => \iA[22]~input_o\,
	datac => \Mux20~8_combout\,
	datad => \iB[22]~input_o\,
	combout => \Mux9~3_combout\);

-- Location: LCCOMB_X21_Y13_N10
\Mux9~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~4_combout\ = (\Mux9~3_combout\ & ((\Mux20~8_combout\) # ((\Mux9~2_combout\ & \iALUFN[4]~input_o\)))) # (!\Mux9~3_combout\ & (((!\Mux20~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~2_combout\,
	datab => \Mux9~3_combout\,
	datac => \Mux20~8_combout\,
	datad => \iALUFN[4]~input_o\,
	combout => \Mux9~4_combout\);

-- Location: LCCOMB_X24_Y10_N8
\Mux9~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~5_combout\ = (\Mux20~4_combout\ & (((\Mux9~4_combout\)))) # (!\Mux20~4_combout\ & ((\Mux9~4_combout\ & (\Add0~44_combout\)) # (!\Mux9~4_combout\ & ((\Add1~44_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~4_combout\,
	datab => \Add0~44_combout\,
	datac => \Add1~44_combout\,
	datad => \Mux9~4_combout\,
	combout => \Mux9~5_combout\);

-- Location: LCCOMB_X24_Y10_N22
\Mux9~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~8_combout\ = (\Mux9~7_combout\ & (((\Mux9~5_combout\) # (!\Mux20~1_combout\)))) # (!\Mux9~7_combout\ & (!\Equal0~14_combout\ & ((\Mux20~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~14_combout\,
	datab => \Mux9~7_combout\,
	datac => \Mux9~5_combout\,
	datad => \Mux20~1_combout\,
	combout => \Mux9~8_combout\);

-- Location: LCCOMB_X25_Y9_N26
\Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\iA[22]~input_o\) # (\iB[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[22]~input_o\,
	datac => \iB[22]~input_o\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X25_Y9_N4
\Mux9~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~9_combout\ = (\Mux23~1_combout\ & ((\Mux9~0_combout\) # ((\Mux9~8_combout\ & !\Mux20~3_combout\)))) # (!\Mux23~1_combout\ & (\Mux9~8_combout\ & ((!\Mux20~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~1_combout\,
	datab => \Mux9~8_combout\,
	datac => \Mux9~0_combout\,
	datad => \Mux20~3_combout\,
	combout => \Mux9~9_combout\);

-- Location: LCCOMB_X22_Y9_N20
\Mux8~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~3_combout\ = (\iB[23]~input_o\) # (\iA[23]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \iB[23]~input_o\,
	datad => \iA[23]~input_o\,
	combout => \Mux8~3_combout\);

-- Location: LCCOMB_X24_Y9_N18
\Mux8~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~9_combout\ = (\iALUFN[3]~input_o\ & (\iA[23]~input_o\ & (!\iALUFN[0]~input_o\ & \Mux28~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iALUFN[3]~input_o\,
	datab => \iA[23]~input_o\,
	datac => \iALUFN[0]~input_o\,
	datad => \Mux28~4_combout\,
	combout => \Mux8~9_combout\);

-- Location: LCCOMB_X24_Y9_N20
\Mux8~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~10_combout\ = (\Mux20~10_combout\ & ((\Mux20~11_combout\ & ((\Equal0~15_combout\))) # (!\Mux20~11_combout\ & (\Mux8~9_combout\)))) # (!\Mux20~10_combout\ & (((!\Mux20~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~10_combout\,
	datab => \Mux8~9_combout\,
	datac => \Equal0~15_combout\,
	datad => \Mux20~11_combout\,
	combout => \Mux8~10_combout\);

-- Location: LCCOMB_X25_Y10_N14
\Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (\iA[23]~input_o\ & ((\iB[23]~input_o\ & (\Add0~45\ & VCC)) # (!\iB[23]~input_o\ & (!\Add0~45\)))) # (!\iA[23]~input_o\ & ((\iB[23]~input_o\ & (!\Add0~45\)) # (!\iB[23]~input_o\ & ((\Add0~45\) # (GND)))))
-- \Add0~47\ = CARRY((\iA[23]~input_o\ & (!\iB[23]~input_o\ & !\Add0~45\)) # (!\iA[23]~input_o\ & ((!\Add0~45\) # (!\iB[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iA[23]~input_o\,
	datab => \iB[23]~input_o\,
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X22_Y9_N6
\Mux8~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~6_combout\ = (\Mux20~9_combout\ & (((\iA[23]~input_o\ & \iB[23]~input_o\)) # (!\Mux20~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~9_combout\,
	datab => \iA[23]~input_o\,
	datac => \iB[23]~input_o\,
	datad => \Mux20~8_combout\,
	combout => \Mux8~6_combout\);

-- Location: LCCOMB_X21_Y11_N22
\Mux8~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~4_combout\ = (\Mux8~2_combout\ & (((!\Mux8~1_combout\ & \sSHR_s4[23]~15_combout\)))) # (!\Mux8~2_combout\ & ((\sSHL_s4[7]~10_combout\) # ((\Mux8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~2_combout\,
	datab => \sSHL_s4[7]~10_combout\,
	datac => \Mux8~1_combout\,
	datad => \sSHR_s4[23]~15_combout\,
	combout => \Mux8~4_combout\);

-- Location: LCCOMB_X21_Y12_N8
\sSHL_s2[24]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s2[24]~43_combout\ = (\iB[1]~input_o\ & (\iA[21]~input_o\)) # (!\iB[1]~input_o\ & ((\iA[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[1]~input_o\,
	datac => \iA[21]~input_o\,
	datad => \iA[23]~input_o\,
	combout => \sSHL_s2[24]~43_combout\);

-- Location: LCCOMB_X21_Y12_N26
\sSHL_s2[23]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s2[23]~44_combout\ = (\iB[0]~input_o\ & ((\sSHL_s2[23]~41_combout\))) # (!\iB[0]~input_o\ & (\sSHL_s2[24]~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iB[0]~input_o\,
	datac => \sSHL_s2[24]~43_combout\,
	datad => \sSHL_s2[23]~41_combout\,
	combout => \sSHL_s2[23]~44_combout\);

-- Location: LCCOMB_X20_Y13_N26
\sSHL_s3[23]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s3[23]~17_combout\ = (\iB[2]~input_o\ & (\sSHL_s2[19]~36_combout\)) # (!\iB[2]~input_o\ & ((\sSHL_s2[23]~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[2]~input_o\,
	datac => \sSHL_s2[19]~36_combout\,
	datad => \sSHL_s2[23]~44_combout\,
	combout => \sSHL_s3[23]~17_combout\);

-- Location: LCCOMB_X20_Y13_N28
\Mux8~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~5_combout\ = (\Mux8~4_combout\ & (((\sSHL_s3[23]~17_combout\) # (\Mux8~0_combout\)))) # (!\Mux8~4_combout\ & (\sSHL_s3[15]~9_combout\ & ((!\Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~4_combout\,
	datab => \sSHL_s3[15]~9_combout\,
	datac => \sSHL_s3[23]~17_combout\,
	datad => \Mux8~0_combout\,
	combout => \Mux8~5_combout\);

-- Location: LCCOMB_X22_Y9_N8
\Mux8~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~7_combout\ = (\Mux8~6_combout\ & ((\Mux20~8_combout\) # ((\iALUFN[4]~input_o\ & \Mux8~5_combout\)))) # (!\Mux8~6_combout\ & (((!\Mux20~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~6_combout\,
	datab => \iALUFN[4]~input_o\,
	datac => \Mux8~5_combout\,
	datad => \Mux20~8_combout\,
	combout => \Mux8~7_combout\);

-- Location: LCCOMB_X27_Y10_N14
\Add1~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~46_combout\ = (\iB[23]~input_o\ & ((\iA[23]~input_o\ & (!\Add1~45\)) # (!\iA[23]~input_o\ & ((\Add1~45\) # (GND))))) # (!\iB[23]~input_o\ & ((\iA[23]~input_o\ & (\Add1~45\ & VCC)) # (!\iA[23]~input_o\ & (!\Add1~45\))))
-- \Add1~47\ = CARRY((\iB[23]~input_o\ & ((!\Add1~45\) # (!\iA[23]~input_o\))) # (!\iB[23]~input_o\ & (!\iA[23]~input_o\ & !\Add1~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iB[23]~input_o\,
	datab => \iA[23]~input_o\,
	datad => VCC,
	cin => \Add1~45\,
	combout => \Add1~46_combout\,
	cout => \Add1~47\);

-- Location: LCCOMB_X24_Y9_N0
\Mux8~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~8_combout\ = (\Mux8~7_combout\ & ((\Add0~46_combout\) # ((\Mux20~4_combout\)))) # (!\Mux8~7_combout\ & (((\Add1~46_combout\ & !\Mux20~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~46_combout\,
	datab => \Mux8~7_combout\,
	datac => \Add1~46_combout\,
	datad => \Mux20~4_combout\,
	combout => \Mux8~8_combout\);

-- Location: LCCOMB_X24_Y9_N22
\Mux8~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~11_combout\ = (\Mux20~1_combout\ & ((\Mux8~10_combout\ & ((\Mux8~8_combout\))) # (!\Mux8~10_combout\ & (!\Equal0~15_combout\)))) # (!\Mux20~1_combout\ & (\Mux8~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~1_combout\,
	datab => \Mux8~10_combout\,
	datac => \Equal0~15_combout\,
	datad => \Mux8~8_combout\,
	combout => \Mux8~11_combout\);

-- Location: LCCOMB_X22_Y9_N26
\Mux8~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~12_combout\ = (\Mux20~3_combout\ & (\Mux8~3_combout\ & ((\Mux23~1_combout\)))) # (!\Mux20~3_combout\ & ((\Mux8~11_combout\) # ((\Mux8~3_combout\ & \Mux23~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~3_combout\,
	datab => \Mux8~3_combout\,
	datac => \Mux8~11_combout\,
	datad => \Mux23~1_combout\,
	combout => \Mux8~12_combout\);

-- Location: LCCOMB_X26_Y14_N30
\Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\Mux27~1_combout\ & ((\iB[24]~input_o\ & ((\iALUFN[3]~input_o\) # (!\iA[24]~input_o\))) # (!\iB[24]~input_o\ & ((\iA[24]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[24]~input_o\,
	datab => \iALUFN[3]~input_o\,
	datac => \iA[24]~input_o\,
	datad => \Mux27~1_combout\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X21_Y12_N12
\sSHL_s2[25]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s2[25]~45_combout\ = (\iB[1]~input_o\ & (\iA[22]~input_o\)) # (!\iB[1]~input_o\ & ((\iA[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iA[22]~input_o\,
	datac => \iA[24]~input_o\,
	datad => \iB[1]~input_o\,
	combout => \sSHL_s2[25]~45_combout\);

-- Location: LCCOMB_X20_Y12_N22
\sSHL_s2[24]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s2[24]~46_combout\ = (\iB[0]~input_o\ & (\sSHL_s2[24]~43_combout\)) # (!\iB[0]~input_o\ & ((\sSHL_s2[25]~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[0]~input_o\,
	datac => \sSHL_s2[24]~43_combout\,
	datad => \sSHL_s2[25]~45_combout\,
	combout => \sSHL_s2[24]~46_combout\);

-- Location: LCCOMB_X21_Y14_N10
\Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\Mux24~2_combout\ & ((\sSHL_s2[20]~38_combout\) # ((\Mux24~1_combout\)))) # (!\Mux24~2_combout\ & (((!\Mux24~1_combout\ & \sSHL_s2[24]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~2_combout\,
	datab => \sSHL_s2[20]~38_combout\,
	datac => \Mux24~1_combout\,
	datad => \sSHL_s2[24]~46_combout\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X21_Y14_N20
\Mux7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (\Mux7~1_combout\ & ((\sSHL_s4[8]~12_combout\) # ((!\Mux24~1_combout\)))) # (!\Mux7~1_combout\ & (((\Mux24~1_combout\ & \sSHL_s3[16]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~1_combout\,
	datab => \sSHL_s4[8]~12_combout\,
	datac => \Mux24~1_combout\,
	datad => \sSHL_s3[16]~10_combout\,
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X27_Y10_N16
\Add1~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~48_combout\ = ((\iB[24]~input_o\ $ (\iA[24]~input_o\ $ (\Add1~47\)))) # (GND)
-- \Add1~49\ = CARRY((\iB[24]~input_o\ & (\iA[24]~input_o\ & !\Add1~47\)) # (!\iB[24]~input_o\ & ((\iA[24]~input_o\) # (!\Add1~47\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iB[24]~input_o\,
	datab => \iA[24]~input_o\,
	datad => VCC,
	cin => \Add1~47\,
	combout => \Add1~48_combout\,
	cout => \Add1~49\);

-- Location: LCCOMB_X25_Y10_N16
\Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = ((\iA[24]~input_o\ $ (\iB[24]~input_o\ $ (!\Add0~47\)))) # (GND)
-- \Add0~49\ = CARRY((\iA[24]~input_o\ & ((\iB[24]~input_o\) # (!\Add0~47\))) # (!\iA[24]~input_o\ & (\iB[24]~input_o\ & !\Add0~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iA[24]~input_o\,
	datab => \iB[24]~input_o\,
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X21_Y14_N24
\Mux7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (\iALUFN[0]~input_o\ & (\Add1~48_combout\ & ((!\iALUFN[5]~input_o\)))) # (!\iALUFN[0]~input_o\ & (((\Add0~48_combout\) # (\iALUFN[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~48_combout\,
	datab => \Add0~48_combout\,
	datac => \iALUFN[0]~input_o\,
	datad => \iALUFN[5]~input_o\,
	combout => \Mux7~3_combout\);

-- Location: LCCOMB_X21_Y14_N14
\Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\iALUFN[5]~input_o\ & ((!\iALUFN[0]~input_o\) # (!\iB[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[4]~input_o\,
	datab => \iALUFN[5]~input_o\,
	datac => \iALUFN[0]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X21_Y14_N18
\Mux7~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = (\Mux7~3_combout\ & ((\Mux7~2_combout\) # ((!\Mux6~0_combout\)))) # (!\Mux7~3_combout\ & (((\Mux6~0_combout\ & \sSHR_s4[24]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~2_combout\,
	datab => \Mux7~3_combout\,
	datac => \Mux6~0_combout\,
	datad => \sSHR_s4[24]~16_combout\,
	combout => \Mux7~4_combout\);

-- Location: LCCOMB_X25_Y15_N0
\Mux7~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~5_combout\ = (\iALUFN[4]~input_o\ & \Mux7~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iALUFN[4]~input_o\,
	datad => \Mux7~4_combout\,
	combout => \Mux7~5_combout\);

-- Location: LCCOMB_X25_Y15_N18
\Mux7~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~6_combout\ = (\Mux24~5_combout\ & (((\iA[24]~input_o\ & \Mux24~4_combout\)))) # (!\Mux24~5_combout\ & ((\Mux7~5_combout\) # ((!\Mux24~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~5_combout\,
	datab => \Mux7~5_combout\,
	datac => \iA[24]~input_o\,
	datad => \Mux24~4_combout\,
	combout => \Mux7~6_combout\);

-- Location: LCCOMB_X26_Y14_N16
\Mux7~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~7_combout\ = (\Mux24~0_combout\ & ((\iB[24]~input_o\ & (\iA[24]~input_o\)) # (!\iB[24]~input_o\ & (!\iA[24]~input_o\ & !\Mux7~6_combout\)))) # (!\Mux24~0_combout\ & (((\Mux7~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[24]~input_o\,
	datab => \Mux24~0_combout\,
	datac => \iA[24]~input_o\,
	datad => \Mux7~6_combout\,
	combout => \Mux7~7_combout\);

-- Location: LCCOMB_X26_Y14_N2
\Mux7~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~8_combout\ = (\Mux27~0_combout\ & ((\Mux7~0_combout\) # ((!\iALUFN[2]~input_o\ & \Mux7~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~0_combout\,
	datab => \iALUFN[2]~input_o\,
	datac => \Mux27~0_combout\,
	datad => \Mux7~7_combout\,
	combout => \Mux7~8_combout\);

-- Location: LCCOMB_X28_Y14_N22
\Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\Mux27~1_combout\ & ((\iA[25]~input_o\ & ((\iALUFN[3]~input_o\) # (!\iB[25]~input_o\))) # (!\iA[25]~input_o\ & ((\iB[25]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[25]~input_o\,
	datab => \iALUFN[3]~input_o\,
	datac => \iB[25]~input_o\,
	datad => \Mux27~1_combout\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X25_Y10_N18
\Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (\iA[25]~input_o\ & ((\iB[25]~input_o\ & (\Add0~49\ & VCC)) # (!\iB[25]~input_o\ & (!\Add0~49\)))) # (!\iA[25]~input_o\ & ((\iB[25]~input_o\ & (!\Add0~49\)) # (!\iB[25]~input_o\ & ((\Add0~49\) # (GND)))))
-- \Add0~51\ = CARRY((\iA[25]~input_o\ & (!\iB[25]~input_o\ & !\Add0~49\)) # (!\iA[25]~input_o\ & ((!\Add0~49\) # (!\iB[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iA[25]~input_o\,
	datab => \iB[25]~input_o\,
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: LCCOMB_X27_Y10_N18
\Add1~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~50_combout\ = (\iA[25]~input_o\ & ((\iB[25]~input_o\ & (!\Add1~49\)) # (!\iB[25]~input_o\ & (\Add1~49\ & VCC)))) # (!\iA[25]~input_o\ & ((\iB[25]~input_o\ & ((\Add1~49\) # (GND))) # (!\iB[25]~input_o\ & (!\Add1~49\))))
-- \Add1~51\ = CARRY((\iA[25]~input_o\ & (\iB[25]~input_o\ & !\Add1~49\)) # (!\iA[25]~input_o\ & ((\iB[25]~input_o\) # (!\Add1~49\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iA[25]~input_o\,
	datab => \iB[25]~input_o\,
	datad => VCC,
	cin => \Add1~49\,
	combout => \Add1~50_combout\,
	cout => \Add1~51\);

-- Location: LCCOMB_X26_Y13_N2
\Mux6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = (\iALUFN[5]~input_o\ & (!\iALUFN[0]~input_o\)) # (!\iALUFN[5]~input_o\ & ((\iALUFN[0]~input_o\ & ((\Add1~50_combout\))) # (!\iALUFN[0]~input_o\ & (\Add0~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iALUFN[5]~input_o\,
	datab => \iALUFN[0]~input_o\,
	datac => \Add0~50_combout\,
	datad => \Add1~50_combout\,
	combout => \Mux6~4_combout\);

-- Location: LCCOMB_X21_Y12_N30
\sSHL_s2[25]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s2[25]~47_combout\ = (!\iB[0]~input_o\ & ((\iB[1]~input_o\ & ((\iA[23]~input_o\))) # (!\iB[1]~input_o\ & (\iA[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[1]~input_o\,
	datab => \iB[0]~input_o\,
	datac => \iA[25]~input_o\,
	datad => \iA[23]~input_o\,
	combout => \sSHL_s2[25]~47_combout\);

-- Location: LCCOMB_X21_Y12_N24
\sSHL_s2[25]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s2[25]~48_combout\ = (\sSHL_s2[25]~47_combout\) # ((\iB[0]~input_o\ & \sSHL_s2[25]~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iB[0]~input_o\,
	datac => \sSHL_s2[25]~47_combout\,
	datad => \sSHL_s2[25]~45_combout\,
	combout => \sSHL_s2[25]~48_combout\);

-- Location: LCCOMB_X24_Y12_N2
\Mux6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\Mux24~2_combout\ & (((\Mux24~1_combout\)))) # (!\Mux24~2_combout\ & ((\Mux24~1_combout\ & ((\sSHL_s3[17]~11_combout\))) # (!\Mux24~1_combout\ & (\sSHL_s2[25]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHL_s2[25]~48_combout\,
	datab => \Mux24~2_combout\,
	datac => \Mux24~1_combout\,
	datad => \sSHL_s3[17]~11_combout\,
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X24_Y12_N20
\Mux6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (\Mux24~2_combout\ & ((\Mux6~2_combout\ & (\sSHL_s4[9]~13_combout\)) # (!\Mux6~2_combout\ & ((\sSHL_s2[21]~40_combout\))))) # (!\Mux24~2_combout\ & (\Mux6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~2_combout\,
	datab => \Mux6~2_combout\,
	datac => \sSHL_s4[9]~13_combout\,
	datad => \sSHL_s2[21]~40_combout\,
	combout => \Mux6~3_combout\);

-- Location: LCCOMB_X26_Y13_N4
\Mux6~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~5_combout\ = (\Mux6~0_combout\ & ((\Mux6~4_combout\ & (\Mux6~3_combout\)) # (!\Mux6~4_combout\ & ((\sSHR_s4[25]~17_combout\))))) # (!\Mux6~0_combout\ & (\Mux6~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~0_combout\,
	datab => \Mux6~4_combout\,
	datac => \Mux6~3_combout\,
	datad => \sSHR_s4[25]~17_combout\,
	combout => \Mux6~5_combout\);

-- Location: LCCOMB_X28_Y14_N8
\Mux6~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~6_combout\ = (\iALUFN[4]~input_o\ & \Mux6~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iALUFN[4]~input_o\,
	datad => \Mux6~5_combout\,
	combout => \Mux6~6_combout\);

-- Location: LCCOMB_X28_Y14_N2
\Mux6~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~7_combout\ = (\Mux24~4_combout\ & ((\Mux24~5_combout\ & ((\iA[25]~input_o\))) # (!\Mux24~5_combout\ & (\Mux6~6_combout\)))) # (!\Mux24~4_combout\ & (((!\Mux24~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~4_combout\,
	datab => \Mux6~6_combout\,
	datac => \iA[25]~input_o\,
	datad => \Mux24~5_combout\,
	combout => \Mux6~7_combout\);

-- Location: LCCOMB_X28_Y14_N4
\Mux6~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~8_combout\ = (\Mux24~0_combout\ & ((\iB[25]~input_o\ & (\iA[25]~input_o\)) # (!\iB[25]~input_o\ & (!\iA[25]~input_o\ & !\Mux6~7_combout\)))) # (!\Mux24~0_combout\ & (((\Mux6~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[25]~input_o\,
	datab => \Mux24~0_combout\,
	datac => \iA[25]~input_o\,
	datad => \Mux6~7_combout\,
	combout => \Mux6~8_combout\);

-- Location: LCCOMB_X28_Y14_N6
\Mux6~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~9_combout\ = (\Mux27~0_combout\ & ((\Mux6~1_combout\) # ((\Mux6~8_combout\ & !\iALUFN[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~1_combout\,
	datab => \Mux27~0_combout\,
	datac => \Mux6~8_combout\,
	datad => \iALUFN[2]~input_o\,
	combout => \Mux6~9_combout\);

-- Location: LCCOMB_X27_Y10_N20
\Add1~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~52_combout\ = ((\iB[26]~input_o\ $ (\iA[26]~input_o\ $ (\Add1~51\)))) # (GND)
-- \Add1~53\ = CARRY((\iB[26]~input_o\ & (\iA[26]~input_o\ & !\Add1~51\)) # (!\iB[26]~input_o\ & ((\iA[26]~input_o\) # (!\Add1~51\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iB[26]~input_o\,
	datab => \iA[26]~input_o\,
	datad => VCC,
	cin => \Add1~51\,
	combout => \Add1~52_combout\,
	cout => \Add1~53\);

-- Location: LCCOMB_X25_Y10_N20
\Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = ((\iB[26]~input_o\ $ (\iA[26]~input_o\ $ (!\Add0~51\)))) # (GND)
-- \Add0~53\ = CARRY((\iB[26]~input_o\ & ((\iA[26]~input_o\) # (!\Add0~51\))) # (!\iB[26]~input_o\ & (\iA[26]~input_o\ & !\Add0~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iB[26]~input_o\,
	datab => \iA[26]~input_o\,
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: LCCOMB_X26_Y13_N14
\Mux5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (\iALUFN[5]~input_o\ & (!\iALUFN[0]~input_o\)) # (!\iALUFN[5]~input_o\ & ((\iALUFN[0]~input_o\ & (\Add1~52_combout\)) # (!\iALUFN[0]~input_o\ & ((\Add0~52_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iALUFN[5]~input_o\,
	datab => \iALUFN[0]~input_o\,
	datac => \Add1~52_combout\,
	datad => \Add0~52_combout\,
	combout => \Mux5~3_combout\);

-- Location: LCCOMB_X21_Y12_N18
\sSHL_s2[26]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s2[26]~49_combout\ = (\iB[1]~input_o\ & ((\iB[0]~input_o\ & ((\iA[23]~input_o\))) # (!\iB[0]~input_o\ & (\iA[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[1]~input_o\,
	datab => \iB[0]~input_o\,
	datac => \iA[24]~input_o\,
	datad => \iA[23]~input_o\,
	combout => \sSHL_s2[26]~49_combout\);

-- Location: LCCOMB_X21_Y12_N28
\sSHL_s1[26]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s1[26]~1_combout\ = (\iB[0]~input_o\ & (\iA[25]~input_o\)) # (!\iB[0]~input_o\ & ((\iA[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iB[0]~input_o\,
	datac => \iA[25]~input_o\,
	datad => \iA[26]~input_o\,
	combout => \sSHL_s1[26]~1_combout\);

-- Location: LCCOMB_X21_Y12_N22
\sSHL_s2[26]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s2[26]~50_combout\ = (\sSHL_s2[26]~49_combout\) # ((!\iB[1]~input_o\ & \sSHL_s1[26]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[1]~input_o\,
	datab => \sSHL_s2[26]~49_combout\,
	datad => \sSHL_s1[26]~1_combout\,
	combout => \sSHL_s2[26]~50_combout\);

-- Location: LCCOMB_X21_Y13_N12
\Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\Mux24~2_combout\ & (((\Mux24~1_combout\) # (\sSHL_s2[22]~42_combout\)))) # (!\Mux24~2_combout\ & (\sSHL_s2[26]~50_combout\ & (!\Mux24~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~2_combout\,
	datab => \sSHL_s2[26]~50_combout\,
	datac => \Mux24~1_combout\,
	datad => \sSHL_s2[22]~42_combout\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X21_Y13_N14
\Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\Mux24~1_combout\ & ((\Mux5~1_combout\ & ((\sSHL_s4[10]~14_combout\))) # (!\Mux5~1_combout\ & (\sSHL_s3[18]~12_combout\)))) # (!\Mux24~1_combout\ & (((\Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHL_s3[18]~12_combout\,
	datab => \sSHL_s4[10]~14_combout\,
	datac => \Mux24~1_combout\,
	datad => \Mux5~1_combout\,
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X26_Y13_N0
\Mux5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = (\Mux6~0_combout\ & ((\Mux5~3_combout\ & (\Mux5~2_combout\)) # (!\Mux5~3_combout\ & ((\sSHR_s4[26]~18_combout\))))) # (!\Mux6~0_combout\ & (\Mux5~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~0_combout\,
	datab => \Mux5~3_combout\,
	datac => \Mux5~2_combout\,
	datad => \sSHR_s4[26]~18_combout\,
	combout => \Mux5~4_combout\);

-- Location: LCCOMB_X28_Y14_N10
\Mux5~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~5_combout\ = (\Mux5~4_combout\ & \iALUFN[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux5~4_combout\,
	datad => \iALUFN[4]~input_o\,
	combout => \Mux5~5_combout\);

-- Location: LCCOMB_X28_Y14_N20
\Mux5~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~6_combout\ = (\Mux24~5_combout\ & (\iA[26]~input_o\ & (\Mux24~4_combout\))) # (!\Mux24~5_combout\ & (((\Mux5~5_combout\) # (!\Mux24~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[26]~input_o\,
	datab => \Mux24~5_combout\,
	datac => \Mux24~4_combout\,
	datad => \Mux5~5_combout\,
	combout => \Mux5~6_combout\);

-- Location: LCCOMB_X28_Y14_N30
\Mux5~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~7_combout\ = (\Mux24~0_combout\ & ((\iA[26]~input_o\ & (\iB[26]~input_o\)) # (!\iA[26]~input_o\ & (!\iB[26]~input_o\ & !\Mux5~6_combout\)))) # (!\Mux24~0_combout\ & (((\Mux5~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[26]~input_o\,
	datab => \Mux24~0_combout\,
	datac => \iB[26]~input_o\,
	datad => \Mux5~6_combout\,
	combout => \Mux5~7_combout\);

-- Location: LCCOMB_X28_Y14_N0
\Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\Mux27~1_combout\ & ((\iA[26]~input_o\ & ((\iALUFN[3]~input_o\) # (!\iB[26]~input_o\))) # (!\iA[26]~input_o\ & ((\iB[26]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[26]~input_o\,
	datab => \iALUFN[3]~input_o\,
	datac => \iB[26]~input_o\,
	datad => \Mux27~1_combout\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X28_Y14_N24
\Mux5~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~8_combout\ = (\Mux27~0_combout\ & ((\Mux5~0_combout\) # ((\Mux5~7_combout\ & !\iALUFN[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~7_combout\,
	datab => \iALUFN[2]~input_o\,
	datac => \Mux27~0_combout\,
	datad => \Mux5~0_combout\,
	combout => \Mux5~8_combout\);

-- Location: LCCOMB_X26_Y14_N4
\Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\Mux27~1_combout\ & ((\iA[27]~input_o\ & ((\iALUFN[3]~input_o\) # (!\iB[27]~input_o\))) # (!\iA[27]~input_o\ & ((\iB[27]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[27]~input_o\,
	datab => \iALUFN[3]~input_o\,
	datac => \iB[27]~input_o\,
	datad => \Mux27~1_combout\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X26_Y14_N22
\sSHL_s2[27]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s2[27]~51_combout\ = (\iB[1]~input_o\ & ((\iB[0]~input_o\ & (\iA[24]~input_o\)) # (!\iB[0]~input_o\ & ((\iA[25]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[0]~input_o\,
	datab => \iB[1]~input_o\,
	datac => \iA[24]~input_o\,
	datad => \iA[25]~input_o\,
	combout => \sSHL_s2[27]~51_combout\);

-- Location: LCCOMB_X26_Y14_N24
\sSHL_s1[27]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s1[27]~2_combout\ = (\iB[0]~input_o\ & ((\iA[26]~input_o\))) # (!\iB[0]~input_o\ & (\iA[27]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[27]~input_o\,
	datac => \iB[0]~input_o\,
	datad => \iA[26]~input_o\,
	combout => \sSHL_s1[27]~2_combout\);

-- Location: LCCOMB_X26_Y14_N26
\sSHL_s2[27]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s2[27]~52_combout\ = (\sSHL_s2[27]~51_combout\) # ((!\iB[1]~input_o\ & \sSHL_s1[27]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHL_s2[27]~51_combout\,
	datac => \iB[1]~input_o\,
	datad => \sSHL_s1[27]~2_combout\,
	combout => \sSHL_s2[27]~52_combout\);

-- Location: LCCOMB_X21_Y14_N12
\Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\Mux24~1_combout\ & ((\sSHL_s3[19]~13_combout\) # ((\Mux24~2_combout\)))) # (!\Mux24~1_combout\ & (((\sSHL_s2[27]~52_combout\ & !\Mux24~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHL_s3[19]~13_combout\,
	datab => \sSHL_s2[27]~52_combout\,
	datac => \Mux24~1_combout\,
	datad => \Mux24~2_combout\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X21_Y14_N22
\Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\Mux24~2_combout\ & ((\Mux4~1_combout\ & (\sSHL_s4[11]~15_combout\)) # (!\Mux4~1_combout\ & ((\sSHL_s2[23]~44_combout\))))) # (!\Mux24~2_combout\ & (((\Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~2_combout\,
	datab => \sSHL_s4[11]~15_combout\,
	datac => \sSHL_s2[23]~44_combout\,
	datad => \Mux4~1_combout\,
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X25_Y10_N22
\Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (\iB[27]~input_o\ & ((\iA[27]~input_o\ & (\Add0~53\ & VCC)) # (!\iA[27]~input_o\ & (!\Add0~53\)))) # (!\iB[27]~input_o\ & ((\iA[27]~input_o\ & (!\Add0~53\)) # (!\iA[27]~input_o\ & ((\Add0~53\) # (GND)))))
-- \Add0~55\ = CARRY((\iB[27]~input_o\ & (!\iA[27]~input_o\ & !\Add0~53\)) # (!\iB[27]~input_o\ & ((!\Add0~53\) # (!\iA[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iB[27]~input_o\,
	datab => \iA[27]~input_o\,
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: LCCOMB_X27_Y10_N22
\Add1~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~54_combout\ = (\iB[27]~input_o\ & ((\iA[27]~input_o\ & (!\Add1~53\)) # (!\iA[27]~input_o\ & ((\Add1~53\) # (GND))))) # (!\iB[27]~input_o\ & ((\iA[27]~input_o\ & (\Add1~53\ & VCC)) # (!\iA[27]~input_o\ & (!\Add1~53\))))
-- \Add1~55\ = CARRY((\iB[27]~input_o\ & ((!\Add1~53\) # (!\iA[27]~input_o\))) # (!\iB[27]~input_o\ & (!\iA[27]~input_o\ & !\Add1~53\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iB[27]~input_o\,
	datab => \iA[27]~input_o\,
	datad => VCC,
	cin => \Add1~53\,
	combout => \Add1~54_combout\,
	cout => \Add1~55\);

-- Location: LCCOMB_X26_Y10_N30
\Mux4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (\iALUFN[5]~input_o\ & (((!\iALUFN[0]~input_o\)))) # (!\iALUFN[5]~input_o\ & ((\iALUFN[0]~input_o\ & ((\Add1~54_combout\))) # (!\iALUFN[0]~input_o\ & (\Add0~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iALUFN[5]~input_o\,
	datab => \Add0~54_combout\,
	datac => \iALUFN[0]~input_o\,
	datad => \Add1~54_combout\,
	combout => \Mux4~3_combout\);

-- Location: LCCOMB_X21_Y14_N0
\Mux4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (\Mux6~0_combout\ & ((\Mux4~3_combout\ & (\Mux4~2_combout\)) # (!\Mux4~3_combout\ & ((\sSHR_s4[27]~19_combout\))))) # (!\Mux6~0_combout\ & (((\Mux4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~2_combout\,
	datab => \Mux6~0_combout\,
	datac => \sSHR_s4[27]~19_combout\,
	datad => \Mux4~3_combout\,
	combout => \Mux4~4_combout\);

-- Location: LCCOMB_X25_Y15_N12
\Mux4~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~5_combout\ = (\Mux4~4_combout\ & \iALUFN[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux4~4_combout\,
	datad => \iALUFN[4]~input_o\,
	combout => \Mux4~5_combout\);

-- Location: LCCOMB_X25_Y15_N30
\Mux4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~6_combout\ = (\Mux24~4_combout\ & ((\Mux24~5_combout\ & ((\iA[27]~input_o\))) # (!\Mux24~5_combout\ & (\Mux4~5_combout\)))) # (!\Mux24~4_combout\ & (((!\Mux24~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~5_combout\,
	datab => \Mux24~4_combout\,
	datac => \iA[27]~input_o\,
	datad => \Mux24~5_combout\,
	combout => \Mux4~6_combout\);

-- Location: LCCOMB_X26_Y14_N20
\Mux4~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~7_combout\ = (\Mux24~0_combout\ & ((\iA[27]~input_o\ & ((\iB[27]~input_o\))) # (!\iA[27]~input_o\ & (!\Mux4~6_combout\ & !\iB[27]~input_o\)))) # (!\Mux24~0_combout\ & (((\Mux4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[27]~input_o\,
	datab => \Mux4~6_combout\,
	datac => \iB[27]~input_o\,
	datad => \Mux24~0_combout\,
	combout => \Mux4~7_combout\);

-- Location: LCCOMB_X26_Y14_N6
\Mux4~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~8_combout\ = (\Mux27~0_combout\ & ((\Mux4~0_combout\) # ((!\iALUFN[2]~input_o\ & \Mux4~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~0_combout\,
	datab => \iALUFN[2]~input_o\,
	datac => \Mux4~0_combout\,
	datad => \Mux4~7_combout\,
	combout => \Mux4~8_combout\);

-- Location: LCCOMB_X27_Y10_N24
\Add1~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~56_combout\ = ((\iA[28]~input_o\ $ (\iB[28]~input_o\ $ (\Add1~55\)))) # (GND)
-- \Add1~57\ = CARRY((\iA[28]~input_o\ & ((!\Add1~55\) # (!\iB[28]~input_o\))) # (!\iA[28]~input_o\ & (!\iB[28]~input_o\ & !\Add1~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iA[28]~input_o\,
	datab => \iB[28]~input_o\,
	datad => VCC,
	cin => \Add1~55\,
	combout => \Add1~56_combout\,
	cout => \Add1~57\);

-- Location: LCCOMB_X26_Y13_N10
\Mux3~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~9_combout\ = (\Mux28~11_combout\ & ((\iALUFN[3]~input_o\ & (!\Equal0~17_combout\)) # (!\iALUFN[3]~input_o\ & ((\Add1~56_combout\))))) # (!\Mux28~11_combout\ & (((\iALUFN[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~11_combout\,
	datab => \Equal0~17_combout\,
	datac => \iALUFN[3]~input_o\,
	datad => \Add1~56_combout\,
	combout => \Mux3~9_combout\);

-- Location: LCCOMB_X26_Y13_N28
\Mux3~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~10_combout\ = (\Mux28~11_combout\) # ((\Mux3~9_combout\ & (\iB[28]~input_o\ & \iA[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~9_combout\,
	datab => \iB[28]~input_o\,
	datac => \iA[28]~input_o\,
	datad => \Mux28~11_combout\,
	combout => \Mux3~10_combout\);

-- Location: LCCOMB_X25_Y10_N24
\Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = ((\iB[28]~input_o\ $ (\iA[28]~input_o\ $ (!\Add0~55\)))) # (GND)
-- \Add0~57\ = CARRY((\iB[28]~input_o\ & ((\iA[28]~input_o\) # (!\Add0~55\))) # (!\iB[28]~input_o\ & (\iA[28]~input_o\ & !\Add0~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iB[28]~input_o\,
	datab => \iA[28]~input_o\,
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: LCCOMB_X26_Y17_N16
\Mux3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~6_combout\ = (\iALUFN[5]~input_o\ & ((\iALUFN[0]~input_o\) # (\iB[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iALUFN[5]~input_o\,
	datac => \iALUFN[0]~input_o\,
	datad => \iB[4]~input_o\,
	combout => \Mux3~6_combout\);

-- Location: LCCOMB_X25_Y14_N18
\Mux3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~5_combout\ = ((!\iB[4]~input_o\ & \iALUFN[0]~input_o\)) # (!\iALUFN[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iB[4]~input_o\,
	datac => \iALUFN[5]~input_o\,
	datad => \iALUFN[0]~input_o\,
	combout => \Mux3~5_combout\);

-- Location: LCCOMB_X24_Y14_N18
\Mux3~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~7_combout\ = (\Mux3~6_combout\ & (((\sSHR_s4[28]~20_combout\ & \Mux3~5_combout\)))) # (!\Mux3~6_combout\ & ((\Add0~56_combout\) # ((!\Mux3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~56_combout\,
	datab => \sSHR_s4[28]~20_combout\,
	datac => \Mux3~6_combout\,
	datad => \Mux3~5_combout\,
	combout => \Mux3~7_combout\);

-- Location: LCCOMB_X20_Y12_N0
\sSHL_s1[28]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s1[28]~3_combout\ = (\iB[0]~input_o\ & (\iA[27]~input_o\)) # (!\iB[0]~input_o\ & ((\iA[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[0]~input_o\,
	datac => \iA[27]~input_o\,
	datad => \iA[28]~input_o\,
	combout => \sSHL_s1[28]~3_combout\);

-- Location: LCCOMB_X20_Y12_N10
\Mux3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\Mux28~7_combout\ & (!\Mux30~6_combout\)) # (!\Mux28~7_combout\ & ((\Mux30~6_combout\ & ((\sSHL_s1[28]~3_combout\))) # (!\Mux30~6_combout\ & (\sSHL_s2[24]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~7_combout\,
	datab => \Mux30~6_combout\,
	datac => \sSHL_s2[24]~46_combout\,
	datad => \sSHL_s1[28]~3_combout\,
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X22_Y15_N4
\Mux3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (\Mux3~3_combout\ & (((\sSHL_s3[20]~14_combout\) # (!\Mux28~7_combout\)))) # (!\Mux3~3_combout\ & (\sSHL_s1[26]~1_combout\ & ((\Mux28~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHL_s1[26]~1_combout\,
	datab => \Mux3~3_combout\,
	datac => \sSHL_s3[20]~14_combout\,
	datad => \Mux28~7_combout\,
	combout => \Mux3~4_combout\);

-- Location: LCCOMB_X25_Y14_N16
\Mux1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\iALUFN[5]~input_o\ & !\iALUFN[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \iALUFN[5]~input_o\,
	datad => \iALUFN[0]~input_o\,
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X22_Y15_N6
\Mux3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~8_combout\ = (\Mux3~7_combout\ & (((\Mux3~4_combout\) # (!\Mux1~2_combout\)))) # (!\Mux3~7_combout\ & (\sSHL_s4[12]~16_combout\ & ((\Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~7_combout\,
	datab => \sSHL_s4[12]~16_combout\,
	datac => \Mux3~4_combout\,
	datad => \Mux1~2_combout\,
	combout => \Mux3~8_combout\);

-- Location: LCCOMB_X26_Y13_N30
\Mux3~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~11_combout\ = (!\Mux28~12_combout\ & ((\Mux3~9_combout\ & (\Mux3~10_combout\)) # (!\Mux3~9_combout\ & (!\Mux3~10_combout\ & \Mux3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~9_combout\,
	datab => \Mux3~10_combout\,
	datac => \Mux28~12_combout\,
	datad => \Mux3~8_combout\,
	combout => \Mux3~11_combout\);

-- Location: LCCOMB_X27_Y12_N6
\Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (!\iALUFN[0]~input_o\ & (\iALUFN[3]~input_o\ & (\Mux28~4_combout\ & \iA[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iALUFN[0]~input_o\,
	datab => \iALUFN[3]~input_o\,
	datac => \Mux28~4_combout\,
	datad => \iA[28]~input_o\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X27_Y12_N24
\Mux3~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~12_combout\ = (\Mux28~6_combout\ & (((!\iALUFN[2]~input_o\ & \Mux3~2_combout\)))) # (!\Mux28~6_combout\ & ((\Mux3~11_combout\) # ((\iALUFN[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~11_combout\,
	datab => \Mux28~6_combout\,
	datac => \iALUFN[2]~input_o\,
	datad => \Mux3~2_combout\,
	combout => \Mux3~12_combout\);

-- Location: LCCOMB_X27_Y12_N2
\Mux3~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~13_combout\ = (\Mux3~12_combout\ & (\iALUFN[5]~input_o\ & (\iB[28]~input_o\ $ (\iA[28]~input_o\)))) # (!\Mux3~12_combout\ & ((\iB[28]~input_o\) # ((\iA[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[28]~input_o\,
	datab => \iA[28]~input_o\,
	datac => \iALUFN[5]~input_o\,
	datad => \Mux3~12_combout\,
	combout => \Mux3~13_combout\);

-- Location: LCCOMB_X27_Y12_N28
\Mux3~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~14_combout\ = (\Mux28~5_combout\ & (\Mux3~13_combout\ & ((\iALUFN[1]~input_o\) # (!\Mux3~12_combout\)))) # (!\Mux28~5_combout\ & (((\Mux3~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~5_combout\,
	datab => \Mux3~13_combout\,
	datac => \iALUFN[1]~input_o\,
	datad => \Mux3~12_combout\,
	combout => \Mux3~14_combout\);

-- Location: LCCOMB_X27_Y12_N14
\Mux3~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~15_combout\ = (\Mux3~14_combout\ & (((!\iALUFN[0]~input_o\ & !\iALUFN[4]~input_o\)) # (!\iALUFN[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iALUFN[0]~input_o\,
	datab => \iALUFN[2]~input_o\,
	datac => \iALUFN[4]~input_o\,
	datad => \Mux3~14_combout\,
	combout => \Mux3~15_combout\);

-- Location: LCCOMB_X28_Y8_N4
\Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\iA[29]~input_o\ & (\iALUFN[3]~input_o\ & (!\iALUFN[0]~input_o\ & \Mux28~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[29]~input_o\,
	datab => \iALUFN[3]~input_o\,
	datac => \iALUFN[0]~input_o\,
	datad => \Mux28~4_combout\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X27_Y10_N26
\Add1~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~58_combout\ = (\iA[29]~input_o\ & ((\iB[29]~input_o\ & (!\Add1~57\)) # (!\iB[29]~input_o\ & (\Add1~57\ & VCC)))) # (!\iA[29]~input_o\ & ((\iB[29]~input_o\ & ((\Add1~57\) # (GND))) # (!\iB[29]~input_o\ & (!\Add1~57\))))
-- \Add1~59\ = CARRY((\iA[29]~input_o\ & (\iB[29]~input_o\ & !\Add1~57\)) # (!\iA[29]~input_o\ & ((\iB[29]~input_o\) # (!\Add1~57\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iA[29]~input_o\,
	datab => \iB[29]~input_o\,
	datad => VCC,
	cin => \Add1~57\,
	combout => \Add1~58_combout\,
	cout => \Add1~59\);

-- Location: LCCOMB_X28_Y12_N8
\Mux2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~7_combout\ = (\iALUFN[3]~input_o\ & (((!\Equal0~18_combout\) # (!\Mux28~11_combout\)))) # (!\iALUFN[3]~input_o\ & (\Add1~58_combout\ & (\Mux28~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~58_combout\,
	datab => \iALUFN[3]~input_o\,
	datac => \Mux28~11_combout\,
	datad => \Equal0~18_combout\,
	combout => \Mux2~7_combout\);

-- Location: LCCOMB_X28_Y12_N26
\Mux2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~8_combout\ = (\Mux28~11_combout\) # ((\iB[29]~input_o\ & (\Mux2~7_combout\ & \iA[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[29]~input_o\,
	datab => \Mux2~7_combout\,
	datac => \Mux28~11_combout\,
	datad => \iA[29]~input_o\,
	combout => \Mux2~8_combout\);

-- Location: LCCOMB_X25_Y10_N26
\Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (\iA[29]~input_o\ & ((\iB[29]~input_o\ & (\Add0~57\ & VCC)) # (!\iB[29]~input_o\ & (!\Add0~57\)))) # (!\iA[29]~input_o\ & ((\iB[29]~input_o\ & (!\Add0~57\)) # (!\iB[29]~input_o\ & ((\Add0~57\) # (GND)))))
-- \Add0~59\ = CARRY((\iA[29]~input_o\ & (!\iB[29]~input_o\ & !\Add0~57\)) # (!\iA[29]~input_o\ & ((!\Add0~57\) # (!\iB[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iA[29]~input_o\,
	datab => \iB[29]~input_o\,
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: LCCOMB_X22_Y12_N26
\Mux2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~5_combout\ = (\Mux3~5_combout\ & ((\Mux3~6_combout\ & ((\sSHR_s4[29]~22_combout\))) # (!\Mux3~6_combout\ & (\Add0~58_combout\)))) # (!\Mux3~5_combout\ & (((!\Mux3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~58_combout\,
	datab => \Mux3~5_combout\,
	datac => \sSHR_s4[29]~22_combout\,
	datad => \Mux3~6_combout\,
	combout => \Mux2~5_combout\);

-- Location: LCCOMB_X20_Y12_N20
\sSHL_s1[29]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s1[29]~4_combout\ = (\iB[0]~input_o\ & (\iA[28]~input_o\)) # (!\iB[0]~input_o\ & ((\iA[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[28]~input_o\,
	datac => \iB[0]~input_o\,
	datad => \iA[29]~input_o\,
	combout => \sSHL_s1[29]~4_combout\);

-- Location: LCCOMB_X20_Y12_N30
\Mux2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\Mux28~7_combout\ & (((!\Mux30~6_combout\)))) # (!\Mux28~7_combout\ & ((\Mux30~6_combout\ & (\sSHL_s1[29]~4_combout\)) # (!\Mux30~6_combout\ & ((\sSHL_s2[25]~48_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~7_combout\,
	datab => \sSHL_s1[29]~4_combout\,
	datac => \Mux30~6_combout\,
	datad => \sSHL_s2[25]~48_combout\,
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X22_Y12_N0
\Mux2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (\Mux28~7_combout\ & ((\Mux2~3_combout\ & ((\sSHL_s3[21]~15_combout\))) # (!\Mux2~3_combout\ & (\sSHL_s1[27]~2_combout\)))) # (!\Mux28~7_combout\ & (((\Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHL_s1[27]~2_combout\,
	datab => \Mux28~7_combout\,
	datac => \sSHL_s3[21]~15_combout\,
	datad => \Mux2~3_combout\,
	combout => \Mux2~4_combout\);

-- Location: LCCOMB_X22_Y12_N12
\Mux2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~6_combout\ = (\Mux2~5_combout\ & ((\Mux2~4_combout\) # ((!\Mux1~2_combout\)))) # (!\Mux2~5_combout\ & (((\Mux1~2_combout\ & \sSHL_s4[13]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~5_combout\,
	datab => \Mux2~4_combout\,
	datac => \Mux1~2_combout\,
	datad => \sSHL_s4[13]~17_combout\,
	combout => \Mux2~6_combout\);

-- Location: LCCOMB_X28_Y12_N4
\Mux2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~9_combout\ = (!\Mux28~12_combout\ & ((\Mux2~8_combout\ & (\Mux2~7_combout\)) # (!\Mux2~8_combout\ & (!\Mux2~7_combout\ & \Mux2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~8_combout\,
	datab => \Mux28~12_combout\,
	datac => \Mux2~7_combout\,
	datad => \Mux2~6_combout\,
	combout => \Mux2~9_combout\);

-- Location: LCCOMB_X28_Y12_N6
\Mux2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~10_combout\ = (\iALUFN[2]~input_o\ & (((!\Mux28~6_combout\)))) # (!\iALUFN[2]~input_o\ & ((\Mux28~6_combout\ & (\Mux2~2_combout\)) # (!\Mux28~6_combout\ & ((\Mux2~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~2_combout\,
	datab => \Mux2~9_combout\,
	datac => \iALUFN[2]~input_o\,
	datad => \Mux28~6_combout\,
	combout => \Mux2~10_combout\);

-- Location: LCCOMB_X28_Y14_N26
\Mux2~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~11_combout\ = (\Mux2~10_combout\ & (\iALUFN[5]~input_o\ & (\iA[29]~input_o\ $ (\iB[29]~input_o\)))) # (!\Mux2~10_combout\ & (((\iA[29]~input_o\) # (\iB[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iALUFN[5]~input_o\,
	datab => \Mux2~10_combout\,
	datac => \iA[29]~input_o\,
	datad => \iB[29]~input_o\,
	combout => \Mux2~11_combout\);

-- Location: LCCOMB_X28_Y14_N28
\Mux2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~12_combout\ = (\Mux28~5_combout\ & (\Mux2~11_combout\ & ((\iALUFN[1]~input_o\) # (!\Mux2~10_combout\)))) # (!\Mux28~5_combout\ & (((\Mux2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~11_combout\,
	datab => \Mux2~10_combout\,
	datac => \iALUFN[1]~input_o\,
	datad => \Mux28~5_combout\,
	combout => \Mux2~12_combout\);

-- Location: LCCOMB_X28_Y14_N14
\Mux2~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~13_combout\ = (\Mux2~12_combout\ & (((!\iALUFN[4]~input_o\ & !\iALUFN[0]~input_o\)) # (!\iALUFN[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iALUFN[4]~input_o\,
	datab => \iALUFN[2]~input_o\,
	datac => \iALUFN[0]~input_o\,
	datad => \Mux2~12_combout\,
	combout => \Mux2~13_combout\);

-- Location: LCCOMB_X20_Y12_N24
\Mux1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~6_combout\ = (\Mux30~6_combout\ & ((\Mux28~7_combout\ & ((\sSHL_s1[28]~3_combout\))) # (!\Mux28~7_combout\ & (\iA[29]~input_o\)))) # (!\Mux30~6_combout\ & (((\Mux28~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[29]~input_o\,
	datab => \sSHL_s1[28]~3_combout\,
	datac => \Mux30~6_combout\,
	datad => \Mux28~7_combout\,
	combout => \Mux1~6_combout\);

-- Location: LCCOMB_X20_Y12_N18
\Mux1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~7_combout\ = (\Mux30~6_combout\ & (((\Mux1~6_combout\)))) # (!\Mux30~6_combout\ & ((\Mux1~6_combout\ & (\sSHL_s3[22]~16_combout\)) # (!\Mux1~6_combout\ & ((\sSHL_s2[26]~50_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHL_s3[22]~16_combout\,
	datab => \Mux30~6_combout\,
	datac => \sSHL_s2[26]~50_combout\,
	datad => \Mux1~6_combout\,
	combout => \Mux1~7_combout\);

-- Location: LCCOMB_X25_Y10_N28
\Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = ((\iB[30]~input_o\ $ (\iA[30]~input_o\ $ (!\Add0~59\)))) # (GND)
-- \Add0~61\ = CARRY((\iB[30]~input_o\ & ((\iA[30]~input_o\) # (!\Add0~59\))) # (!\iB[30]~input_o\ & (\iA[30]~input_o\ & !\Add0~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iB[30]~input_o\,
	datab => \iA[30]~input_o\,
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: LCCOMB_X24_Y14_N30
\Mux1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~8_combout\ = (\Mux3~6_combout\ & (\sSHR_s4[30]~23_combout\ & ((\Mux3~5_combout\)))) # (!\Mux3~6_combout\ & (((\Add0~60_combout\) # (!\Mux3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHR_s4[30]~23_combout\,
	datab => \Add0~60_combout\,
	datac => \Mux3~6_combout\,
	datad => \Mux3~5_combout\,
	combout => \Mux1~8_combout\);

-- Location: LCCOMB_X24_Y14_N0
\Mux1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~9_combout\ = (\Mux1~8_combout\ & (((\Mux1~7_combout\) # (!\Mux1~2_combout\)))) # (!\Mux1~8_combout\ & (\sSHL_s4[14]~19_combout\ & ((\Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHL_s4[14]~19_combout\,
	datab => \Mux1~7_combout\,
	datac => \Mux1~8_combout\,
	datad => \Mux1~2_combout\,
	combout => \Mux1~9_combout\);

-- Location: LCCOMB_X24_Y14_N28
\sOutput~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sOutput~0_combout\ = (\iA[30]~input_o\ & \iB[30]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iA[30]~input_o\,
	datac => \iB[30]~input_o\,
	combout => \sOutput~0_combout\);

-- Location: LCCOMB_X24_Y14_N26
\Mux1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~10_combout\ = (\Mux28~11_combout\ & (((\iALUFN[3]~input_o\)))) # (!\Mux28~11_combout\ & ((\iALUFN[3]~input_o\ & ((\sOutput~0_combout\))) # (!\iALUFN[3]~input_o\ & (\Mux1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~11_combout\,
	datab => \Mux1~9_combout\,
	datac => \iALUFN[3]~input_o\,
	datad => \sOutput~0_combout\,
	combout => \Mux1~10_combout\);

-- Location: LCCOMB_X27_Y10_N28
\Add1~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~60_combout\ = ((\iA[30]~input_o\ $ (\iB[30]~input_o\ $ (\Add1~59\)))) # (GND)
-- \Add1~61\ = CARRY((\iA[30]~input_o\ & ((!\Add1~59\) # (!\iB[30]~input_o\))) # (!\iA[30]~input_o\ & (!\iB[30]~input_o\ & !\Add1~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iA[30]~input_o\,
	datab => \iB[30]~input_o\,
	datad => VCC,
	cin => \Add1~59\,
	combout => \Add1~60_combout\,
	cout => \Add1~61\);

-- Location: LCCOMB_X24_Y14_N12
\Mux1~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~11_combout\ = (\Mux28~11_combout\ & ((\Mux1~10_combout\ & (!\Equal0~19_combout\)) # (!\Mux1~10_combout\ & ((\Add1~60_combout\))))) # (!\Mux28~11_combout\ & (((\Mux1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~11_combout\,
	datab => \Equal0~19_combout\,
	datac => \Mux1~10_combout\,
	datad => \Add1~60_combout\,
	combout => \Mux1~11_combout\);

-- Location: LCCOMB_X25_Y14_N4
\Mux1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~12_combout\ = (\Mux1~11_combout\ & (!\iALUFN[1]~input_o\ & !\Mux28~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~11_combout\,
	datac => \iALUFN[1]~input_o\,
	datad => \Mux28~12_combout\,
	combout => \Mux1~12_combout\);

-- Location: LCCOMB_X25_Y14_N28
\sSHL_s5[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSHL_s5[0]~1_combout\ = (\sSHR_s4[31]~4_combout\ & !\iB[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sSHR_s4[31]~4_combout\,
	datad => \iB[4]~input_o\,
	combout => \sSHL_s5[0]~1_combout\);

-- Location: LCCOMB_X25_Y14_N30
\Mux1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (\iALUFN[3]~input_o\ & (!\iALUFN[4]~input_o\ & (\iALUFN[1]~input_o\))) # (!\iALUFN[3]~input_o\ & (\iALUFN[4]~input_o\ & (!\iALUFN[1]~input_o\ & \sSHL_s5[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iALUFN[3]~input_o\,
	datab => \iALUFN[4]~input_o\,
	datac => \iALUFN[1]~input_o\,
	datad => \sSHL_s5[0]~1_combout\,
	combout => \Mux1~3_combout\);

-- Location: LCCOMB_X25_Y14_N0
\Mux1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = (\iALUFN[2]~input_o\ & (\iALUFN[3]~input_o\)) # (!\iALUFN[2]~input_o\ & (((\Mux1~3_combout\ & \Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iALUFN[3]~input_o\,
	datab => \iALUFN[2]~input_o\,
	datac => \Mux1~3_combout\,
	datad => \Mux1~2_combout\,
	combout => \Mux1~4_combout\);

-- Location: LCCOMB_X25_Y14_N22
\Mux1~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~13_combout\ = (\iALUFN[2]~input_o\ & (((!\Mux1~4_combout\)))) # (!\iALUFN[2]~input_o\ & ((\Mux1~4_combout\ & (\iA[30]~input_o\)) # (!\Mux1~4_combout\ & ((\Mux1~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[30]~input_o\,
	datab => \iALUFN[2]~input_o\,
	datac => \Mux1~12_combout\,
	datad => \Mux1~4_combout\,
	combout => \Mux1~13_combout\);

-- Location: LCCOMB_X25_Y14_N2
\Mux1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~5_combout\ = (\iALUFN[2]~input_o\ & (((\iALUFN[1]~input_o\ & \iALUFN[5]~input_o\)) # (!\Mux1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iALUFN[1]~input_o\,
	datab => \iALUFN[2]~input_o\,
	datac => \iALUFN[5]~input_o\,
	datad => \Mux1~4_combout\,
	combout => \Mux1~5_combout\);

-- Location: LCCOMB_X25_Y14_N12
\Mux1~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~15_combout\ = (\Mux1~13_combout\ & (\iALUFN[1]~input_o\ & (\iA[30]~input_o\ $ (\iB[30]~input_o\)))) # (!\Mux1~13_combout\ & ((\iA[30]~input_o\) # ((\iB[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[30]~input_o\,
	datab => \iALUFN[1]~input_o\,
	datac => \Mux1~13_combout\,
	datad => \iB[30]~input_o\,
	combout => \Mux1~15_combout\);

-- Location: LCCOMB_X25_Y14_N14
\Mux1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~16_combout\ = (\Mux1~5_combout\ & (\Mux1~15_combout\ & ((\iALUFN[5]~input_o\) # (!\Mux1~13_combout\)))) # (!\Mux1~5_combout\ & (\Mux1~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~13_combout\,
	datab => \Mux1~5_combout\,
	datac => \iALUFN[5]~input_o\,
	datad => \Mux1~15_combout\,
	combout => \Mux1~16_combout\);

-- Location: LCCOMB_X25_Y14_N20
\Mux1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~14_combout\ = (\Mux1~16_combout\ & (((!\iALUFN[4]~input_o\ & !\iALUFN[0]~input_o\)) # (!\iALUFN[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iALUFN[4]~input_o\,
	datab => \iALUFN[2]~input_o\,
	datac => \Mux1~16_combout\,
	datad => \iALUFN[0]~input_o\,
	combout => \Mux1~14_combout\);

-- Location: LCCOMB_X27_Y10_N30
\Add1~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~62_combout\ = \iA[31]~input_o\ $ (\Add1~61\ $ (!\iB[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \iA[31]~input_o\,
	datad => \iB[31]~input_o\,
	cin => \Add1~61\,
	combout => \Add1~62_combout\);

-- Location: LCCOMB_X24_Y14_N22
\sOutput~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sOutput~1_combout\ = (\iA[31]~input_o\ & \iB[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \iA[31]~input_o\,
	datad => \iB[31]~input_o\,
	combout => \sOutput~1_combout\);

-- Location: LCCOMB_X25_Y10_N30
\Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = \iA[31]~input_o\ $ (\Add0~61\ $ (\iB[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \iA[31]~input_o\,
	datad => \iB[31]~input_o\,
	cin => \Add0~61\,
	combout => \Add0~62_combout\);

-- Location: LCCOMB_X24_Y14_N16
\Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (\Mux3~5_combout\ & ((\Mux3~6_combout\ & ((\sSHR_s4[31]~21_combout\))) # (!\Mux3~6_combout\ & (\Add0~62_combout\)))) # (!\Mux3~5_combout\ & (((!\Mux3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~62_combout\,
	datab => \Mux3~5_combout\,
	datac => \Mux3~6_combout\,
	datad => \sSHR_s4[31]~21_combout\,
	combout => \Mux0~4_combout\);

-- Location: LCCOMB_X20_Y12_N12
\Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\Mux30~6_combout\ & (\iA[30]~input_o\ & ((!\Mux28~7_combout\)))) # (!\Mux30~6_combout\ & (((\sSHL_s2[27]~52_combout\) # (\Mux28~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[30]~input_o\,
	datab => \Mux30~6_combout\,
	datac => \sSHL_s2[27]~52_combout\,
	datad => \Mux28~7_combout\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X20_Y12_N6
\Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\Mux0~2_combout\ & (((\sSHL_s3[23]~17_combout\) # (!\Mux28~7_combout\)))) # (!\Mux0~2_combout\ & (\sSHL_s1[29]~4_combout\ & ((\Mux28~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~2_combout\,
	datab => \sSHL_s1[29]~4_combout\,
	datac => \sSHL_s3[23]~17_combout\,
	datad => \Mux28~7_combout\,
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X24_Y14_N10
\Mux0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~5_combout\ = (\Mux0~4_combout\ & (((\Mux0~3_combout\) # (!\Mux1~2_combout\)))) # (!\Mux0~4_combout\ & (\sSHL_s4[15]~21_combout\ & ((\Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSHL_s4[15]~21_combout\,
	datab => \Mux0~4_combout\,
	datac => \Mux0~3_combout\,
	datad => \Mux1~2_combout\,
	combout => \Mux0~5_combout\);

-- Location: LCCOMB_X24_Y14_N4
\Mux0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~6_combout\ = (\iALUFN[3]~input_o\ & ((\sOutput~1_combout\) # ((\Mux28~11_combout\)))) # (!\iALUFN[3]~input_o\ & (((!\Mux28~11_combout\ & \Mux0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sOutput~1_combout\,
	datab => \iALUFN[3]~input_o\,
	datac => \Mux28~11_combout\,
	datad => \Mux0~5_combout\,
	combout => \Mux0~6_combout\);

-- Location: LCCOMB_X24_Y14_N14
\Mux0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~7_combout\ = (\Mux0~6_combout\ & (((!\Equal0~20_combout\) # (!\Mux28~11_combout\)))) # (!\Mux0~6_combout\ & (\Add1~62_combout\ & (\Mux28~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~62_combout\,
	datab => \Mux0~6_combout\,
	datac => \Mux28~11_combout\,
	datad => \Equal0~20_combout\,
	combout => \Mux0~7_combout\);

-- Location: LCCOMB_X25_Y14_N8
\Mux0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~8_combout\ = (\Mux0~7_combout\ & (!\iALUFN[1]~input_o\ & !\Mux28~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~7_combout\,
	datac => \iALUFN[1]~input_o\,
	datad => \Mux28~12_combout\,
	combout => \Mux0~8_combout\);

-- Location: LCCOMB_X25_Y14_N10
\Mux0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~9_combout\ = (\iALUFN[2]~input_o\ & (((!\Mux1~4_combout\)))) # (!\iALUFN[2]~input_o\ & ((\Mux1~4_combout\ & (\iA[31]~input_o\)) # (!\Mux1~4_combout\ & ((\Mux0~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[31]~input_o\,
	datab => \iALUFN[2]~input_o\,
	datac => \Mux0~8_combout\,
	datad => \Mux1~4_combout\,
	combout => \Mux0~9_combout\);

-- Location: LCCOMB_X25_Y14_N24
\Mux0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~11_combout\ = (\Mux0~9_combout\ & (\iALUFN[1]~input_o\ & (\iA[31]~input_o\ $ (\iB[31]~input_o\)))) # (!\Mux0~9_combout\ & ((\iA[31]~input_o\) # ((\iB[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[31]~input_o\,
	datab => \iALUFN[1]~input_o\,
	datac => \iB[31]~input_o\,
	datad => \Mux0~9_combout\,
	combout => \Mux0~11_combout\);

-- Location: LCCOMB_X25_Y14_N26
\Mux0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~12_combout\ = (\Mux1~5_combout\ & (\Mux0~11_combout\ & ((\iALUFN[5]~input_o\) # (!\Mux0~9_combout\)))) # (!\Mux1~5_combout\ & (\Mux0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~9_combout\,
	datab => \Mux1~5_combout\,
	datac => \iALUFN[5]~input_o\,
	datad => \Mux0~11_combout\,
	combout => \Mux0~12_combout\);

-- Location: LCCOMB_X25_Y14_N6
\Mux0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~10_combout\ = (\Mux0~12_combout\ & (((!\iALUFN[4]~input_o\ & !\iALUFN[0]~input_o\)) # (!\iALUFN[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iALUFN[4]~input_o\,
	datab => \iALUFN[2]~input_o\,
	datac => \Mux0~12_combout\,
	datad => \iALUFN[0]~input_o\,
	combout => \Mux0~10_combout\);

-- Location: UNVM_X0_Y18_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X25_Y28_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

ww_oOutput(0) <= \oOutput[0]~output_o\;

ww_oOutput(1) <= \oOutput[1]~output_o\;

ww_oOutput(2) <= \oOutput[2]~output_o\;

ww_oOutput(3) <= \oOutput[3]~output_o\;

ww_oOutput(4) <= \oOutput[4]~output_o\;

ww_oOutput(5) <= \oOutput[5]~output_o\;

ww_oOutput(6) <= \oOutput[6]~output_o\;

ww_oOutput(7) <= \oOutput[7]~output_o\;

ww_oOutput(8) <= \oOutput[8]~output_o\;

ww_oOutput(9) <= \oOutput[9]~output_o\;

ww_oOutput(10) <= \oOutput[10]~output_o\;

ww_oOutput(11) <= \oOutput[11]~output_o\;

ww_oOutput(12) <= \oOutput[12]~output_o\;

ww_oOutput(13) <= \oOutput[13]~output_o\;

ww_oOutput(14) <= \oOutput[14]~output_o\;

ww_oOutput(15) <= \oOutput[15]~output_o\;

ww_oOutput(16) <= \oOutput[16]~output_o\;

ww_oOutput(17) <= \oOutput[17]~output_o\;

ww_oOutput(18) <= \oOutput[18]~output_o\;

ww_oOutput(19) <= \oOutput[19]~output_o\;

ww_oOutput(20) <= \oOutput[20]~output_o\;

ww_oOutput(21) <= \oOutput[21]~output_o\;

ww_oOutput(22) <= \oOutput[22]~output_o\;

ww_oOutput(23) <= \oOutput[23]~output_o\;

ww_oOutput(24) <= \oOutput[24]~output_o\;

ww_oOutput(25) <= \oOutput[25]~output_o\;

ww_oOutput(26) <= \oOutput[26]~output_o\;

ww_oOutput(27) <= \oOutput[27]~output_o\;

ww_oOutput(28) <= \oOutput[28]~output_o\;

ww_oOutput(29) <= \oOutput[29]~output_o\;

ww_oOutput(30) <= \oOutput[30]~output_o\;

ww_oOutput(31) <= \oOutput[31]~output_o\;
END structure;


