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

-- DATE "03/29/2022 21:54:46"

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


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	PC IS
    PORT (
	iPC_SEL : IN std_logic_vector(3 DOWNTO 0);
	iCLK : IN std_logic;
	iRST : IN std_logic;
	iJT : IN std_logic_vector(31 DOWNTO 0);
	iSXT : IN std_logic_vector(31 DOWNTO 0);
	iPC : BUFFER std_logic_vector(31 DOWNTO 0)
	);
END PC;

-- Design Ports Information
-- iSXT[0]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iSXT[1]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iSXT[30]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iSXT[31]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iPC[0]	=>  Location: PIN_M12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iPC[1]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iPC[2]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iPC[3]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iPC[4]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iPC[5]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iPC[6]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iPC[7]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iPC[8]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iPC[9]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iPC[10]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iPC[11]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iPC[12]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iPC[13]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iPC[14]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iPC[15]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iPC[16]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iPC[17]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iPC[18]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iPC[19]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iPC[20]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iPC[21]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iPC[22]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iPC[23]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iPC[24]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iPC[25]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iPC[26]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iPC[27]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iPC[28]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iPC[29]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iPC[30]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iPC[31]	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iCLK	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iRST	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iPC_SEL[2]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iPC_SEL[3]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iPC_SEL[0]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iPC_SEL[1]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iJT[2]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iJT[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iJT[4]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iJT[5]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iJT[6]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iJT[7]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iJT[8]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iJT[9]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iJT[10]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iJT[11]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iJT[12]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iJT[13]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iJT[14]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iJT[15]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iJT[16]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iJT[17]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iJT[18]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iJT[19]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iJT[20]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iJT[21]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iJT[22]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iJT[23]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iJT[24]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iJT[25]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iJT[26]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iJT[27]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iJT[28]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iJT[29]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iJT[30]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iJT[0]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iJT[1]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iSXT[2]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iSXT[3]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iSXT[4]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iSXT[5]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iSXT[6]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iSXT[7]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iSXT[8]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iSXT[9]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iSXT[10]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iSXT[11]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iSXT[12]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iSXT[13]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iSXT[14]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iSXT[15]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iSXT[16]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iSXT[17]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iSXT[18]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iSXT[19]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iSXT[20]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iSXT[21]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iSXT[22]	=>  Location: PIN_L10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iSXT[23]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iSXT[24]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iSXT[25]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iSXT[26]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iSXT[27]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iSXT[28]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iSXT[29]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iJT[31]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF PC IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_iPC_SEL : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_iCLK : std_logic;
SIGNAL ww_iRST : std_logic;
SIGNAL ww_iJT : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_iSXT : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_iPC : std_logic_vector(31 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \iRST~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \iCLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \iSXT[0]~input_o\ : std_logic;
SIGNAL \iSXT[1]~input_o\ : std_logic;
SIGNAL \iSXT[30]~input_o\ : std_logic;
SIGNAL \iSXT[31]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \iPC[0]~output_o\ : std_logic;
SIGNAL \iPC[1]~output_o\ : std_logic;
SIGNAL \iPC[2]~output_o\ : std_logic;
SIGNAL \iPC[3]~output_o\ : std_logic;
SIGNAL \iPC[4]~output_o\ : std_logic;
SIGNAL \iPC[5]~output_o\ : std_logic;
SIGNAL \iPC[6]~output_o\ : std_logic;
SIGNAL \iPC[7]~output_o\ : std_logic;
SIGNAL \iPC[8]~output_o\ : std_logic;
SIGNAL \iPC[9]~output_o\ : std_logic;
SIGNAL \iPC[10]~output_o\ : std_logic;
SIGNAL \iPC[11]~output_o\ : std_logic;
SIGNAL \iPC[12]~output_o\ : std_logic;
SIGNAL \iPC[13]~output_o\ : std_logic;
SIGNAL \iPC[14]~output_o\ : std_logic;
SIGNAL \iPC[15]~output_o\ : std_logic;
SIGNAL \iPC[16]~output_o\ : std_logic;
SIGNAL \iPC[17]~output_o\ : std_logic;
SIGNAL \iPC[18]~output_o\ : std_logic;
SIGNAL \iPC[19]~output_o\ : std_logic;
SIGNAL \iPC[20]~output_o\ : std_logic;
SIGNAL \iPC[21]~output_o\ : std_logic;
SIGNAL \iPC[22]~output_o\ : std_logic;
SIGNAL \iPC[23]~output_o\ : std_logic;
SIGNAL \iPC[24]~output_o\ : std_logic;
SIGNAL \iPC[25]~output_o\ : std_logic;
SIGNAL \iPC[26]~output_o\ : std_logic;
SIGNAL \iPC[27]~output_o\ : std_logic;
SIGNAL \iPC[28]~output_o\ : std_logic;
SIGNAL \iPC[29]~output_o\ : std_logic;
SIGNAL \iPC[30]~output_o\ : std_logic;
SIGNAL \iPC[31]~output_o\ : std_logic;
SIGNAL \iCLK~input_o\ : std_logic;
SIGNAL \iCLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \iPC_SEL[1]~input_o\ : std_logic;
SIGNAL \iJT[0]~input_o\ : std_logic;
SIGNAL \iRST~input_o\ : std_logic;
SIGNAL \iPC_SEL[2]~input_o\ : std_logic;
SIGNAL \iPC_SEL[3]~input_o\ : std_logic;
SIGNAL \sPC_NEXT[18]~18_combout\ : std_logic;
SIGNAL \iPC_SEL[0]~input_o\ : std_logic;
SIGNAL \sPC_BRANCH[0]~0_combout\ : std_logic;
SIGNAL \sPC_BRANCH[0]~1_combout\ : std_logic;
SIGNAL \iRST~inputclkctrl_outclk\ : std_logic;
SIGNAL \sPC_NEXT[30]~25_combout\ : std_logic;
SIGNAL \sPC_NEXT[4]~97_combout\ : std_logic;
SIGNAL \iJT[1]~input_o\ : std_logic;
SIGNAL \sPC_BRANCH[1]~2_combout\ : std_logic;
SIGNAL \sPC_BRANCH[1]~3_combout\ : std_logic;
SIGNAL \sPC_BRANCH[1]~4_combout\ : std_logic;
SIGNAL \sPC_NEXT[4]~19_combout\ : std_logic;
SIGNAL \iJT[2]~input_o\ : std_logic;
SIGNAL \iSXT[2]~input_o\ : std_logic;
SIGNAL \sPC_BRANCH[2]~5_combout\ : std_logic;
SIGNAL \sPC_NEXT[2]~20_combout\ : std_logic;
SIGNAL \sPC_4[2]~0_combout\ : std_logic;
SIGNAL \sPC_NEXT[2]~21_combout\ : std_logic;
SIGNAL \iSXT[3]~input_o\ : std_logic;
SIGNAL \sPC_BRANCH[2]~6\ : std_logic;
SIGNAL \sPC_BRANCH[3]~7_combout\ : std_logic;
SIGNAL \sPC_4[2]~1\ : std_logic;
SIGNAL \sPC_4[3]~2_combout\ : std_logic;
SIGNAL \iJT[3]~input_o\ : std_logic;
SIGNAL \sPC_NEXT[3]~22_combout\ : std_logic;
SIGNAL \sPC_NEXT[3]~23_combout\ : std_logic;
SIGNAL \sPC_NEXT[3]~24_combout\ : std_logic;
SIGNAL \iJT[4]~input_o\ : std_logic;
SIGNAL \iSXT[4]~input_o\ : std_logic;
SIGNAL \sPC_BRANCH[3]~8\ : std_logic;
SIGNAL \sPC_BRANCH[4]~9_combout\ : std_logic;
SIGNAL \sPC_NEXT[4]~26_combout\ : std_logic;
SIGNAL \sPC_NEXT[4]~98_combout\ : std_logic;
SIGNAL \sPC_4[3]~3\ : std_logic;
SIGNAL \sPC_4[4]~4_combout\ : std_logic;
SIGNAL \sPC_NEXT[4]~27_combout\ : std_logic;
SIGNAL \sPC_4[4]~5\ : std_logic;
SIGNAL \sPC_4[5]~6_combout\ : std_logic;
SIGNAL \iJT[5]~input_o\ : std_logic;
SIGNAL \iSXT[5]~input_o\ : std_logic;
SIGNAL \sPC_BRANCH[4]~10\ : std_logic;
SIGNAL \sPC_BRANCH[5]~11_combout\ : std_logic;
SIGNAL \sPC_NEXT[5]~28_combout\ : std_logic;
SIGNAL \sPC_NEXT[5]~29_combout\ : std_logic;
SIGNAL \sPC_4[5]~7\ : std_logic;
SIGNAL \sPC_4[6]~8_combout\ : std_logic;
SIGNAL \iJT[6]~input_o\ : std_logic;
SIGNAL \iSXT[6]~input_o\ : std_logic;
SIGNAL \sPC_BRANCH[5]~12\ : std_logic;
SIGNAL \sPC_BRANCH[6]~13_combout\ : std_logic;
SIGNAL \sPC_NEXT[6]~30_combout\ : std_logic;
SIGNAL \sPC_NEXT[6]~99_combout\ : std_logic;
SIGNAL \sPC_NEXT[6]~31_combout\ : std_logic;
SIGNAL \sPC_4[6]~9\ : std_logic;
SIGNAL \sPC_4[7]~10_combout\ : std_logic;
SIGNAL \iJT[7]~input_o\ : std_logic;
SIGNAL \iSXT[7]~input_o\ : std_logic;
SIGNAL \sPC_BRANCH[6]~14\ : std_logic;
SIGNAL \sPC_BRANCH[7]~15_combout\ : std_logic;
SIGNAL \sPC_NEXT[7]~32_combout\ : std_logic;
SIGNAL \sPC_NEXT[7]~100_combout\ : std_logic;
SIGNAL \sPC_NEXT[7]~33_combout\ : std_logic;
SIGNAL \sPC_4[7]~11\ : std_logic;
SIGNAL \sPC_4[8]~12_combout\ : std_logic;
SIGNAL \iJT[8]~input_o\ : std_logic;
SIGNAL \iSXT[8]~input_o\ : std_logic;
SIGNAL \sPC_BRANCH[7]~16\ : std_logic;
SIGNAL \sPC_BRANCH[8]~17_combout\ : std_logic;
SIGNAL \sPC_NEXT[8]~34_combout\ : std_logic;
SIGNAL \sPC_NEXT[8]~35_combout\ : std_logic;
SIGNAL \iJT[9]~input_o\ : std_logic;
SIGNAL \iSXT[9]~input_o\ : std_logic;
SIGNAL \sPC_BRANCH[8]~18\ : std_logic;
SIGNAL \sPC_BRANCH[9]~19_combout\ : std_logic;
SIGNAL \sPC_NEXT[9]~36_combout\ : std_logic;
SIGNAL \sPC_NEXT[9]~101_combout\ : std_logic;
SIGNAL \sPC_4[8]~13\ : std_logic;
SIGNAL \sPC_4[9]~14_combout\ : std_logic;
SIGNAL \sPC_NEXT[9]~37_combout\ : std_logic;
SIGNAL \sPC_NEXT[4]~40_combout\ : std_logic;
SIGNAL \iJT[10]~input_o\ : std_logic;
SIGNAL \sPC_NEXT[4]~38_combout\ : std_logic;
SIGNAL \sPC_4[9]~15\ : std_logic;
SIGNAL \sPC_4[10]~16_combout\ : std_logic;
SIGNAL \iSXT[10]~input_o\ : std_logic;
SIGNAL \sPC_BRANCH[9]~20\ : std_logic;
SIGNAL \sPC_BRANCH[10]~21_combout\ : std_logic;
SIGNAL \sPC_NEXT[10]~39_combout\ : std_logic;
SIGNAL \sPC_NEXT[10]~41_combout\ : std_logic;
SIGNAL \iJT[11]~input_o\ : std_logic;
SIGNAL \sPC_4[10]~17\ : std_logic;
SIGNAL \sPC_4[11]~18_combout\ : std_logic;
SIGNAL \iSXT[11]~input_o\ : std_logic;
SIGNAL \sPC_BRANCH[10]~22\ : std_logic;
SIGNAL \sPC_BRANCH[11]~23_combout\ : std_logic;
SIGNAL \sPC_NEXT[11]~42_combout\ : std_logic;
SIGNAL \sPC_NEXT[11]~43_combout\ : std_logic;
SIGNAL \iJT[12]~input_o\ : std_logic;
SIGNAL \sPC_4[11]~19\ : std_logic;
SIGNAL \sPC_4[12]~20_combout\ : std_logic;
SIGNAL \iSXT[12]~input_o\ : std_logic;
SIGNAL \sPC_BRANCH[11]~24\ : std_logic;
SIGNAL \sPC_BRANCH[12]~25_combout\ : std_logic;
SIGNAL \sPC_NEXT[12]~44_combout\ : std_logic;
SIGNAL \sPC_NEXT[12]~45_combout\ : std_logic;
SIGNAL \iJT[13]~input_o\ : std_logic;
SIGNAL \iSXT[13]~input_o\ : std_logic;
SIGNAL \sPC_BRANCH[12]~26\ : std_logic;
SIGNAL \sPC_BRANCH[13]~27_combout\ : std_logic;
SIGNAL \sPC_NEXT[13]~46_combout\ : std_logic;
SIGNAL \sPC_4[12]~21\ : std_logic;
SIGNAL \sPC_4[13]~22_combout\ : std_logic;
SIGNAL \sPC_NEXT[13]~47_combout\ : std_logic;
SIGNAL \iJT[14]~input_o\ : std_logic;
SIGNAL \sPC_NEXT[14]~49_combout\ : std_logic;
SIGNAL \sPC_4[13]~23\ : std_logic;
SIGNAL \sPC_4[14]~24_combout\ : std_logic;
SIGNAL \iSXT[14]~input_o\ : std_logic;
SIGNAL \sPC_BRANCH[13]~28\ : std_logic;
SIGNAL \sPC_BRANCH[14]~29_combout\ : std_logic;
SIGNAL \sPC_NEXT[14]~48_combout\ : std_logic;
SIGNAL \sPC_NEXT[14]~50_combout\ : std_logic;
SIGNAL \iJT[15]~input_o\ : std_logic;
SIGNAL \sPC_NEXT[15]~52_combout\ : std_logic;
SIGNAL \sPC_4[14]~25\ : std_logic;
SIGNAL \sPC_4[15]~26_combout\ : std_logic;
SIGNAL \iSXT[15]~input_o\ : std_logic;
SIGNAL \sPC_BRANCH[14]~30\ : std_logic;
SIGNAL \sPC_BRANCH[15]~31_combout\ : std_logic;
SIGNAL \sPC_NEXT[15]~51_combout\ : std_logic;
SIGNAL \sPC_NEXT[15]~53_combout\ : std_logic;
SIGNAL \sPC_4[15]~27\ : std_logic;
SIGNAL \sPC_4[16]~28_combout\ : std_logic;
SIGNAL \iJT[16]~input_o\ : std_logic;
SIGNAL \iSXT[16]~input_o\ : std_logic;
SIGNAL \sPC_BRANCH[15]~32\ : std_logic;
SIGNAL \sPC_BRANCH[16]~33_combout\ : std_logic;
SIGNAL \sPC_NEXT[16]~54_combout\ : std_logic;
SIGNAL \sPC_NEXT[16]~55_combout\ : std_logic;
SIGNAL \iJT[17]~input_o\ : std_logic;
SIGNAL \sPC_NEXT[17]~57_combout\ : std_logic;
SIGNAL \sPC_4[16]~29\ : std_logic;
SIGNAL \sPC_4[17]~30_combout\ : std_logic;
SIGNAL \iSXT[17]~input_o\ : std_logic;
SIGNAL \sPC_BRANCH[16]~34\ : std_logic;
SIGNAL \sPC_BRANCH[17]~35_combout\ : std_logic;
SIGNAL \sPC_NEXT[17]~56_combout\ : std_logic;
SIGNAL \sPC_NEXT[17]~58_combout\ : std_logic;
SIGNAL \iJT[18]~input_o\ : std_logic;
SIGNAL \iSXT[18]~input_o\ : std_logic;
SIGNAL \sPC_BRANCH[17]~36\ : std_logic;
SIGNAL \sPC_BRANCH[18]~37_combout\ : std_logic;
SIGNAL \sPC_NEXT[18]~59_combout\ : std_logic;
SIGNAL \sPC_4[17]~31\ : std_logic;
SIGNAL \sPC_4[18]~32_combout\ : std_logic;
SIGNAL \sPC_NEXT[18]~60_combout\ : std_logic;
SIGNAL \iJT[19]~input_o\ : std_logic;
SIGNAL \sPC_NEXT[19]~62_combout\ : std_logic;
SIGNAL \sPC_4[18]~33\ : std_logic;
SIGNAL \sPC_4[19]~34_combout\ : std_logic;
SIGNAL \iSXT[19]~input_o\ : std_logic;
SIGNAL \sPC_BRANCH[18]~38\ : std_logic;
SIGNAL \sPC_BRANCH[19]~39_combout\ : std_logic;
SIGNAL \sPC_NEXT[19]~61_combout\ : std_logic;
SIGNAL \sPC_NEXT[19]~63_combout\ : std_logic;
SIGNAL \sPC_4[19]~35\ : std_logic;
SIGNAL \sPC_4[20]~36_combout\ : std_logic;
SIGNAL \iJT[20]~input_o\ : std_logic;
SIGNAL \sPC_NEXT[20]~65_combout\ : std_logic;
SIGNAL \iSXT[20]~input_o\ : std_logic;
SIGNAL \sPC_BRANCH[19]~40\ : std_logic;
SIGNAL \sPC_BRANCH[20]~41_combout\ : std_logic;
SIGNAL \sPC_NEXT[20]~64_combout\ : std_logic;
SIGNAL \sPC_NEXT[20]~66_combout\ : std_logic;
SIGNAL \sPC_4[20]~37\ : std_logic;
SIGNAL \sPC_4[21]~38_combout\ : std_logic;
SIGNAL \iJT[21]~input_o\ : std_logic;
SIGNAL \sPC_NEXT[21]~68_combout\ : std_logic;
SIGNAL \iSXT[21]~input_o\ : std_logic;
SIGNAL \sPC_BRANCH[20]~42\ : std_logic;
SIGNAL \sPC_BRANCH[21]~43_combout\ : std_logic;
SIGNAL \sPC_NEXT[21]~67_combout\ : std_logic;
SIGNAL \sPC_NEXT[21]~69_combout\ : std_logic;
SIGNAL \sPC_4[21]~39\ : std_logic;
SIGNAL \sPC_4[22]~40_combout\ : std_logic;
SIGNAL \iJT[22]~input_o\ : std_logic;
SIGNAL \iSXT[22]~input_o\ : std_logic;
SIGNAL \sPC_BRANCH[21]~44\ : std_logic;
SIGNAL \sPC_BRANCH[22]~45_combout\ : std_logic;
SIGNAL \sPC_NEXT[22]~70_combout\ : std_logic;
SIGNAL \sPC_NEXT[22]~71_combout\ : std_logic;
SIGNAL \iJT[23]~input_o\ : std_logic;
SIGNAL \sPC_NEXT[23]~73_combout\ : std_logic;
SIGNAL \sPC_4[22]~41\ : std_logic;
SIGNAL \sPC_4[23]~42_combout\ : std_logic;
SIGNAL \iSXT[23]~input_o\ : std_logic;
SIGNAL \sPC_BRANCH[22]~46\ : std_logic;
SIGNAL \sPC_BRANCH[23]~47_combout\ : std_logic;
SIGNAL \sPC_NEXT[23]~72_combout\ : std_logic;
SIGNAL \sPC_NEXT[23]~74_combout\ : std_logic;
SIGNAL \sPC_4[23]~43\ : std_logic;
SIGNAL \sPC_4[24]~44_combout\ : std_logic;
SIGNAL \iJT[24]~input_o\ : std_logic;
SIGNAL \iSXT[24]~input_o\ : std_logic;
SIGNAL \sPC_BRANCH[23]~48\ : std_logic;
SIGNAL \sPC_BRANCH[24]~49_combout\ : std_logic;
SIGNAL \sPC_NEXT[24]~75_combout\ : std_logic;
SIGNAL \sPC_NEXT[24]~76_combout\ : std_logic;
SIGNAL \iJT[25]~input_o\ : std_logic;
SIGNAL \sPC_NEXT[25]~78_combout\ : std_logic;
SIGNAL \sPC_4[24]~45\ : std_logic;
SIGNAL \sPC_4[25]~46_combout\ : std_logic;
SIGNAL \iSXT[25]~input_o\ : std_logic;
SIGNAL \sPC_BRANCH[24]~50\ : std_logic;
SIGNAL \sPC_BRANCH[25]~51_combout\ : std_logic;
SIGNAL \sPC_NEXT[25]~77_combout\ : std_logic;
SIGNAL \sPC_NEXT[25]~79_combout\ : std_logic;
SIGNAL \sPC_4[25]~47\ : std_logic;
SIGNAL \sPC_4[26]~48_combout\ : std_logic;
SIGNAL \iJT[26]~input_o\ : std_logic;
SIGNAL \iSXT[26]~input_o\ : std_logic;
SIGNAL \sPC_BRANCH[25]~52\ : std_logic;
SIGNAL \sPC_BRANCH[26]~53_combout\ : std_logic;
SIGNAL \sPC_NEXT[26]~80_combout\ : std_logic;
SIGNAL \sPC_NEXT[26]~81_combout\ : std_logic;
SIGNAL \sPC_4[26]~49\ : std_logic;
SIGNAL \sPC_4[27]~50_combout\ : std_logic;
SIGNAL \iJT[27]~input_o\ : std_logic;
SIGNAL \sPC_NEXT[27]~83_combout\ : std_logic;
SIGNAL \iSXT[27]~input_o\ : std_logic;
SIGNAL \sPC_BRANCH[26]~54\ : std_logic;
SIGNAL \sPC_BRANCH[27]~55_combout\ : std_logic;
SIGNAL \sPC_NEXT[27]~82_combout\ : std_logic;
SIGNAL \sPC_NEXT[27]~84_combout\ : std_logic;
SIGNAL \iJT[28]~input_o\ : std_logic;
SIGNAL \sPC_NEXT[28]~86_combout\ : std_logic;
SIGNAL \sPC_4[27]~51\ : std_logic;
SIGNAL \sPC_4[28]~52_combout\ : std_logic;
SIGNAL \iSXT[28]~input_o\ : std_logic;
SIGNAL \sPC_BRANCH[27]~56\ : std_logic;
SIGNAL \sPC_BRANCH[28]~57_combout\ : std_logic;
SIGNAL \sPC_NEXT[28]~85_combout\ : std_logic;
SIGNAL \sPC_NEXT[28]~87_combout\ : std_logic;
SIGNAL \sPC_4[28]~53\ : std_logic;
SIGNAL \sPC_4[29]~54_combout\ : std_logic;
SIGNAL \iSXT[29]~input_o\ : std_logic;
SIGNAL \sPC_BRANCH[28]~58\ : std_logic;
SIGNAL \sPC_BRANCH[29]~59_combout\ : std_logic;
SIGNAL \sPC_NEXT[29]~88_combout\ : std_logic;
SIGNAL \iJT[29]~input_o\ : std_logic;
SIGNAL \sPC_NEXT[29]~89_combout\ : std_logic;
SIGNAL \sPC_NEXT[29]~90_combout\ : std_logic;
SIGNAL \sPC_4[29]~55\ : std_logic;
SIGNAL \sPC_4[30]~56_combout\ : std_logic;
SIGNAL \iJT[30]~input_o\ : std_logic;
SIGNAL \sPC_NEXT[30]~91_combout\ : std_logic;
SIGNAL \sPC_NEXT[30]~92_combout\ : std_logic;
SIGNAL \sPC_NEXT[30]~94_combout\ : std_logic;
SIGNAL \sPC_BRANCH[29]~60\ : std_logic;
SIGNAL \sPC_BRANCH[30]~61_combout\ : std_logic;
SIGNAL \sPC_NEXT[30]~102_combout\ : std_logic;
SIGNAL \sPC_NEXT[30]~93_combout\ : std_logic;
SIGNAL \iJT[31]~input_o\ : std_logic;
SIGNAL \sPC_4[30]~57\ : std_logic;
SIGNAL \sPC_4[31]~58_combout\ : std_logic;
SIGNAL \sPC_NEXT[31]~95_combout\ : std_logic;
SIGNAL \sPC_BRANCH[30]~62\ : std_logic;
SIGNAL \sPC_BRANCH[31]~63_combout\ : std_logic;
SIGNAL \sPC_NEXT[31]~96_combout\ : std_logic;
SIGNAL sPC : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_iRST~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_iPC_SEL <= iPC_SEL;
ww_iCLK <= iCLK;
ww_iRST <= iRST;
ww_iJT <= iJT;
ww_iSXT <= iSXT;
iPC <= ww_iPC;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\iRST~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \iRST~input_o\);

\iCLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \iCLK~input_o\);
\ALT_INV_iRST~inputclkctrl_outclk\ <= NOT \iRST~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X26_Y21_N16
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

-- Location: IOOBUF_X19_Y0_N16
\iPC[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sPC(0),
	devoe => ww_devoe,
	o => \iPC[0]~output_o\);

-- Location: IOOBUF_X14_Y17_N23
\iPC[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sPC(1),
	devoe => ww_devoe,
	o => \iPC[1]~output_o\);

-- Location: IOOBUF_X50_Y11_N24
\iPC[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sPC(2),
	devoe => ww_devoe,
	o => \iPC[2]~output_o\);

-- Location: IOOBUF_X21_Y17_N30
\iPC[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sPC(3),
	devoe => ww_devoe,
	o => \iPC[3]~output_o\);

-- Location: IOOBUF_X25_Y22_N23
\iPC[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sPC(4),
	devoe => ww_devoe,
	o => \iPC[4]~output_o\);

-- Location: IOOBUF_X50_Y14_N23
\iPC[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sPC(5),
	devoe => ww_devoe,
	o => \iPC[5]~output_o\);

-- Location: IOOBUF_X8_Y17_N16
\iPC[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sPC(6),
	devoe => ww_devoe,
	o => \iPC[6]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\iPC[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sPC(7),
	devoe => ww_devoe,
	o => \iPC[7]~output_o\);

-- Location: IOOBUF_X50_Y21_N2
\iPC[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sPC(8),
	devoe => ww_devoe,
	o => \iPC[8]~output_o\);

-- Location: IOOBUF_X16_Y17_N2
\iPC[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sPC(9),
	devoe => ww_devoe,
	o => \iPC[9]~output_o\);

-- Location: IOOBUF_X12_Y17_N16
\iPC[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sPC(10),
	devoe => ww_devoe,
	o => \iPC[10]~output_o\);

-- Location: IOOBUF_X25_Y24_N23
\iPC[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sPC(11),
	devoe => ww_devoe,
	o => \iPC[11]~output_o\);

-- Location: IOOBUF_X25_Y24_N16
\iPC[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sPC(12),
	devoe => ww_devoe,
	o => \iPC[12]~output_o\);

-- Location: IOOBUF_X50_Y24_N23
\iPC[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sPC(13),
	devoe => ww_devoe,
	o => \iPC[13]~output_o\);

-- Location: IOOBUF_X21_Y0_N2
\iPC[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sPC(14),
	devoe => ww_devoe,
	o => \iPC[14]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\iPC[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sPC(15),
	devoe => ww_devoe,
	o => \iPC[15]~output_o\);

-- Location: IOOBUF_X0_Y11_N16
\iPC[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sPC(16),
	devoe => ww_devoe,
	o => \iPC[16]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\iPC[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sPC(17),
	devoe => ww_devoe,
	o => \iPC[17]~output_o\);

-- Location: IOOBUF_X0_Y11_N23
\iPC[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sPC(18),
	devoe => ww_devoe,
	o => \iPC[18]~output_o\);

-- Location: IOOBUF_X50_Y11_N9
\iPC[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sPC(19),
	devoe => ww_devoe,
	o => \iPC[19]~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\iPC[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sPC(20),
	devoe => ww_devoe,
	o => \iPC[20]~output_o\);

-- Location: IOOBUF_X50_Y11_N16
\iPC[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sPC(21),
	devoe => ww_devoe,
	o => \iPC[21]~output_o\);

-- Location: IOOBUF_X50_Y8_N16
\iPC[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sPC(22),
	devoe => ww_devoe,
	o => \iPC[22]~output_o\);

-- Location: IOOBUF_X50_Y8_N2
\iPC[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sPC(23),
	devoe => ww_devoe,
	o => \iPC[23]~output_o\);

-- Location: IOOBUF_X0_Y9_N16
\iPC[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sPC(24),
	devoe => ww_devoe,
	o => \iPC[24]~output_o\);

-- Location: IOOBUF_X10_Y17_N16
\iPC[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sPC(25),
	devoe => ww_devoe,
	o => \iPC[25]~output_o\);

-- Location: IOOBUF_X0_Y12_N23
\iPC[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sPC(26),
	devoe => ww_devoe,
	o => \iPC[26]~output_o\);

-- Location: IOOBUF_X50_Y8_N9
\iPC[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sPC(27),
	devoe => ww_devoe,
	o => \iPC[27]~output_o\);

-- Location: IOOBUF_X12_Y17_N9
\iPC[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sPC(28),
	devoe => ww_devoe,
	o => \iPC[28]~output_o\);

-- Location: IOOBUF_X10_Y17_N9
\iPC[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sPC(29),
	devoe => ww_devoe,
	o => \iPC[29]~output_o\);

-- Location: IOOBUF_X0_Y8_N2
\iPC[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sPC(30),
	devoe => ww_devoe,
	o => \iPC[30]~output_o\);

-- Location: IOOBUF_X0_Y12_N16
\iPC[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sPC(31),
	devoe => ww_devoe,
	o => \iPC[31]~output_o\);

-- Location: IOIBUF_X0_Y8_N15
\iCLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iCLK,
	o => \iCLK~input_o\);

-- Location: CLKCTRL_G3
\iCLK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \iCLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \iCLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X25_Y23_N22
\iPC_SEL[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iPC_SEL(1),
	o => \iPC_SEL[1]~input_o\);

-- Location: IOIBUF_X21_Y0_N29
\iJT[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iJT(0),
	o => \iJT[0]~input_o\);

-- Location: IOIBUF_X0_Y8_N22
\iRST~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iRST,
	o => \iRST~input_o\);

-- Location: IOIBUF_X50_Y15_N22
\iPC_SEL[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iPC_SEL(2),
	o => \iPC_SEL[2]~input_o\);

-- Location: IOIBUF_X50_Y21_N15
\iPC_SEL[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iPC_SEL(3),
	o => \iPC_SEL[3]~input_o\);

-- Location: LCCOMB_X26_Y14_N12
\sPC_NEXT[18]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[18]~18_combout\ = (\iRST~input_o\) # ((\iPC_SEL[2]~input_o\) # (\iPC_SEL[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iRST~input_o\,
	datab => \iPC_SEL[2]~input_o\,
	datad => \iPC_SEL[3]~input_o\,
	combout => \sPC_NEXT[18]~18_combout\);

-- Location: IOIBUF_X25_Y23_N15
\iPC_SEL[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iPC_SEL(0),
	o => \iPC_SEL[0]~input_o\);

-- Location: LCCOMB_X28_Y13_N2
\sPC_BRANCH[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_BRANCH[0]~0_combout\ = (\iPC_SEL[1]~input_o\ & (\iPC_SEL[0]~input_o\)) # (!\iPC_SEL[1]~input_o\ & ((\iPC_SEL[0]~input_o\ & (\sPC_BRANCH[0]~1_combout\)) # (!\iPC_SEL[0]~input_o\ & ((sPC(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iPC_SEL[1]~input_o\,
	datab => \iPC_SEL[0]~input_o\,
	datac => \sPC_BRANCH[0]~1_combout\,
	datad => sPC(0),
	combout => \sPC_BRANCH[0]~0_combout\);

-- Location: LCCOMB_X28_Y13_N4
\sPC_BRANCH[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_BRANCH[0]~1_combout\ = (!\sPC_NEXT[18]~18_combout\ & ((\iPC_SEL[1]~input_o\ & (\iJT[0]~input_o\ & !\sPC_BRANCH[0]~0_combout\)) # (!\iPC_SEL[1]~input_o\ & ((\sPC_BRANCH[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iPC_SEL[1]~input_o\,
	datab => \iJT[0]~input_o\,
	datac => \sPC_NEXT[18]~18_combout\,
	datad => \sPC_BRANCH[0]~0_combout\,
	combout => \sPC_BRANCH[0]~1_combout\);

-- Location: CLKCTRL_G4
\iRST~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \iRST~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \iRST~inputclkctrl_outclk\);

-- Location: FF_X28_Y13_N1
\sPC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \sPC_BRANCH[0]~1_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sPC(0));

-- Location: LCCOMB_X28_Y13_N0
\sPC_NEXT[30]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[30]~25_combout\ = (!\iPC_SEL[1]~input_o\ & !\iPC_SEL[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iPC_SEL[1]~input_o\,
	datad => \iPC_SEL[0]~input_o\,
	combout => \sPC_NEXT[30]~25_combout\);

-- Location: LCCOMB_X30_Y14_N24
\sPC_NEXT[4]~97\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[4]~97_combout\ = (!\iRST~input_o\ & ((\iPC_SEL[3]~input_o\) # ((\iPC_SEL[2]~input_o\ & !\sPC_NEXT[30]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iPC_SEL[3]~input_o\,
	datab => \iPC_SEL[2]~input_o\,
	datac => \iRST~input_o\,
	datad => \sPC_NEXT[30]~25_combout\,
	combout => \sPC_NEXT[4]~97_combout\);

-- Location: IOIBUF_X19_Y17_N22
\iJT[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iJT(1),
	o => \iJT[1]~input_o\);

-- Location: LCCOMB_X26_Y14_N30
\sPC_BRANCH[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_BRANCH[1]~2_combout\ = (\iPC_SEL[0]~input_o\ & ((\sPC_BRANCH[1]~4_combout\))) # (!\iPC_SEL[0]~input_o\ & (\iJT[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iJT[1]~input_o\,
	datac => \iPC_SEL[0]~input_o\,
	datad => \sPC_BRANCH[1]~4_combout\,
	combout => \sPC_BRANCH[1]~2_combout\);

-- Location: LCCOMB_X26_Y14_N16
\sPC_BRANCH[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_BRANCH[1]~3_combout\ = (\iPC_SEL[1]~input_o\ & (!\iPC_SEL[0]~input_o\ & (\sPC_BRANCH[1]~2_combout\))) # (!\iPC_SEL[1]~input_o\ & ((\iPC_SEL[0]~input_o\ & (\sPC_BRANCH[1]~2_combout\)) # (!\iPC_SEL[0]~input_o\ & ((sPC(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iPC_SEL[1]~input_o\,
	datab => \iPC_SEL[0]~input_o\,
	datac => \sPC_BRANCH[1]~2_combout\,
	datad => sPC(1),
	combout => \sPC_BRANCH[1]~3_combout\);

-- Location: LCCOMB_X26_Y14_N14
\sPC_BRANCH[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_BRANCH[1]~4_combout\ = (\sPC_NEXT[4]~97_combout\) # ((!\sPC_NEXT[18]~18_combout\ & \sPC_BRANCH[1]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sPC_NEXT[18]~18_combout\,
	datac => \sPC_NEXT[4]~97_combout\,
	datad => \sPC_BRANCH[1]~3_combout\,
	combout => \sPC_BRANCH[1]~4_combout\);

-- Location: FF_X26_Y14_N13
\sPC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \sPC_BRANCH[1]~4_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sPC(1));

-- Location: LCCOMB_X26_Y13_N30
\sPC_NEXT[4]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[4]~19_combout\ = (!\iPC_SEL[1]~input_o\ & (!\sPC_NEXT[18]~18_combout\ & !\iPC_SEL[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iPC_SEL[1]~input_o\,
	datab => \sPC_NEXT[18]~18_combout\,
	datac => \iPC_SEL[0]~input_o\,
	combout => \sPC_NEXT[4]~19_combout\);

-- Location: IOIBUF_X50_Y14_N15
\iJT[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iJT(2),
	o => \iJT[2]~input_o\);

-- Location: IOIBUF_X16_Y17_N15
\iSXT[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iSXT(2),
	o => \iSXT[2]~input_o\);

-- Location: LCCOMB_X27_Y14_N2
\sPC_BRANCH[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_BRANCH[2]~5_combout\ = (\sPC_NEXT[2]~21_combout\ & (\iSXT[2]~input_o\ $ (VCC))) # (!\sPC_NEXT[2]~21_combout\ & (\iSXT[2]~input_o\ & VCC))
-- \sPC_BRANCH[2]~6\ = CARRY((\sPC_NEXT[2]~21_combout\ & \iSXT[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sPC_NEXT[2]~21_combout\,
	datab => \iSXT[2]~input_o\,
	datad => VCC,
	combout => \sPC_BRANCH[2]~5_combout\,
	cout => \sPC_BRANCH[2]~6\);

-- Location: LCCOMB_X30_Y14_N12
\sPC_NEXT[2]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[2]~20_combout\ = (\iPC_SEL[1]~input_o\ & ((\iJT[2]~input_o\) # ((\iPC_SEL[0]~input_o\)))) # (!\iPC_SEL[1]~input_o\ & (((\sPC_BRANCH[2]~5_combout\ & \iPC_SEL[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iPC_SEL[1]~input_o\,
	datab => \iJT[2]~input_o\,
	datac => \sPC_BRANCH[2]~5_combout\,
	datad => \iPC_SEL[0]~input_o\,
	combout => \sPC_NEXT[2]~20_combout\);

-- Location: LCCOMB_X29_Y14_N2
\sPC_4[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_4[2]~0_combout\ = sPC(2) $ (VCC)
-- \sPC_4[2]~1\ = CARRY(sPC(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sPC(2),
	datad => VCC,
	combout => \sPC_4[2]~0_combout\,
	cout => \sPC_4[2]~1\);

-- Location: LCCOMB_X29_Y14_N0
\sPC_NEXT[2]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[2]~21_combout\ = (\sPC_NEXT[18]~18_combout\ & (\sPC_NEXT[4]~19_combout\ & ((\sPC_4[2]~0_combout\)))) # (!\sPC_NEXT[18]~18_combout\ & ((\sPC_NEXT[2]~20_combout\) # ((\sPC_NEXT[4]~19_combout\ & \sPC_4[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sPC_NEXT[18]~18_combout\,
	datab => \sPC_NEXT[4]~19_combout\,
	datac => \sPC_NEXT[2]~20_combout\,
	datad => \sPC_4[2]~0_combout\,
	combout => \sPC_NEXT[2]~21_combout\);

-- Location: FF_X29_Y14_N1
\sPC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \sPC_NEXT[2]~21_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sPC(2));

-- Location: IOIBUF_X12_Y17_N29
\iSXT[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iSXT(3),
	o => \iSXT[3]~input_o\);

-- Location: LCCOMB_X27_Y14_N4
\sPC_BRANCH[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_BRANCH[3]~7_combout\ = (\sPC_NEXT[3]~24_combout\ & ((\iSXT[3]~input_o\ & (\sPC_BRANCH[2]~6\ & VCC)) # (!\iSXT[3]~input_o\ & (!\sPC_BRANCH[2]~6\)))) # (!\sPC_NEXT[3]~24_combout\ & ((\iSXT[3]~input_o\ & (!\sPC_BRANCH[2]~6\)) # (!\iSXT[3]~input_o\ & 
-- ((\sPC_BRANCH[2]~6\) # (GND)))))
-- \sPC_BRANCH[3]~8\ = CARRY((\sPC_NEXT[3]~24_combout\ & (!\iSXT[3]~input_o\ & !\sPC_BRANCH[2]~6\)) # (!\sPC_NEXT[3]~24_combout\ & ((!\sPC_BRANCH[2]~6\) # (!\iSXT[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sPC_NEXT[3]~24_combout\,
	datab => \iSXT[3]~input_o\,
	datad => VCC,
	cin => \sPC_BRANCH[2]~6\,
	combout => \sPC_BRANCH[3]~7_combout\,
	cout => \sPC_BRANCH[3]~8\);

-- Location: LCCOMB_X29_Y14_N4
\sPC_4[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_4[3]~2_combout\ = (sPC(3) & (!\sPC_4[2]~1\)) # (!sPC(3) & ((\sPC_4[2]~1\) # (GND)))
-- \sPC_4[3]~3\ = CARRY((!\sPC_4[2]~1\) # (!sPC(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sPC(3),
	datad => VCC,
	cin => \sPC_4[2]~1\,
	combout => \sPC_4[3]~2_combout\,
	cout => \sPC_4[3]~3\);

-- Location: IOIBUF_X50_Y10_N1
\iJT[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iJT(3),
	o => \iJT[3]~input_o\);

-- Location: LCCOMB_X30_Y14_N6
\sPC_NEXT[3]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[3]~22_combout\ = (\iPC_SEL[1]~input_o\ & ((\iPC_SEL[0]~input_o\) # ((\iJT[3]~input_o\)))) # (!\iPC_SEL[1]~input_o\ & (!\iPC_SEL[0]~input_o\ & (\sPC_4[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iPC_SEL[1]~input_o\,
	datab => \iPC_SEL[0]~input_o\,
	datac => \sPC_4[3]~2_combout\,
	datad => \iJT[3]~input_o\,
	combout => \sPC_NEXT[3]~22_combout\);

-- Location: LCCOMB_X30_Y14_N0
\sPC_NEXT[3]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[3]~23_combout\ = (\iPC_SEL[0]~input_o\ & (\sPC_BRANCH[3]~7_combout\ & !\sPC_NEXT[3]~22_combout\)) # (!\iPC_SEL[0]~input_o\ & ((\sPC_NEXT[3]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iPC_SEL[0]~input_o\,
	datac => \sPC_BRANCH[3]~7_combout\,
	datad => \sPC_NEXT[3]~22_combout\,
	combout => \sPC_NEXT[3]~23_combout\);

-- Location: LCCOMB_X30_Y14_N22
\sPC_NEXT[3]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[3]~24_combout\ = (!\iRST~input_o\ & ((\iPC_SEL[3]~input_o\) # ((\iPC_SEL[2]~input_o\) # (\sPC_NEXT[3]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iPC_SEL[3]~input_o\,
	datab => \iPC_SEL[2]~input_o\,
	datac => \iRST~input_o\,
	datad => \sPC_NEXT[3]~23_combout\,
	combout => \sPC_NEXT[3]~24_combout\);

-- Location: FF_X29_Y14_N5
\sPC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \sPC_NEXT[3]~24_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sPC(3));

-- Location: IOIBUF_X50_Y22_N15
\iJT[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iJT(4),
	o => \iJT[4]~input_o\);

-- Location: IOIBUF_X50_Y22_N1
\iSXT[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iSXT(4),
	o => \iSXT[4]~input_o\);

-- Location: LCCOMB_X27_Y14_N6
\sPC_BRANCH[4]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_BRANCH[4]~9_combout\ = ((\sPC_NEXT[4]~27_combout\ $ (\iSXT[4]~input_o\ $ (!\sPC_BRANCH[3]~8\)))) # (GND)
-- \sPC_BRANCH[4]~10\ = CARRY((\sPC_NEXT[4]~27_combout\ & ((\iSXT[4]~input_o\) # (!\sPC_BRANCH[3]~8\))) # (!\sPC_NEXT[4]~27_combout\ & (\iSXT[4]~input_o\ & !\sPC_BRANCH[3]~8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sPC_NEXT[4]~27_combout\,
	datab => \iSXT[4]~input_o\,
	datad => VCC,
	cin => \sPC_BRANCH[3]~8\,
	combout => \sPC_BRANCH[4]~9_combout\,
	cout => \sPC_BRANCH[4]~10\);

-- Location: LCCOMB_X30_Y14_N20
\sPC_NEXT[4]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[4]~26_combout\ = (\iPC_SEL[0]~input_o\ & (((!\iPC_SEL[1]~input_o\ & \sPC_BRANCH[4]~9_combout\)))) # (!\iPC_SEL[0]~input_o\ & (\iJT[4]~input_o\ & (\iPC_SEL[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iPC_SEL[0]~input_o\,
	datab => \iJT[4]~input_o\,
	datac => \iPC_SEL[1]~input_o\,
	datad => \sPC_BRANCH[4]~9_combout\,
	combout => \sPC_NEXT[4]~26_combout\);

-- Location: LCCOMB_X30_Y14_N26
\sPC_NEXT[4]~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[4]~98_combout\ = (!\sPC_NEXT[18]~18_combout\ & ((\sPC_NEXT[4]~26_combout\) # ((!\iPC_SEL[1]~input_o\ & !\iPC_SEL[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iPC_SEL[1]~input_o\,
	datab => \sPC_NEXT[18]~18_combout\,
	datac => \iPC_SEL[0]~input_o\,
	datad => \sPC_NEXT[4]~26_combout\,
	combout => \sPC_NEXT[4]~98_combout\);

-- Location: LCCOMB_X29_Y14_N6
\sPC_4[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_4[4]~4_combout\ = (sPC(4) & (\sPC_4[3]~3\ $ (GND))) # (!sPC(4) & (!\sPC_4[3]~3\ & VCC))
-- \sPC_4[4]~5\ = CARRY((sPC(4) & !\sPC_4[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sPC(4),
	datad => VCC,
	cin => \sPC_4[3]~3\,
	combout => \sPC_4[4]~4_combout\,
	cout => \sPC_4[4]~5\);

-- Location: LCCOMB_X30_Y14_N10
\sPC_NEXT[4]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[4]~27_combout\ = (\sPC_NEXT[4]~97_combout\) # ((\sPC_NEXT[4]~98_combout\ & ((\sPC_4[4]~4_combout\) # (\sPC_NEXT[4]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sPC_NEXT[4]~98_combout\,
	datab => \sPC_NEXT[4]~97_combout\,
	datac => \sPC_4[4]~4_combout\,
	datad => \sPC_NEXT[4]~26_combout\,
	combout => \sPC_NEXT[4]~27_combout\);

-- Location: FF_X29_Y14_N7
\sPC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \sPC_NEXT[4]~27_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sPC(4));

-- Location: LCCOMB_X29_Y14_N8
\sPC_4[5]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_4[5]~6_combout\ = (sPC(5) & (!\sPC_4[4]~5\)) # (!sPC(5) & ((\sPC_4[4]~5\) # (GND)))
-- \sPC_4[5]~7\ = CARRY((!\sPC_4[4]~5\) # (!sPC(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sPC(5),
	datad => VCC,
	cin => \sPC_4[4]~5\,
	combout => \sPC_4[5]~6_combout\,
	cout => \sPC_4[5]~7\);

-- Location: IOIBUF_X50_Y11_N1
\iJT[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iJT(5),
	o => \iJT[5]~input_o\);

-- Location: IOIBUF_X50_Y22_N8
\iSXT[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iSXT(5),
	o => \iSXT[5]~input_o\);

-- Location: LCCOMB_X27_Y14_N8
\sPC_BRANCH[5]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_BRANCH[5]~11_combout\ = (\iSXT[5]~input_o\ & ((\sPC_NEXT[5]~29_combout\ & (\sPC_BRANCH[4]~10\ & VCC)) # (!\sPC_NEXT[5]~29_combout\ & (!\sPC_BRANCH[4]~10\)))) # (!\iSXT[5]~input_o\ & ((\sPC_NEXT[5]~29_combout\ & (!\sPC_BRANCH[4]~10\)) # 
-- (!\sPC_NEXT[5]~29_combout\ & ((\sPC_BRANCH[4]~10\) # (GND)))))
-- \sPC_BRANCH[5]~12\ = CARRY((\iSXT[5]~input_o\ & (!\sPC_NEXT[5]~29_combout\ & !\sPC_BRANCH[4]~10\)) # (!\iSXT[5]~input_o\ & ((!\sPC_BRANCH[4]~10\) # (!\sPC_NEXT[5]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iSXT[5]~input_o\,
	datab => \sPC_NEXT[5]~29_combout\,
	datad => VCC,
	cin => \sPC_BRANCH[4]~10\,
	combout => \sPC_BRANCH[5]~11_combout\,
	cout => \sPC_BRANCH[5]~12\);

-- Location: LCCOMB_X28_Y14_N16
\sPC_NEXT[5]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[5]~28_combout\ = (\iPC_SEL[0]~input_o\ & (((!\iPC_SEL[1]~input_o\ & \sPC_BRANCH[5]~11_combout\)))) # (!\iPC_SEL[0]~input_o\ & (\iJT[5]~input_o\ & (\iPC_SEL[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iJT[5]~input_o\,
	datab => \iPC_SEL[0]~input_o\,
	datac => \iPC_SEL[1]~input_o\,
	datad => \sPC_BRANCH[5]~11_combout\,
	combout => \sPC_NEXT[5]~28_combout\);

-- Location: LCCOMB_X28_Y14_N26
\sPC_NEXT[5]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[5]~29_combout\ = (\sPC_NEXT[18]~18_combout\ & (\sPC_NEXT[4]~19_combout\ & (\sPC_4[5]~6_combout\))) # (!\sPC_NEXT[18]~18_combout\ & ((\sPC_NEXT[5]~28_combout\) # ((\sPC_NEXT[4]~19_combout\ & \sPC_4[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sPC_NEXT[18]~18_combout\,
	datab => \sPC_NEXT[4]~19_combout\,
	datac => \sPC_4[5]~6_combout\,
	datad => \sPC_NEXT[5]~28_combout\,
	combout => \sPC_NEXT[5]~29_combout\);

-- Location: FF_X29_Y14_N9
\sPC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \sPC_NEXT[5]~29_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sPC(5));

-- Location: LCCOMB_X29_Y14_N10
\sPC_4[6]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_4[6]~8_combout\ = (sPC(6) & (\sPC_4[5]~7\ $ (GND))) # (!sPC(6) & (!\sPC_4[5]~7\ & VCC))
-- \sPC_4[6]~9\ = CARRY((sPC(6) & !\sPC_4[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sPC(6),
	datad => VCC,
	cin => \sPC_4[5]~7\,
	combout => \sPC_4[6]~8_combout\,
	cout => \sPC_4[6]~9\);

-- Location: IOIBUF_X8_Y17_N22
\iJT[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iJT(6),
	o => \iJT[6]~input_o\);

-- Location: IOIBUF_X16_Y0_N29
\iSXT[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iSXT(6),
	o => \iSXT[6]~input_o\);

-- Location: LCCOMB_X27_Y14_N10
\sPC_BRANCH[6]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_BRANCH[6]~13_combout\ = ((\iSXT[6]~input_o\ $ (\sPC_NEXT[6]~31_combout\ $ (!\sPC_BRANCH[5]~12\)))) # (GND)
-- \sPC_BRANCH[6]~14\ = CARRY((\iSXT[6]~input_o\ & ((\sPC_NEXT[6]~31_combout\) # (!\sPC_BRANCH[5]~12\))) # (!\iSXT[6]~input_o\ & (\sPC_NEXT[6]~31_combout\ & !\sPC_BRANCH[5]~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iSXT[6]~input_o\,
	datab => \sPC_NEXT[6]~31_combout\,
	datad => VCC,
	cin => \sPC_BRANCH[5]~12\,
	combout => \sPC_BRANCH[6]~13_combout\,
	cout => \sPC_BRANCH[6]~14\);

-- Location: LCCOMB_X30_Y14_N16
\sPC_NEXT[6]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[6]~30_combout\ = (\iPC_SEL[1]~input_o\ & (\iJT[6]~input_o\ & (!\iPC_SEL[0]~input_o\))) # (!\iPC_SEL[1]~input_o\ & (((\iPC_SEL[0]~input_o\ & \sPC_BRANCH[6]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iPC_SEL[1]~input_o\,
	datab => \iJT[6]~input_o\,
	datac => \iPC_SEL[0]~input_o\,
	datad => \sPC_BRANCH[6]~13_combout\,
	combout => \sPC_NEXT[6]~30_combout\);

-- Location: LCCOMB_X30_Y14_N4
\sPC_NEXT[6]~99\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[6]~99_combout\ = (!\sPC_NEXT[18]~18_combout\ & ((\sPC_NEXT[6]~30_combout\) # ((!\iPC_SEL[1]~input_o\ & !\iPC_SEL[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iPC_SEL[1]~input_o\,
	datab => \sPC_NEXT[18]~18_combout\,
	datac => \iPC_SEL[0]~input_o\,
	datad => \sPC_NEXT[6]~30_combout\,
	combout => \sPC_NEXT[6]~99_combout\);

-- Location: LCCOMB_X30_Y14_N14
\sPC_NEXT[6]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[6]~31_combout\ = (\sPC_NEXT[4]~97_combout\) # ((\sPC_NEXT[6]~99_combout\ & ((\sPC_4[6]~8_combout\) # (\sPC_NEXT[6]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sPC_4[6]~8_combout\,
	datab => \sPC_NEXT[4]~97_combout\,
	datac => \sPC_NEXT[6]~99_combout\,
	datad => \sPC_NEXT[6]~30_combout\,
	combout => \sPC_NEXT[6]~31_combout\);

-- Location: FF_X29_Y14_N11
\sPC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \sPC_NEXT[6]~31_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sPC(6));

-- Location: LCCOMB_X29_Y14_N12
\sPC_4[7]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_4[7]~10_combout\ = (sPC(7) & (!\sPC_4[6]~9\)) # (!sPC(7) & ((\sPC_4[6]~9\) # (GND)))
-- \sPC_4[7]~11\ = CARRY((!\sPC_4[6]~9\) # (!sPC(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sPC(7),
	datad => VCC,
	cin => \sPC_4[6]~9\,
	combout => \sPC_4[7]~10_combout\,
	cout => \sPC_4[7]~11\);

-- Location: IOIBUF_X0_Y14_N1
\iJT[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iJT(7),
	o => \iJT[7]~input_o\);

-- Location: IOIBUF_X0_Y15_N22
\iSXT[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iSXT(7),
	o => \iSXT[7]~input_o\);

-- Location: LCCOMB_X27_Y14_N12
\sPC_BRANCH[7]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_BRANCH[7]~15_combout\ = (\iSXT[7]~input_o\ & ((\sPC_NEXT[7]~33_combout\ & (\sPC_BRANCH[6]~14\ & VCC)) # (!\sPC_NEXT[7]~33_combout\ & (!\sPC_BRANCH[6]~14\)))) # (!\iSXT[7]~input_o\ & ((\sPC_NEXT[7]~33_combout\ & (!\sPC_BRANCH[6]~14\)) # 
-- (!\sPC_NEXT[7]~33_combout\ & ((\sPC_BRANCH[6]~14\) # (GND)))))
-- \sPC_BRANCH[7]~16\ = CARRY((\iSXT[7]~input_o\ & (!\sPC_NEXT[7]~33_combout\ & !\sPC_BRANCH[6]~14\)) # (!\iSXT[7]~input_o\ & ((!\sPC_BRANCH[6]~14\) # (!\sPC_NEXT[7]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iSXT[7]~input_o\,
	datab => \sPC_NEXT[7]~33_combout\,
	datad => VCC,
	cin => \sPC_BRANCH[6]~14\,
	combout => \sPC_BRANCH[7]~15_combout\,
	cout => \sPC_BRANCH[7]~16\);

-- Location: LCCOMB_X26_Y14_N22
\sPC_NEXT[7]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[7]~32_combout\ = (\iPC_SEL[0]~input_o\ & (((\sPC_BRANCH[7]~15_combout\ & !\iPC_SEL[1]~input_o\)))) # (!\iPC_SEL[0]~input_o\ & (\iJT[7]~input_o\ & ((\iPC_SEL[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iPC_SEL[0]~input_o\,
	datab => \iJT[7]~input_o\,
	datac => \sPC_BRANCH[7]~15_combout\,
	datad => \iPC_SEL[1]~input_o\,
	combout => \sPC_NEXT[7]~32_combout\);

-- Location: LCCOMB_X26_Y14_N24
\sPC_NEXT[7]~100\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[7]~100_combout\ = (!\sPC_NEXT[18]~18_combout\ & ((\sPC_NEXT[7]~32_combout\) # ((!\iPC_SEL[1]~input_o\ & !\iPC_SEL[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iPC_SEL[1]~input_o\,
	datab => \iPC_SEL[0]~input_o\,
	datac => \sPC_NEXT[7]~32_combout\,
	datad => \sPC_NEXT[18]~18_combout\,
	combout => \sPC_NEXT[7]~100_combout\);

-- Location: LCCOMB_X28_Y14_N28
\sPC_NEXT[7]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[7]~33_combout\ = (\sPC_NEXT[4]~97_combout\) # ((\sPC_NEXT[7]~100_combout\ & ((\sPC_4[7]~10_combout\) # (\sPC_NEXT[7]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sPC_NEXT[4]~97_combout\,
	datab => \sPC_4[7]~10_combout\,
	datac => \sPC_NEXT[7]~100_combout\,
	datad => \sPC_NEXT[7]~32_combout\,
	combout => \sPC_NEXT[7]~33_combout\);

-- Location: FF_X29_Y14_N21
\sPC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \sPC_NEXT[7]~33_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sPC(7));

-- Location: LCCOMB_X29_Y14_N14
\sPC_4[8]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_4[8]~12_combout\ = (sPC(8) & (\sPC_4[7]~11\ $ (GND))) # (!sPC(8) & (!\sPC_4[7]~11\ & VCC))
-- \sPC_4[8]~13\ = CARRY((sPC(8) & !\sPC_4[7]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sPC(8),
	datad => VCC,
	cin => \sPC_4[7]~11\,
	combout => \sPC_4[8]~12_combout\,
	cout => \sPC_4[8]~13\);

-- Location: IOIBUF_X0_Y7_N1
\iJT[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iJT(8),
	o => \iJT[8]~input_o\);

-- Location: IOIBUF_X50_Y22_N22
\iSXT[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iSXT(8),
	o => \iSXT[8]~input_o\);

-- Location: LCCOMB_X27_Y14_N14
\sPC_BRANCH[8]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_BRANCH[8]~17_combout\ = ((\iSXT[8]~input_o\ $ (\sPC_NEXT[8]~35_combout\ $ (!\sPC_BRANCH[7]~16\)))) # (GND)
-- \sPC_BRANCH[8]~18\ = CARRY((\iSXT[8]~input_o\ & ((\sPC_NEXT[8]~35_combout\) # (!\sPC_BRANCH[7]~16\))) # (!\iSXT[8]~input_o\ & (\sPC_NEXT[8]~35_combout\ & !\sPC_BRANCH[7]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iSXT[8]~input_o\,
	datab => \sPC_NEXT[8]~35_combout\,
	datad => VCC,
	cin => \sPC_BRANCH[7]~16\,
	combout => \sPC_BRANCH[8]~17_combout\,
	cout => \sPC_BRANCH[8]~18\);

-- Location: LCCOMB_X28_Y14_N10
\sPC_NEXT[8]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[8]~34_combout\ = (\iPC_SEL[0]~input_o\ & (((!\iPC_SEL[1]~input_o\ & \sPC_BRANCH[8]~17_combout\)))) # (!\iPC_SEL[0]~input_o\ & (\iJT[8]~input_o\ & (\iPC_SEL[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iJT[8]~input_o\,
	datab => \iPC_SEL[0]~input_o\,
	datac => \iPC_SEL[1]~input_o\,
	datad => \sPC_BRANCH[8]~17_combout\,
	combout => \sPC_NEXT[8]~34_combout\);

-- Location: LCCOMB_X28_Y14_N0
\sPC_NEXT[8]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[8]~35_combout\ = (\sPC_NEXT[18]~18_combout\ & (\sPC_NEXT[4]~19_combout\ & (\sPC_4[8]~12_combout\))) # (!\sPC_NEXT[18]~18_combout\ & ((\sPC_NEXT[8]~34_combout\) # ((\sPC_NEXT[4]~19_combout\ & \sPC_4[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sPC_NEXT[18]~18_combout\,
	datab => \sPC_NEXT[4]~19_combout\,
	datac => \sPC_4[8]~12_combout\,
	datad => \sPC_NEXT[8]~34_combout\,
	combout => \sPC_NEXT[8]~35_combout\);

-- Location: FF_X29_Y14_N13
\sPC[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \sPC_NEXT[8]~35_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sPC(8));

-- Location: IOIBUF_X14_Y17_N29
\iJT[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iJT(9),
	o => \iJT[9]~input_o\);

-- Location: IOIBUF_X16_Y17_N22
\iSXT[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iSXT(9),
	o => \iSXT[9]~input_o\);

-- Location: LCCOMB_X27_Y14_N16
\sPC_BRANCH[9]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_BRANCH[9]~19_combout\ = (\iSXT[9]~input_o\ & ((\sPC_NEXT[9]~37_combout\ & (\sPC_BRANCH[8]~18\ & VCC)) # (!\sPC_NEXT[9]~37_combout\ & (!\sPC_BRANCH[8]~18\)))) # (!\iSXT[9]~input_o\ & ((\sPC_NEXT[9]~37_combout\ & (!\sPC_BRANCH[8]~18\)) # 
-- (!\sPC_NEXT[9]~37_combout\ & ((\sPC_BRANCH[8]~18\) # (GND)))))
-- \sPC_BRANCH[9]~20\ = CARRY((\iSXT[9]~input_o\ & (!\sPC_NEXT[9]~37_combout\ & !\sPC_BRANCH[8]~18\)) # (!\iSXT[9]~input_o\ & ((!\sPC_BRANCH[8]~18\) # (!\sPC_NEXT[9]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iSXT[9]~input_o\,
	datab => \sPC_NEXT[9]~37_combout\,
	datad => VCC,
	cin => \sPC_BRANCH[8]~18\,
	combout => \sPC_BRANCH[9]~19_combout\,
	cout => \sPC_BRANCH[9]~20\);

-- Location: LCCOMB_X26_Y14_N28
\sPC_NEXT[9]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[9]~36_combout\ = (\iPC_SEL[1]~input_o\ & (\iJT[9]~input_o\ & (!\iPC_SEL[0]~input_o\))) # (!\iPC_SEL[1]~input_o\ & (((\iPC_SEL[0]~input_o\ & \sPC_BRANCH[9]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iPC_SEL[1]~input_o\,
	datab => \iJT[9]~input_o\,
	datac => \iPC_SEL[0]~input_o\,
	datad => \sPC_BRANCH[9]~19_combout\,
	combout => \sPC_NEXT[9]~36_combout\);

-- Location: LCCOMB_X28_Y14_N22
\sPC_NEXT[9]~101\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[9]~101_combout\ = (!\sPC_NEXT[18]~18_combout\ & ((\sPC_NEXT[9]~36_combout\) # ((!\iPC_SEL[1]~input_o\ & !\iPC_SEL[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sPC_NEXT[18]~18_combout\,
	datab => \iPC_SEL[1]~input_o\,
	datac => \sPC_NEXT[9]~36_combout\,
	datad => \iPC_SEL[0]~input_o\,
	combout => \sPC_NEXT[9]~101_combout\);

-- Location: LCCOMB_X29_Y14_N16
\sPC_4[9]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_4[9]~14_combout\ = (sPC(9) & (!\sPC_4[8]~13\)) # (!sPC(9) & ((\sPC_4[8]~13\) # (GND)))
-- \sPC_4[9]~15\ = CARRY((!\sPC_4[8]~13\) # (!sPC(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sPC(9),
	datad => VCC,
	cin => \sPC_4[8]~13\,
	combout => \sPC_4[9]~14_combout\,
	cout => \sPC_4[9]~15\);

-- Location: LCCOMB_X28_Y14_N8
\sPC_NEXT[9]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[9]~37_combout\ = (\sPC_NEXT[4]~97_combout\) # ((\sPC_NEXT[9]~101_combout\ & ((\sPC_NEXT[9]~36_combout\) # (\sPC_4[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sPC_NEXT[4]~97_combout\,
	datab => \sPC_NEXT[9]~36_combout\,
	datac => \sPC_NEXT[9]~101_combout\,
	datad => \sPC_4[9]~14_combout\,
	combout => \sPC_NEXT[9]~37_combout\);

-- Location: FF_X28_Y14_N9
\sPC[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \sPC_NEXT[9]~37_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sPC(9));

-- Location: LCCOMB_X30_Y13_N2
\sPC_NEXT[4]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[4]~40_combout\ = (!\iPC_SEL[0]~input_o\ & (!\sPC_NEXT[18]~18_combout\ & \iPC_SEL[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iPC_SEL[0]~input_o\,
	datac => \sPC_NEXT[18]~18_combout\,
	datad => \iPC_SEL[1]~input_o\,
	combout => \sPC_NEXT[4]~40_combout\);

-- Location: IOIBUF_X8_Y17_N1
\iJT[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iJT(10),
	o => \iJT[10]~input_o\);

-- Location: LCCOMB_X28_Y14_N30
\sPC_NEXT[4]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[4]~38_combout\ = (!\sPC_NEXT[18]~18_combout\ & (\iPC_SEL[0]~input_o\ & !\iPC_SEL[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sPC_NEXT[18]~18_combout\,
	datab => \iPC_SEL[0]~input_o\,
	datac => \iPC_SEL[1]~input_o\,
	combout => \sPC_NEXT[4]~38_combout\);

-- Location: LCCOMB_X29_Y14_N18
\sPC_4[10]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_4[10]~16_combout\ = (sPC(10) & (\sPC_4[9]~15\ $ (GND))) # (!sPC(10) & (!\sPC_4[9]~15\ & VCC))
-- \sPC_4[10]~17\ = CARRY((sPC(10) & !\sPC_4[9]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sPC(10),
	datad => VCC,
	cin => \sPC_4[9]~15\,
	combout => \sPC_4[10]~16_combout\,
	cout => \sPC_4[10]~17\);

-- Location: IOIBUF_X12_Y17_N22
\iSXT[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iSXT(10),
	o => \iSXT[10]~input_o\);

-- Location: LCCOMB_X27_Y14_N18
\sPC_BRANCH[10]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_BRANCH[10]~21_combout\ = ((\sPC_NEXT[10]~41_combout\ $ (\iSXT[10]~input_o\ $ (!\sPC_BRANCH[9]~20\)))) # (GND)
-- \sPC_BRANCH[10]~22\ = CARRY((\sPC_NEXT[10]~41_combout\ & ((\iSXT[10]~input_o\) # (!\sPC_BRANCH[9]~20\))) # (!\sPC_NEXT[10]~41_combout\ & (\iSXT[10]~input_o\ & !\sPC_BRANCH[9]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sPC_NEXT[10]~41_combout\,
	datab => \iSXT[10]~input_o\,
	datad => VCC,
	cin => \sPC_BRANCH[9]~20\,
	combout => \sPC_BRANCH[10]~21_combout\,
	cout => \sPC_BRANCH[10]~22\);

-- Location: LCCOMB_X28_Y14_N24
\sPC_NEXT[10]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[10]~39_combout\ = (\sPC_NEXT[4]~38_combout\ & ((\sPC_BRANCH[10]~21_combout\) # ((\sPC_4[10]~16_combout\ & \sPC_NEXT[4]~19_combout\)))) # (!\sPC_NEXT[4]~38_combout\ & (\sPC_4[10]~16_combout\ & (\sPC_NEXT[4]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sPC_NEXT[4]~38_combout\,
	datab => \sPC_4[10]~16_combout\,
	datac => \sPC_NEXT[4]~19_combout\,
	datad => \sPC_BRANCH[10]~21_combout\,
	combout => \sPC_NEXT[10]~39_combout\);

-- Location: LCCOMB_X28_Y14_N2
\sPC_NEXT[10]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[10]~41_combout\ = (\sPC_NEXT[4]~97_combout\) # ((\sPC_NEXT[10]~39_combout\) # ((\sPC_NEXT[4]~40_combout\ & \iJT[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sPC_NEXT[4]~40_combout\,
	datab => \iJT[10]~input_o\,
	datac => \sPC_NEXT[4]~97_combout\,
	datad => \sPC_NEXT[10]~39_combout\,
	combout => \sPC_NEXT[10]~41_combout\);

-- Location: FF_X28_Y14_N3
\sPC[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \sPC_NEXT[10]~41_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sPC(10));

-- Location: IOIBUF_X0_Y7_N15
\iJT[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iJT(11),
	o => \iJT[11]~input_o\);

-- Location: LCCOMB_X29_Y14_N20
\sPC_4[11]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_4[11]~18_combout\ = (sPC(11) & (!\sPC_4[10]~17\)) # (!sPC(11) & ((\sPC_4[10]~17\) # (GND)))
-- \sPC_4[11]~19\ = CARRY((!\sPC_4[10]~17\) # (!sPC(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sPC(11),
	datad => VCC,
	cin => \sPC_4[10]~17\,
	combout => \sPC_4[11]~18_combout\,
	cout => \sPC_4[11]~19\);

-- Location: IOIBUF_X25_Y25_N22
\iSXT[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iSXT(11),
	o => \iSXT[11]~input_o\);

-- Location: LCCOMB_X27_Y14_N20
\sPC_BRANCH[11]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_BRANCH[11]~23_combout\ = (\iSXT[11]~input_o\ & ((\sPC_NEXT[11]~43_combout\ & (\sPC_BRANCH[10]~22\ & VCC)) # (!\sPC_NEXT[11]~43_combout\ & (!\sPC_BRANCH[10]~22\)))) # (!\iSXT[11]~input_o\ & ((\sPC_NEXT[11]~43_combout\ & (!\sPC_BRANCH[10]~22\)) # 
-- (!\sPC_NEXT[11]~43_combout\ & ((\sPC_BRANCH[10]~22\) # (GND)))))
-- \sPC_BRANCH[11]~24\ = CARRY((\iSXT[11]~input_o\ & (!\sPC_NEXT[11]~43_combout\ & !\sPC_BRANCH[10]~22\)) # (!\iSXT[11]~input_o\ & ((!\sPC_BRANCH[10]~22\) # (!\sPC_NEXT[11]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iSXT[11]~input_o\,
	datab => \sPC_NEXT[11]~43_combout\,
	datad => VCC,
	cin => \sPC_BRANCH[10]~22\,
	combout => \sPC_BRANCH[11]~23_combout\,
	cout => \sPC_BRANCH[11]~24\);

-- Location: LCCOMB_X28_Y14_N18
\sPC_NEXT[11]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[11]~42_combout\ = (\sPC_NEXT[4]~38_combout\ & ((\sPC_BRANCH[11]~23_combout\) # ((\sPC_NEXT[4]~19_combout\ & \sPC_4[11]~18_combout\)))) # (!\sPC_NEXT[4]~38_combout\ & (\sPC_NEXT[4]~19_combout\ & (\sPC_4[11]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sPC_NEXT[4]~38_combout\,
	datab => \sPC_NEXT[4]~19_combout\,
	datac => \sPC_4[11]~18_combout\,
	datad => \sPC_BRANCH[11]~23_combout\,
	combout => \sPC_NEXT[11]~42_combout\);

-- Location: LCCOMB_X28_Y14_N12
\sPC_NEXT[11]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[11]~43_combout\ = (\sPC_NEXT[4]~97_combout\) # ((\sPC_NEXT[11]~42_combout\) # ((\sPC_NEXT[4]~40_combout\ & \iJT[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sPC_NEXT[4]~40_combout\,
	datab => \iJT[11]~input_o\,
	datac => \sPC_NEXT[4]~97_combout\,
	datad => \sPC_NEXT[11]~42_combout\,
	combout => \sPC_NEXT[11]~43_combout\);

-- Location: FF_X28_Y14_N13
\sPC[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \sPC_NEXT[11]~43_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sPC(11));

-- Location: IOIBUF_X50_Y10_N15
\iJT[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iJT(12),
	o => \iJT[12]~input_o\);

-- Location: LCCOMB_X29_Y14_N22
\sPC_4[12]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_4[12]~20_combout\ = (sPC(12) & (\sPC_4[11]~19\ $ (GND))) # (!sPC(12) & (!\sPC_4[11]~19\ & VCC))
-- \sPC_4[12]~21\ = CARRY((sPC(12) & !\sPC_4[11]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sPC(12),
	datad => VCC,
	cin => \sPC_4[11]~19\,
	combout => \sPC_4[12]~20_combout\,
	cout => \sPC_4[12]~21\);

-- Location: IOIBUF_X19_Y0_N29
\iSXT[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iSXT(12),
	o => \iSXT[12]~input_o\);

-- Location: LCCOMB_X27_Y14_N22
\sPC_BRANCH[12]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_BRANCH[12]~25_combout\ = ((\iSXT[12]~input_o\ $ (\sPC_NEXT[12]~45_combout\ $ (!\sPC_BRANCH[11]~24\)))) # (GND)
-- \sPC_BRANCH[12]~26\ = CARRY((\iSXT[12]~input_o\ & ((\sPC_NEXT[12]~45_combout\) # (!\sPC_BRANCH[11]~24\))) # (!\iSXT[12]~input_o\ & (\sPC_NEXT[12]~45_combout\ & !\sPC_BRANCH[11]~24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iSXT[12]~input_o\,
	datab => \sPC_NEXT[12]~45_combout\,
	datad => VCC,
	cin => \sPC_BRANCH[11]~24\,
	combout => \sPC_BRANCH[12]~25_combout\,
	cout => \sPC_BRANCH[12]~26\);

-- Location: LCCOMB_X28_Y14_N4
\sPC_NEXT[12]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[12]~44_combout\ = (\sPC_NEXT[4]~38_combout\ & ((\sPC_BRANCH[12]~25_combout\) # ((\sPC_4[12]~20_combout\ & \sPC_NEXT[4]~19_combout\)))) # (!\sPC_NEXT[4]~38_combout\ & (\sPC_4[12]~20_combout\ & (\sPC_NEXT[4]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sPC_NEXT[4]~38_combout\,
	datab => \sPC_4[12]~20_combout\,
	datac => \sPC_NEXT[4]~19_combout\,
	datad => \sPC_BRANCH[12]~25_combout\,
	combout => \sPC_NEXT[12]~44_combout\);

-- Location: LCCOMB_X28_Y14_N14
\sPC_NEXT[12]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[12]~45_combout\ = (\sPC_NEXT[4]~97_combout\) # ((\sPC_NEXT[12]~44_combout\) # ((\iJT[12]~input_o\ & \sPC_NEXT[4]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sPC_NEXT[4]~97_combout\,
	datab => \iJT[12]~input_o\,
	datac => \sPC_NEXT[12]~44_combout\,
	datad => \sPC_NEXT[4]~40_combout\,
	combout => \sPC_NEXT[12]~45_combout\);

-- Location: FF_X28_Y14_N15
\sPC[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \sPC_NEXT[12]~45_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sPC(12));

-- Location: IOIBUF_X21_Y0_N22
\iJT[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iJT(13),
	o => \iJT[13]~input_o\);

-- Location: IOIBUF_X25_Y25_N15
\iSXT[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iSXT(13),
	o => \iSXT[13]~input_o\);

-- Location: LCCOMB_X27_Y14_N24
\sPC_BRANCH[13]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_BRANCH[13]~27_combout\ = (\sPC_NEXT[13]~47_combout\ & ((\iSXT[13]~input_o\ & (\sPC_BRANCH[12]~26\ & VCC)) # (!\iSXT[13]~input_o\ & (!\sPC_BRANCH[12]~26\)))) # (!\sPC_NEXT[13]~47_combout\ & ((\iSXT[13]~input_o\ & (!\sPC_BRANCH[12]~26\)) # 
-- (!\iSXT[13]~input_o\ & ((\sPC_BRANCH[12]~26\) # (GND)))))
-- \sPC_BRANCH[13]~28\ = CARRY((\sPC_NEXT[13]~47_combout\ & (!\iSXT[13]~input_o\ & !\sPC_BRANCH[12]~26\)) # (!\sPC_NEXT[13]~47_combout\ & ((!\sPC_BRANCH[12]~26\) # (!\iSXT[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sPC_NEXT[13]~47_combout\,
	datab => \iSXT[13]~input_o\,
	datad => VCC,
	cin => \sPC_BRANCH[12]~26\,
	combout => \sPC_BRANCH[13]~27_combout\,
	cout => \sPC_BRANCH[13]~28\);

-- Location: LCCOMB_X26_Y14_N26
\sPC_NEXT[13]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[13]~46_combout\ = (\iPC_SEL[1]~input_o\ & (\iJT[13]~input_o\ & (!\iPC_SEL[0]~input_o\))) # (!\iPC_SEL[1]~input_o\ & (((\iPC_SEL[0]~input_o\ & \sPC_BRANCH[13]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iPC_SEL[1]~input_o\,
	datab => \iJT[13]~input_o\,
	datac => \iPC_SEL[0]~input_o\,
	datad => \sPC_BRANCH[13]~27_combout\,
	combout => \sPC_NEXT[13]~46_combout\);

-- Location: LCCOMB_X29_Y14_N24
\sPC_4[13]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_4[13]~22_combout\ = (sPC(13) & (!\sPC_4[12]~21\)) # (!sPC(13) & ((\sPC_4[12]~21\) # (GND)))
-- \sPC_4[13]~23\ = CARRY((!\sPC_4[12]~21\) # (!sPC(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sPC(13),
	datad => VCC,
	cin => \sPC_4[12]~21\,
	combout => \sPC_4[13]~22_combout\,
	cout => \sPC_4[13]~23\);

-- Location: LCCOMB_X28_Y14_N20
\sPC_NEXT[13]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[13]~47_combout\ = (\sPC_NEXT[18]~18_combout\ & (\sPC_NEXT[4]~19_combout\ & ((\sPC_4[13]~22_combout\)))) # (!\sPC_NEXT[18]~18_combout\ & ((\sPC_NEXT[13]~46_combout\) # ((\sPC_NEXT[4]~19_combout\ & \sPC_4[13]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sPC_NEXT[18]~18_combout\,
	datab => \sPC_NEXT[4]~19_combout\,
	datac => \sPC_NEXT[13]~46_combout\,
	datad => \sPC_4[13]~22_combout\,
	combout => \sPC_NEXT[13]~47_combout\);

-- Location: FF_X28_Y14_N21
\sPC[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \sPC_NEXT[13]~47_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sPC(13));

-- Location: IOIBUF_X50_Y16_N22
\iJT[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iJT(14),
	o => \iJT[14]~input_o\);

-- Location: LCCOMB_X30_Y13_N0
\sPC_NEXT[14]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[14]~49_combout\ = (\sPC_NEXT[4]~97_combout\) # ((\sPC_NEXT[4]~40_combout\ & \iJT[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sPC_NEXT[4]~97_combout\,
	datab => \sPC_NEXT[4]~40_combout\,
	datad => \iJT[14]~input_o\,
	combout => \sPC_NEXT[14]~49_combout\);

-- Location: LCCOMB_X29_Y14_N26
\sPC_4[14]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_4[14]~24_combout\ = (sPC(14) & (\sPC_4[13]~23\ $ (GND))) # (!sPC(14) & (!\sPC_4[13]~23\ & VCC))
-- \sPC_4[14]~25\ = CARRY((sPC(14) & !\sPC_4[13]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sPC(14),
	datad => VCC,
	cin => \sPC_4[13]~23\,
	combout => \sPC_4[14]~24_combout\,
	cout => \sPC_4[14]~25\);

-- Location: IOIBUF_X50_Y10_N22
\iSXT[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iSXT(14),
	o => \iSXT[14]~input_o\);

-- Location: LCCOMB_X27_Y14_N26
\sPC_BRANCH[14]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_BRANCH[14]~29_combout\ = ((\iSXT[14]~input_o\ $ (\sPC_NEXT[14]~50_combout\ $ (!\sPC_BRANCH[13]~28\)))) # (GND)
-- \sPC_BRANCH[14]~30\ = CARRY((\iSXT[14]~input_o\ & ((\sPC_NEXT[14]~50_combout\) # (!\sPC_BRANCH[13]~28\))) # (!\iSXT[14]~input_o\ & (\sPC_NEXT[14]~50_combout\ & !\sPC_BRANCH[13]~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iSXT[14]~input_o\,
	datab => \sPC_NEXT[14]~50_combout\,
	datad => VCC,
	cin => \sPC_BRANCH[13]~28\,
	combout => \sPC_BRANCH[14]~29_combout\,
	cout => \sPC_BRANCH[14]~30\);

-- Location: LCCOMB_X26_Y14_N8
\sPC_NEXT[14]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[14]~48_combout\ = (!\iPC_SEL[1]~input_o\ & (!\sPC_NEXT[18]~18_combout\ & (\iPC_SEL[0]~input_o\ & \sPC_BRANCH[14]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iPC_SEL[1]~input_o\,
	datab => \sPC_NEXT[18]~18_combout\,
	datac => \iPC_SEL[0]~input_o\,
	datad => \sPC_BRANCH[14]~29_combout\,
	combout => \sPC_NEXT[14]~48_combout\);

-- Location: LCCOMB_X30_Y14_N8
\sPC_NEXT[14]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[14]~50_combout\ = (\sPC_NEXT[14]~49_combout\) # ((\sPC_NEXT[14]~48_combout\) # ((\sPC_NEXT[4]~19_combout\ & \sPC_4[14]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sPC_NEXT[4]~19_combout\,
	datab => \sPC_NEXT[14]~49_combout\,
	datac => \sPC_4[14]~24_combout\,
	datad => \sPC_NEXT[14]~48_combout\,
	combout => \sPC_NEXT[14]~50_combout\);

-- Location: FF_X30_Y14_N9
\sPC[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \sPC_NEXT[14]~50_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sPC(14));

-- Location: IOIBUF_X8_Y0_N8
\iJT[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iJT(15),
	o => \iJT[15]~input_o\);

-- Location: LCCOMB_X30_Y13_N26
\sPC_NEXT[15]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[15]~52_combout\ = (\sPC_NEXT[4]~97_combout\) # ((\sPC_NEXT[4]~40_combout\ & \iJT[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sPC_NEXT[4]~40_combout\,
	datac => \iJT[15]~input_o\,
	datad => \sPC_NEXT[4]~97_combout\,
	combout => \sPC_NEXT[15]~52_combout\);

-- Location: LCCOMB_X29_Y14_N28
\sPC_4[15]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_4[15]~26_combout\ = (sPC(15) & (!\sPC_4[14]~25\)) # (!sPC(15) & ((\sPC_4[14]~25\) # (GND)))
-- \sPC_4[15]~27\ = CARRY((!\sPC_4[14]~25\) # (!sPC(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sPC(15),
	datad => VCC,
	cin => \sPC_4[14]~25\,
	combout => \sPC_4[15]~26_combout\,
	cout => \sPC_4[15]~27\);

-- Location: IOIBUF_X12_Y17_N1
\iSXT[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iSXT(15),
	o => \iSXT[15]~input_o\);

-- Location: LCCOMB_X27_Y14_N28
\sPC_BRANCH[15]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_BRANCH[15]~31_combout\ = (\sPC_NEXT[15]~53_combout\ & ((\iSXT[15]~input_o\ & (\sPC_BRANCH[14]~30\ & VCC)) # (!\iSXT[15]~input_o\ & (!\sPC_BRANCH[14]~30\)))) # (!\sPC_NEXT[15]~53_combout\ & ((\iSXT[15]~input_o\ & (!\sPC_BRANCH[14]~30\)) # 
-- (!\iSXT[15]~input_o\ & ((\sPC_BRANCH[14]~30\) # (GND)))))
-- \sPC_BRANCH[15]~32\ = CARRY((\sPC_NEXT[15]~53_combout\ & (!\iSXT[15]~input_o\ & !\sPC_BRANCH[14]~30\)) # (!\sPC_NEXT[15]~53_combout\ & ((!\sPC_BRANCH[14]~30\) # (!\iSXT[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sPC_NEXT[15]~53_combout\,
	datab => \iSXT[15]~input_o\,
	datad => VCC,
	cin => \sPC_BRANCH[14]~30\,
	combout => \sPC_BRANCH[15]~31_combout\,
	cout => \sPC_BRANCH[15]~32\);

-- Location: LCCOMB_X30_Y14_N28
\sPC_NEXT[15]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[15]~51_combout\ = (!\iPC_SEL[1]~input_o\ & (!\sPC_NEXT[18]~18_combout\ & (\iPC_SEL[0]~input_o\ & \sPC_BRANCH[15]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iPC_SEL[1]~input_o\,
	datab => \sPC_NEXT[18]~18_combout\,
	datac => \iPC_SEL[0]~input_o\,
	datad => \sPC_BRANCH[15]~31_combout\,
	combout => \sPC_NEXT[15]~51_combout\);

-- Location: LCCOMB_X30_Y14_N18
\sPC_NEXT[15]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[15]~53_combout\ = (\sPC_NEXT[15]~52_combout\) # ((\sPC_NEXT[15]~51_combout\) # ((\sPC_NEXT[4]~19_combout\ & \sPC_4[15]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sPC_NEXT[4]~19_combout\,
	datab => \sPC_NEXT[15]~52_combout\,
	datac => \sPC_4[15]~26_combout\,
	datad => \sPC_NEXT[15]~51_combout\,
	combout => \sPC_NEXT[15]~53_combout\);

-- Location: FF_X30_Y14_N19
\sPC[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \sPC_NEXT[15]~53_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sPC(15));

-- Location: LCCOMB_X29_Y14_N30
\sPC_4[16]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_4[16]~28_combout\ = (sPC(16) & (\sPC_4[15]~27\ $ (GND))) # (!sPC(16) & (!\sPC_4[15]~27\ & VCC))
-- \sPC_4[16]~29\ = CARRY((sPC(16) & !\sPC_4[15]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sPC(16),
	datad => VCC,
	cin => \sPC_4[15]~27\,
	combout => \sPC_4[16]~28_combout\,
	cout => \sPC_4[16]~29\);

-- Location: IOIBUF_X19_Y17_N29
\iJT[16]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iJT(16),
	o => \iJT[16]~input_o\);

-- Location: IOIBUF_X16_Y17_N8
\iSXT[16]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iSXT(16),
	o => \iSXT[16]~input_o\);

-- Location: LCCOMB_X27_Y14_N30
\sPC_BRANCH[16]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_BRANCH[16]~33_combout\ = ((\sPC_NEXT[16]~55_combout\ $ (\iSXT[16]~input_o\ $ (!\sPC_BRANCH[15]~32\)))) # (GND)
-- \sPC_BRANCH[16]~34\ = CARRY((\sPC_NEXT[16]~55_combout\ & ((\iSXT[16]~input_o\) # (!\sPC_BRANCH[15]~32\))) # (!\sPC_NEXT[16]~55_combout\ & (\iSXT[16]~input_o\ & !\sPC_BRANCH[15]~32\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sPC_NEXT[16]~55_combout\,
	datab => \iSXT[16]~input_o\,
	datad => VCC,
	cin => \sPC_BRANCH[15]~32\,
	combout => \sPC_BRANCH[16]~33_combout\,
	cout => \sPC_BRANCH[16]~34\);

-- Location: LCCOMB_X26_Y14_N10
\sPC_NEXT[16]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[16]~54_combout\ = (\iPC_SEL[0]~input_o\ & (((\sPC_BRANCH[16]~33_combout\ & !\iPC_SEL[1]~input_o\)))) # (!\iPC_SEL[0]~input_o\ & (\iJT[16]~input_o\ & ((\iPC_SEL[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iPC_SEL[0]~input_o\,
	datab => \iJT[16]~input_o\,
	datac => \sPC_BRANCH[16]~33_combout\,
	datad => \iPC_SEL[1]~input_o\,
	combout => \sPC_NEXT[16]~54_combout\);

-- Location: LCCOMB_X28_Y14_N6
\sPC_NEXT[16]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[16]~55_combout\ = (\sPC_NEXT[18]~18_combout\ & (\sPC_NEXT[4]~19_combout\ & (\sPC_4[16]~28_combout\))) # (!\sPC_NEXT[18]~18_combout\ & ((\sPC_NEXT[16]~54_combout\) # ((\sPC_NEXT[4]~19_combout\ & \sPC_4[16]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sPC_NEXT[18]~18_combout\,
	datab => \sPC_NEXT[4]~19_combout\,
	datac => \sPC_4[16]~28_combout\,
	datad => \sPC_NEXT[16]~54_combout\,
	combout => \sPC_NEXT[16]~55_combout\);

-- Location: FF_X28_Y14_N7
\sPC[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \sPC_NEXT[16]~55_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sPC(16));

-- Location: IOIBUF_X8_Y0_N15
\iJT[17]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iJT(17),
	o => \iJT[17]~input_o\);

-- Location: LCCOMB_X30_Y13_N6
\sPC_NEXT[17]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[17]~57_combout\ = (\sPC_NEXT[4]~97_combout\) # ((\sPC_NEXT[4]~40_combout\ & \iJT[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sPC_NEXT[4]~97_combout\,
	datab => \sPC_NEXT[4]~40_combout\,
	datad => \iJT[17]~input_o\,
	combout => \sPC_NEXT[17]~57_combout\);

-- Location: LCCOMB_X29_Y13_N0
\sPC_4[17]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_4[17]~30_combout\ = (sPC(17) & (!\sPC_4[16]~29\)) # (!sPC(17) & ((\sPC_4[16]~29\) # (GND)))
-- \sPC_4[17]~31\ = CARRY((!\sPC_4[16]~29\) # (!sPC(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sPC(17),
	datad => VCC,
	cin => \sPC_4[16]~29\,
	combout => \sPC_4[17]~30_combout\,
	cout => \sPC_4[17]~31\);

-- Location: IOIBUF_X19_Y0_N22
\iSXT[17]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iSXT(17),
	o => \iSXT[17]~input_o\);

-- Location: LCCOMB_X27_Y13_N0
\sPC_BRANCH[17]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_BRANCH[17]~35_combout\ = (\iSXT[17]~input_o\ & ((\sPC_NEXT[17]~58_combout\ & (\sPC_BRANCH[16]~34\ & VCC)) # (!\sPC_NEXT[17]~58_combout\ & (!\sPC_BRANCH[16]~34\)))) # (!\iSXT[17]~input_o\ & ((\sPC_NEXT[17]~58_combout\ & (!\sPC_BRANCH[16]~34\)) # 
-- (!\sPC_NEXT[17]~58_combout\ & ((\sPC_BRANCH[16]~34\) # (GND)))))
-- \sPC_BRANCH[17]~36\ = CARRY((\iSXT[17]~input_o\ & (!\sPC_NEXT[17]~58_combout\ & !\sPC_BRANCH[16]~34\)) # (!\iSXT[17]~input_o\ & ((!\sPC_BRANCH[16]~34\) # (!\sPC_NEXT[17]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iSXT[17]~input_o\,
	datab => \sPC_NEXT[17]~58_combout\,
	datad => VCC,
	cin => \sPC_BRANCH[16]~34\,
	combout => \sPC_BRANCH[17]~35_combout\,
	cout => \sPC_BRANCH[17]~36\);

-- Location: LCCOMB_X30_Y13_N28
\sPC_NEXT[17]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[17]~56_combout\ = (\iPC_SEL[0]~input_o\ & (!\iPC_SEL[1]~input_o\ & (!\sPC_NEXT[18]~18_combout\ & \sPC_BRANCH[17]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iPC_SEL[0]~input_o\,
	datab => \iPC_SEL[1]~input_o\,
	datac => \sPC_NEXT[18]~18_combout\,
	datad => \sPC_BRANCH[17]~35_combout\,
	combout => \sPC_NEXT[17]~56_combout\);

-- Location: LCCOMB_X29_Y13_N30
\sPC_NEXT[17]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[17]~58_combout\ = (\sPC_NEXT[17]~57_combout\) # ((\sPC_NEXT[17]~56_combout\) # ((\sPC_4[17]~30_combout\ & \sPC_NEXT[4]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sPC_NEXT[17]~57_combout\,
	datab => \sPC_4[17]~30_combout\,
	datac => \sPC_NEXT[4]~19_combout\,
	datad => \sPC_NEXT[17]~56_combout\,
	combout => \sPC_NEXT[17]~58_combout\);

-- Location: FF_X29_Y13_N31
\sPC[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \sPC_NEXT[17]~58_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sPC(17));

-- Location: IOIBUF_X25_Y22_N15
\iJT[18]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iJT(18),
	o => \iJT[18]~input_o\);

-- Location: IOIBUF_X24_Y0_N29
\iSXT[18]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iSXT(18),
	o => \iSXT[18]~input_o\);

-- Location: LCCOMB_X27_Y13_N2
\sPC_BRANCH[18]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_BRANCH[18]~37_combout\ = ((\iSXT[18]~input_o\ $ (\sPC_NEXT[18]~60_combout\ $ (!\sPC_BRANCH[17]~36\)))) # (GND)
-- \sPC_BRANCH[18]~38\ = CARRY((\iSXT[18]~input_o\ & ((\sPC_NEXT[18]~60_combout\) # (!\sPC_BRANCH[17]~36\))) # (!\iSXT[18]~input_o\ & (\sPC_NEXT[18]~60_combout\ & !\sPC_BRANCH[17]~36\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iSXT[18]~input_o\,
	datab => \sPC_NEXT[18]~60_combout\,
	datad => VCC,
	cin => \sPC_BRANCH[17]~36\,
	combout => \sPC_BRANCH[18]~37_combout\,
	cout => \sPC_BRANCH[18]~38\);

-- Location: LCCOMB_X26_Y14_N20
\sPC_NEXT[18]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[18]~59_combout\ = (\iPC_SEL[1]~input_o\ & (\iJT[18]~input_o\ & (!\iPC_SEL[0]~input_o\))) # (!\iPC_SEL[1]~input_o\ & (((\iPC_SEL[0]~input_o\ & \sPC_BRANCH[18]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iPC_SEL[1]~input_o\,
	datab => \iJT[18]~input_o\,
	datac => \iPC_SEL[0]~input_o\,
	datad => \sPC_BRANCH[18]~37_combout\,
	combout => \sPC_NEXT[18]~59_combout\);

-- Location: LCCOMB_X29_Y13_N2
\sPC_4[18]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_4[18]~32_combout\ = (sPC(18) & (\sPC_4[17]~31\ $ (GND))) # (!sPC(18) & (!\sPC_4[17]~31\ & VCC))
-- \sPC_4[18]~33\ = CARRY((sPC(18) & !\sPC_4[17]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sPC(18),
	datad => VCC,
	cin => \sPC_4[17]~31\,
	combout => \sPC_4[18]~32_combout\,
	cout => \sPC_4[18]~33\);

-- Location: LCCOMB_X28_Y13_N22
\sPC_NEXT[18]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[18]~60_combout\ = (\sPC_NEXT[18]~18_combout\ & (\sPC_NEXT[4]~19_combout\ & ((\sPC_4[18]~32_combout\)))) # (!\sPC_NEXT[18]~18_combout\ & ((\sPC_NEXT[18]~59_combout\) # ((\sPC_NEXT[4]~19_combout\ & \sPC_4[18]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sPC_NEXT[18]~18_combout\,
	datab => \sPC_NEXT[4]~19_combout\,
	datac => \sPC_NEXT[18]~59_combout\,
	datad => \sPC_4[18]~32_combout\,
	combout => \sPC_NEXT[18]~60_combout\);

-- Location: FF_X28_Y13_N23
\sPC[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \sPC_NEXT[18]~60_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sPC(18));

-- Location: IOIBUF_X50_Y10_N8
\iJT[19]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iJT(19),
	o => \iJT[19]~input_o\);

-- Location: LCCOMB_X30_Y13_N10
\sPC_NEXT[19]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[19]~62_combout\ = (\sPC_NEXT[4]~97_combout\) # ((\sPC_NEXT[4]~40_combout\ & \iJT[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sPC_NEXT[4]~97_combout\,
	datab => \sPC_NEXT[4]~40_combout\,
	datad => \iJT[19]~input_o\,
	combout => \sPC_NEXT[19]~62_combout\);

-- Location: LCCOMB_X29_Y13_N4
\sPC_4[19]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_4[19]~34_combout\ = (sPC(19) & (!\sPC_4[18]~33\)) # (!sPC(19) & ((\sPC_4[18]~33\) # (GND)))
-- \sPC_4[19]~35\ = CARRY((!\sPC_4[18]~33\) # (!sPC(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sPC(19),
	datad => VCC,
	cin => \sPC_4[18]~33\,
	combout => \sPC_4[19]~34_combout\,
	cout => \sPC_4[19]~35\);

-- Location: IOIBUF_X16_Y0_N22
\iSXT[19]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iSXT(19),
	o => \iSXT[19]~input_o\);

-- Location: LCCOMB_X27_Y13_N4
\sPC_BRANCH[19]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_BRANCH[19]~39_combout\ = (\iSXT[19]~input_o\ & ((\sPC_NEXT[19]~63_combout\ & (\sPC_BRANCH[18]~38\ & VCC)) # (!\sPC_NEXT[19]~63_combout\ & (!\sPC_BRANCH[18]~38\)))) # (!\iSXT[19]~input_o\ & ((\sPC_NEXT[19]~63_combout\ & (!\sPC_BRANCH[18]~38\)) # 
-- (!\sPC_NEXT[19]~63_combout\ & ((\sPC_BRANCH[18]~38\) # (GND)))))
-- \sPC_BRANCH[19]~40\ = CARRY((\iSXT[19]~input_o\ & (!\sPC_NEXT[19]~63_combout\ & !\sPC_BRANCH[18]~38\)) # (!\iSXT[19]~input_o\ & ((!\sPC_BRANCH[18]~38\) # (!\sPC_NEXT[19]~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iSXT[19]~input_o\,
	datab => \sPC_NEXT[19]~63_combout\,
	datad => VCC,
	cin => \sPC_BRANCH[18]~38\,
	combout => \sPC_BRANCH[19]~39_combout\,
	cout => \sPC_BRANCH[19]~40\);

-- Location: LCCOMB_X30_Y13_N16
\sPC_NEXT[19]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[19]~61_combout\ = (\iPC_SEL[0]~input_o\ & (!\iPC_SEL[1]~input_o\ & (!\sPC_NEXT[18]~18_combout\ & \sPC_BRANCH[19]~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iPC_SEL[0]~input_o\,
	datab => \iPC_SEL[1]~input_o\,
	datac => \sPC_NEXT[18]~18_combout\,
	datad => \sPC_BRANCH[19]~39_combout\,
	combout => \sPC_NEXT[19]~61_combout\);

-- Location: LCCOMB_X30_Y13_N8
\sPC_NEXT[19]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[19]~63_combout\ = (\sPC_NEXT[19]~62_combout\) # ((\sPC_NEXT[19]~61_combout\) # ((\sPC_4[19]~34_combout\ & \sPC_NEXT[4]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sPC_NEXT[19]~62_combout\,
	datab => \sPC_4[19]~34_combout\,
	datac => \sPC_NEXT[4]~19_combout\,
	datad => \sPC_NEXT[19]~61_combout\,
	combout => \sPC_NEXT[19]~63_combout\);

-- Location: FF_X30_Y13_N9
\sPC[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \sPC_NEXT[19]~63_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sPC(19));

-- Location: LCCOMB_X29_Y13_N6
\sPC_4[20]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_4[20]~36_combout\ = (sPC(20) & (\sPC_4[19]~35\ $ (GND))) # (!sPC(20) & (!\sPC_4[19]~35\ & VCC))
-- \sPC_4[20]~37\ = CARRY((sPC(20) & !\sPC_4[19]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sPC(20),
	datad => VCC,
	cin => \sPC_4[19]~35\,
	combout => \sPC_4[20]~36_combout\,
	cout => \sPC_4[20]~37\);

-- Location: IOIBUF_X14_Y17_N1
\iJT[20]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iJT(20),
	o => \iJT[20]~input_o\);

-- Location: LCCOMB_X26_Y13_N18
\sPC_NEXT[20]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[20]~65_combout\ = (\sPC_NEXT[4]~97_combout\) # ((\sPC_NEXT[4]~40_combout\ & \iJT[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sPC_NEXT[4]~40_combout\,
	datac => \iJT[20]~input_o\,
	datad => \sPC_NEXT[4]~97_combout\,
	combout => \sPC_NEXT[20]~65_combout\);

-- Location: IOIBUF_X8_Y0_N29
\iSXT[20]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iSXT(20),
	o => \iSXT[20]~input_o\);

-- Location: LCCOMB_X27_Y13_N6
\sPC_BRANCH[20]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_BRANCH[20]~41_combout\ = ((\sPC_NEXT[20]~66_combout\ $ (\iSXT[20]~input_o\ $ (!\sPC_BRANCH[19]~40\)))) # (GND)
-- \sPC_BRANCH[20]~42\ = CARRY((\sPC_NEXT[20]~66_combout\ & ((\iSXT[20]~input_o\) # (!\sPC_BRANCH[19]~40\))) # (!\sPC_NEXT[20]~66_combout\ & (\iSXT[20]~input_o\ & !\sPC_BRANCH[19]~40\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sPC_NEXT[20]~66_combout\,
	datab => \iSXT[20]~input_o\,
	datad => VCC,
	cin => \sPC_BRANCH[19]~40\,
	combout => \sPC_BRANCH[20]~41_combout\,
	cout => \sPC_BRANCH[20]~42\);

-- Location: LCCOMB_X26_Y13_N24
\sPC_NEXT[20]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[20]~64_combout\ = (!\iPC_SEL[1]~input_o\ & (!\sPC_NEXT[18]~18_combout\ & (\iPC_SEL[0]~input_o\ & \sPC_BRANCH[20]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iPC_SEL[1]~input_o\,
	datab => \sPC_NEXT[18]~18_combout\,
	datac => \iPC_SEL[0]~input_o\,
	datad => \sPC_BRANCH[20]~41_combout\,
	combout => \sPC_NEXT[20]~64_combout\);

-- Location: LCCOMB_X26_Y13_N8
\sPC_NEXT[20]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[20]~66_combout\ = (\sPC_NEXT[20]~65_combout\) # ((\sPC_NEXT[20]~64_combout\) # ((\sPC_4[20]~36_combout\ & \sPC_NEXT[4]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sPC_4[20]~36_combout\,
	datab => \sPC_NEXT[20]~65_combout\,
	datac => \sPC_NEXT[4]~19_combout\,
	datad => \sPC_NEXT[20]~64_combout\,
	combout => \sPC_NEXT[20]~66_combout\);

-- Location: FF_X26_Y13_N9
\sPC[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \sPC_NEXT[20]~66_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sPC(20));

-- Location: LCCOMB_X29_Y13_N8
\sPC_4[21]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_4[21]~38_combout\ = (sPC(21) & (!\sPC_4[20]~37\)) # (!sPC(21) & ((\sPC_4[20]~37\) # (GND)))
-- \sPC_4[21]~39\ = CARRY((!\sPC_4[20]~37\) # (!sPC(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sPC(21),
	datad => VCC,
	cin => \sPC_4[20]~37\,
	combout => \sPC_4[21]~38_combout\,
	cout => \sPC_4[21]~39\);

-- Location: IOIBUF_X8_Y0_N22
\iJT[21]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iJT(21),
	o => \iJT[21]~input_o\);

-- Location: LCCOMB_X30_Y13_N18
\sPC_NEXT[21]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[21]~68_combout\ = (\sPC_NEXT[4]~97_combout\) # ((\sPC_NEXT[4]~40_combout\ & \iJT[21]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sPC_NEXT[4]~40_combout\,
	datac => \iJT[21]~input_o\,
	datad => \sPC_NEXT[4]~97_combout\,
	combout => \sPC_NEXT[21]~68_combout\);

-- Location: IOIBUF_X0_Y9_N22
\iSXT[21]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iSXT(21),
	o => \iSXT[21]~input_o\);

-- Location: LCCOMB_X27_Y13_N8
\sPC_BRANCH[21]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_BRANCH[21]~43_combout\ = (\sPC_NEXT[21]~69_combout\ & ((\iSXT[21]~input_o\ & (\sPC_BRANCH[20]~42\ & VCC)) # (!\iSXT[21]~input_o\ & (!\sPC_BRANCH[20]~42\)))) # (!\sPC_NEXT[21]~69_combout\ & ((\iSXT[21]~input_o\ & (!\sPC_BRANCH[20]~42\)) # 
-- (!\iSXT[21]~input_o\ & ((\sPC_BRANCH[20]~42\) # (GND)))))
-- \sPC_BRANCH[21]~44\ = CARRY((\sPC_NEXT[21]~69_combout\ & (!\iSXT[21]~input_o\ & !\sPC_BRANCH[20]~42\)) # (!\sPC_NEXT[21]~69_combout\ & ((!\sPC_BRANCH[20]~42\) # (!\iSXT[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sPC_NEXT[21]~69_combout\,
	datab => \iSXT[21]~input_o\,
	datad => VCC,
	cin => \sPC_BRANCH[20]~42\,
	combout => \sPC_BRANCH[21]~43_combout\,
	cout => \sPC_BRANCH[21]~44\);

-- Location: LCCOMB_X30_Y13_N12
\sPC_NEXT[21]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[21]~67_combout\ = (\iPC_SEL[0]~input_o\ & (!\iPC_SEL[1]~input_o\ & (!\sPC_NEXT[18]~18_combout\ & \sPC_BRANCH[21]~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iPC_SEL[0]~input_o\,
	datab => \iPC_SEL[1]~input_o\,
	datac => \sPC_NEXT[18]~18_combout\,
	datad => \sPC_BRANCH[21]~43_combout\,
	combout => \sPC_NEXT[21]~67_combout\);

-- Location: LCCOMB_X30_Y13_N30
\sPC_NEXT[21]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[21]~69_combout\ = (\sPC_NEXT[21]~68_combout\) # ((\sPC_NEXT[21]~67_combout\) # ((\sPC_4[21]~38_combout\ & \sPC_NEXT[4]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sPC_4[21]~38_combout\,
	datab => \sPC_NEXT[21]~68_combout\,
	datac => \sPC_NEXT[4]~19_combout\,
	datad => \sPC_NEXT[21]~67_combout\,
	combout => \sPC_NEXT[21]~69_combout\);

-- Location: FF_X30_Y13_N31
\sPC[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \sPC_NEXT[21]~69_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sPC(21));

-- Location: LCCOMB_X29_Y13_N10
\sPC_4[22]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_4[22]~40_combout\ = (sPC(22) & (\sPC_4[21]~39\ $ (GND))) # (!sPC(22) & (!\sPC_4[21]~39\ & VCC))
-- \sPC_4[22]~41\ = CARRY((sPC(22) & !\sPC_4[21]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sPC(22),
	datad => VCC,
	cin => \sPC_4[21]~39\,
	combout => \sPC_4[22]~40_combout\,
	cout => \sPC_4[22]~41\);

-- Location: IOIBUF_X50_Y15_N15
\iJT[22]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iJT(22),
	o => \iJT[22]~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\iSXT[22]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iSXT(22),
	o => \iSXT[22]~input_o\);

-- Location: LCCOMB_X27_Y13_N10
\sPC_BRANCH[22]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_BRANCH[22]~45_combout\ = ((\iSXT[22]~input_o\ $ (\sPC_NEXT[22]~71_combout\ $ (!\sPC_BRANCH[21]~44\)))) # (GND)
-- \sPC_BRANCH[22]~46\ = CARRY((\iSXT[22]~input_o\ & ((\sPC_NEXT[22]~71_combout\) # (!\sPC_BRANCH[21]~44\))) # (!\iSXT[22]~input_o\ & (\sPC_NEXT[22]~71_combout\ & !\sPC_BRANCH[21]~44\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iSXT[22]~input_o\,
	datab => \sPC_NEXT[22]~71_combout\,
	datad => VCC,
	cin => \sPC_BRANCH[21]~44\,
	combout => \sPC_BRANCH[22]~45_combout\,
	cout => \sPC_BRANCH[22]~46\);

-- Location: LCCOMB_X29_Y15_N16
\sPC_NEXT[22]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[22]~70_combout\ = (\sPC_NEXT[4]~38_combout\ & ((\sPC_BRANCH[22]~45_combout\) # ((\iJT[22]~input_o\ & \sPC_NEXT[4]~40_combout\)))) # (!\sPC_NEXT[4]~38_combout\ & (\iJT[22]~input_o\ & (\sPC_NEXT[4]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sPC_NEXT[4]~38_combout\,
	datab => \iJT[22]~input_o\,
	datac => \sPC_NEXT[4]~40_combout\,
	datad => \sPC_BRANCH[22]~45_combout\,
	combout => \sPC_NEXT[22]~70_combout\);

-- Location: LCCOMB_X28_Y13_N16
\sPC_NEXT[22]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[22]~71_combout\ = (\sPC_NEXT[22]~70_combout\) # ((\sPC_NEXT[4]~19_combout\ & \sPC_4[22]~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sPC_NEXT[4]~19_combout\,
	datac => \sPC_4[22]~40_combout\,
	datad => \sPC_NEXT[22]~70_combout\,
	combout => \sPC_NEXT[22]~71_combout\);

-- Location: FF_X28_Y13_N17
\sPC[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \sPC_NEXT[22]~71_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sPC(22));

-- Location: IOIBUF_X14_Y0_N22
\iJT[23]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iJT(23),
	o => \iJT[23]~input_o\);

-- Location: LCCOMB_X26_Y13_N26
\sPC_NEXT[23]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[23]~73_combout\ = (\sPC_NEXT[4]~97_combout\) # ((\sPC_NEXT[4]~40_combout\ & \iJT[23]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sPC_NEXT[4]~40_combout\,
	datac => \iJT[23]~input_o\,
	datad => \sPC_NEXT[4]~97_combout\,
	combout => \sPC_NEXT[23]~73_combout\);

-- Location: LCCOMB_X29_Y13_N12
\sPC_4[23]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_4[23]~42_combout\ = (sPC(23) & (!\sPC_4[22]~41\)) # (!sPC(23) & ((\sPC_4[22]~41\) # (GND)))
-- \sPC_4[23]~43\ = CARRY((!\sPC_4[22]~41\) # (!sPC(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sPC(23),
	datad => VCC,
	cin => \sPC_4[22]~41\,
	combout => \sPC_4[23]~42_combout\,
	cout => \sPC_4[23]~43\);

-- Location: IOIBUF_X19_Y17_N8
\iSXT[23]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iSXT(23),
	o => \iSXT[23]~input_o\);

-- Location: LCCOMB_X27_Y13_N12
\sPC_BRANCH[23]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_BRANCH[23]~47_combout\ = (\iSXT[23]~input_o\ & ((\sPC_NEXT[23]~74_combout\ & (\sPC_BRANCH[22]~46\ & VCC)) # (!\sPC_NEXT[23]~74_combout\ & (!\sPC_BRANCH[22]~46\)))) # (!\iSXT[23]~input_o\ & ((\sPC_NEXT[23]~74_combout\ & (!\sPC_BRANCH[22]~46\)) # 
-- (!\sPC_NEXT[23]~74_combout\ & ((\sPC_BRANCH[22]~46\) # (GND)))))
-- \sPC_BRANCH[23]~48\ = CARRY((\iSXT[23]~input_o\ & (!\sPC_NEXT[23]~74_combout\ & !\sPC_BRANCH[22]~46\)) # (!\iSXT[23]~input_o\ & ((!\sPC_BRANCH[22]~46\) # (!\sPC_NEXT[23]~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iSXT[23]~input_o\,
	datab => \sPC_NEXT[23]~74_combout\,
	datad => VCC,
	cin => \sPC_BRANCH[22]~46\,
	combout => \sPC_BRANCH[23]~47_combout\,
	cout => \sPC_BRANCH[23]~48\);

-- Location: LCCOMB_X26_Y13_N28
\sPC_NEXT[23]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[23]~72_combout\ = (!\iPC_SEL[1]~input_o\ & (!\sPC_NEXT[18]~18_combout\ & (\sPC_BRANCH[23]~47_combout\ & \iPC_SEL[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iPC_SEL[1]~input_o\,
	datab => \sPC_NEXT[18]~18_combout\,
	datac => \sPC_BRANCH[23]~47_combout\,
	datad => \iPC_SEL[0]~input_o\,
	combout => \sPC_NEXT[23]~72_combout\);

-- Location: LCCOMB_X26_Y13_N22
\sPC_NEXT[23]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[23]~74_combout\ = (\sPC_NEXT[23]~73_combout\) # ((\sPC_NEXT[23]~72_combout\) # ((\sPC_4[23]~42_combout\ & \sPC_NEXT[4]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sPC_NEXT[23]~73_combout\,
	datab => \sPC_4[23]~42_combout\,
	datac => \sPC_NEXT[4]~19_combout\,
	datad => \sPC_NEXT[23]~72_combout\,
	combout => \sPC_NEXT[23]~74_combout\);

-- Location: FF_X26_Y13_N23
\sPC[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \sPC_NEXT[23]~74_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sPC(23));

-- Location: LCCOMB_X29_Y13_N14
\sPC_4[24]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_4[24]~44_combout\ = (sPC(24) & (\sPC_4[23]~43\ $ (GND))) # (!sPC(24) & (!\sPC_4[23]~43\ & VCC))
-- \sPC_4[24]~45\ = CARRY((sPC(24) & !\sPC_4[23]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sPC(24),
	datad => VCC,
	cin => \sPC_4[23]~43\,
	combout => \sPC_4[24]~44_combout\,
	cout => \sPC_4[24]~45\);

-- Location: IOIBUF_X50_Y21_N8
\iJT[24]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iJT(24),
	o => \iJT[24]~input_o\);

-- Location: IOIBUF_X0_Y8_N8
\iSXT[24]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iSXT(24),
	o => \iSXT[24]~input_o\);

-- Location: LCCOMB_X27_Y13_N14
\sPC_BRANCH[24]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_BRANCH[24]~49_combout\ = ((\sPC_NEXT[24]~76_combout\ $ (\iSXT[24]~input_o\ $ (!\sPC_BRANCH[23]~48\)))) # (GND)
-- \sPC_BRANCH[24]~50\ = CARRY((\sPC_NEXT[24]~76_combout\ & ((\iSXT[24]~input_o\) # (!\sPC_BRANCH[23]~48\))) # (!\sPC_NEXT[24]~76_combout\ & (\iSXT[24]~input_o\ & !\sPC_BRANCH[23]~48\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sPC_NEXT[24]~76_combout\,
	datab => \iSXT[24]~input_o\,
	datad => VCC,
	cin => \sPC_BRANCH[23]~48\,
	combout => \sPC_BRANCH[24]~49_combout\,
	cout => \sPC_BRANCH[24]~50\);

-- Location: LCCOMB_X28_Y13_N18
\sPC_NEXT[24]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[24]~75_combout\ = (\sPC_NEXT[4]~40_combout\ & ((\iJT[24]~input_o\) # ((\sPC_NEXT[4]~38_combout\ & \sPC_BRANCH[24]~49_combout\)))) # (!\sPC_NEXT[4]~40_combout\ & (((\sPC_NEXT[4]~38_combout\ & \sPC_BRANCH[24]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sPC_NEXT[4]~40_combout\,
	datab => \iJT[24]~input_o\,
	datac => \sPC_NEXT[4]~38_combout\,
	datad => \sPC_BRANCH[24]~49_combout\,
	combout => \sPC_NEXT[24]~75_combout\);

-- Location: LCCOMB_X28_Y13_N30
\sPC_NEXT[24]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[24]~76_combout\ = (\sPC_NEXT[24]~75_combout\) # ((\sPC_NEXT[4]~19_combout\ & \sPC_4[24]~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sPC_NEXT[4]~19_combout\,
	datac => \sPC_4[24]~44_combout\,
	datad => \sPC_NEXT[24]~75_combout\,
	combout => \sPC_NEXT[24]~76_combout\);

-- Location: FF_X28_Y13_N31
\sPC[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \sPC_NEXT[24]~76_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sPC(24));

-- Location: IOIBUF_X10_Y17_N1
\iJT[25]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iJT(25),
	o => \iJT[25]~input_o\);

-- Location: LCCOMB_X26_Y13_N6
\sPC_NEXT[25]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[25]~78_combout\ = (\sPC_NEXT[4]~97_combout\) # ((\sPC_NEXT[4]~40_combout\ & \iJT[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sPC_NEXT[4]~40_combout\,
	datac => \iJT[25]~input_o\,
	datad => \sPC_NEXT[4]~97_combout\,
	combout => \sPC_NEXT[25]~78_combout\);

-- Location: LCCOMB_X29_Y13_N16
\sPC_4[25]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_4[25]~46_combout\ = (sPC(25) & (!\sPC_4[24]~45\)) # (!sPC(25) & ((\sPC_4[24]~45\) # (GND)))
-- \sPC_4[25]~47\ = CARRY((!\sPC_4[24]~45\) # (!sPC(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sPC(25),
	datad => VCC,
	cin => \sPC_4[24]~45\,
	combout => \sPC_4[25]~46_combout\,
	cout => \sPC_4[25]~47\);

-- Location: IOIBUF_X16_Y0_N15
\iSXT[25]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iSXT(25),
	o => \iSXT[25]~input_o\);

-- Location: LCCOMB_X27_Y13_N16
\sPC_BRANCH[25]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_BRANCH[25]~51_combout\ = (\iSXT[25]~input_o\ & ((\sPC_NEXT[25]~79_combout\ & (\sPC_BRANCH[24]~50\ & VCC)) # (!\sPC_NEXT[25]~79_combout\ & (!\sPC_BRANCH[24]~50\)))) # (!\iSXT[25]~input_o\ & ((\sPC_NEXT[25]~79_combout\ & (!\sPC_BRANCH[24]~50\)) # 
-- (!\sPC_NEXT[25]~79_combout\ & ((\sPC_BRANCH[24]~50\) # (GND)))))
-- \sPC_BRANCH[25]~52\ = CARRY((\iSXT[25]~input_o\ & (!\sPC_NEXT[25]~79_combout\ & !\sPC_BRANCH[24]~50\)) # (!\iSXT[25]~input_o\ & ((!\sPC_BRANCH[24]~50\) # (!\sPC_NEXT[25]~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iSXT[25]~input_o\,
	datab => \sPC_NEXT[25]~79_combout\,
	datad => VCC,
	cin => \sPC_BRANCH[24]~50\,
	combout => \sPC_BRANCH[25]~51_combout\,
	cout => \sPC_BRANCH[25]~52\);

-- Location: LCCOMB_X26_Y13_N12
\sPC_NEXT[25]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[25]~77_combout\ = (!\iPC_SEL[1]~input_o\ & (!\sPC_NEXT[18]~18_combout\ & (\iPC_SEL[0]~input_o\ & \sPC_BRANCH[25]~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iPC_SEL[1]~input_o\,
	datab => \sPC_NEXT[18]~18_combout\,
	datac => \iPC_SEL[0]~input_o\,
	datad => \sPC_BRANCH[25]~51_combout\,
	combout => \sPC_NEXT[25]~77_combout\);

-- Location: LCCOMB_X26_Y13_N4
\sPC_NEXT[25]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[25]~79_combout\ = (\sPC_NEXT[25]~78_combout\) # ((\sPC_NEXT[25]~77_combout\) # ((\sPC_4[25]~46_combout\ & \sPC_NEXT[4]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sPC_NEXT[25]~78_combout\,
	datab => \sPC_4[25]~46_combout\,
	datac => \sPC_NEXT[4]~19_combout\,
	datad => \sPC_NEXT[25]~77_combout\,
	combout => \sPC_NEXT[25]~79_combout\);

-- Location: FF_X26_Y13_N5
\sPC[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \sPC_NEXT[25]~79_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sPC(25));

-- Location: LCCOMB_X29_Y13_N18
\sPC_4[26]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_4[26]~48_combout\ = (sPC(26) & (\sPC_4[25]~47\ $ (GND))) # (!sPC(26) & (!\sPC_4[25]~47\ & VCC))
-- \sPC_4[26]~49\ = CARRY((sPC(26) & !\sPC_4[25]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sPC(26),
	datad => VCC,
	cin => \sPC_4[25]~47\,
	combout => \sPC_4[26]~48_combout\,
	cout => \sPC_4[26]~49\);

-- Location: IOIBUF_X50_Y21_N23
\iJT[26]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iJT(26),
	o => \iJT[26]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\iSXT[26]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iSXT(26),
	o => \iSXT[26]~input_o\);

-- Location: LCCOMB_X27_Y13_N18
\sPC_BRANCH[26]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_BRANCH[26]~53_combout\ = ((\iSXT[26]~input_o\ $ (\sPC_NEXT[26]~81_combout\ $ (!\sPC_BRANCH[25]~52\)))) # (GND)
-- \sPC_BRANCH[26]~54\ = CARRY((\iSXT[26]~input_o\ & ((\sPC_NEXT[26]~81_combout\) # (!\sPC_BRANCH[25]~52\))) # (!\iSXT[26]~input_o\ & (\sPC_NEXT[26]~81_combout\ & !\sPC_BRANCH[25]~52\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iSXT[26]~input_o\,
	datab => \sPC_NEXT[26]~81_combout\,
	datad => VCC,
	cin => \sPC_BRANCH[25]~52\,
	combout => \sPC_BRANCH[26]~53_combout\,
	cout => \sPC_BRANCH[26]~54\);

-- Location: LCCOMB_X28_Y13_N28
\sPC_NEXT[26]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[26]~80_combout\ = (\sPC_NEXT[4]~40_combout\ & ((\iJT[26]~input_o\) # ((\sPC_NEXT[4]~38_combout\ & \sPC_BRANCH[26]~53_combout\)))) # (!\sPC_NEXT[4]~40_combout\ & (\sPC_NEXT[4]~38_combout\ & ((\sPC_BRANCH[26]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sPC_NEXT[4]~40_combout\,
	datab => \sPC_NEXT[4]~38_combout\,
	datac => \iJT[26]~input_o\,
	datad => \sPC_BRANCH[26]~53_combout\,
	combout => \sPC_NEXT[26]~80_combout\);

-- Location: LCCOMB_X28_Y13_N12
\sPC_NEXT[26]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[26]~81_combout\ = (\sPC_NEXT[26]~80_combout\) # ((\sPC_4[26]~48_combout\ & \sPC_NEXT[4]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sPC_4[26]~48_combout\,
	datab => \sPC_NEXT[4]~19_combout\,
	datad => \sPC_NEXT[26]~80_combout\,
	combout => \sPC_NEXT[26]~81_combout\);

-- Location: FF_X28_Y13_N13
\sPC[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \sPC_NEXT[26]~81_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sPC(26));

-- Location: LCCOMB_X29_Y13_N20
\sPC_4[27]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_4[27]~50_combout\ = (sPC(27) & (!\sPC_4[26]~49\)) # (!sPC(27) & ((\sPC_4[26]~49\) # (GND)))
-- \sPC_4[27]~51\ = CARRY((!\sPC_4[26]~49\) # (!sPC(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sPC(27),
	datad => VCC,
	cin => \sPC_4[26]~49\,
	combout => \sPC_4[27]~50_combout\,
	cout => \sPC_4[27]~51\);

-- Location: IOIBUF_X19_Y17_N1
\iJT[27]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iJT(27),
	o => \iJT[27]~input_o\);

-- Location: LCCOMB_X26_Y13_N14
\sPC_NEXT[27]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[27]~83_combout\ = (\sPC_NEXT[4]~97_combout\) # ((\sPC_NEXT[4]~40_combout\ & \iJT[27]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sPC_NEXT[4]~40_combout\,
	datac => \iJT[27]~input_o\,
	datad => \sPC_NEXT[4]~97_combout\,
	combout => \sPC_NEXT[27]~83_combout\);

-- Location: IOIBUF_X50_Y16_N15
\iSXT[27]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iSXT(27),
	o => \iSXT[27]~input_o\);

-- Location: LCCOMB_X27_Y13_N20
\sPC_BRANCH[27]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_BRANCH[27]~55_combout\ = (\sPC_NEXT[27]~84_combout\ & ((\iSXT[27]~input_o\ & (\sPC_BRANCH[26]~54\ & VCC)) # (!\iSXT[27]~input_o\ & (!\sPC_BRANCH[26]~54\)))) # (!\sPC_NEXT[27]~84_combout\ & ((\iSXT[27]~input_o\ & (!\sPC_BRANCH[26]~54\)) # 
-- (!\iSXT[27]~input_o\ & ((\sPC_BRANCH[26]~54\) # (GND)))))
-- \sPC_BRANCH[27]~56\ = CARRY((\sPC_NEXT[27]~84_combout\ & (!\iSXT[27]~input_o\ & !\sPC_BRANCH[26]~54\)) # (!\sPC_NEXT[27]~84_combout\ & ((!\sPC_BRANCH[26]~54\) # (!\iSXT[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sPC_NEXT[27]~84_combout\,
	datab => \iSXT[27]~input_o\,
	datad => VCC,
	cin => \sPC_BRANCH[26]~54\,
	combout => \sPC_BRANCH[27]~55_combout\,
	cout => \sPC_BRANCH[27]~56\);

-- Location: LCCOMB_X26_Y13_N20
\sPC_NEXT[27]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[27]~82_combout\ = (!\iPC_SEL[1]~input_o\ & (!\sPC_NEXT[18]~18_combout\ & (\sPC_BRANCH[27]~55_combout\ & \iPC_SEL[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iPC_SEL[1]~input_o\,
	datab => \sPC_NEXT[18]~18_combout\,
	datac => \sPC_BRANCH[27]~55_combout\,
	datad => \iPC_SEL[0]~input_o\,
	combout => \sPC_NEXT[27]~82_combout\);

-- Location: LCCOMB_X26_Y13_N2
\sPC_NEXT[27]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[27]~84_combout\ = (\sPC_NEXT[27]~83_combout\) # ((\sPC_NEXT[27]~82_combout\) # ((\sPC_NEXT[4]~19_combout\ & \sPC_4[27]~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sPC_NEXT[4]~19_combout\,
	datab => \sPC_4[27]~50_combout\,
	datac => \sPC_NEXT[27]~83_combout\,
	datad => \sPC_NEXT[27]~82_combout\,
	combout => \sPC_NEXT[27]~84_combout\);

-- Location: FF_X26_Y13_N3
\sPC[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \sPC_NEXT[27]~84_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sPC(27));

-- Location: IOIBUF_X19_Y17_N15
\iJT[28]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iJT(28),
	o => \iJT[28]~input_o\);

-- Location: LCCOMB_X26_Y13_N10
\sPC_NEXT[28]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[28]~86_combout\ = (\sPC_NEXT[4]~97_combout\) # ((\sPC_NEXT[4]~40_combout\ & \iJT[28]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sPC_NEXT[4]~40_combout\,
	datac => \iJT[28]~input_o\,
	datad => \sPC_NEXT[4]~97_combout\,
	combout => \sPC_NEXT[28]~86_combout\);

-- Location: LCCOMB_X29_Y13_N22
\sPC_4[28]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_4[28]~52_combout\ = (sPC(28) & (\sPC_4[27]~51\ $ (GND))) # (!sPC(28) & (!\sPC_4[27]~51\ & VCC))
-- \sPC_4[28]~53\ = CARRY((sPC(28) & !\sPC_4[27]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sPC(28),
	datad => VCC,
	cin => \sPC_4[27]~51\,
	combout => \sPC_4[28]~52_combout\,
	cout => \sPC_4[28]~53\);

-- Location: IOIBUF_X16_Y0_N1
\iSXT[28]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iSXT(28),
	o => \iSXT[28]~input_o\);

-- Location: LCCOMB_X27_Y13_N22
\sPC_BRANCH[28]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_BRANCH[28]~57_combout\ = ((\sPC_NEXT[28]~87_combout\ $ (\iSXT[28]~input_o\ $ (!\sPC_BRANCH[27]~56\)))) # (GND)
-- \sPC_BRANCH[28]~58\ = CARRY((\sPC_NEXT[28]~87_combout\ & ((\iSXT[28]~input_o\) # (!\sPC_BRANCH[27]~56\))) # (!\sPC_NEXT[28]~87_combout\ & (\iSXT[28]~input_o\ & !\sPC_BRANCH[27]~56\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sPC_NEXT[28]~87_combout\,
	datab => \iSXT[28]~input_o\,
	datad => VCC,
	cin => \sPC_BRANCH[27]~56\,
	combout => \sPC_BRANCH[28]~57_combout\,
	cout => \sPC_BRANCH[28]~58\);

-- Location: LCCOMB_X26_Y13_N0
\sPC_NEXT[28]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[28]~85_combout\ = (!\iPC_SEL[1]~input_o\ & (!\sPC_NEXT[18]~18_combout\ & (\iPC_SEL[0]~input_o\ & \sPC_BRANCH[28]~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iPC_SEL[1]~input_o\,
	datab => \sPC_NEXT[18]~18_combout\,
	datac => \iPC_SEL[0]~input_o\,
	datad => \sPC_BRANCH[28]~57_combout\,
	combout => \sPC_NEXT[28]~85_combout\);

-- Location: LCCOMB_X26_Y13_N16
\sPC_NEXT[28]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[28]~87_combout\ = (\sPC_NEXT[28]~86_combout\) # ((\sPC_NEXT[28]~85_combout\) # ((\sPC_4[28]~52_combout\ & \sPC_NEXT[4]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sPC_NEXT[28]~86_combout\,
	datab => \sPC_4[28]~52_combout\,
	datac => \sPC_NEXT[4]~19_combout\,
	datad => \sPC_NEXT[28]~85_combout\,
	combout => \sPC_NEXT[28]~87_combout\);

-- Location: FF_X26_Y13_N17
\sPC[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \sPC_NEXT[28]~87_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sPC(28));

-- Location: LCCOMB_X29_Y13_N24
\sPC_4[29]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_4[29]~54_combout\ = (sPC(29) & (!\sPC_4[28]~53\)) # (!sPC(29) & ((\sPC_4[28]~53\) # (GND)))
-- \sPC_4[29]~55\ = CARRY((!\sPC_4[28]~53\) # (!sPC(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sPC(29),
	datad => VCC,
	cin => \sPC_4[28]~53\,
	combout => \sPC_4[29]~54_combout\,
	cout => \sPC_4[29]~55\);

-- Location: IOIBUF_X0_Y9_N8
\iSXT[29]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iSXT(29),
	o => \iSXT[29]~input_o\);

-- Location: LCCOMB_X27_Y13_N24
\sPC_BRANCH[29]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_BRANCH[29]~59_combout\ = (\iSXT[29]~input_o\ & ((\sPC_NEXT[29]~90_combout\ & (\sPC_BRANCH[28]~58\ & VCC)) # (!\sPC_NEXT[29]~90_combout\ & (!\sPC_BRANCH[28]~58\)))) # (!\iSXT[29]~input_o\ & ((\sPC_NEXT[29]~90_combout\ & (!\sPC_BRANCH[28]~58\)) # 
-- (!\sPC_NEXT[29]~90_combout\ & ((\sPC_BRANCH[28]~58\) # (GND)))))
-- \sPC_BRANCH[29]~60\ = CARRY((\iSXT[29]~input_o\ & (!\sPC_NEXT[29]~90_combout\ & !\sPC_BRANCH[28]~58\)) # (!\iSXT[29]~input_o\ & ((!\sPC_BRANCH[28]~58\) # (!\sPC_NEXT[29]~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iSXT[29]~input_o\,
	datab => \sPC_NEXT[29]~90_combout\,
	datad => VCC,
	cin => \sPC_BRANCH[28]~58\,
	combout => \sPC_BRANCH[29]~59_combout\,
	cout => \sPC_BRANCH[29]~60\);

-- Location: LCCOMB_X30_Y14_N30
\sPC_NEXT[29]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[29]~88_combout\ = (!\iPC_SEL[1]~input_o\ & (!\sPC_NEXT[18]~18_combout\ & (\iPC_SEL[0]~input_o\ & \sPC_BRANCH[29]~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iPC_SEL[1]~input_o\,
	datab => \sPC_NEXT[18]~18_combout\,
	datac => \iPC_SEL[0]~input_o\,
	datad => \sPC_BRANCH[29]~59_combout\,
	combout => \sPC_NEXT[29]~88_combout\);

-- Location: IOIBUF_X50_Y2_N15
\iJT[29]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iJT(29),
	o => \iJT[29]~input_o\);

-- Location: LCCOMB_X30_Y13_N20
\sPC_NEXT[29]~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[29]~89_combout\ = (\sPC_NEXT[4]~97_combout\) # ((\sPC_NEXT[4]~40_combout\ & \iJT[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sPC_NEXT[4]~40_combout\,
	datac => \iJT[29]~input_o\,
	datad => \sPC_NEXT[4]~97_combout\,
	combout => \sPC_NEXT[29]~89_combout\);

-- Location: LCCOMB_X30_Y13_N4
\sPC_NEXT[29]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[29]~90_combout\ = (\sPC_NEXT[29]~88_combout\) # ((\sPC_NEXT[29]~89_combout\) # ((\sPC_NEXT[4]~19_combout\ & \sPC_4[29]~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sPC_NEXT[4]~19_combout\,
	datab => \sPC_4[29]~54_combout\,
	datac => \sPC_NEXT[29]~88_combout\,
	datad => \sPC_NEXT[29]~89_combout\,
	combout => \sPC_NEXT[29]~90_combout\);

-- Location: FF_X30_Y13_N5
\sPC[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \sPC_NEXT[29]~90_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sPC(29));

-- Location: LCCOMB_X29_Y13_N26
\sPC_4[30]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_4[30]~56_combout\ = (sPC(30) & (\sPC_4[29]~55\ $ (GND))) # (!sPC(30) & (!\sPC_4[29]~55\ & VCC))
-- \sPC_4[30]~57\ = CARRY((sPC(30) & !\sPC_4[29]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sPC(30),
	datad => VCC,
	cin => \sPC_4[29]~55\,
	combout => \sPC_4[30]~56_combout\,
	cout => \sPC_4[30]~57\);

-- Location: IOIBUF_X50_Y8_N22
\iJT[30]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iJT(30),
	o => \iJT[30]~input_o\);

-- Location: LCCOMB_X28_Y13_N26
\sPC_NEXT[30]~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[30]~91_combout\ = (\iJT[30]~input_o\ & (!\iPC_SEL[0]~input_o\ & \iPC_SEL[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iJT[30]~input_o\,
	datab => \iPC_SEL[0]~input_o\,
	datac => \iPC_SEL[1]~input_o\,
	combout => \sPC_NEXT[30]~91_combout\);

-- Location: LCCOMB_X28_Y13_N20
\sPC_NEXT[30]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[30]~92_combout\ = (!\iPC_SEL[1]~input_o\ & (\sPC_BRANCH[30]~61_combout\ & \iPC_SEL[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iPC_SEL[1]~input_o\,
	datac => \sPC_BRANCH[30]~61_combout\,
	datad => \iPC_SEL[0]~input_o\,
	combout => \sPC_NEXT[30]~92_combout\);

-- Location: LCCOMB_X28_Y13_N6
\sPC_NEXT[30]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[30]~94_combout\ = (\sPC_NEXT[30]~91_combout\) # ((\sPC_NEXT[30]~92_combout\) # ((\sPC_NEXT[30]~25_combout\ & \sPC_4[30]~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sPC_NEXT[30]~25_combout\,
	datab => \sPC_4[30]~56_combout\,
	datac => \sPC_NEXT[30]~91_combout\,
	datad => \sPC_NEXT[30]~92_combout\,
	combout => \sPC_NEXT[30]~94_combout\);

-- Location: LCCOMB_X27_Y13_N26
\sPC_BRANCH[30]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_BRANCH[30]~61_combout\ = (\sPC_BRANCH[29]~60\ & (\sPC_NEXT[30]~94_combout\ & (!\sPC_NEXT[18]~18_combout\ & VCC))) # (!\sPC_BRANCH[29]~60\ & ((((\sPC_NEXT[30]~94_combout\ & !\sPC_NEXT[18]~18_combout\)))))
-- \sPC_BRANCH[30]~62\ = CARRY((\sPC_NEXT[30]~94_combout\ & (!\sPC_NEXT[18]~18_combout\ & !\sPC_BRANCH[29]~60\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sPC_NEXT[30]~94_combout\,
	datab => \sPC_NEXT[18]~18_combout\,
	datad => VCC,
	cin => \sPC_BRANCH[29]~60\,
	combout => \sPC_BRANCH[30]~61_combout\,
	cout => \sPC_BRANCH[30]~62\);

-- Location: LCCOMB_X28_Y13_N10
\sPC_NEXT[30]~102\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[30]~102_combout\ = (\iPC_SEL[1]~input_o\ & (!\iPC_SEL[0]~input_o\ & ((\iJT[30]~input_o\)))) # (!\iPC_SEL[1]~input_o\ & (\iPC_SEL[0]~input_o\ & (\sPC_BRANCH[30]~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iPC_SEL[1]~input_o\,
	datab => \iPC_SEL[0]~input_o\,
	datac => \sPC_BRANCH[30]~61_combout\,
	datad => \iJT[30]~input_o\,
	combout => \sPC_NEXT[30]~102_combout\);

-- Location: LCCOMB_X28_Y13_N14
\sPC_NEXT[30]~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[30]~93_combout\ = (!\sPC_NEXT[18]~18_combout\ & ((\sPC_NEXT[30]~102_combout\) # ((\sPC_NEXT[30]~25_combout\ & \sPC_4[30]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sPC_NEXT[30]~25_combout\,
	datab => \sPC_4[30]~56_combout\,
	datac => \sPC_NEXT[18]~18_combout\,
	datad => \sPC_NEXT[30]~102_combout\,
	combout => \sPC_NEXT[30]~93_combout\);

-- Location: FF_X28_Y13_N15
\sPC[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \sPC_NEXT[30]~93_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sPC(30));

-- Location: IOIBUF_X0_Y9_N1
\iJT[31]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iJT(31),
	o => \iJT[31]~input_o\);

-- Location: LCCOMB_X29_Y13_N28
\sPC_4[31]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_4[31]~58_combout\ = \sPC_4[30]~57\ $ (sPC(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => sPC(31),
	cin => \sPC_4[30]~57\,
	combout => \sPC_4[31]~58_combout\);

-- Location: LCCOMB_X28_Y13_N8
\sPC_NEXT[31]~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[31]~95_combout\ = (\iPC_SEL[1]~input_o\ & ((\iPC_SEL[0]~input_o\) # ((\iJT[31]~input_o\)))) # (!\iPC_SEL[1]~input_o\ & (!\iPC_SEL[0]~input_o\ & ((\sPC_4[31]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iPC_SEL[1]~input_o\,
	datab => \iPC_SEL[0]~input_o\,
	datac => \iJT[31]~input_o\,
	datad => \sPC_4[31]~58_combout\,
	combout => \sPC_NEXT[31]~95_combout\);

-- Location: LCCOMB_X27_Y13_N28
\sPC_BRANCH[31]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_BRANCH[31]~63_combout\ = \sPC_BRANCH[30]~62\ $ (\sPC_NEXT[31]~96_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \sPC_NEXT[31]~96_combout\,
	cin => \sPC_BRANCH[30]~62\,
	combout => \sPC_BRANCH[31]~63_combout\);

-- Location: LCCOMB_X28_Y13_N24
\sPC_NEXT[31]~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sPC_NEXT[31]~96_combout\ = (\sPC_NEXT[18]~18_combout\) # ((\sPC_NEXT[31]~95_combout\) # ((\iPC_SEL[0]~input_o\ & \sPC_BRANCH[31]~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sPC_NEXT[18]~18_combout\,
	datab => \iPC_SEL[0]~input_o\,
	datac => \sPC_NEXT[31]~95_combout\,
	datad => \sPC_BRANCH[31]~63_combout\,
	combout => \sPC_NEXT[31]~96_combout\);

-- Location: FF_X28_Y13_N25
\sPC[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \sPC_NEXT[31]~96_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sPC(31));

-- Location: IOIBUF_X3_Y0_N1
\iSXT[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iSXT(0),
	o => \iSXT[0]~input_o\);

-- Location: IOIBUF_X0_Y3_N1
\iSXT[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iSXT(1),
	o => \iSXT[1]~input_o\);

-- Location: IOIBUF_X3_Y0_N15
\iSXT[30]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iSXT(30),
	o => \iSXT[30]~input_o\);

-- Location: IOIBUF_X6_Y0_N15
\iSXT[31]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iSXT(31),
	o => \iSXT[31]~input_o\);

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

ww_iPC(0) <= \iPC[0]~output_o\;

ww_iPC(1) <= \iPC[1]~output_o\;

ww_iPC(2) <= \iPC[2]~output_o\;

ww_iPC(3) <= \iPC[3]~output_o\;

ww_iPC(4) <= \iPC[4]~output_o\;

ww_iPC(5) <= \iPC[5]~output_o\;

ww_iPC(6) <= \iPC[6]~output_o\;

ww_iPC(7) <= \iPC[7]~output_o\;

ww_iPC(8) <= \iPC[8]~output_o\;

ww_iPC(9) <= \iPC[9]~output_o\;

ww_iPC(10) <= \iPC[10]~output_o\;

ww_iPC(11) <= \iPC[11]~output_o\;

ww_iPC(12) <= \iPC[12]~output_o\;

ww_iPC(13) <= \iPC[13]~output_o\;

ww_iPC(14) <= \iPC[14]~output_o\;

ww_iPC(15) <= \iPC[15]~output_o\;

ww_iPC(16) <= \iPC[16]~output_o\;

ww_iPC(17) <= \iPC[17]~output_o\;

ww_iPC(18) <= \iPC[18]~output_o\;

ww_iPC(19) <= \iPC[19]~output_o\;

ww_iPC(20) <= \iPC[20]~output_o\;

ww_iPC(21) <= \iPC[21]~output_o\;

ww_iPC(22) <= \iPC[22]~output_o\;

ww_iPC(23) <= \iPC[23]~output_o\;

ww_iPC(24) <= \iPC[24]~output_o\;

ww_iPC(25) <= \iPC[25]~output_o\;

ww_iPC(26) <= \iPC[26]~output_o\;

ww_iPC(27) <= \iPC[27]~output_o\;

ww_iPC(28) <= \iPC[28]~output_o\;

ww_iPC(29) <= \iPC[29]~output_o\;

ww_iPC(30) <= \iPC[30]~output_o\;

ww_iPC(31) <= \iPC[31]~output_o\;
END structure;


