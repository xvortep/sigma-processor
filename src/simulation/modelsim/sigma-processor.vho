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

-- DATE "05/05/2022 20:29:25"

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

ENTITY 	top IS
    PORT (
	iCLK : IN std_logic;
	iRST : IN std_logic;
	oZ : OUT std_logic_vector(31 DOWNTO 0)
	);
END top;

-- Design Ports Information
-- oZ[0]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oZ[1]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oZ[2]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oZ[3]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oZ[4]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oZ[5]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oZ[6]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oZ[7]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oZ[8]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oZ[9]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oZ[10]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oZ[11]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oZ[12]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oZ[13]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oZ[14]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oZ[15]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oZ[16]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oZ[17]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oZ[18]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oZ[19]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oZ[20]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oZ[21]	=>  Location: PIN_L10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oZ[22]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oZ[23]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oZ[24]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oZ[25]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oZ[26]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oZ[27]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oZ[28]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oZ[29]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oZ[30]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oZ[31]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iCLK	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iRST	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_iCLK : std_logic;
SIGNAL ww_iRST : std_logic;
SIGNAL ww_oZ : std_logic_vector(31 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \iRST~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \iCLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \oZ[0]~output_o\ : std_logic;
SIGNAL \oZ[1]~output_o\ : std_logic;
SIGNAL \oZ[2]~output_o\ : std_logic;
SIGNAL \oZ[3]~output_o\ : std_logic;
SIGNAL \oZ[4]~output_o\ : std_logic;
SIGNAL \oZ[5]~output_o\ : std_logic;
SIGNAL \oZ[6]~output_o\ : std_logic;
SIGNAL \oZ[7]~output_o\ : std_logic;
SIGNAL \oZ[8]~output_o\ : std_logic;
SIGNAL \oZ[9]~output_o\ : std_logic;
SIGNAL \oZ[10]~output_o\ : std_logic;
SIGNAL \oZ[11]~output_o\ : std_logic;
SIGNAL \oZ[12]~output_o\ : std_logic;
SIGNAL \oZ[13]~output_o\ : std_logic;
SIGNAL \oZ[14]~output_o\ : std_logic;
SIGNAL \oZ[15]~output_o\ : std_logic;
SIGNAL \oZ[16]~output_o\ : std_logic;
SIGNAL \oZ[17]~output_o\ : std_logic;
SIGNAL \oZ[18]~output_o\ : std_logic;
SIGNAL \oZ[19]~output_o\ : std_logic;
SIGNAL \oZ[20]~output_o\ : std_logic;
SIGNAL \oZ[21]~output_o\ : std_logic;
SIGNAL \oZ[22]~output_o\ : std_logic;
SIGNAL \oZ[23]~output_o\ : std_logic;
SIGNAL \oZ[24]~output_o\ : std_logic;
SIGNAL \oZ[25]~output_o\ : std_logic;
SIGNAL \oZ[26]~output_o\ : std_logic;
SIGNAL \oZ[27]~output_o\ : std_logic;
SIGNAL \oZ[28]~output_o\ : std_logic;
SIGNAL \oZ[29]~output_o\ : std_logic;
SIGNAL \oZ[30]~output_o\ : std_logic;
SIGNAL \oZ[31]~output_o\ : std_logic;
SIGNAL \iCLK~input_o\ : std_logic;
SIGNAL \iCLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \iRST~input_o\ : std_logic;
SIGNAL \iRST~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \prog_i|Equal0~0_combout\ : std_logic;
SIGNAL \cu_i|Mux18~0_combout\ : std_logic;
SIGNAL \cu_i|Mux25~0_combout\ : std_logic;
SIGNAL \cu_i|Mux27~0_combout\ : std_logic;
SIGNAL \cu_i|Mux26~0_combout\ : std_logic;
SIGNAL \sB[0]~7_combout\ : std_logic;
SIGNAL \sB[0]~62_combout\ : std_logic;
SIGNAL \sB[0]~6_combout\ : std_logic;
SIGNAL \sRA2[1]~0_combout\ : std_logic;
SIGNAL \cu_i|Mux35~2_combout\ : std_logic;
SIGNAL \Mux31~6_combout\ : std_logic;
SIGNAL \cu_i|Mux34~0_combout\ : std_logic;
SIGNAL \alu_i|Mux30~3_combout\ : std_logic;
SIGNAL \alu_i|Mux30~10_combout\ : std_logic;
SIGNAL \prog_i|Equal3~0_combout\ : std_logic;
SIGNAL \prog_i|Equal0~1_combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \regf_i|Mux30~0_combout\ : std_logic;
SIGNAL \prog_i|oQ[18]~1_combout\ : std_logic;
SIGNAL \regf_i|Mux30~1_combout\ : std_logic;
SIGNAL \regf_i|Mux30~2_combout\ : std_logic;
SIGNAL \regf_i|Mux30~3_combout\ : std_logic;
SIGNAL \prog_i|oQ[17]~2_combout\ : std_logic;
SIGNAL \regf_i|Mux61~0_combout\ : std_logic;
SIGNAL \regf_i|Mux61~1_combout\ : std_logic;
SIGNAL \prog_i|oQ[17]~0_combout\ : std_logic;
SIGNAL \regf_i|Mux61~2_combout\ : std_logic;
SIGNAL \cu_i|Mux28~0_combout\ : std_logic;
SIGNAL \sRA2[2]~1_combout\ : std_logic;
SIGNAL \sRA2[0]~2_combout\ : std_logic;
SIGNAL \regf_i|Mux93~0_combout\ : std_logic;
SIGNAL \regf_i|Mux30~4_combout\ : std_logic;
SIGNAL \regf_i|Mux93~1_combout\ : std_logic;
SIGNAL \regf_i|Mux93~2_combout\ : std_logic;
SIGNAL \regf_i|Mux93~3_combout\ : std_logic;
SIGNAL \sB[1]~12_combout\ : std_logic;
SIGNAL \sB[1]~13_combout\ : std_logic;
SIGNAL \regf_i|Mux62~0_combout\ : std_logic;
SIGNAL \regf_i|Mux62~1_combout\ : std_logic;
SIGNAL \regf_i|Mux62~2_combout\ : std_logic;
SIGNAL \alu_i|Add1~1\ : std_logic;
SIGNAL \alu_i|Add1~2_combout\ : std_logic;
SIGNAL \alu_i|Add0~1\ : std_logic;
SIGNAL \alu_i|Add0~2_combout\ : std_logic;
SIGNAL \alu_i|Mux30~9_combout\ : std_logic;
SIGNAL \prog_i|oQ[4]~4_combout\ : std_logic;
SIGNAL \prog_i|oQ[3]~3_combout\ : std_logic;
SIGNAL \regf_i|r4_i|sREG[5]~feeder_combout\ : std_logic;
SIGNAL \regf_i|Mux57~0_combout\ : std_logic;
SIGNAL \regf_i|Mux57~1_combout\ : std_logic;
SIGNAL \regf_i|Mux57~2_combout\ : std_logic;
SIGNAL \sB[4]~21_combout\ : std_logic;
SIGNAL \regf_i|Mux90~0_combout\ : std_logic;
SIGNAL \regf_i|Mux90~1_combout\ : std_logic;
SIGNAL \regf_i|Mux90~2_combout\ : std_logic;
SIGNAL \sB[4]~22_combout\ : std_logic;
SIGNAL \sB[4]~23_combout\ : std_logic;
SIGNAL \regf_i|Mux91~1_combout\ : std_logic;
SIGNAL \regf_i|Mux91~2_combout\ : std_logic;
SIGNAL \regf_i|Mux91~0_combout\ : std_logic;
SIGNAL \sB[3]~19_combout\ : std_logic;
SIGNAL \sB[3]~20_combout\ : std_logic;
SIGNAL \sB[2]~14_combout\ : std_logic;
SIGNAL \sB[2]~15_combout\ : std_logic;
SIGNAL \sB[2]~16_combout\ : std_logic;
SIGNAL \sB[2]~17_combout\ : std_logic;
SIGNAL \sB[2]~18_combout\ : std_logic;
SIGNAL \alu_i|Add1~3\ : std_logic;
SIGNAL \alu_i|Add1~4_combout\ : std_logic;
SIGNAL \alu_i|Add0~3\ : std_logic;
SIGNAL \alu_i|Add0~4_combout\ : std_logic;
SIGNAL \alu_i|Mux29~0_combout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Mux29~1_combout\ : std_logic;
SIGNAL \regf_i|Mux60~0_combout\ : std_logic;
SIGNAL \regf_i|Mux60~1_combout\ : std_logic;
SIGNAL \regf_i|Mux60~2_combout\ : std_logic;
SIGNAL \alu_i|Add0~5\ : std_logic;
SIGNAL \alu_i|Add0~6_combout\ : std_logic;
SIGNAL \alu_i|Add1~5\ : std_logic;
SIGNAL \alu_i|Add1~6_combout\ : std_logic;
SIGNAL \alu_i|Mux28~4_combout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \Mux28~1_combout\ : std_logic;
SIGNAL \regf_i|Mux59~0_combout\ : std_logic;
SIGNAL \regf_i|Mux59~1_combout\ : std_logic;
SIGNAL \regf_i|Mux59~2_combout\ : std_logic;
SIGNAL \alu_i|Add1~7\ : std_logic;
SIGNAL \alu_i|Add1~8_combout\ : std_logic;
SIGNAL \alu_i|Add0~7\ : std_logic;
SIGNAL \alu_i|Add0~8_combout\ : std_logic;
SIGNAL \alu_i|Mux27~4_combout\ : std_logic;
SIGNAL \alu_i|Mux27~5_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \regf_i|Mux58~0_combout\ : std_logic;
SIGNAL \regf_i|Mux58~1_combout\ : std_logic;
SIGNAL \regf_i|Mux58~2_combout\ : std_logic;
SIGNAL \alu_i|Add0~9\ : std_logic;
SIGNAL \alu_i|Add0~10_combout\ : std_logic;
SIGNAL \alu_i|Mux26~5_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \regf_i|Mux89~1_combout\ : std_logic;
SIGNAL \regf_i|Mux89~2_combout\ : std_logic;
SIGNAL \regf_i|Mux89~0_combout\ : std_logic;
SIGNAL \sB[5]~24_combout\ : std_logic;
SIGNAL \sB[5]~25_combout\ : std_logic;
SIGNAL \alu_i|Add1~9\ : std_logic;
SIGNAL \alu_i|Add1~10_combout\ : std_logic;
SIGNAL \alu_i|Mux26~4_combout\ : std_logic;
SIGNAL \Mux31~2_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \regf_i|Mux87~0_combout\ : std_logic;
SIGNAL \regf_i|r2_i|sREG[7]~feeder_combout\ : std_logic;
SIGNAL \regf_i|r0_i|sREG[7]~feeder_combout\ : std_logic;
SIGNAL \regf_i|Mux87~1_combout\ : std_logic;
SIGNAL \regf_i|Mux87~2_combout\ : std_logic;
SIGNAL \sB[7]~28_combout\ : std_logic;
SIGNAL \sB[7]~29_combout\ : std_logic;
SIGNAL \regf_i|Mux55~0_combout\ : std_logic;
SIGNAL \regf_i|Mux55~1_combout\ : std_logic;
SIGNAL \regf_i|Mux55~2_combout\ : std_logic;
SIGNAL \regf_i|Mux56~0_combout\ : std_logic;
SIGNAL \regf_i|Mux56~1_combout\ : std_logic;
SIGNAL \regf_i|Mux56~2_combout\ : std_logic;
SIGNAL \alu_i|Add1~11\ : std_logic;
SIGNAL \alu_i|Add1~12_combout\ : std_logic;
SIGNAL \alu_i|Add0~11\ : std_logic;
SIGNAL \alu_i|Add0~12_combout\ : std_logic;
SIGNAL \alu_i|Mux25~0_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \regf_i|Mux88~0_combout\ : std_logic;
SIGNAL \regf_i|Mux88~1_combout\ : std_logic;
SIGNAL \regf_i|Mux88~2_combout\ : std_logic;
SIGNAL \sB[6]~26_combout\ : std_logic;
SIGNAL \sB[6]~27_combout\ : std_logic;
SIGNAL \alu_i|Add0~13\ : std_logic;
SIGNAL \alu_i|Add0~14_combout\ : std_logic;
SIGNAL \alu_i|Add1~13\ : std_logic;
SIGNAL \alu_i|Add1~14_combout\ : std_logic;
SIGNAL \alu_i|Mux24~0_combout\ : std_logic;
SIGNAL \alu_i|Mux28~5_combout\ : std_logic;
SIGNAL \Mux31~3_combout\ : std_logic;
SIGNAL \Mux31~4_combout\ : std_logic;
SIGNAL \Mux31~5_combout\ : std_logic;
SIGNAL \sB[0]~8_combout\ : std_logic;
SIGNAL \sB[0]~9_combout\ : std_logic;
SIGNAL \sB[0]~10_combout\ : std_logic;
SIGNAL \sB[0]~11_combout\ : std_logic;
SIGNAL \alu_i|Add0~0_combout\ : std_logic;
SIGNAL \alu_i|Add1~0_combout\ : std_logic;
SIGNAL \alu_i|Mux31~0_combout\ : std_logic;
SIGNAL \alu_i|Mux31~1_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \regf_i|Mux86~0_combout\ : std_logic;
SIGNAL \regf_i|r0_i|sREG[8]~feeder_combout\ : std_logic;
SIGNAL \regf_i|Mux86~1_combout\ : std_logic;
SIGNAL \regf_i|Mux86~2_combout\ : std_logic;
SIGNAL \sB[8]~30_combout\ : std_logic;
SIGNAL \sB[8]~31_combout\ : std_logic;
SIGNAL \regf_i|Mux54~0_combout\ : std_logic;
SIGNAL \regf_i|Mux54~1_combout\ : std_logic;
SIGNAL \regf_i|Mux54~2_combout\ : std_logic;
SIGNAL \alu_i|Add1~15\ : std_logic;
SIGNAL \alu_i|Add1~16_combout\ : std_logic;
SIGNAL \alu_i|Add0~15\ : std_logic;
SIGNAL \alu_i|Add0~16_combout\ : std_logic;
SIGNAL \alu_i|Mux23~0_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \regf_i|Mux53~0_combout\ : std_logic;
SIGNAL \regf_i|Mux53~1_combout\ : std_logic;
SIGNAL \regf_i|Mux53~2_combout\ : std_logic;
SIGNAL \regf_i|Mux85~0_combout\ : std_logic;
SIGNAL \regf_i|Mux85~1_combout\ : std_logic;
SIGNAL \regf_i|Mux85~2_combout\ : std_logic;
SIGNAL \sB[9]~32_combout\ : std_logic;
SIGNAL \sB[9]~33_combout\ : std_logic;
SIGNAL \alu_i|Add1~17\ : std_logic;
SIGNAL \alu_i|Add1~18_combout\ : std_logic;
SIGNAL \alu_i|Add0~17\ : std_logic;
SIGNAL \alu_i|Add0~18_combout\ : std_logic;
SIGNAL \alu_i|Mux22~0_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \regf_i|Mux84~0_combout\ : std_logic;
SIGNAL \regf_i|r0_i|sREG[10]~feeder_combout\ : std_logic;
SIGNAL \regf_i|Mux84~1_combout\ : std_logic;
SIGNAL \regf_i|Mux84~2_combout\ : std_logic;
SIGNAL \sB[10]~34_combout\ : std_logic;
SIGNAL \sB[10]~35_combout\ : std_logic;
SIGNAL \regf_i|Mux52~0_combout\ : std_logic;
SIGNAL \regf_i|Mux52~1_combout\ : std_logic;
SIGNAL \regf_i|Mux52~2_combout\ : std_logic;
SIGNAL \alu_i|Add0~19\ : std_logic;
SIGNAL \alu_i|Add0~20_combout\ : std_logic;
SIGNAL \alu_i|Add1~19\ : std_logic;
SIGNAL \alu_i|Add1~20_combout\ : std_logic;
SIGNAL \alu_i|Mux21~0_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \regf_i|r2_i|sREG[11]~feeder_combout\ : std_logic;
SIGNAL \regf_i|r0_i|sREG[11]~feeder_combout\ : std_logic;
SIGNAL \regf_i|Mux83~1_combout\ : std_logic;
SIGNAL \regf_i|Mux83~2_combout\ : std_logic;
SIGNAL \regf_i|Mux83~0_combout\ : std_logic;
SIGNAL \sB[11]~36_combout\ : std_logic;
SIGNAL \sB[11]~37_combout\ : std_logic;
SIGNAL \regf_i|Mux51~0_combout\ : std_logic;
SIGNAL \regf_i|Mux51~1_combout\ : std_logic;
SIGNAL \regf_i|Mux51~2_combout\ : std_logic;
SIGNAL \alu_i|Add1~21\ : std_logic;
SIGNAL \alu_i|Add1~22_combout\ : std_logic;
SIGNAL \alu_i|Add0~21\ : std_logic;
SIGNAL \alu_i|Add0~22_combout\ : std_logic;
SIGNAL \alu_i|Mux20~0_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \regf_i|r2_i|sREG[12]~feeder_combout\ : std_logic;
SIGNAL \regf_i|r0_i|sREG[12]~feeder_combout\ : std_logic;
SIGNAL \regf_i|Mux50~0_combout\ : std_logic;
SIGNAL \regf_i|Mux50~1_combout\ : std_logic;
SIGNAL \regf_i|Mux50~2_combout\ : std_logic;
SIGNAL \regf_i|Mux82~0_combout\ : std_logic;
SIGNAL \regf_i|Mux82~1_combout\ : std_logic;
SIGNAL \regf_i|Mux82~2_combout\ : std_logic;
SIGNAL \sB[12]~38_combout\ : std_logic;
SIGNAL \sB[12]~39_combout\ : std_logic;
SIGNAL \alu_i|Add1~23\ : std_logic;
SIGNAL \alu_i|Add1~24_combout\ : std_logic;
SIGNAL \alu_i|Add0~23\ : std_logic;
SIGNAL \alu_i|Add0~24_combout\ : std_logic;
SIGNAL \alu_i|Mux19~0_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \regf_i|r0_i|sREG[13]~feeder_combout\ : std_logic;
SIGNAL \regf_i|Mux49~0_combout\ : std_logic;
SIGNAL \regf_i|Mux49~1_combout\ : std_logic;
SIGNAL \regf_i|Mux49~2_combout\ : std_logic;
SIGNAL \regf_i|Mux81~0_combout\ : std_logic;
SIGNAL \regf_i|Mux81~1_combout\ : std_logic;
SIGNAL \regf_i|Mux81~2_combout\ : std_logic;
SIGNAL \sB[13]~40_combout\ : std_logic;
SIGNAL \sB[13]~41_combout\ : std_logic;
SIGNAL \alu_i|Add1~25\ : std_logic;
SIGNAL \alu_i|Add1~26_combout\ : std_logic;
SIGNAL \alu_i|Add0~25\ : std_logic;
SIGNAL \alu_i|Add0~26_combout\ : std_logic;
SIGNAL \alu_i|Mux18~0_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \regf_i|Mux80~0_combout\ : std_logic;
SIGNAL \regf_i|Mux80~1_combout\ : std_logic;
SIGNAL \regf_i|Mux80~2_combout\ : std_logic;
SIGNAL \sB[14]~42_combout\ : std_logic;
SIGNAL \sB[14]~43_combout\ : std_logic;
SIGNAL \regf_i|Mux48~0_combout\ : std_logic;
SIGNAL \regf_i|Mux48~1_combout\ : std_logic;
SIGNAL \regf_i|Mux48~2_combout\ : std_logic;
SIGNAL \alu_i|Add1~27\ : std_logic;
SIGNAL \alu_i|Add1~28_combout\ : std_logic;
SIGNAL \alu_i|Add0~27\ : std_logic;
SIGNAL \alu_i|Add0~28_combout\ : std_logic;
SIGNAL \alu_i|Mux17~0_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \regf_i|Mux47~0_combout\ : std_logic;
SIGNAL \regf_i|Mux47~1_combout\ : std_logic;
SIGNAL \regf_i|Mux47~2_combout\ : std_logic;
SIGNAL \regf_i|Mux79~0_combout\ : std_logic;
SIGNAL \regf_i|Mux79~1_combout\ : std_logic;
SIGNAL \regf_i|Mux79~2_combout\ : std_logic;
SIGNAL \sB[15]~44_combout\ : std_logic;
SIGNAL \sB[15]~45_combout\ : std_logic;
SIGNAL \alu_i|Add0~29\ : std_logic;
SIGNAL \alu_i|Add0~30_combout\ : std_logic;
SIGNAL \alu_i|Add1~29\ : std_logic;
SIGNAL \alu_i|Add1~30_combout\ : std_logic;
SIGNAL \alu_i|Mux16~0_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \regf_i|Mux78~0_combout\ : std_logic;
SIGNAL \regf_i|Mux78~1_combout\ : std_logic;
SIGNAL \regf_i|Mux78~2_combout\ : std_logic;
SIGNAL \sB[16]~46_combout\ : std_logic;
SIGNAL \regf_i|Mux46~0_combout\ : std_logic;
SIGNAL \regf_i|Mux46~1_combout\ : std_logic;
SIGNAL \regf_i|Mux46~2_combout\ : std_logic;
SIGNAL \alu_i|Add0~31\ : std_logic;
SIGNAL \alu_i|Add0~32_combout\ : std_logic;
SIGNAL \alu_i|Add1~31\ : std_logic;
SIGNAL \alu_i|Add1~32_combout\ : std_logic;
SIGNAL \alu_i|Mux15~0_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \regf_i|Mux45~0_combout\ : std_logic;
SIGNAL \regf_i|Mux45~1_combout\ : std_logic;
SIGNAL \regf_i|Mux45~2_combout\ : std_logic;
SIGNAL \regf_i|Mux77~0_combout\ : std_logic;
SIGNAL \regf_i|Mux77~1_combout\ : std_logic;
SIGNAL \regf_i|Mux77~2_combout\ : std_logic;
SIGNAL \sB[17]~47_combout\ : std_logic;
SIGNAL \alu_i|Add1~33\ : std_logic;
SIGNAL \alu_i|Add1~34_combout\ : std_logic;
SIGNAL \alu_i|Add0~33\ : std_logic;
SIGNAL \alu_i|Add0~34_combout\ : std_logic;
SIGNAL \alu_i|Mux14~0_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \regf_i|Mux76~0_combout\ : std_logic;
SIGNAL \regf_i|Mux76~1_combout\ : std_logic;
SIGNAL \regf_i|Mux76~2_combout\ : std_logic;
SIGNAL \sB[18]~48_combout\ : std_logic;
SIGNAL \regf_i|Mux44~0_combout\ : std_logic;
SIGNAL \regf_i|Mux44~1_combout\ : std_logic;
SIGNAL \regf_i|Mux44~2_combout\ : std_logic;
SIGNAL \alu_i|Add1~35\ : std_logic;
SIGNAL \alu_i|Add1~36_combout\ : std_logic;
SIGNAL \alu_i|Add0~35\ : std_logic;
SIGNAL \alu_i|Add0~36_combout\ : std_logic;
SIGNAL \alu_i|Mux13~0_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \regf_i|Mux75~0_combout\ : std_logic;
SIGNAL \regf_i|Mux75~1_combout\ : std_logic;
SIGNAL \regf_i|Mux75~2_combout\ : std_logic;
SIGNAL \sB[19]~49_combout\ : std_logic;
SIGNAL \regf_i|Mux43~0_combout\ : std_logic;
SIGNAL \regf_i|Mux43~1_combout\ : std_logic;
SIGNAL \regf_i|Mux43~2_combout\ : std_logic;
SIGNAL \alu_i|Add1~37\ : std_logic;
SIGNAL \alu_i|Add1~38_combout\ : std_logic;
SIGNAL \alu_i|Add0~37\ : std_logic;
SIGNAL \alu_i|Add0~38_combout\ : std_logic;
SIGNAL \alu_i|Mux12~0_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \regf_i|Mux74~0_combout\ : std_logic;
SIGNAL \regf_i|Mux74~1_combout\ : std_logic;
SIGNAL \regf_i|Mux74~2_combout\ : std_logic;
SIGNAL \sB[20]~50_combout\ : std_logic;
SIGNAL \regf_i|Mux42~0_combout\ : std_logic;
SIGNAL \regf_i|Mux42~1_combout\ : std_logic;
SIGNAL \regf_i|Mux42~2_combout\ : std_logic;
SIGNAL \alu_i|Add1~39\ : std_logic;
SIGNAL \alu_i|Add1~40_combout\ : std_logic;
SIGNAL \alu_i|Add0~39\ : std_logic;
SIGNAL \alu_i|Add0~40_combout\ : std_logic;
SIGNAL \alu_i|Mux11~0_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \regf_i|Mux73~0_combout\ : std_logic;
SIGNAL \regf_i|r0_i|sREG[21]~feeder_combout\ : std_logic;
SIGNAL \regf_i|Mux73~1_combout\ : std_logic;
SIGNAL \regf_i|Mux73~2_combout\ : std_logic;
SIGNAL \sB[21]~51_combout\ : std_logic;
SIGNAL \regf_i|Mux41~0_combout\ : std_logic;
SIGNAL \regf_i|Mux41~1_combout\ : std_logic;
SIGNAL \regf_i|Mux41~2_combout\ : std_logic;
SIGNAL \alu_i|Add1~41\ : std_logic;
SIGNAL \alu_i|Add1~42_combout\ : std_logic;
SIGNAL \alu_i|Add0~41\ : std_logic;
SIGNAL \alu_i|Add0~42_combout\ : std_logic;
SIGNAL \alu_i|Mux10~0_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \regf_i|Mux40~0_combout\ : std_logic;
SIGNAL \regf_i|Mux40~1_combout\ : std_logic;
SIGNAL \regf_i|Mux40~2_combout\ : std_logic;
SIGNAL \regf_i|Mux72~0_combout\ : std_logic;
SIGNAL \regf_i|Mux72~1_combout\ : std_logic;
SIGNAL \regf_i|Mux72~2_combout\ : std_logic;
SIGNAL \sB[22]~52_combout\ : std_logic;
SIGNAL \alu_i|Add0~43\ : std_logic;
SIGNAL \alu_i|Add0~44_combout\ : std_logic;
SIGNAL \alu_i|Add1~43\ : std_logic;
SIGNAL \alu_i|Add1~44_combout\ : std_logic;
SIGNAL \alu_i|Mux9~0_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \regf_i|r2_i|sREG[23]~feeder_combout\ : std_logic;
SIGNAL \regf_i|Mux39~0_combout\ : std_logic;
SIGNAL \regf_i|Mux39~1_combout\ : std_logic;
SIGNAL \regf_i|Mux39~2_combout\ : std_logic;
SIGNAL \regf_i|Mux71~0_combout\ : std_logic;
SIGNAL \regf_i|Mux71~1_combout\ : std_logic;
SIGNAL \regf_i|Mux71~2_combout\ : std_logic;
SIGNAL \sB[23]~53_combout\ : std_logic;
SIGNAL \alu_i|Add1~45\ : std_logic;
SIGNAL \alu_i|Add1~46_combout\ : std_logic;
SIGNAL \alu_i|Add0~45\ : std_logic;
SIGNAL \alu_i|Add0~46_combout\ : std_logic;
SIGNAL \alu_i|Mux8~0_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \regf_i|Mux38~0_combout\ : std_logic;
SIGNAL \regf_i|Mux38~1_combout\ : std_logic;
SIGNAL \regf_i|Mux38~2_combout\ : std_logic;
SIGNAL \regf_i|Mux70~0_combout\ : std_logic;
SIGNAL \regf_i|Mux70~1_combout\ : std_logic;
SIGNAL \regf_i|Mux70~2_combout\ : std_logic;
SIGNAL \sB[24]~54_combout\ : std_logic;
SIGNAL \alu_i|Add1~47\ : std_logic;
SIGNAL \alu_i|Add1~48_combout\ : std_logic;
SIGNAL \alu_i|Add0~47\ : std_logic;
SIGNAL \alu_i|Add0~48_combout\ : std_logic;
SIGNAL \alu_i|Mux7~0_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \regf_i|Mux69~1_combout\ : std_logic;
SIGNAL \regf_i|Mux69~2_combout\ : std_logic;
SIGNAL \regf_i|r6_i|sREG[25]~feeder_combout\ : std_logic;
SIGNAL \regf_i|Mux69~0_combout\ : std_logic;
SIGNAL \sB[25]~55_combout\ : std_logic;
SIGNAL \regf_i|Mux37~0_combout\ : std_logic;
SIGNAL \regf_i|Mux37~1_combout\ : std_logic;
SIGNAL \regf_i|Mux37~2_combout\ : std_logic;
SIGNAL \alu_i|Add0~49\ : std_logic;
SIGNAL \alu_i|Add0~50_combout\ : std_logic;
SIGNAL \alu_i|Add1~49\ : std_logic;
SIGNAL \alu_i|Add1~50_combout\ : std_logic;
SIGNAL \alu_i|Mux6~0_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \regf_i|Mux36~0_combout\ : std_logic;
SIGNAL \regf_i|Mux36~1_combout\ : std_logic;
SIGNAL \regf_i|Mux36~2_combout\ : std_logic;
SIGNAL \regf_i|Mux68~0_combout\ : std_logic;
SIGNAL \regf_i|Mux68~1_combout\ : std_logic;
SIGNAL \regf_i|Mux68~2_combout\ : std_logic;
SIGNAL \sB[26]~56_combout\ : std_logic;
SIGNAL \alu_i|Add0~51\ : std_logic;
SIGNAL \alu_i|Add0~52_combout\ : std_logic;
SIGNAL \alu_i|Add1~51\ : std_logic;
SIGNAL \alu_i|Add1~52_combout\ : std_logic;
SIGNAL \alu_i|Mux5~0_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \regf_i|r4_i|sREG[27]~feeder_combout\ : std_logic;
SIGNAL \regf_i|Mux67~0_combout\ : std_logic;
SIGNAL \regf_i|Mux67~1_combout\ : std_logic;
SIGNAL \regf_i|Mux67~2_combout\ : std_logic;
SIGNAL \sB[27]~57_combout\ : std_logic;
SIGNAL \regf_i|Mux35~0_combout\ : std_logic;
SIGNAL \regf_i|Mux35~1_combout\ : std_logic;
SIGNAL \regf_i|Mux35~2_combout\ : std_logic;
SIGNAL \alu_i|Add1~53\ : std_logic;
SIGNAL \alu_i|Add1~54_combout\ : std_logic;
SIGNAL \alu_i|Add0~53\ : std_logic;
SIGNAL \alu_i|Add0~54_combout\ : std_logic;
SIGNAL \alu_i|Mux4~0_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \regf_i|Mux66~0_combout\ : std_logic;
SIGNAL \regf_i|Mux66~1_combout\ : std_logic;
SIGNAL \regf_i|Mux66~2_combout\ : std_logic;
SIGNAL \sB[28]~58_combout\ : std_logic;
SIGNAL \regf_i|Mux34~0_combout\ : std_logic;
SIGNAL \regf_i|Mux34~1_combout\ : std_logic;
SIGNAL \regf_i|Mux34~2_combout\ : std_logic;
SIGNAL \alu_i|Add0~55\ : std_logic;
SIGNAL \alu_i|Add0~56_combout\ : std_logic;
SIGNAL \alu_i|Add1~55\ : std_logic;
SIGNAL \alu_i|Add1~56_combout\ : std_logic;
SIGNAL \alu_i|Mux3~0_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \regf_i|Mux65~0_combout\ : std_logic;
SIGNAL \regf_i|Mux65~1_combout\ : std_logic;
SIGNAL \regf_i|Mux65~2_combout\ : std_logic;
SIGNAL \sB[29]~59_combout\ : std_logic;
SIGNAL \regf_i|Mux33~0_combout\ : std_logic;
SIGNAL \regf_i|Mux33~1_combout\ : std_logic;
SIGNAL \regf_i|Mux33~2_combout\ : std_logic;
SIGNAL \alu_i|Add1~57\ : std_logic;
SIGNAL \alu_i|Add1~58_combout\ : std_logic;
SIGNAL \alu_i|Add0~57\ : std_logic;
SIGNAL \alu_i|Add0~58_combout\ : std_logic;
SIGNAL \alu_i|Mux2~0_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \regf_i|r4_i|sREG[30]~feeder_combout\ : std_logic;
SIGNAL \regf_i|Mux32~0_combout\ : std_logic;
SIGNAL \regf_i|Mux32~1_combout\ : std_logic;
SIGNAL \regf_i|Mux32~2_combout\ : std_logic;
SIGNAL \alu_i|Add1~59\ : std_logic;
SIGNAL \alu_i|Add1~60_combout\ : std_logic;
SIGNAL \alu_i|Mux1~4_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \regf_i|Mux64~1_combout\ : std_logic;
SIGNAL \regf_i|Mux64~2_combout\ : std_logic;
SIGNAL \regf_i|Mux64~0_combout\ : std_logic;
SIGNAL \sB[30]~60_combout\ : std_logic;
SIGNAL \alu_i|Add0~59\ : std_logic;
SIGNAL \alu_i|Add0~60_combout\ : std_logic;
SIGNAL \alu_i|Mux1~5_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \regf_i|r0_i|sREG[31]~feeder_combout\ : std_logic;
SIGNAL \regf_i|Mux63~1_combout\ : std_logic;
SIGNAL \regf_i|Mux63~2_combout\ : std_logic;
SIGNAL \regf_i|Mux63~0_combout\ : std_logic;
SIGNAL \sB[31]~61_combout\ : std_logic;
SIGNAL \regf_i|Mux31~0_combout\ : std_logic;
SIGNAL \regf_i|Mux31~1_combout\ : std_logic;
SIGNAL \regf_i|Mux31~2_combout\ : std_logic;
SIGNAL \alu_i|Add0~61\ : std_logic;
SIGNAL \alu_i|Add0~62_combout\ : std_logic;
SIGNAL \alu_i|Add1~61\ : std_logic;
SIGNAL \alu_i|Add1~62_combout\ : std_logic;
SIGNAL \alu_i|Mux0~4_combout\ : std_logic;
SIGNAL \alu_i|Mux0~5_combout\ : std_logic;
SIGNAL \regf_i|r0_i|sREG\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \pc_i|sPC\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \regf_i|r3_i|sREG\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \regf_i|r6_i|sREG\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \regf_i|r4_i|sREG\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \regf_i|r2_i|sREG\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_iRST~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_iCLK <= iCLK;
ww_iRST <= iRST;
oZ <= ww_oZ;
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

-- Location: LCCOMB_X26_Y28_N20
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

-- Location: IOOBUF_X16_Y17_N23
\oZ[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_i|Mux31~1_combout\,
	devoe => ww_devoe,
	o => \oZ[0]~output_o\);

-- Location: IOOBUF_X25_Y23_N23
\oZ[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_i|Mux30~9_combout\,
	devoe => ww_devoe,
	o => \oZ[1]~output_o\);

-- Location: IOOBUF_X19_Y17_N9
\oZ[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_i|Mux29~0_combout\,
	devoe => ww_devoe,
	o => \oZ[2]~output_o\);

-- Location: IOOBUF_X50_Y22_N16
\oZ[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_i|Mux28~5_combout\,
	devoe => ww_devoe,
	o => \oZ[3]~output_o\);

-- Location: IOOBUF_X25_Y25_N16
\oZ[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_i|Mux27~5_combout\,
	devoe => ww_devoe,
	o => \oZ[4]~output_o\);

-- Location: IOOBUF_X50_Y15_N23
\oZ[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_i|Mux26~5_combout\,
	devoe => ww_devoe,
	o => \oZ[5]~output_o\);

-- Location: IOOBUF_X14_Y17_N2
\oZ[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_i|Mux25~0_combout\,
	devoe => ww_devoe,
	o => \oZ[6]~output_o\);

-- Location: IOOBUF_X50_Y16_N23
\oZ[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_i|Mux24~0_combout\,
	devoe => ww_devoe,
	o => \oZ[7]~output_o\);

-- Location: IOOBUF_X25_Y24_N23
\oZ[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_i|Mux23~0_combout\,
	devoe => ww_devoe,
	o => \oZ[8]~output_o\);

-- Location: IOOBUF_X25_Y24_N16
\oZ[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_i|Mux22~0_combout\,
	devoe => ww_devoe,
	o => \oZ[9]~output_o\);

-- Location: IOOBUF_X16_Y17_N2
\oZ[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_i|Mux21~0_combout\,
	devoe => ww_devoe,
	o => \oZ[10]~output_o\);

-- Location: IOOBUF_X25_Y25_N23
\oZ[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_i|Mux20~0_combout\,
	devoe => ww_devoe,
	o => \oZ[11]~output_o\);

-- Location: IOOBUF_X16_Y17_N16
\oZ[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_i|Mux19~0_combout\,
	devoe => ww_devoe,
	o => \oZ[12]~output_o\);

-- Location: IOOBUF_X14_Y17_N23
\oZ[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_i|Mux18~0_combout\,
	devoe => ww_devoe,
	o => \oZ[13]~output_o\);

-- Location: IOOBUF_X21_Y0_N30
\oZ[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_i|Mux17~0_combout\,
	devoe => ww_devoe,
	o => \oZ[14]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\oZ[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_i|Mux16~0_combout\,
	devoe => ww_devoe,
	o => \oZ[15]~output_o\);

-- Location: IOOBUF_X25_Y22_N16
\oZ[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_i|Mux15~0_combout\,
	devoe => ww_devoe,
	o => \oZ[16]~output_o\);

-- Location: IOOBUF_X50_Y10_N23
\oZ[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_i|Mux14~0_combout\,
	devoe => ww_devoe,
	o => \oZ[17]~output_o\);

-- Location: IOOBUF_X19_Y17_N2
\oZ[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_i|Mux13~0_combout\,
	devoe => ww_devoe,
	o => \oZ[18]~output_o\);

-- Location: IOOBUF_X19_Y17_N23
\oZ[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_i|Mux12~0_combout\,
	devoe => ww_devoe,
	o => \oZ[19]~output_o\);

-- Location: IOOBUF_X50_Y14_N23
\oZ[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_i|Mux11~0_combout\,
	devoe => ww_devoe,
	o => \oZ[20]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\oZ[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_i|Mux10~0_combout\,
	devoe => ww_devoe,
	o => \oZ[21]~output_o\);

-- Location: IOOBUF_X21_Y17_N30
\oZ[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_i|Mux9~0_combout\,
	devoe => ww_devoe,
	o => \oZ[22]~output_o\);

-- Location: IOOBUF_X21_Y0_N23
\oZ[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_i|Mux8~0_combout\,
	devoe => ww_devoe,
	o => \oZ[23]~output_o\);

-- Location: IOOBUF_X25_Y23_N16
\oZ[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_i|Mux7~0_combout\,
	devoe => ww_devoe,
	o => \oZ[24]~output_o\);

-- Location: IOOBUF_X50_Y14_N16
\oZ[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_i|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \oZ[25]~output_o\);

-- Location: IOOBUF_X24_Y0_N30
\oZ[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_i|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \oZ[26]~output_o\);

-- Location: IOOBUF_X21_Y0_N2
\oZ[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_i|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \oZ[27]~output_o\);

-- Location: IOOBUF_X19_Y17_N30
\oZ[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_i|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \oZ[28]~output_o\);

-- Location: IOOBUF_X16_Y17_N9
\oZ[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_i|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \oZ[29]~output_o\);

-- Location: IOOBUF_X19_Y17_N16
\oZ[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_i|Mux1~5_combout\,
	devoe => ww_devoe,
	o => \oZ[30]~output_o\);

-- Location: IOOBUF_X25_Y22_N23
\oZ[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_i|Mux0~5_combout\,
	devoe => ww_devoe,
	o => \oZ[31]~output_o\);

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

-- Location: LCCOMB_X32_Y18_N2
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \pc_i|sPC\(2) $ (VCC)
-- \Add0~1\ = CARRY(\pc_i|sPC\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc_i|sPC\(2),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

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

-- Location: FF_X32_Y18_N3
\pc_i|sPC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Add0~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_i|sPC\(2));

-- Location: LCCOMB_X32_Y18_N4
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\pc_i|sPC\(3) & (!\Add0~1\)) # (!\pc_i|sPC\(3) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!\pc_i|sPC\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_i|sPC\(3),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X32_Y18_N5
\pc_i|sPC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_i|sPC\(3));

-- Location: LCCOMB_X32_Y18_N6
\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\pc_i|sPC\(4) & (\Add0~3\ $ (GND))) # (!\pc_i|sPC\(4) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((\pc_i|sPC\(4) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_i|sPC\(4),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X32_Y18_N7
\pc_i|sPC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_i|sPC\(4));

-- Location: LCCOMB_X32_Y18_N8
\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\pc_i|sPC\(5) & (!\Add0~5\)) # (!\pc_i|sPC\(5) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!\pc_i|sPC\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_i|sPC\(5),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: FF_X32_Y18_N1
\pc_i|sPC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Add0~6_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_i|sPC\(5));

-- Location: LCCOMB_X32_Y18_N10
\Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\pc_i|sPC\(6) & (\Add0~7\ $ (GND))) # (!\pc_i|sPC\(6) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((\pc_i|sPC\(6) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_i|sPC\(6),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: FF_X32_Y18_N11
\pc_i|sPC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_i|sPC\(6));

-- Location: LCCOMB_X32_Y18_N12
\Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\pc_i|sPC\(7) & (!\Add0~9\)) # (!\pc_i|sPC\(7) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!\pc_i|sPC\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_i|sPC\(7),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: FF_X32_Y18_N13
\pc_i|sPC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Add0~10_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_i|sPC\(7));

-- Location: LCCOMB_X32_Y18_N0
\prog_i|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \prog_i|Equal0~0_combout\ = (!\pc_i|sPC\(6) & (!\pc_i|sPC\(5) & !\pc_i|sPC\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_i|sPC\(6),
	datac => \pc_i|sPC\(5),
	datad => \pc_i|sPC\(7),
	combout => \prog_i|Equal0~0_combout\);

-- Location: LCCOMB_X33_Y17_N16
\cu_i|Mux18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu_i|Mux18~0_combout\ = (!\pc_i|sPC\(3) & (\prog_i|Equal0~0_combout\ & (!\pc_i|sPC\(4) & \pc_i|sPC\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_i|sPC\(3),
	datab => \prog_i|Equal0~0_combout\,
	datac => \pc_i|sPC\(4),
	datad => \pc_i|sPC\(2),
	combout => \cu_i|Mux18~0_combout\);

-- Location: LCCOMB_X31_Y16_N20
\cu_i|Mux25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu_i|Mux25~0_combout\ = (!\pc_i|sPC\(3) & (\prog_i|Equal0~0_combout\ & ((\pc_i|sPC\(4)) # (!\pc_i|sPC\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_i|sPC\(3),
	datab => \pc_i|sPC\(2),
	datac => \pc_i|sPC\(4),
	datad => \prog_i|Equal0~0_combout\,
	combout => \cu_i|Mux25~0_combout\);

-- Location: LCCOMB_X31_Y16_N26
\cu_i|Mux27~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu_i|Mux27~0_combout\ = (!\pc_i|sPC\(3) & (\pc_i|sPC\(2) & (!\pc_i|sPC\(4) & \prog_i|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_i|sPC\(3),
	datab => \pc_i|sPC\(2),
	datac => \pc_i|sPC\(4),
	datad => \prog_i|Equal0~0_combout\,
	combout => \cu_i|Mux27~0_combout\);

-- Location: LCCOMB_X34_Y17_N28
\cu_i|Mux26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu_i|Mux26~0_combout\ = (\prog_i|Equal0~0_combout\ & ((!\pc_i|sPC\(4)) # (!\pc_i|sPC\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prog_i|Equal0~0_combout\,
	datab => \pc_i|sPC\(3),
	datad => \pc_i|sPC\(4),
	combout => \cu_i|Mux26~0_combout\);

-- Location: LCCOMB_X35_Y17_N14
\sB[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sB[0]~7_combout\ = (!\pc_i|sPC\(6) & (!\pc_i|sPC\(5) & (\pc_i|sPC\(4) & !\pc_i|sPC\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_i|sPC\(6),
	datab => \pc_i|sPC\(5),
	datac => \pc_i|sPC\(4),
	datad => \pc_i|sPC\(7),
	combout => \sB[0]~7_combout\);

-- Location: LCCOMB_X35_Y17_N8
\sB[0]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sB[0]~62_combout\ = (\sB[0]~7_combout\ & (!\pc_i|sPC\(3) & ((\pc_i|sPC\(4)) # (!\prog_i|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_i|sPC\(4),
	datab => \sB[0]~7_combout\,
	datac => \pc_i|sPC\(3),
	datad => \prog_i|Equal0~0_combout\,
	combout => \sB[0]~62_combout\);

-- Location: LCCOMB_X35_Y18_N16
\sB[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sB[0]~6_combout\ = (!\pc_i|sPC\(3) & (!\pc_i|sPC\(4) & \prog_i|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_i|sPC\(3),
	datac => \pc_i|sPC\(4),
	datad => \prog_i|Equal0~0_combout\,
	combout => \sB[0]~6_combout\);

-- Location: LCCOMB_X33_Y18_N20
\sRA2[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sRA2[1]~0_combout\ = (\prog_i|Equal0~0_combout\ & ((\pc_i|sPC\(2) & ((!\pc_i|sPC\(4)) # (!\pc_i|sPC\(3)))) # (!\pc_i|sPC\(2) & (!\pc_i|sPC\(3) & !\pc_i|sPC\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_i|sPC\(2),
	datab => \pc_i|sPC\(3),
	datac => \pc_i|sPC\(4),
	datad => \prog_i|Equal0~0_combout\,
	combout => \sRA2[1]~0_combout\);

-- Location: LCCOMB_X35_Y17_N30
\cu_i|Mux35~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu_i|Mux35~2_combout\ = (!\pc_i|sPC\(6) & (!\pc_i|sPC\(7) & (!\pc_i|sPC\(3) & !\pc_i|sPC\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_i|sPC\(6),
	datab => \pc_i|sPC\(7),
	datac => \pc_i|sPC\(3),
	datad => \pc_i|sPC\(5),
	combout => \cu_i|Mux35~2_combout\);

-- Location: LCCOMB_X33_Y17_N22
\Mux31~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~6_combout\ = (\cu_i|Mux35~2_combout\ & (((\pc_i|sPC\(4)) # (!\prog_i|Equal0~0_combout\)) # (!\pc_i|sPC\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_i|sPC\(3),
	datab => \prog_i|Equal0~0_combout\,
	datac => \pc_i|sPC\(4),
	datad => \cu_i|Mux35~2_combout\,
	combout => \Mux31~6_combout\);

-- Location: LCCOMB_X33_Y17_N30
\cu_i|Mux34~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu_i|Mux34~0_combout\ = (\pc_i|sPC\(3) & (!\pc_i|sPC\(4) & \prog_i|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_i|sPC\(3),
	datab => \pc_i|sPC\(4),
	datad => \prog_i|Equal0~0_combout\,
	combout => \cu_i|Mux34~0_combout\);

-- Location: LCCOMB_X35_Y17_N12
\alu_i|Mux30~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Mux30~3_combout\ = (\pc_i|sPC\(3) & \pc_i|sPC\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc_i|sPC\(3),
	datad => \pc_i|sPC\(4),
	combout => \alu_i|Mux30~3_combout\);

-- Location: LCCOMB_X35_Y17_N18
\alu_i|Mux30~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Mux30~10_combout\ = (\alu_i|Mux30~3_combout\) # ((\pc_i|sPC\(5)) # ((\pc_i|sPC\(6)) # (\pc_i|sPC\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_i|Mux30~3_combout\,
	datab => \pc_i|sPC\(5),
	datac => \pc_i|sPC\(6),
	datad => \pc_i|sPC\(7),
	combout => \alu_i|Mux30~10_combout\);

-- Location: LCCOMB_X32_Y16_N4
\prog_i|Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \prog_i|Equal3~0_combout\ = (!\pc_i|sPC\(2) & (!\pc_i|sPC\(4) & (\prog_i|Equal0~0_combout\ & \pc_i|sPC\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_i|sPC\(2),
	datab => \pc_i|sPC\(4),
	datac => \prog_i|Equal0~0_combout\,
	datad => \pc_i|sPC\(3),
	combout => \prog_i|Equal3~0_combout\);

-- Location: LCCOMB_X31_Y16_N4
\prog_i|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \prog_i|Equal0~1_combout\ = (\pc_i|sPC\(4) & (\pc_i|sPC\(2) & (!\pc_i|sPC\(3) & \prog_i|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_i|sPC\(4),
	datab => \pc_i|sPC\(2),
	datac => \pc_i|sPC\(3),
	datad => \prog_i|Equal0~0_combout\,
	combout => \prog_i|Equal0~1_combout\);

-- Location: LCCOMB_X34_Y18_N12
\Mux30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (\Mux31~4_combout\) # ((\Mux31~6_combout\ & \alu_i|Mux30~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~6_combout\,
	datac => \alu_i|Mux30~9_combout\,
	datad => \Mux31~4_combout\,
	combout => \Mux30~0_combout\);

-- Location: LCCOMB_X30_Y18_N12
\regf_i|Mux30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux30~0_combout\ = (!\pc_i|sPC\(2) & (\prog_i|Equal0~0_combout\ & (\pc_i|sPC\(3) & !\pc_i|sPC\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_i|sPC\(2),
	datab => \prog_i|Equal0~0_combout\,
	datac => \pc_i|sPC\(3),
	datad => \pc_i|sPC\(4),
	combout => \regf_i|Mux30~0_combout\);

-- Location: FF_X34_Y18_N15
\regf_i|r4_i|sREG[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux30~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r4_i|sREG\(1));

-- Location: LCCOMB_X31_Y18_N20
\prog_i|oQ[18]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \prog_i|oQ[18]~1_combout\ = (\prog_i|Equal0~0_combout\ & ((\pc_i|sPC\(4) & ((!\pc_i|sPC\(3)))) # (!\pc_i|sPC\(4) & (!\pc_i|sPC\(2) & \pc_i|sPC\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_i|sPC\(2),
	datab => \pc_i|sPC\(4),
	datac => \prog_i|Equal0~0_combout\,
	datad => \pc_i|sPC\(3),
	combout => \prog_i|oQ[18]~1_combout\);

-- Location: LCCOMB_X30_Y18_N2
\regf_i|Mux30~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux30~1_combout\ = (\pc_i|sPC\(2) & (\prog_i|Equal0~0_combout\ & (\pc_i|sPC\(3) & !\pc_i|sPC\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_i|sPC\(2),
	datab => \prog_i|Equal0~0_combout\,
	datac => \pc_i|sPC\(3),
	datad => \pc_i|sPC\(4),
	combout => \regf_i|Mux30~1_combout\);

-- Location: FF_X31_Y18_N5
\regf_i|r6_i|sREG[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux30~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r6_i|sREG\(1));

-- Location: LCCOMB_X31_Y16_N28
\regf_i|Mux30~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux30~2_combout\ = (\prog_i|Equal0~0_combout\ & (!\pc_i|sPC\(3) & !\pc_i|sPC\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \prog_i|Equal0~0_combout\,
	datac => \pc_i|sPC\(3),
	datad => \pc_i|sPC\(2),
	combout => \regf_i|Mux30~2_combout\);

-- Location: FF_X33_Y18_N17
\regf_i|r2_i|sREG[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux30~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r2_i|sREG\(1));

-- Location: LCCOMB_X31_Y16_N10
\regf_i|Mux30~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux30~3_combout\ = ((\pc_i|sPC\(3) & \pc_i|sPC\(4))) # (!\prog_i|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_i|sPC\(3),
	datac => \pc_i|sPC\(4),
	datad => \prog_i|Equal0~0_combout\,
	combout => \regf_i|Mux30~3_combout\);

-- Location: FF_X33_Y18_N15
\regf_i|r0_i|sREG[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux30~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r0_i|sREG\(1));

-- Location: LCCOMB_X31_Y18_N18
\prog_i|oQ[17]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \prog_i|oQ[17]~2_combout\ = (\prog_i|Equal0~0_combout\ & (((!\pc_i|sPC\(2) & !\pc_i|sPC\(3))) # (!\pc_i|sPC\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_i|sPC\(2),
	datab => \pc_i|sPC\(4),
	datac => \prog_i|Equal0~0_combout\,
	datad => \pc_i|sPC\(3),
	combout => \prog_i|oQ[17]~2_combout\);

-- Location: LCCOMB_X31_Y18_N26
\regf_i|Mux61~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux61~0_combout\ = (\prog_i|oQ[18]~1_combout\ & (((\prog_i|oQ[17]~2_combout\)))) # (!\prog_i|oQ[18]~1_combout\ & ((\prog_i|oQ[17]~2_combout\ & (\regf_i|r2_i|sREG\(1))) # (!\prog_i|oQ[17]~2_combout\ & ((\regf_i|r0_i|sREG\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|r2_i|sREG\(1),
	datab => \prog_i|oQ[18]~1_combout\,
	datac => \regf_i|r0_i|sREG\(1),
	datad => \prog_i|oQ[17]~2_combout\,
	combout => \regf_i|Mux61~0_combout\);

-- Location: LCCOMB_X31_Y18_N4
\regf_i|Mux61~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux61~1_combout\ = (\prog_i|oQ[18]~1_combout\ & ((\regf_i|Mux61~0_combout\ & ((\regf_i|r6_i|sREG\(1)))) # (!\regf_i|Mux61~0_combout\ & (\regf_i|r4_i|sREG\(1))))) # (!\prog_i|oQ[18]~1_combout\ & (((\regf_i|Mux61~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|r4_i|sREG\(1),
	datab => \prog_i|oQ[18]~1_combout\,
	datac => \regf_i|r6_i|sREG\(1),
	datad => \regf_i|Mux61~0_combout\,
	combout => \regf_i|Mux61~1_combout\);

-- Location: LCCOMB_X31_Y16_N6
\prog_i|oQ[17]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \prog_i|oQ[17]~0_combout\ = (\pc_i|sPC\(3)) # ((\pc_i|sPC\(4)) # (!\prog_i|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_i|sPC\(3),
	datac => \pc_i|sPC\(4),
	datad => \prog_i|Equal0~0_combout\,
	combout => \prog_i|oQ[17]~0_combout\);

-- Location: LCCOMB_X31_Y16_N0
\regf_i|Mux61~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux61~2_combout\ = (!\prog_i|Equal3~0_combout\ & (\regf_i|Mux61~1_combout\ & ((!\prog_i|oQ[17]~0_combout\) # (!\prog_i|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prog_i|Equal3~0_combout\,
	datab => \prog_i|Equal0~1_combout\,
	datac => \regf_i|Mux61~1_combout\,
	datad => \prog_i|oQ[17]~0_combout\,
	combout => \regf_i|Mux61~2_combout\);

-- Location: LCCOMB_X31_Y18_N28
\cu_i|Mux28~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu_i|Mux28~0_combout\ = (!\pc_i|sPC\(4) & (\prog_i|Equal0~0_combout\ & !\pc_i|sPC\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_i|sPC\(4),
	datac => \prog_i|Equal0~0_combout\,
	datad => \pc_i|sPC\(3),
	combout => \cu_i|Mux28~0_combout\);

-- Location: LCCOMB_X35_Y18_N14
\sRA2[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sRA2[2]~1_combout\ = (\prog_i|Equal0~0_combout\ & ((\pc_i|sPC\(4) & (\pc_i|sPC\(2) & !\pc_i|sPC\(3))) # (!\pc_i|sPC\(4) & ((\pc_i|sPC\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_i|sPC\(2),
	datab => \pc_i|sPC\(4),
	datac => \pc_i|sPC\(3),
	datad => \prog_i|Equal0~0_combout\,
	combout => \sRA2[2]~1_combout\);

-- Location: LCCOMB_X33_Y18_N30
\sRA2[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sRA2[0]~2_combout\ = (!\pc_i|sPC\(3) & (\prog_i|Equal0~0_combout\ & (\pc_i|sPC\(2) $ (!\pc_i|sPC\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_i|sPC\(2),
	datab => \pc_i|sPC\(4),
	datac => \pc_i|sPC\(3),
	datad => \prog_i|Equal0~0_combout\,
	combout => \sRA2[0]~2_combout\);

-- Location: LCCOMB_X34_Y18_N14
\regf_i|Mux93~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux93~0_combout\ = (!\sRA2[0]~2_combout\ & ((\sRA2[1]~0_combout\ & (\regf_i|r6_i|sREG\(1))) # (!\sRA2[1]~0_combout\ & ((\regf_i|r4_i|sREG\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|r6_i|sREG\(1),
	datab => \sRA2[1]~0_combout\,
	datac => \regf_i|r4_i|sREG\(1),
	datad => \sRA2[0]~2_combout\,
	combout => \regf_i|Mux93~0_combout\);

-- Location: LCCOMB_X31_Y16_N16
\regf_i|Mux30~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux30~4_combout\ = (!\pc_i|sPC\(3) & (\prog_i|Equal0~0_combout\ & (!\pc_i|sPC\(4) & \pc_i|sPC\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_i|sPC\(3),
	datab => \prog_i|Equal0~0_combout\,
	datac => \pc_i|sPC\(4),
	datad => \pc_i|sPC\(2),
	combout => \regf_i|Mux30~4_combout\);

-- Location: FF_X34_Y18_N13
\regf_i|r3_i|sREG[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Mux30~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \regf_i|Mux30~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r3_i|sREG\(1));

-- Location: LCCOMB_X33_Y18_N14
\regf_i|Mux93~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux93~1_combout\ = (\pc_i|sPC\(4) & ((\regf_i|r0_i|sREG\(1)) # (\pc_i|sPC\(2)))) # (!\pc_i|sPC\(4) & ((!\pc_i|sPC\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc_i|sPC\(4),
	datac => \regf_i|r0_i|sREG\(1),
	datad => \pc_i|sPC\(2),
	combout => \regf_i|Mux93~1_combout\);

-- Location: LCCOMB_X33_Y18_N24
\regf_i|Mux93~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux93~2_combout\ = (\prog_i|Equal0~0_combout\ & (\regf_i|Mux93~1_combout\ & ((\regf_i|r0_i|sREG\(1)) # (!\pc_i|sPC\(3))))) # (!\prog_i|Equal0~0_combout\ & (((\regf_i|r0_i|sREG\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prog_i|Equal0~0_combout\,
	datab => \pc_i|sPC\(3),
	datac => \regf_i|Mux93~1_combout\,
	datad => \regf_i|r0_i|sREG\(1),
	combout => \regf_i|Mux93~2_combout\);

-- Location: LCCOMB_X33_Y18_N16
\regf_i|Mux93~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux93~3_combout\ = (\sRA2[1]~0_combout\ & ((\regf_i|Mux93~2_combout\ & (\regf_i|r3_i|sREG\(1))) # (!\regf_i|Mux93~2_combout\ & ((\regf_i|r2_i|sREG\(1)))))) # (!\sRA2[1]~0_combout\ & (((\regf_i|Mux93~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|r3_i|sREG\(1),
	datab => \sRA2[1]~0_combout\,
	datac => \regf_i|r2_i|sREG\(1),
	datad => \regf_i|Mux93~2_combout\,
	combout => \regf_i|Mux93~3_combout\);

-- Location: LCCOMB_X33_Y18_N26
\sB[1]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sB[1]~12_combout\ = (\sB[0]~6_combout\ & ((\sRA2[2]~1_combout\ & (\regf_i|Mux93~0_combout\)) # (!\sRA2[2]~1_combout\ & ((\regf_i|Mux93~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sB[0]~6_combout\,
	datab => \sRA2[2]~1_combout\,
	datac => \regf_i|Mux93~0_combout\,
	datad => \regf_i|Mux93~3_combout\,
	combout => \sB[1]~12_combout\);

-- Location: LCCOMB_X33_Y18_N8
\sB[1]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sB[1]~13_combout\ = (\sB[1]~12_combout\) # ((!\cu_i|Mux28~0_combout\ & \prog_i|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_i|Mux28~0_combout\,
	datac => \sB[1]~12_combout\,
	datad => \prog_i|Equal0~1_combout\,
	combout => \sB[1]~13_combout\);

-- Location: FF_X35_Y18_N25
\regf_i|r4_i|sREG[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux31~5_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r4_i|sREG\(0));

-- Location: FF_X35_Y18_N31
\regf_i|r2_i|sREG[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux31~5_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r2_i|sREG\(0));

-- Location: FF_X31_Y18_N9
\regf_i|r0_i|sREG[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux31~5_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r0_i|sREG\(0));

-- Location: LCCOMB_X31_Y18_N22
\regf_i|Mux62~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux62~0_combout\ = (\prog_i|oQ[17]~2_combout\ & ((\regf_i|r2_i|sREG\(0)) # ((\prog_i|oQ[18]~1_combout\)))) # (!\prog_i|oQ[17]~2_combout\ & (((\regf_i|r0_i|sREG\(0) & !\prog_i|oQ[18]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|r2_i|sREG\(0),
	datab => \prog_i|oQ[17]~2_combout\,
	datac => \regf_i|r0_i|sREG\(0),
	datad => \prog_i|oQ[18]~1_combout\,
	combout => \regf_i|Mux62~0_combout\);

-- Location: LCCOMB_X31_Y18_N0
\regf_i|Mux62~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux62~1_combout\ = (\regf_i|Mux62~0_combout\ & ((\regf_i|r6_i|sREG\(0)) # ((!\prog_i|oQ[18]~1_combout\)))) # (!\regf_i|Mux62~0_combout\ & (((\regf_i|r4_i|sREG\(0) & \prog_i|oQ[18]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|r6_i|sREG\(0),
	datab => \regf_i|r4_i|sREG\(0),
	datac => \regf_i|Mux62~0_combout\,
	datad => \prog_i|oQ[18]~1_combout\,
	combout => \regf_i|Mux62~1_combout\);

-- Location: LCCOMB_X31_Y18_N6
\regf_i|Mux62~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux62~2_combout\ = (!\prog_i|Equal3~0_combout\ & (\regf_i|Mux62~1_combout\ & ((!\prog_i|Equal0~1_combout\) # (!\prog_i|oQ[17]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prog_i|oQ[17]~0_combout\,
	datab => \prog_i|Equal0~1_combout\,
	datac => \prog_i|Equal3~0_combout\,
	datad => \regf_i|Mux62~1_combout\,
	combout => \regf_i|Mux62~2_combout\);

-- Location: LCCOMB_X35_Y16_N0
\alu_i|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Add1~0_combout\ = (\sB[0]~11_combout\ & (\regf_i|Mux62~2_combout\ $ (VCC))) # (!\sB[0]~11_combout\ & ((\regf_i|Mux62~2_combout\) # (GND)))
-- \alu_i|Add1~1\ = CARRY((\regf_i|Mux62~2_combout\) # (!\sB[0]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sB[0]~11_combout\,
	datab => \regf_i|Mux62~2_combout\,
	datad => VCC,
	combout => \alu_i|Add1~0_combout\,
	cout => \alu_i|Add1~1\);

-- Location: LCCOMB_X35_Y16_N2
\alu_i|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Add1~2_combout\ = (\regf_i|Mux61~2_combout\ & ((\sB[1]~13_combout\ & (!\alu_i|Add1~1\)) # (!\sB[1]~13_combout\ & (\alu_i|Add1~1\ & VCC)))) # (!\regf_i|Mux61~2_combout\ & ((\sB[1]~13_combout\ & ((\alu_i|Add1~1\) # (GND))) # (!\sB[1]~13_combout\ & 
-- (!\alu_i|Add1~1\))))
-- \alu_i|Add1~3\ = CARRY((\regf_i|Mux61~2_combout\ & (\sB[1]~13_combout\ & !\alu_i|Add1~1\)) # (!\regf_i|Mux61~2_combout\ & ((\sB[1]~13_combout\) # (!\alu_i|Add1~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|Mux61~2_combout\,
	datab => \sB[1]~13_combout\,
	datad => VCC,
	cin => \alu_i|Add1~1\,
	combout => \alu_i|Add1~2_combout\,
	cout => \alu_i|Add1~3\);

-- Location: LCCOMB_X34_Y16_N0
\alu_i|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Add0~0_combout\ = (\sB[0]~11_combout\ & (\regf_i|Mux62~2_combout\ $ (VCC))) # (!\sB[0]~11_combout\ & (\regf_i|Mux62~2_combout\ & VCC))
-- \alu_i|Add0~1\ = CARRY((\sB[0]~11_combout\ & \regf_i|Mux62~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sB[0]~11_combout\,
	datab => \regf_i|Mux62~2_combout\,
	datad => VCC,
	combout => \alu_i|Add0~0_combout\,
	cout => \alu_i|Add0~1\);

-- Location: LCCOMB_X34_Y16_N2
\alu_i|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Add0~2_combout\ = (\regf_i|Mux61~2_combout\ & ((\sB[1]~13_combout\ & (\alu_i|Add0~1\ & VCC)) # (!\sB[1]~13_combout\ & (!\alu_i|Add0~1\)))) # (!\regf_i|Mux61~2_combout\ & ((\sB[1]~13_combout\ & (!\alu_i|Add0~1\)) # (!\sB[1]~13_combout\ & 
-- ((\alu_i|Add0~1\) # (GND)))))
-- \alu_i|Add0~3\ = CARRY((\regf_i|Mux61~2_combout\ & (!\sB[1]~13_combout\ & !\alu_i|Add0~1\)) # (!\regf_i|Mux61~2_combout\ & ((!\alu_i|Add0~1\) # (!\sB[1]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|Mux61~2_combout\,
	datab => \sB[1]~13_combout\,
	datad => VCC,
	cin => \alu_i|Add0~1\,
	combout => \alu_i|Add0~2_combout\,
	cout => \alu_i|Add0~3\);

-- Location: LCCOMB_X33_Y16_N28
\alu_i|Mux30~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Mux30~9_combout\ = (\alu_i|Mux30~10_combout\) # ((\cu_i|Mux27~0_combout\ & (\alu_i|Add1~2_combout\)) # (!\cu_i|Mux27~0_combout\ & ((\alu_i|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_i|Mux30~10_combout\,
	datab => \cu_i|Mux27~0_combout\,
	datac => \alu_i|Add1~2_combout\,
	datad => \alu_i|Add0~2_combout\,
	combout => \alu_i|Mux30~9_combout\);

-- Location: LCCOMB_X33_Y16_N6
\prog_i|oQ[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \prog_i|oQ[4]~4_combout\ = (\pc_i|sPC\(2) & (\prog_i|Equal0~0_combout\ & (\pc_i|sPC\(3) $ (\pc_i|sPC\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_i|sPC\(2),
	datab => \pc_i|sPC\(3),
	datac => \prog_i|Equal0~0_combout\,
	datad => \pc_i|sPC\(4),
	combout => \prog_i|oQ[4]~4_combout\);

-- Location: LCCOMB_X31_Y18_N14
\prog_i|oQ[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \prog_i|oQ[3]~3_combout\ = (\prog_i|Equal0~0_combout\ & ((\pc_i|sPC\(2) & (\pc_i|sPC\(4) & !\pc_i|sPC\(3))) # (!\pc_i|sPC\(2) & (!\pc_i|sPC\(4) & \pc_i|sPC\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_i|sPC\(2),
	datab => \prog_i|Equal0~0_combout\,
	datac => \pc_i|sPC\(4),
	datad => \pc_i|sPC\(3),
	combout => \prog_i|oQ[3]~3_combout\);

-- Location: FF_X30_Y18_N5
\regf_i|r6_i|sREG[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux26~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r6_i|sREG\(5));

-- Location: FF_X33_Y18_N5
\regf_i|r2_i|sREG[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux26~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r2_i|sREG\(5));

-- Location: FF_X33_Y18_N11
\regf_i|r0_i|sREG[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux26~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r0_i|sREG\(5));

-- Location: LCCOMB_X30_Y18_N24
\regf_i|r4_i|sREG[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|r4_i|sREG[5]~feeder_combout\ = \Mux26~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux26~0_combout\,
	combout => \regf_i|r4_i|sREG[5]~feeder_combout\);

-- Location: FF_X30_Y18_N25
\regf_i|r4_i|sREG[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \regf_i|r4_i|sREG[5]~feeder_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \regf_i|Mux30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r4_i|sREG\(5));

-- Location: LCCOMB_X30_Y18_N18
\regf_i|Mux57~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux57~0_combout\ = (\prog_i|oQ[18]~1_combout\ & (((\regf_i|r4_i|sREG\(5)) # (\prog_i|oQ[17]~2_combout\)))) # (!\prog_i|oQ[18]~1_combout\ & (\regf_i|r0_i|sREG\(5) & ((!\prog_i|oQ[17]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|r0_i|sREG\(5),
	datab => \regf_i|r4_i|sREG\(5),
	datac => \prog_i|oQ[18]~1_combout\,
	datad => \prog_i|oQ[17]~2_combout\,
	combout => \regf_i|Mux57~0_combout\);

-- Location: LCCOMB_X30_Y18_N10
\regf_i|Mux57~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux57~1_combout\ = (\prog_i|oQ[17]~2_combout\ & ((\regf_i|Mux57~0_combout\ & (\regf_i|r6_i|sREG\(5))) # (!\regf_i|Mux57~0_combout\ & ((\regf_i|r2_i|sREG\(5)))))) # (!\prog_i|oQ[17]~2_combout\ & (((\regf_i|Mux57~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|r6_i|sREG\(5),
	datab => \prog_i|oQ[17]~2_combout\,
	datac => \regf_i|r2_i|sREG\(5),
	datad => \regf_i|Mux57~0_combout\,
	combout => \regf_i|Mux57~1_combout\);

-- Location: LCCOMB_X31_Y16_N30
\regf_i|Mux57~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux57~2_combout\ = (!\prog_i|Equal3~0_combout\ & (!\prog_i|oQ[3]~3_combout\ & \regf_i|Mux57~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prog_i|Equal3~0_combout\,
	datac => \prog_i|oQ[3]~3_combout\,
	datad => \regf_i|Mux57~1_combout\,
	combout => \regf_i|Mux57~2_combout\);

-- Location: LCCOMB_X32_Y16_N26
\sB[4]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sB[4]~21_combout\ = (!\cu_i|Mux28~0_combout\ & (\prog_i|oQ[17]~0_combout\ & ((\prog_i|Equal3~0_combout\) # (\prog_i|oQ[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_i|Mux28~0_combout\,
	datab => \prog_i|Equal3~0_combout\,
	datac => \prog_i|oQ[17]~0_combout\,
	datad => \prog_i|oQ[4]~4_combout\,
	combout => \sB[4]~21_combout\);

-- Location: FF_X30_Y18_N15
\regf_i|r4_i|sREG[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux27~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r4_i|sREG\(4));

-- Location: FF_X30_Y18_N17
\regf_i|r6_i|sREG[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux27~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r6_i|sREG\(4));

-- Location: LCCOMB_X30_Y18_N16
\regf_i|Mux90~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux90~0_combout\ = (!\sRA2[0]~2_combout\ & ((\sRA2[1]~0_combout\ & ((\regf_i|r6_i|sREG\(4)))) # (!\sRA2[1]~0_combout\ & (\regf_i|r4_i|sREG\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|r4_i|sREG\(4),
	datab => \sRA2[1]~0_combout\,
	datac => \regf_i|r6_i|sREG\(4),
	datad => \sRA2[0]~2_combout\,
	combout => \regf_i|Mux90~0_combout\);

-- Location: FF_X33_Y15_N9
\regf_i|r3_i|sREG[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Mux27~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \regf_i|Mux30~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r3_i|sREG\(4));

-- Location: FF_X33_Y18_N7
\regf_i|r0_i|sREG[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux27~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r0_i|sREG\(4));

-- Location: LCCOMB_X33_Y18_N6
\regf_i|Mux90~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux90~1_combout\ = (\sRA2[0]~2_combout\ & ((\sRA2[1]~0_combout\))) # (!\sRA2[0]~2_combout\ & (\regf_i|r0_i|sREG\(4) & !\sRA2[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sRA2[0]~2_combout\,
	datac => \regf_i|r0_i|sREG\(4),
	datad => \sRA2[1]~0_combout\,
	combout => \regf_i|Mux90~1_combout\);

-- Location: LCCOMB_X35_Y18_N28
\regf_i|Mux90~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux90~2_combout\ = (\sRA2[1]~0_combout\ & ((\regf_i|Mux90~1_combout\ & (\regf_i|r3_i|sREG\(4))) # (!\regf_i|Mux90~1_combout\ & ((\regf_i|r2_i|sREG\(4)))))) # (!\sRA2[1]~0_combout\ & (((\regf_i|Mux90~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sRA2[1]~0_combout\,
	datab => \regf_i|r3_i|sREG\(4),
	datac => \regf_i|r2_i|sREG\(4),
	datad => \regf_i|Mux90~1_combout\,
	combout => \regf_i|Mux90~2_combout\);

-- Location: LCCOMB_X35_Y18_N6
\sB[4]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sB[4]~22_combout\ = (\sB[0]~6_combout\ & ((\sRA2[2]~1_combout\ & (\regf_i|Mux90~0_combout\)) # (!\sRA2[2]~1_combout\ & ((\regf_i|Mux90~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sB[0]~6_combout\,
	datab => \sRA2[2]~1_combout\,
	datac => \regf_i|Mux90~0_combout\,
	datad => \regf_i|Mux90~2_combout\,
	combout => \sB[4]~22_combout\);

-- Location: LCCOMB_X35_Y18_N8
\sB[4]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sB[4]~23_combout\ = (\sB[4]~21_combout\) # (\sB[4]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sB[4]~21_combout\,
	datad => \sB[4]~22_combout\,
	combout => \sB[4]~23_combout\);

-- Location: FF_X34_Y18_N17
\regf_i|r3_i|sREG[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Mux28~1_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \regf_i|Mux30~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r3_i|sREG\(3));

-- Location: FF_X33_Y18_N23
\regf_i|r2_i|sREG[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux28~1_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r2_i|sREG\(3));

-- Location: FF_X33_Y18_N29
\regf_i|r0_i|sREG[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux28~1_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r0_i|sREG\(3));

-- Location: LCCOMB_X33_Y18_N28
\regf_i|Mux91~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux91~1_combout\ = (\sRA2[0]~2_combout\ & ((\sRA2[1]~0_combout\))) # (!\sRA2[0]~2_combout\ & (\regf_i|r0_i|sREG\(3) & !\sRA2[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sRA2[0]~2_combout\,
	datac => \regf_i|r0_i|sREG\(3),
	datad => \sRA2[1]~0_combout\,
	combout => \regf_i|Mux91~1_combout\);

-- Location: LCCOMB_X33_Y18_N22
\regf_i|Mux91~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux91~2_combout\ = (\sRA2[1]~0_combout\ & ((\regf_i|Mux91~1_combout\ & (\regf_i|r3_i|sREG\(3))) # (!\regf_i|Mux91~1_combout\ & ((\regf_i|r2_i|sREG\(3)))))) # (!\sRA2[1]~0_combout\ & (((\regf_i|Mux91~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|r3_i|sREG\(3),
	datab => \sRA2[1]~0_combout\,
	datac => \regf_i|r2_i|sREG\(3),
	datad => \regf_i|Mux91~1_combout\,
	combout => \regf_i|Mux91~2_combout\);

-- Location: FF_X31_Y18_N13
\regf_i|r6_i|sREG[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux28~1_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r6_i|sREG\(3));

-- Location: LCCOMB_X30_Y18_N8
\regf_i|Mux91~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux91~0_combout\ = (!\sRA2[0]~2_combout\ & ((\sRA2[1]~0_combout\ & (\regf_i|r6_i|sREG\(3))) # (!\sRA2[1]~0_combout\ & ((\regf_i|r4_i|sREG\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sRA2[1]~0_combout\,
	datab => \regf_i|r6_i|sREG\(3),
	datac => \regf_i|r4_i|sREG\(3),
	datad => \sRA2[0]~2_combout\,
	combout => \regf_i|Mux91~0_combout\);

-- Location: LCCOMB_X33_Y18_N2
\sB[3]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sB[3]~19_combout\ = (\sB[0]~6_combout\ & ((\sRA2[2]~1_combout\ & ((\regf_i|Mux91~0_combout\))) # (!\sRA2[2]~1_combout\ & (\regf_i|Mux91~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sB[0]~6_combout\,
	datab => \sRA2[2]~1_combout\,
	datac => \regf_i|Mux91~2_combout\,
	datad => \regf_i|Mux91~0_combout\,
	combout => \sB[3]~19_combout\);

-- Location: LCCOMB_X33_Y18_N12
\sB[3]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sB[3]~20_combout\ = (\sB[3]~19_combout\) # ((!\cu_i|Mux28~0_combout\ & \prog_i|oQ[3]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_i|Mux28~0_combout\,
	datac => \prog_i|oQ[3]~3_combout\,
	datad => \sB[3]~19_combout\,
	combout => \sB[3]~20_combout\);

-- Location: FF_X31_Y18_N11
\regf_i|r0_i|sREG[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux29~1_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r0_i|sREG\(2));

-- Location: FF_X34_Y18_N7
\regf_i|r3_i|sREG[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Mux29~1_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \regf_i|Mux30~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r3_i|sREG\(2));

-- Location: LCCOMB_X35_Y18_N10
\sB[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sB[2]~14_combout\ = (\sRA2[0]~2_combout\ & (\regf_i|r3_i|sREG\(2))) # (!\sRA2[0]~2_combout\ & ((\regf_i|r2_i|sREG\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|r3_i|sREG\(2),
	datac => \regf_i|r2_i|sREG\(2),
	datad => \sRA2[0]~2_combout\,
	combout => \sB[2]~14_combout\);

-- Location: LCCOMB_X35_Y18_N26
\sB[2]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sB[2]~15_combout\ = (\sRA2[1]~0_combout\ & (((\sB[2]~14_combout\)))) # (!\sRA2[1]~0_combout\ & (!\sRA2[0]~2_combout\ & (\regf_i|r0_i|sREG\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sRA2[1]~0_combout\,
	datab => \sRA2[0]~2_combout\,
	datac => \regf_i|r0_i|sREG\(2),
	datad => \sB[2]~14_combout\,
	combout => \sB[2]~15_combout\);

-- Location: FF_X31_Y18_N25
\regf_i|r6_i|sREG[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux29~1_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r6_i|sREG\(2));

-- Location: FF_X35_Y18_N13
\regf_i|r4_i|sREG[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux29~1_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r4_i|sREG\(2));

-- Location: LCCOMB_X35_Y18_N12
\sB[2]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sB[2]~16_combout\ = (\sRA2[1]~0_combout\ & (\regf_i|r6_i|sREG\(2))) # (!\sRA2[1]~0_combout\ & ((\regf_i|r4_i|sREG\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|r6_i|sREG\(2),
	datac => \regf_i|r4_i|sREG\(2),
	datad => \sRA2[1]~0_combout\,
	combout => \sB[2]~16_combout\);

-- Location: LCCOMB_X35_Y18_N0
\sB[2]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sB[2]~17_combout\ = (\sB[0]~6_combout\ & (((!\sRA2[0]~2_combout\ & \sB[2]~16_combout\)) # (!\sRA2[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sRA2[0]~2_combout\,
	datab => \sB[0]~6_combout\,
	datac => \sRA2[2]~1_combout\,
	datad => \sB[2]~16_combout\,
	combout => \sB[2]~17_combout\);

-- Location: LCCOMB_X35_Y18_N2
\sB[2]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sB[2]~18_combout\ = (\prog_i|Equal3~0_combout\) # ((\sB[2]~17_combout\ & ((\sRA2[2]~1_combout\) # (\sB[2]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prog_i|Equal3~0_combout\,
	datab => \sRA2[2]~1_combout\,
	datac => \sB[2]~15_combout\,
	datad => \sB[2]~17_combout\,
	combout => \sB[2]~18_combout\);

-- Location: LCCOMB_X35_Y16_N4
\alu_i|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Add1~4_combout\ = ((\sB[2]~18_combout\ $ (\regf_i|Mux60~2_combout\ $ (\alu_i|Add1~3\)))) # (GND)
-- \alu_i|Add1~5\ = CARRY((\sB[2]~18_combout\ & (\regf_i|Mux60~2_combout\ & !\alu_i|Add1~3\)) # (!\sB[2]~18_combout\ & ((\regf_i|Mux60~2_combout\) # (!\alu_i|Add1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sB[2]~18_combout\,
	datab => \regf_i|Mux60~2_combout\,
	datad => VCC,
	cin => \alu_i|Add1~3\,
	combout => \alu_i|Add1~4_combout\,
	cout => \alu_i|Add1~5\);

-- Location: LCCOMB_X34_Y16_N4
\alu_i|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Add0~4_combout\ = ((\regf_i|Mux60~2_combout\ $ (\sB[2]~18_combout\ $ (!\alu_i|Add0~3\)))) # (GND)
-- \alu_i|Add0~5\ = CARRY((\regf_i|Mux60~2_combout\ & ((\sB[2]~18_combout\) # (!\alu_i|Add0~3\))) # (!\regf_i|Mux60~2_combout\ & (\sB[2]~18_combout\ & !\alu_i|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|Mux60~2_combout\,
	datab => \sB[2]~18_combout\,
	datad => VCC,
	cin => \alu_i|Add0~3\,
	combout => \alu_i|Add0~4_combout\,
	cout => \alu_i|Add0~5\);

-- Location: LCCOMB_X34_Y17_N18
\alu_i|Mux29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Mux29~0_combout\ = (!\alu_i|Mux30~10_combout\ & ((\cu_i|Mux27~0_combout\ & (\alu_i|Add1~4_combout\)) # (!\cu_i|Mux27~0_combout\ & ((\alu_i|Add0~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_i|Add1~4_combout\,
	datab => \alu_i|Mux30~10_combout\,
	datac => \cu_i|Mux27~0_combout\,
	datad => \alu_i|Add0~4_combout\,
	combout => \alu_i|Mux29~0_combout\);

-- Location: LCCOMB_X34_Y17_N2
\Mux29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = (!\cu_i|Mux34~0_combout\ & ((\cu_i|Mux35~2_combout\ & ((\alu_i|Mux29~0_combout\))) # (!\cu_i|Mux35~2_combout\ & (\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_i|Mux35~2_combout\,
	datab => \cu_i|Mux34~0_combout\,
	datac => \Add0~0_combout\,
	datad => \alu_i|Mux29~0_combout\,
	combout => \Mux29~0_combout\);

-- Location: LCCOMB_X34_Y18_N6
\Mux29~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~1_combout\ = (\Mux29~0_combout\) # (\Mux31~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux29~0_combout\,
	datad => \Mux31~4_combout\,
	combout => \Mux29~1_combout\);

-- Location: FF_X35_Y18_N11
\regf_i|r2_i|sREG[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux29~1_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r2_i|sREG\(2));

-- Location: LCCOMB_X31_Y18_N10
\regf_i|Mux60~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux60~0_combout\ = (\prog_i|oQ[17]~2_combout\ & (((\prog_i|oQ[18]~1_combout\)))) # (!\prog_i|oQ[17]~2_combout\ & ((\prog_i|oQ[18]~1_combout\ & (\regf_i|r4_i|sREG\(2))) # (!\prog_i|oQ[18]~1_combout\ & ((\regf_i|r0_i|sREG\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|r4_i|sREG\(2),
	datab => \prog_i|oQ[17]~2_combout\,
	datac => \regf_i|r0_i|sREG\(2),
	datad => \prog_i|oQ[18]~1_combout\,
	combout => \regf_i|Mux60~0_combout\);

-- Location: LCCOMB_X31_Y18_N24
\regf_i|Mux60~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux60~1_combout\ = (\prog_i|oQ[17]~2_combout\ & ((\regf_i|Mux60~0_combout\ & ((\regf_i|r6_i|sREG\(2)))) # (!\regf_i|Mux60~0_combout\ & (\regf_i|r2_i|sREG\(2))))) # (!\prog_i|oQ[17]~2_combout\ & (((\regf_i|Mux60~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prog_i|oQ[17]~2_combout\,
	datab => \regf_i|r2_i|sREG\(2),
	datac => \regf_i|r6_i|sREG\(2),
	datad => \regf_i|Mux60~0_combout\,
	combout => \regf_i|Mux60~1_combout\);

-- Location: LCCOMB_X31_Y16_N18
\regf_i|Mux60~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux60~2_combout\ = (\regf_i|Mux60~1_combout\ & (!\prog_i|Equal3~0_combout\ & ((!\prog_i|Equal0~1_combout\) # (!\prog_i|oQ[17]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prog_i|oQ[17]~0_combout\,
	datab => \prog_i|Equal0~1_combout\,
	datac => \regf_i|Mux60~1_combout\,
	datad => \prog_i|Equal3~0_combout\,
	combout => \regf_i|Mux60~2_combout\);

-- Location: LCCOMB_X34_Y16_N6
\alu_i|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Add0~6_combout\ = (\regf_i|Mux59~2_combout\ & ((\sB[3]~20_combout\ & (\alu_i|Add0~5\ & VCC)) # (!\sB[3]~20_combout\ & (!\alu_i|Add0~5\)))) # (!\regf_i|Mux59~2_combout\ & ((\sB[3]~20_combout\ & (!\alu_i|Add0~5\)) # (!\sB[3]~20_combout\ & 
-- ((\alu_i|Add0~5\) # (GND)))))
-- \alu_i|Add0~7\ = CARRY((\regf_i|Mux59~2_combout\ & (!\sB[3]~20_combout\ & !\alu_i|Add0~5\)) # (!\regf_i|Mux59~2_combout\ & ((!\alu_i|Add0~5\) # (!\sB[3]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|Mux59~2_combout\,
	datab => \sB[3]~20_combout\,
	datad => VCC,
	cin => \alu_i|Add0~5\,
	combout => \alu_i|Add0~6_combout\,
	cout => \alu_i|Add0~7\);

-- Location: LCCOMB_X35_Y16_N6
\alu_i|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Add1~6_combout\ = (\regf_i|Mux59~2_combout\ & ((\sB[3]~20_combout\ & (!\alu_i|Add1~5\)) # (!\sB[3]~20_combout\ & (\alu_i|Add1~5\ & VCC)))) # (!\regf_i|Mux59~2_combout\ & ((\sB[3]~20_combout\ & ((\alu_i|Add1~5\) # (GND))) # (!\sB[3]~20_combout\ & 
-- (!\alu_i|Add1~5\))))
-- \alu_i|Add1~7\ = CARRY((\regf_i|Mux59~2_combout\ & (\sB[3]~20_combout\ & !\alu_i|Add1~5\)) # (!\regf_i|Mux59~2_combout\ & ((\sB[3]~20_combout\) # (!\alu_i|Add1~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|Mux59~2_combout\,
	datab => \sB[3]~20_combout\,
	datad => VCC,
	cin => \alu_i|Add1~5\,
	combout => \alu_i|Add1~6_combout\,
	cout => \alu_i|Add1~7\);

-- Location: LCCOMB_X34_Y18_N10
\alu_i|Mux28~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Mux28~4_combout\ = (\cu_i|Mux27~0_combout\ & ((\alu_i|Add1~6_combout\))) # (!\cu_i|Mux27~0_combout\ & (\alu_i|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_i|Mux27~0_combout\,
	datac => \alu_i|Add0~6_combout\,
	datad => \alu_i|Add1~6_combout\,
	combout => \alu_i|Mux28~4_combout\);

-- Location: LCCOMB_X34_Y18_N8
\Mux28~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = (\cu_i|Mux35~2_combout\ & ((\alu_i|Mux30~10_combout\) # ((\alu_i|Mux28~4_combout\)))) # (!\cu_i|Mux35~2_combout\ & (((\Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_i|Mux30~10_combout\,
	datab => \cu_i|Mux35~2_combout\,
	datac => \Add0~2_combout\,
	datad => \alu_i|Mux28~4_combout\,
	combout => \Mux28~0_combout\);

-- Location: LCCOMB_X34_Y18_N16
\Mux28~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~1_combout\ = (\Mux31~4_combout\) # ((!\cu_i|Mux34~0_combout\ & \Mux28~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cu_i|Mux34~0_combout\,
	datac => \Mux28~0_combout\,
	datad => \Mux31~4_combout\,
	combout => \Mux28~1_combout\);

-- Location: FF_X30_Y18_N9
\regf_i|r4_i|sREG[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux28~1_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r4_i|sREG\(3));

-- Location: LCCOMB_X31_Y18_N2
\regf_i|Mux59~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux59~0_combout\ = (\prog_i|oQ[17]~2_combout\ & (((\regf_i|r2_i|sREG\(3)) # (\prog_i|oQ[18]~1_combout\)))) # (!\prog_i|oQ[17]~2_combout\ & (\regf_i|r0_i|sREG\(3) & ((!\prog_i|oQ[18]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|r0_i|sREG\(3),
	datab => \regf_i|r2_i|sREG\(3),
	datac => \prog_i|oQ[17]~2_combout\,
	datad => \prog_i|oQ[18]~1_combout\,
	combout => \regf_i|Mux59~0_combout\);

-- Location: LCCOMB_X31_Y18_N12
\regf_i|Mux59~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux59~1_combout\ = (\prog_i|oQ[18]~1_combout\ & ((\regf_i|Mux59~0_combout\ & ((\regf_i|r6_i|sREG\(3)))) # (!\regf_i|Mux59~0_combout\ & (\regf_i|r4_i|sREG\(3))))) # (!\prog_i|oQ[18]~1_combout\ & (((\regf_i|Mux59~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|r4_i|sREG\(3),
	datab => \prog_i|oQ[18]~1_combout\,
	datac => \regf_i|r6_i|sREG\(3),
	datad => \regf_i|Mux59~0_combout\,
	combout => \regf_i|Mux59~1_combout\);

-- Location: LCCOMB_X31_Y18_N8
\regf_i|Mux59~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux59~2_combout\ = (!\prog_i|oQ[3]~3_combout\ & (!\prog_i|Equal3~0_combout\ & \regf_i|Mux59~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prog_i|oQ[3]~3_combout\,
	datab => \prog_i|Equal3~0_combout\,
	datad => \regf_i|Mux59~1_combout\,
	combout => \regf_i|Mux59~2_combout\);

-- Location: LCCOMB_X35_Y16_N8
\alu_i|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Add1~8_combout\ = ((\sB[4]~23_combout\ $ (\regf_i|Mux58~2_combout\ $ (\alu_i|Add1~7\)))) # (GND)
-- \alu_i|Add1~9\ = CARRY((\sB[4]~23_combout\ & (\regf_i|Mux58~2_combout\ & !\alu_i|Add1~7\)) # (!\sB[4]~23_combout\ & ((\regf_i|Mux58~2_combout\) # (!\alu_i|Add1~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sB[4]~23_combout\,
	datab => \regf_i|Mux58~2_combout\,
	datad => VCC,
	cin => \alu_i|Add1~7\,
	combout => \alu_i|Add1~8_combout\,
	cout => \alu_i|Add1~9\);

-- Location: LCCOMB_X34_Y16_N8
\alu_i|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Add0~8_combout\ = ((\regf_i|Mux58~2_combout\ $ (\sB[4]~23_combout\ $ (!\alu_i|Add0~7\)))) # (GND)
-- \alu_i|Add0~9\ = CARRY((\regf_i|Mux58~2_combout\ & ((\sB[4]~23_combout\) # (!\alu_i|Add0~7\))) # (!\regf_i|Mux58~2_combout\ & (\sB[4]~23_combout\ & !\alu_i|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|Mux58~2_combout\,
	datab => \sB[4]~23_combout\,
	datad => VCC,
	cin => \alu_i|Add0~7\,
	combout => \alu_i|Add0~8_combout\,
	cout => \alu_i|Add0~9\);

-- Location: LCCOMB_X34_Y18_N20
\alu_i|Mux27~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Mux27~4_combout\ = (\cu_i|Mux27~0_combout\ & (\alu_i|Add1~8_combout\)) # (!\cu_i|Mux27~0_combout\ & ((\alu_i|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_i|Mux27~0_combout\,
	datac => \alu_i|Add1~8_combout\,
	datad => \alu_i|Add0~8_combout\,
	combout => \alu_i|Mux27~4_combout\);

-- Location: LCCOMB_X33_Y15_N10
\alu_i|Mux27~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Mux27~5_combout\ = ((\alu_i|Mux27~4_combout\) # ((\cu_i|Mux25~0_combout\ & \cu_i|Mux18~0_combout\))) # (!\cu_i|Mux26~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_i|Mux25~0_combout\,
	datab => \cu_i|Mux18~0_combout\,
	datac => \cu_i|Mux26~0_combout\,
	datad => \alu_i|Mux27~4_combout\,
	combout => \alu_i|Mux27~5_combout\);

-- Location: LCCOMB_X33_Y15_N8
\Mux27~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (!\cu_i|Mux34~0_combout\ & ((\cu_i|Mux35~2_combout\ & ((\alu_i|Mux27~5_combout\))) # (!\cu_i|Mux35~2_combout\ & (\Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \cu_i|Mux34~0_combout\,
	datac => \cu_i|Mux35~2_combout\,
	datad => \alu_i|Mux27~5_combout\,
	combout => \Mux27~0_combout\);

-- Location: FF_X35_Y18_N29
\regf_i|r2_i|sREG[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux27~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r2_i|sREG\(4));

-- Location: LCCOMB_X30_Y18_N14
\regf_i|Mux58~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux58~0_combout\ = (\prog_i|oQ[18]~1_combout\ & (((\regf_i|r4_i|sREG\(4)) # (\prog_i|oQ[17]~2_combout\)))) # (!\prog_i|oQ[18]~1_combout\ & (\regf_i|r0_i|sREG\(4) & ((!\prog_i|oQ[17]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prog_i|oQ[18]~1_combout\,
	datab => \regf_i|r0_i|sREG\(4),
	datac => \regf_i|r4_i|sREG\(4),
	datad => \prog_i|oQ[17]~2_combout\,
	combout => \regf_i|Mux58~0_combout\);

-- Location: LCCOMB_X30_Y18_N26
\regf_i|Mux58~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux58~1_combout\ = (\regf_i|Mux58~0_combout\ & (((\regf_i|r6_i|sREG\(4)) # (!\prog_i|oQ[17]~2_combout\)))) # (!\regf_i|Mux58~0_combout\ & (\regf_i|r2_i|sREG\(4) & ((\prog_i|oQ[17]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|r2_i|sREG\(4),
	datab => \regf_i|r6_i|sREG\(4),
	datac => \regf_i|Mux58~0_combout\,
	datad => \prog_i|oQ[17]~2_combout\,
	combout => \regf_i|Mux58~1_combout\);

-- Location: LCCOMB_X31_Y16_N12
\regf_i|Mux58~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux58~2_combout\ = (!\prog_i|Equal3~0_combout\ & (!\prog_i|oQ[3]~3_combout\ & \regf_i|Mux58~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prog_i|Equal3~0_combout\,
	datac => \prog_i|oQ[3]~3_combout\,
	datad => \regf_i|Mux58~1_combout\,
	combout => \regf_i|Mux58~2_combout\);

-- Location: LCCOMB_X34_Y16_N10
\alu_i|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Add0~10_combout\ = (\regf_i|Mux57~2_combout\ & ((\sB[5]~25_combout\ & (\alu_i|Add0~9\ & VCC)) # (!\sB[5]~25_combout\ & (!\alu_i|Add0~9\)))) # (!\regf_i|Mux57~2_combout\ & ((\sB[5]~25_combout\ & (!\alu_i|Add0~9\)) # (!\sB[5]~25_combout\ & 
-- ((\alu_i|Add0~9\) # (GND)))))
-- \alu_i|Add0~11\ = CARRY((\regf_i|Mux57~2_combout\ & (!\sB[5]~25_combout\ & !\alu_i|Add0~9\)) # (!\regf_i|Mux57~2_combout\ & ((!\alu_i|Add0~9\) # (!\sB[5]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|Mux57~2_combout\,
	datab => \sB[5]~25_combout\,
	datad => VCC,
	cin => \alu_i|Add0~9\,
	combout => \alu_i|Add0~10_combout\,
	cout => \alu_i|Add0~11\);

-- Location: LCCOMB_X33_Y15_N20
\alu_i|Mux26~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Mux26~5_combout\ = (!\alu_i|Mux30~10_combout\ & ((\cu_i|Mux27~0_combout\ & (\alu_i|Add1~10_combout\)) # (!\cu_i|Mux27~0_combout\ & ((\alu_i|Add0~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_i|Mux27~0_combout\,
	datab => \alu_i|Add1~10_combout\,
	datac => \alu_i|Mux30~10_combout\,
	datad => \alu_i|Add0~10_combout\,
	combout => \alu_i|Mux26~5_combout\);

-- Location: LCCOMB_X33_Y15_N22
\Mux26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (!\cu_i|Mux34~0_combout\ & ((\cu_i|Mux35~2_combout\ & ((\alu_i|Mux26~5_combout\))) # (!\cu_i|Mux35~2_combout\ & (\Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \cu_i|Mux34~0_combout\,
	datac => \cu_i|Mux35~2_combout\,
	datad => \alu_i|Mux26~5_combout\,
	combout => \Mux26~0_combout\);

-- Location: FF_X33_Y15_N23
\regf_i|r3_i|sREG[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Mux26~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \regf_i|Mux30~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r3_i|sREG\(5));

-- Location: LCCOMB_X33_Y18_N10
\regf_i|Mux89~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux89~1_combout\ = (\sRA2[1]~0_combout\ & ((\sRA2[0]~2_combout\))) # (!\sRA2[1]~0_combout\ & (\regf_i|r0_i|sREG\(5) & !\sRA2[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sRA2[1]~0_combout\,
	datac => \regf_i|r0_i|sREG\(5),
	datad => \sRA2[0]~2_combout\,
	combout => \regf_i|Mux89~1_combout\);

-- Location: LCCOMB_X33_Y18_N4
\regf_i|Mux89~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux89~2_combout\ = (\sRA2[1]~0_combout\ & ((\regf_i|Mux89~1_combout\ & (\regf_i|r3_i|sREG\(5))) # (!\regf_i|Mux89~1_combout\ & ((\regf_i|r2_i|sREG\(5)))))) # (!\sRA2[1]~0_combout\ & (((\regf_i|Mux89~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|r3_i|sREG\(5),
	datab => \sRA2[1]~0_combout\,
	datac => \regf_i|r2_i|sREG\(5),
	datad => \regf_i|Mux89~1_combout\,
	combout => \regf_i|Mux89~2_combout\);

-- Location: LCCOMB_X30_Y18_N4
\regf_i|Mux89~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux89~0_combout\ = (!\sRA2[0]~2_combout\ & ((\sRA2[1]~0_combout\ & ((\regf_i|r6_i|sREG\(5)))) # (!\sRA2[1]~0_combout\ & (\regf_i|r4_i|sREG\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sRA2[1]~0_combout\,
	datab => \regf_i|r4_i|sREG\(5),
	datac => \regf_i|r6_i|sREG\(5),
	datad => \sRA2[0]~2_combout\,
	combout => \regf_i|Mux89~0_combout\);

-- Location: LCCOMB_X33_Y18_N0
\sB[5]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sB[5]~24_combout\ = (\sB[0]~6_combout\ & ((\sRA2[2]~1_combout\ & ((\regf_i|Mux89~0_combout\))) # (!\sRA2[2]~1_combout\ & (\regf_i|Mux89~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sB[0]~6_combout\,
	datab => \sRA2[2]~1_combout\,
	datac => \regf_i|Mux89~2_combout\,
	datad => \regf_i|Mux89~0_combout\,
	combout => \sB[5]~24_combout\);

-- Location: LCCOMB_X33_Y18_N18
\sB[5]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sB[5]~25_combout\ = (\sB[5]~24_combout\) # ((!\cu_i|Mux28~0_combout\ & \prog_i|oQ[4]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_i|Mux28~0_combout\,
	datac => \prog_i|oQ[4]~4_combout\,
	datad => \sB[5]~24_combout\,
	combout => \sB[5]~25_combout\);

-- Location: LCCOMB_X35_Y16_N10
\alu_i|Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Add1~10_combout\ = (\sB[5]~25_combout\ & ((\regf_i|Mux57~2_combout\ & (!\alu_i|Add1~9\)) # (!\regf_i|Mux57~2_combout\ & ((\alu_i|Add1~9\) # (GND))))) # (!\sB[5]~25_combout\ & ((\regf_i|Mux57~2_combout\ & (\alu_i|Add1~9\ & VCC)) # 
-- (!\regf_i|Mux57~2_combout\ & (!\alu_i|Add1~9\))))
-- \alu_i|Add1~11\ = CARRY((\sB[5]~25_combout\ & ((!\alu_i|Add1~9\) # (!\regf_i|Mux57~2_combout\))) # (!\sB[5]~25_combout\ & (!\regf_i|Mux57~2_combout\ & !\alu_i|Add1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sB[5]~25_combout\,
	datab => \regf_i|Mux57~2_combout\,
	datad => VCC,
	cin => \alu_i|Add1~9\,
	combout => \alu_i|Add1~10_combout\,
	cout => \alu_i|Add1~11\);

-- Location: LCCOMB_X34_Y18_N26
\alu_i|Mux26~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Mux26~4_combout\ = (\cu_i|Mux27~0_combout\ & (\alu_i|Add1~10_combout\)) # (!\cu_i|Mux27~0_combout\ & ((\alu_i|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_i|Mux27~0_combout\,
	datac => \alu_i|Add1~10_combout\,
	datad => \alu_i|Add0~10_combout\,
	combout => \alu_i|Mux26~4_combout\);

-- Location: LCCOMB_X34_Y18_N30
\Mux31~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~2_combout\ = (\alu_i|Mux30~9_combout\ & ((\alu_i|Mux30~10_combout\) # ((!\alu_i|Mux26~4_combout\ & \alu_i|Mux27~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_i|Mux30~10_combout\,
	datab => \alu_i|Mux30~9_combout\,
	datac => \alu_i|Mux26~4_combout\,
	datad => \alu_i|Mux27~4_combout\,
	combout => \Mux31~2_combout\);

-- Location: LCCOMB_X33_Y16_N0
\Mux24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (!\cu_i|Mux34~0_combout\ & ((\cu_i|Mux35~2_combout\ & ((\alu_i|Mux24~0_combout\))) # (!\cu_i|Mux35~2_combout\ & (\Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_i|Mux34~0_combout\,
	datab => \cu_i|Mux35~2_combout\,
	datac => \Add0~10_combout\,
	datad => \alu_i|Mux24~0_combout\,
	combout => \Mux24~0_combout\);

-- Location: FF_X30_Y18_N1
\regf_i|r4_i|sREG[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux24~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r4_i|sREG\(7));

-- Location: FF_X30_Y18_N23
\regf_i|r6_i|sREG[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux24~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r6_i|sREG\(7));

-- Location: LCCOMB_X30_Y18_N22
\regf_i|Mux87~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux87~0_combout\ = (!\sRA2[0]~2_combout\ & ((\sRA2[1]~0_combout\ & ((\regf_i|r6_i|sREG\(7)))) # (!\sRA2[1]~0_combout\ & (\regf_i|r4_i|sREG\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sRA2[1]~0_combout\,
	datab => \regf_i|r4_i|sREG\(7),
	datac => \regf_i|r6_i|sREG\(7),
	datad => \sRA2[0]~2_combout\,
	combout => \regf_i|Mux87~0_combout\);

-- Location: LCCOMB_X29_Y18_N24
\regf_i|r2_i|sREG[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|r2_i|sREG[7]~feeder_combout\ = \Mux24~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux24~0_combout\,
	combout => \regf_i|r2_i|sREG[7]~feeder_combout\);

-- Location: FF_X29_Y18_N25
\regf_i|r2_i|sREG[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \regf_i|r2_i|sREG[7]~feeder_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \regf_i|Mux30~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r2_i|sREG\(7));

-- Location: FF_X33_Y16_N1
\regf_i|r3_i|sREG[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Mux24~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \regf_i|Mux30~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r3_i|sREG\(7));

-- Location: LCCOMB_X29_Y18_N22
\regf_i|r0_i|sREG[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|r0_i|sREG[7]~feeder_combout\ = \Mux24~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux24~0_combout\,
	combout => \regf_i|r0_i|sREG[7]~feeder_combout\);

-- Location: FF_X29_Y18_N23
\regf_i|r0_i|sREG[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \regf_i|r0_i|sREG[7]~feeder_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \regf_i|Mux30~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r0_i|sREG\(7));

-- Location: LCCOMB_X29_Y18_N8
\regf_i|Mux87~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux87~1_combout\ = (\sRA2[1]~0_combout\ & ((\sRA2[0]~2_combout\))) # (!\sRA2[1]~0_combout\ & (\regf_i|r0_i|sREG\(7) & !\sRA2[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|r0_i|sREG\(7),
	datac => \sRA2[1]~0_combout\,
	datad => \sRA2[0]~2_combout\,
	combout => \regf_i|Mux87~1_combout\);

-- Location: LCCOMB_X30_Y18_N6
\regf_i|Mux87~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux87~2_combout\ = (\sRA2[1]~0_combout\ & ((\regf_i|Mux87~1_combout\ & ((\regf_i|r3_i|sREG\(7)))) # (!\regf_i|Mux87~1_combout\ & (\regf_i|r2_i|sREG\(7))))) # (!\sRA2[1]~0_combout\ & (((\regf_i|Mux87~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sRA2[1]~0_combout\,
	datab => \regf_i|r2_i|sREG\(7),
	datac => \regf_i|r3_i|sREG\(7),
	datad => \regf_i|Mux87~1_combout\,
	combout => \regf_i|Mux87~2_combout\);

-- Location: LCCOMB_X30_Y18_N28
\sB[7]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sB[7]~28_combout\ = (\sB[0]~6_combout\ & ((\sRA2[2]~1_combout\ & (\regf_i|Mux87~0_combout\)) # (!\sRA2[2]~1_combout\ & ((\regf_i|Mux87~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sB[0]~6_combout\,
	datab => \sRA2[2]~1_combout\,
	datac => \regf_i|Mux87~0_combout\,
	datad => \regf_i|Mux87~2_combout\,
	combout => \sB[7]~28_combout\);

-- Location: LCCOMB_X30_Y18_N30
\sB[7]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sB[7]~29_combout\ = (\sB[7]~28_combout\) # ((!\cu_i|Mux28~0_combout\ & \prog_i|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cu_i|Mux28~0_combout\,
	datac => \prog_i|Equal0~1_combout\,
	datad => \sB[7]~28_combout\,
	combout => \sB[7]~29_combout\);

-- Location: LCCOMB_X30_Y18_N0
\regf_i|Mux55~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux55~0_combout\ = (\prog_i|oQ[18]~1_combout\ & (((\regf_i|r4_i|sREG\(7)) # (\prog_i|oQ[17]~2_combout\)))) # (!\prog_i|oQ[18]~1_combout\ & (\regf_i|r0_i|sREG\(7) & ((!\prog_i|oQ[17]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prog_i|oQ[18]~1_combout\,
	datab => \regf_i|r0_i|sREG\(7),
	datac => \regf_i|r4_i|sREG\(7),
	datad => \prog_i|oQ[17]~2_combout\,
	combout => \regf_i|Mux55~0_combout\);

-- Location: LCCOMB_X30_Y18_N20
\regf_i|Mux55~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux55~1_combout\ = (\prog_i|oQ[17]~2_combout\ & ((\regf_i|Mux55~0_combout\ & ((\regf_i|r6_i|sREG\(7)))) # (!\regf_i|Mux55~0_combout\ & (\regf_i|r2_i|sREG\(7))))) # (!\prog_i|oQ[17]~2_combout\ & (((\regf_i|Mux55~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|r2_i|sREG\(7),
	datab => \prog_i|oQ[17]~2_combout\,
	datac => \regf_i|r6_i|sREG\(7),
	datad => \regf_i|Mux55~0_combout\,
	combout => \regf_i|Mux55~1_combout\);

-- Location: LCCOMB_X31_Y16_N24
\regf_i|Mux55~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux55~2_combout\ = (!\prog_i|Equal3~0_combout\ & (!\prog_i|oQ[3]~3_combout\ & \regf_i|Mux55~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prog_i|Equal3~0_combout\,
	datac => \prog_i|oQ[3]~3_combout\,
	datad => \regf_i|Mux55~1_combout\,
	combout => \regf_i|Mux55~2_combout\);

-- Location: FF_X32_Y15_N1
\regf_i|r6_i|sREG[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux25~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r6_i|sREG\(6));

-- Location: FF_X32_Y17_N31
\regf_i|r0_i|sREG[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux25~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r0_i|sREG\(6));

-- Location: FF_X32_Y16_N31
\regf_i|r2_i|sREG[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux25~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r2_i|sREG\(6));

-- Location: LCCOMB_X32_Y16_N30
\regf_i|Mux56~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux56~0_combout\ = (\prog_i|oQ[18]~1_combout\ & (((\prog_i|oQ[17]~2_combout\)))) # (!\prog_i|oQ[18]~1_combout\ & ((\prog_i|oQ[17]~2_combout\ & ((\regf_i|r2_i|sREG\(6)))) # (!\prog_i|oQ[17]~2_combout\ & (\regf_i|r0_i|sREG\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|r0_i|sREG\(6),
	datab => \prog_i|oQ[18]~1_combout\,
	datac => \regf_i|r2_i|sREG\(6),
	datad => \prog_i|oQ[17]~2_combout\,
	combout => \regf_i|Mux56~0_combout\);

-- Location: LCCOMB_X32_Y15_N0
\regf_i|Mux56~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux56~1_combout\ = (\prog_i|oQ[18]~1_combout\ & ((\regf_i|Mux56~0_combout\ & ((\regf_i|r6_i|sREG\(6)))) # (!\regf_i|Mux56~0_combout\ & (\regf_i|r4_i|sREG\(6))))) # (!\prog_i|oQ[18]~1_combout\ & (((\regf_i|Mux56~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prog_i|oQ[18]~1_combout\,
	datab => \regf_i|r4_i|sREG\(6),
	datac => \regf_i|r6_i|sREG\(6),
	datad => \regf_i|Mux56~0_combout\,
	combout => \regf_i|Mux56~1_combout\);

-- Location: LCCOMB_X32_Y15_N26
\regf_i|Mux56~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux56~2_combout\ = (!\prog_i|oQ[3]~3_combout\ & (!\prog_i|Equal3~0_combout\ & \regf_i|Mux56~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prog_i|oQ[3]~3_combout\,
	datac => \prog_i|Equal3~0_combout\,
	datad => \regf_i|Mux56~1_combout\,
	combout => \regf_i|Mux56~2_combout\);

-- Location: LCCOMB_X35_Y16_N12
\alu_i|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Add1~12_combout\ = ((\sB[6]~27_combout\ $ (\regf_i|Mux56~2_combout\ $ (\alu_i|Add1~11\)))) # (GND)
-- \alu_i|Add1~13\ = CARRY((\sB[6]~27_combout\ & (\regf_i|Mux56~2_combout\ & !\alu_i|Add1~11\)) # (!\sB[6]~27_combout\ & ((\regf_i|Mux56~2_combout\) # (!\alu_i|Add1~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sB[6]~27_combout\,
	datab => \regf_i|Mux56~2_combout\,
	datad => VCC,
	cin => \alu_i|Add1~11\,
	combout => \alu_i|Add1~12_combout\,
	cout => \alu_i|Add1~13\);

-- Location: LCCOMB_X34_Y16_N12
\alu_i|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Add0~12_combout\ = ((\sB[6]~27_combout\ $ (\regf_i|Mux56~2_combout\ $ (!\alu_i|Add0~11\)))) # (GND)
-- \alu_i|Add0~13\ = CARRY((\sB[6]~27_combout\ & ((\regf_i|Mux56~2_combout\) # (!\alu_i|Add0~11\))) # (!\sB[6]~27_combout\ & (\regf_i|Mux56~2_combout\ & !\alu_i|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sB[6]~27_combout\,
	datab => \regf_i|Mux56~2_combout\,
	datad => VCC,
	cin => \alu_i|Add0~11\,
	combout => \alu_i|Add0~12_combout\,
	cout => \alu_i|Add0~13\);

-- Location: LCCOMB_X33_Y15_N18
\alu_i|Mux25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Mux25~0_combout\ = (\alu_i|Mux30~10_combout\) # ((\cu_i|Mux27~0_combout\ & (\alu_i|Add1~12_combout\)) # (!\cu_i|Mux27~0_combout\ & ((\alu_i|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_i|Mux27~0_combout\,
	datab => \alu_i|Mux30~10_combout\,
	datac => \alu_i|Add1~12_combout\,
	datad => \alu_i|Add0~12_combout\,
	combout => \alu_i|Mux25~0_combout\);

-- Location: LCCOMB_X33_Y15_N12
\Mux25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (!\cu_i|Mux34~0_combout\ & ((\cu_i|Mux35~2_combout\ & ((\alu_i|Mux25~0_combout\))) # (!\cu_i|Mux35~2_combout\ & (\Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \cu_i|Mux34~0_combout\,
	datac => \cu_i|Mux35~2_combout\,
	datad => \alu_i|Mux25~0_combout\,
	combout => \Mux25~0_combout\);

-- Location: FF_X32_Y16_N21
\regf_i|r4_i|sREG[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux25~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r4_i|sREG\(6));

-- Location: LCCOMB_X32_Y16_N20
\regf_i|Mux88~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux88~0_combout\ = (!\sRA2[0]~2_combout\ & ((\sRA2[1]~0_combout\ & ((\regf_i|r6_i|sREG\(6)))) # (!\sRA2[1]~0_combout\ & (\regf_i|r4_i|sREG\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sRA2[0]~2_combout\,
	datab => \sRA2[1]~0_combout\,
	datac => \regf_i|r4_i|sREG\(6),
	datad => \regf_i|r6_i|sREG\(6),
	combout => \regf_i|Mux88~0_combout\);

-- Location: FF_X33_Y15_N13
\regf_i|r3_i|sREG[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Mux25~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \regf_i|Mux30~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r3_i|sREG\(6));

-- Location: LCCOMB_X32_Y17_N30
\regf_i|Mux88~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux88~1_combout\ = (\sRA2[0]~2_combout\ & ((\sRA2[1]~0_combout\))) # (!\sRA2[0]~2_combout\ & (\regf_i|r0_i|sREG\(6) & !\sRA2[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sRA2[0]~2_combout\,
	datac => \regf_i|r0_i|sREG\(6),
	datad => \sRA2[1]~0_combout\,
	combout => \regf_i|Mux88~1_combout\);

-- Location: LCCOMB_X32_Y16_N28
\regf_i|Mux88~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux88~2_combout\ = (\sRA2[1]~0_combout\ & ((\regf_i|Mux88~1_combout\ & (\regf_i|r3_i|sREG\(6))) # (!\regf_i|Mux88~1_combout\ & ((\regf_i|r2_i|sREG\(6)))))) # (!\sRA2[1]~0_combout\ & (((\regf_i|Mux88~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|r3_i|sREG\(6),
	datab => \sRA2[1]~0_combout\,
	datac => \regf_i|r2_i|sREG\(6),
	datad => \regf_i|Mux88~1_combout\,
	combout => \regf_i|Mux88~2_combout\);

-- Location: LCCOMB_X32_Y16_N18
\sB[6]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sB[6]~26_combout\ = (\sB[0]~6_combout\ & ((\sRA2[2]~1_combout\ & (\regf_i|Mux88~0_combout\)) # (!\sRA2[2]~1_combout\ & ((\regf_i|Mux88~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sRA2[2]~1_combout\,
	datab => \regf_i|Mux88~0_combout\,
	datac => \sB[0]~6_combout\,
	datad => \regf_i|Mux88~2_combout\,
	combout => \sB[6]~26_combout\);

-- Location: LCCOMB_X32_Y16_N24
\sB[6]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sB[6]~27_combout\ = (\sB[4]~21_combout\) # (\sB[6]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sB[4]~21_combout\,
	datad => \sB[6]~26_combout\,
	combout => \sB[6]~27_combout\);

-- Location: LCCOMB_X34_Y16_N14
\alu_i|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Add0~14_combout\ = (\sB[7]~29_combout\ & ((\regf_i|Mux55~2_combout\ & (\alu_i|Add0~13\ & VCC)) # (!\regf_i|Mux55~2_combout\ & (!\alu_i|Add0~13\)))) # (!\sB[7]~29_combout\ & ((\regf_i|Mux55~2_combout\ & (!\alu_i|Add0~13\)) # 
-- (!\regf_i|Mux55~2_combout\ & ((\alu_i|Add0~13\) # (GND)))))
-- \alu_i|Add0~15\ = CARRY((\sB[7]~29_combout\ & (!\regf_i|Mux55~2_combout\ & !\alu_i|Add0~13\)) # (!\sB[7]~29_combout\ & ((!\alu_i|Add0~13\) # (!\regf_i|Mux55~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sB[7]~29_combout\,
	datab => \regf_i|Mux55~2_combout\,
	datad => VCC,
	cin => \alu_i|Add0~13\,
	combout => \alu_i|Add0~14_combout\,
	cout => \alu_i|Add0~15\);

-- Location: LCCOMB_X35_Y16_N14
\alu_i|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Add1~14_combout\ = (\sB[7]~29_combout\ & ((\regf_i|Mux55~2_combout\ & (!\alu_i|Add1~13\)) # (!\regf_i|Mux55~2_combout\ & ((\alu_i|Add1~13\) # (GND))))) # (!\sB[7]~29_combout\ & ((\regf_i|Mux55~2_combout\ & (\alu_i|Add1~13\ & VCC)) # 
-- (!\regf_i|Mux55~2_combout\ & (!\alu_i|Add1~13\))))
-- \alu_i|Add1~15\ = CARRY((\sB[7]~29_combout\ & ((!\alu_i|Add1~13\) # (!\regf_i|Mux55~2_combout\))) # (!\sB[7]~29_combout\ & (!\regf_i|Mux55~2_combout\ & !\alu_i|Add1~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sB[7]~29_combout\,
	datab => \regf_i|Mux55~2_combout\,
	datad => VCC,
	cin => \alu_i|Add1~13\,
	combout => \alu_i|Add1~14_combout\,
	cout => \alu_i|Add1~15\);

-- Location: LCCOMB_X34_Y18_N28
\alu_i|Mux24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Mux24~0_combout\ = (\alu_i|Mux30~10_combout\) # ((\cu_i|Mux27~0_combout\ & ((\alu_i|Add1~14_combout\))) # (!\cu_i|Mux27~0_combout\ & (\alu_i|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_i|Mux30~10_combout\,
	datab => \cu_i|Mux27~0_combout\,
	datac => \alu_i|Add0~14_combout\,
	datad => \alu_i|Add1~14_combout\,
	combout => \alu_i|Mux24~0_combout\);

-- Location: LCCOMB_X34_Y18_N22
\alu_i|Mux28~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Mux28~5_combout\ = ((\alu_i|Mux28~4_combout\) # ((\cu_i|Mux25~0_combout\ & \cu_i|Mux18~0_combout\))) # (!\cu_i|Mux26~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_i|Mux26~0_combout\,
	datab => \cu_i|Mux25~0_combout\,
	datac => \cu_i|Mux18~0_combout\,
	datad => \alu_i|Mux28~4_combout\,
	combout => \alu_i|Mux28~5_combout\);

-- Location: LCCOMB_X34_Y18_N0
\Mux31~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~3_combout\ = (\alu_i|Mux29~0_combout\ & (!\alu_i|Mux24~0_combout\ & (!\alu_i|Mux28~5_combout\ & !\alu_i|Mux25~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_i|Mux29~0_combout\,
	datab => \alu_i|Mux24~0_combout\,
	datac => \alu_i|Mux28~5_combout\,
	datad => \alu_i|Mux25~0_combout\,
	combout => \Mux31~3_combout\);

-- Location: LCCOMB_X34_Y18_N2
\Mux31~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~4_combout\ = (\cu_i|Mux34~0_combout\ & (\alu_i|Mux31~1_combout\ & (\Mux31~2_combout\ & \Mux31~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_i|Mux34~0_combout\,
	datab => \alu_i|Mux31~1_combout\,
	datac => \Mux31~2_combout\,
	datad => \Mux31~3_combout\,
	combout => \Mux31~4_combout\);

-- Location: LCCOMB_X34_Y18_N24
\Mux31~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~5_combout\ = (\Mux31~4_combout\) # ((\Mux31~6_combout\ & \alu_i|Mux31~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~6_combout\,
	datac => \alu_i|Mux31~1_combout\,
	datad => \Mux31~4_combout\,
	combout => \Mux31~5_combout\);

-- Location: FF_X35_Y17_N21
\regf_i|r6_i|sREG[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux31~5_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r6_i|sREG\(0));

-- Location: FF_X34_Y18_N25
\regf_i|r3_i|sREG[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Mux31~5_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \regf_i|Mux30~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r3_i|sREG\(0));

-- Location: LCCOMB_X35_Y18_N20
\sB[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sB[0]~8_combout\ = (\sRA2[2]~1_combout\ & (((\regf_i|r4_i|sREG\(0)) # (\sRA2[1]~0_combout\)))) # (!\sRA2[2]~1_combout\ & (\regf_i|r0_i|sREG\(0) & ((!\sRA2[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|r0_i|sREG\(0),
	datab => \regf_i|r4_i|sREG\(0),
	datac => \sRA2[2]~1_combout\,
	datad => \sRA2[1]~0_combout\,
	combout => \sB[0]~8_combout\);

-- Location: LCCOMB_X35_Y18_N30
\sB[0]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sB[0]~9_combout\ = (\sRA2[0]~2_combout\ & ((\regf_i|r3_i|sREG\(0)) # ((\sB[0]~8_combout\)))) # (!\sRA2[0]~2_combout\ & (((\regf_i|r2_i|sREG\(0) & !\sB[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sRA2[0]~2_combout\,
	datab => \regf_i|r3_i|sREG\(0),
	datac => \regf_i|r2_i|sREG\(0),
	datad => \sB[0]~8_combout\,
	combout => \sB[0]~9_combout\);

-- Location: LCCOMB_X35_Y17_N16
\sB[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sB[0]~10_combout\ = (\sB[0]~9_combout\ & (\sRA2[1]~0_combout\ & ((!\sB[0]~8_combout\)))) # (!\sB[0]~9_combout\ & (\sB[0]~8_combout\ & ((\regf_i|r6_i|sREG\(0)) # (!\sRA2[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sRA2[1]~0_combout\,
	datab => \regf_i|r6_i|sREG\(0),
	datac => \sB[0]~9_combout\,
	datad => \sB[0]~8_combout\,
	combout => \sB[0]~10_combout\);

-- Location: LCCOMB_X35_Y17_N22
\sB[0]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sB[0]~11_combout\ = (\sB[0]~62_combout\) # ((\sB[0]~6_combout\ & \sB[0]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sB[0]~62_combout\,
	datac => \sB[0]~6_combout\,
	datad => \sB[0]~10_combout\,
	combout => \sB[0]~11_combout\);

-- Location: LCCOMB_X34_Y18_N18
\alu_i|Mux31~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Mux31~0_combout\ = (\cu_i|Mux26~0_combout\ & ((\cu_i|Mux27~0_combout\ & ((\alu_i|Add1~0_combout\))) # (!\cu_i|Mux27~0_combout\ & (\alu_i|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_i|Mux27~0_combout\,
	datab => \cu_i|Mux26~0_combout\,
	datac => \alu_i|Add0~0_combout\,
	datad => \alu_i|Add1~0_combout\,
	combout => \alu_i|Mux31~0_combout\);

-- Location: LCCOMB_X34_Y18_N4
\alu_i|Mux31~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Mux31~1_combout\ = (\alu_i|Mux31~0_combout\ & ((!\cu_i|Mux25~0_combout\) # (!\cu_i|Mux18~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_i|Mux18~0_combout\,
	datab => \cu_i|Mux25~0_combout\,
	datad => \alu_i|Mux31~0_combout\,
	combout => \alu_i|Mux31~1_combout\);

-- Location: FF_X32_Y18_N15
\pc_i|sPC[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Add0~12_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_i|sPC\(8));

-- Location: LCCOMB_X32_Y18_N14
\Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (\pc_i|sPC\(8) & (\Add0~11\ $ (GND))) # (!\pc_i|sPC\(8) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((\pc_i|sPC\(8) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_i|sPC\(8),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X33_Y16_N30
\Mux23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (!\cu_i|Mux34~0_combout\ & ((\cu_i|Mux35~2_combout\ & ((\alu_i|Mux23~0_combout\))) # (!\cu_i|Mux35~2_combout\ & (\Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_i|Mux34~0_combout\,
	datab => \cu_i|Mux35~2_combout\,
	datac => \Add0~12_combout\,
	datad => \alu_i|Mux23~0_combout\,
	combout => \Mux23~0_combout\);

-- Location: FF_X32_Y16_N15
\regf_i|r4_i|sREG[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux23~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r4_i|sREG\(8));

-- Location: FF_X33_Y16_N19
\regf_i|r6_i|sREG[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux23~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r6_i|sREG\(8));

-- Location: LCCOMB_X32_Y16_N14
\regf_i|Mux86~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux86~0_combout\ = (!\sRA2[0]~2_combout\ & ((\sRA2[1]~0_combout\ & ((\regf_i|r6_i|sREG\(8)))) # (!\sRA2[1]~0_combout\ & (\regf_i|r4_i|sREG\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sRA2[0]~2_combout\,
	datab => \sRA2[1]~0_combout\,
	datac => \regf_i|r4_i|sREG\(8),
	datad => \regf_i|r6_i|sREG\(8),
	combout => \regf_i|Mux86~0_combout\);

-- Location: FF_X33_Y16_N31
\regf_i|r3_i|sREG[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Mux23~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \regf_i|Mux30~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r3_i|sREG\(8));

-- Location: FF_X32_Y16_N13
\regf_i|r2_i|sREG[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux23~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r2_i|sREG\(8));

-- Location: LCCOMB_X31_Y16_N22
\regf_i|r0_i|sREG[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|r0_i|sREG[8]~feeder_combout\ = \Mux23~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux23~0_combout\,
	combout => \regf_i|r0_i|sREG[8]~feeder_combout\);

-- Location: FF_X31_Y16_N23
\regf_i|r0_i|sREG[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \regf_i|r0_i|sREG[8]~feeder_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \regf_i|Mux30~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r0_i|sREG\(8));

-- Location: LCCOMB_X32_Y16_N6
\regf_i|Mux86~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux86~1_combout\ = (\sRA2[0]~2_combout\ & ((\sRA2[1]~0_combout\))) # (!\sRA2[0]~2_combout\ & (\regf_i|r0_i|sREG\(8) & !\sRA2[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regf_i|r0_i|sREG\(8),
	datac => \sRA2[0]~2_combout\,
	datad => \sRA2[1]~0_combout\,
	combout => \regf_i|Mux86~1_combout\);

-- Location: LCCOMB_X32_Y16_N12
\regf_i|Mux86~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux86~2_combout\ = (\sRA2[1]~0_combout\ & ((\regf_i|Mux86~1_combout\ & (\regf_i|r3_i|sREG\(8))) # (!\regf_i|Mux86~1_combout\ & ((\regf_i|r2_i|sREG\(8)))))) # (!\sRA2[1]~0_combout\ & (((\regf_i|Mux86~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|r3_i|sREG\(8),
	datab => \sRA2[1]~0_combout\,
	datac => \regf_i|r2_i|sREG\(8),
	datad => \regf_i|Mux86~1_combout\,
	combout => \regf_i|Mux86~2_combout\);

-- Location: LCCOMB_X32_Y16_N0
\sB[8]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sB[8]~30_combout\ = (\sB[0]~6_combout\ & ((\sRA2[2]~1_combout\ & (\regf_i|Mux86~0_combout\)) # (!\sRA2[2]~1_combout\ & ((\regf_i|Mux86~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sRA2[2]~1_combout\,
	datab => \regf_i|Mux86~0_combout\,
	datac => \sB[0]~6_combout\,
	datad => \regf_i|Mux86~2_combout\,
	combout => \sB[8]~30_combout\);

-- Location: LCCOMB_X32_Y16_N2
\sB[8]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sB[8]~31_combout\ = (\sB[8]~30_combout\) # ((!\cu_i|Mux28~0_combout\ & \prog_i|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_i|Mux28~0_combout\,
	datac => \prog_i|Equal0~1_combout\,
	datad => \sB[8]~30_combout\,
	combout => \sB[8]~31_combout\);

-- Location: LCCOMB_X31_Y18_N16
\regf_i|Mux54~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux54~0_combout\ = (\prog_i|oQ[17]~2_combout\ & ((\regf_i|r2_i|sREG\(8)) # ((\prog_i|oQ[18]~1_combout\)))) # (!\prog_i|oQ[17]~2_combout\ & (((\regf_i|r0_i|sREG\(8) & !\prog_i|oQ[18]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|r2_i|sREG\(8),
	datab => \regf_i|r0_i|sREG\(8),
	datac => \prog_i|oQ[17]~2_combout\,
	datad => \prog_i|oQ[18]~1_combout\,
	combout => \regf_i|Mux54~0_combout\);

-- Location: LCCOMB_X33_Y16_N18
\regf_i|Mux54~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux54~1_combout\ = (\prog_i|oQ[18]~1_combout\ & ((\regf_i|Mux54~0_combout\ & ((\regf_i|r6_i|sREG\(8)))) # (!\regf_i|Mux54~0_combout\ & (\regf_i|r4_i|sREG\(8))))) # (!\prog_i|oQ[18]~1_combout\ & (((\regf_i|Mux54~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|r4_i|sREG\(8),
	datab => \prog_i|oQ[18]~1_combout\,
	datac => \regf_i|r6_i|sREG\(8),
	datad => \regf_i|Mux54~0_combout\,
	combout => \regf_i|Mux54~1_combout\);

-- Location: LCCOMB_X33_Y16_N8
\regf_i|Mux54~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux54~2_combout\ = (!\prog_i|Equal3~0_combout\ & (!\prog_i|oQ[3]~3_combout\ & \regf_i|Mux54~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \prog_i|Equal3~0_combout\,
	datac => \prog_i|oQ[3]~3_combout\,
	datad => \regf_i|Mux54~1_combout\,
	combout => \regf_i|Mux54~2_combout\);

-- Location: LCCOMB_X35_Y16_N16
\alu_i|Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Add1~16_combout\ = ((\sB[8]~31_combout\ $ (\regf_i|Mux54~2_combout\ $ (\alu_i|Add1~15\)))) # (GND)
-- \alu_i|Add1~17\ = CARRY((\sB[8]~31_combout\ & (\regf_i|Mux54~2_combout\ & !\alu_i|Add1~15\)) # (!\sB[8]~31_combout\ & ((\regf_i|Mux54~2_combout\) # (!\alu_i|Add1~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sB[8]~31_combout\,
	datab => \regf_i|Mux54~2_combout\,
	datad => VCC,
	cin => \alu_i|Add1~15\,
	combout => \alu_i|Add1~16_combout\,
	cout => \alu_i|Add1~17\);

-- Location: LCCOMB_X34_Y16_N16
\alu_i|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Add0~16_combout\ = ((\regf_i|Mux54~2_combout\ $ (\sB[8]~31_combout\ $ (!\alu_i|Add0~15\)))) # (GND)
-- \alu_i|Add0~17\ = CARRY((\regf_i|Mux54~2_combout\ & ((\sB[8]~31_combout\) # (!\alu_i|Add0~15\))) # (!\regf_i|Mux54~2_combout\ & (\sB[8]~31_combout\ & !\alu_i|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|Mux54~2_combout\,
	datab => \sB[8]~31_combout\,
	datad => VCC,
	cin => \alu_i|Add0~15\,
	combout => \alu_i|Add0~16_combout\,
	cout => \alu_i|Add0~17\);

-- Location: LCCOMB_X33_Y16_N24
\alu_i|Mux23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Mux23~0_combout\ = (!\alu_i|Mux30~10_combout\ & ((\cu_i|Mux27~0_combout\ & (\alu_i|Add1~16_combout\)) # (!\cu_i|Mux27~0_combout\ & ((\alu_i|Add0~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_i|Mux30~10_combout\,
	datab => \cu_i|Mux27~0_combout\,
	datac => \alu_i|Add1~16_combout\,
	datad => \alu_i|Add0~16_combout\,
	combout => \alu_i|Mux23~0_combout\);

-- Location: FF_X32_Y18_N17
\pc_i|sPC[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Add0~14_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_i|sPC\(9));

-- Location: LCCOMB_X32_Y18_N16
\Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\pc_i|sPC\(9) & (!\Add0~13\)) # (!\pc_i|sPC\(9) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!\pc_i|sPC\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_i|sPC\(9),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X33_Y16_N22
\Mux22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (!\cu_i|Mux34~0_combout\ & ((\cu_i|Mux35~2_combout\ & ((\alu_i|Mux22~0_combout\))) # (!\cu_i|Mux35~2_combout\ & (\Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_i|Mux34~0_combout\,
	datab => \cu_i|Mux35~2_combout\,
	datac => \Add0~14_combout\,
	datad => \alu_i|Mux22~0_combout\,
	combout => \Mux22~0_combout\);

-- Location: FF_X33_Y17_N31
\regf_i|r2_i|sREG[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux22~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r2_i|sREG\(9));

-- Location: FF_X34_Y14_N5
\regf_i|r6_i|sREG[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux22~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r6_i|sREG\(9));

-- Location: FF_X33_Y17_N13
\regf_i|r0_i|sREG[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux22~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r0_i|sREG\(9));

-- Location: FF_X34_Y17_N25
\regf_i|r4_i|sREG[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux22~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r4_i|sREG\(9));

-- Location: LCCOMB_X34_Y17_N24
\regf_i|Mux53~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux53~0_combout\ = (\prog_i|oQ[18]~1_combout\ & (((\regf_i|r4_i|sREG\(9)) # (\prog_i|oQ[17]~2_combout\)))) # (!\prog_i|oQ[18]~1_combout\ & (\regf_i|r0_i|sREG\(9) & ((!\prog_i|oQ[17]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|r0_i|sREG\(9),
	datab => \prog_i|oQ[18]~1_combout\,
	datac => \regf_i|r4_i|sREG\(9),
	datad => \prog_i|oQ[17]~2_combout\,
	combout => \regf_i|Mux53~0_combout\);

-- Location: LCCOMB_X34_Y17_N22
\regf_i|Mux53~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux53~1_combout\ = (\prog_i|oQ[17]~2_combout\ & ((\regf_i|Mux53~0_combout\ & ((\regf_i|r6_i|sREG\(9)))) # (!\regf_i|Mux53~0_combout\ & (\regf_i|r2_i|sREG\(9))))) # (!\prog_i|oQ[17]~2_combout\ & (((\regf_i|Mux53~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prog_i|oQ[17]~2_combout\,
	datab => \regf_i|r2_i|sREG\(9),
	datac => \regf_i|r6_i|sREG\(9),
	datad => \regf_i|Mux53~0_combout\,
	combout => \regf_i|Mux53~1_combout\);

-- Location: LCCOMB_X34_Y17_N8
\regf_i|Mux53~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux53~2_combout\ = (!\prog_i|Equal3~0_combout\ & (\regf_i|Mux53~1_combout\ & !\prog_i|oQ[3]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \prog_i|Equal3~0_combout\,
	datac => \regf_i|Mux53~1_combout\,
	datad => \prog_i|oQ[3]~3_combout\,
	combout => \regf_i|Mux53~2_combout\);

-- Location: LCCOMB_X34_Y14_N4
\regf_i|Mux85~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux85~0_combout\ = (!\sRA2[0]~2_combout\ & ((\sRA2[1]~0_combout\ & ((\regf_i|r6_i|sREG\(9)))) # (!\sRA2[1]~0_combout\ & (\regf_i|r4_i|sREG\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sRA2[1]~0_combout\,
	datab => \regf_i|r4_i|sREG\(9),
	datac => \regf_i|r6_i|sREG\(9),
	datad => \sRA2[0]~2_combout\,
	combout => \regf_i|Mux85~0_combout\);

-- Location: FF_X33_Y16_N23
\regf_i|r3_i|sREG[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Mux22~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \regf_i|Mux30~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r3_i|sREG\(9));

-- Location: LCCOMB_X33_Y17_N6
\regf_i|Mux85~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux85~1_combout\ = (\sRA2[0]~2_combout\ & ((\sRA2[1]~0_combout\))) # (!\sRA2[0]~2_combout\ & (\regf_i|r0_i|sREG\(9) & !\sRA2[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|r0_i|sREG\(9),
	datac => \sRA2[0]~2_combout\,
	datad => \sRA2[1]~0_combout\,
	combout => \regf_i|Mux85~1_combout\);

-- Location: LCCOMB_X33_Y17_N24
\regf_i|Mux85~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux85~2_combout\ = (\sRA2[1]~0_combout\ & ((\regf_i|Mux85~1_combout\ & ((\regf_i|r3_i|sREG\(9)))) # (!\regf_i|Mux85~1_combout\ & (\regf_i|r2_i|sREG\(9))))) # (!\sRA2[1]~0_combout\ & (((\regf_i|Mux85~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|r2_i|sREG\(9),
	datab => \regf_i|r3_i|sREG\(9),
	datac => \sRA2[1]~0_combout\,
	datad => \regf_i|Mux85~1_combout\,
	combout => \regf_i|Mux85~2_combout\);

-- Location: LCCOMB_X34_Y14_N18
\sB[9]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sB[9]~32_combout\ = (\sB[0]~6_combout\ & ((\sRA2[2]~1_combout\ & (\regf_i|Mux85~0_combout\)) # (!\sRA2[2]~1_combout\ & ((\regf_i|Mux85~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sB[0]~6_combout\,
	datab => \regf_i|Mux85~0_combout\,
	datac => \sRA2[2]~1_combout\,
	datad => \regf_i|Mux85~2_combout\,
	combout => \sB[9]~32_combout\);

-- Location: LCCOMB_X34_Y14_N16
\sB[9]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sB[9]~33_combout\ = (\sB[9]~32_combout\) # ((!\cu_i|Mux28~0_combout\ & \prog_i|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_i|Mux28~0_combout\,
	datac => \prog_i|Equal0~1_combout\,
	datad => \sB[9]~32_combout\,
	combout => \sB[9]~33_combout\);

-- Location: LCCOMB_X35_Y16_N18
\alu_i|Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Add1~18_combout\ = (\regf_i|Mux53~2_combout\ & ((\sB[9]~33_combout\ & (!\alu_i|Add1~17\)) # (!\sB[9]~33_combout\ & (\alu_i|Add1~17\ & VCC)))) # (!\regf_i|Mux53~2_combout\ & ((\sB[9]~33_combout\ & ((\alu_i|Add1~17\) # (GND))) # (!\sB[9]~33_combout\ 
-- & (!\alu_i|Add1~17\))))
-- \alu_i|Add1~19\ = CARRY((\regf_i|Mux53~2_combout\ & (\sB[9]~33_combout\ & !\alu_i|Add1~17\)) # (!\regf_i|Mux53~2_combout\ & ((\sB[9]~33_combout\) # (!\alu_i|Add1~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|Mux53~2_combout\,
	datab => \sB[9]~33_combout\,
	datad => VCC,
	cin => \alu_i|Add1~17\,
	combout => \alu_i|Add1~18_combout\,
	cout => \alu_i|Add1~19\);

-- Location: LCCOMB_X34_Y16_N18
\alu_i|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Add0~18_combout\ = (\regf_i|Mux53~2_combout\ & ((\sB[9]~33_combout\ & (\alu_i|Add0~17\ & VCC)) # (!\sB[9]~33_combout\ & (!\alu_i|Add0~17\)))) # (!\regf_i|Mux53~2_combout\ & ((\sB[9]~33_combout\ & (!\alu_i|Add0~17\)) # (!\sB[9]~33_combout\ & 
-- ((\alu_i|Add0~17\) # (GND)))))
-- \alu_i|Add0~19\ = CARRY((\regf_i|Mux53~2_combout\ & (!\sB[9]~33_combout\ & !\alu_i|Add0~17\)) # (!\regf_i|Mux53~2_combout\ & ((!\alu_i|Add0~17\) # (!\sB[9]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|Mux53~2_combout\,
	datab => \sB[9]~33_combout\,
	datad => VCC,
	cin => \alu_i|Add0~17\,
	combout => \alu_i|Add0~18_combout\,
	cout => \alu_i|Add0~19\);

-- Location: LCCOMB_X33_Y16_N20
\alu_i|Mux22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Mux22~0_combout\ = (\alu_i|Mux30~10_combout\) # ((\cu_i|Mux27~0_combout\ & (\alu_i|Add1~18_combout\)) # (!\cu_i|Mux27~0_combout\ & ((\alu_i|Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_i|Mux30~10_combout\,
	datab => \cu_i|Mux27~0_combout\,
	datac => \alu_i|Add1~18_combout\,
	datad => \alu_i|Add0~18_combout\,
	combout => \alu_i|Mux22~0_combout\);

-- Location: FF_X32_Y18_N19
\pc_i|sPC[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Add0~16_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_i|sPC\(10));

-- Location: LCCOMB_X32_Y18_N18
\Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (\pc_i|sPC\(10) & (\Add0~15\ $ (GND))) # (!\pc_i|sPC\(10) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((\pc_i|sPC\(10) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_i|sPC\(10),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X33_Y16_N14
\Mux21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (!\cu_i|Mux34~0_combout\ & ((\cu_i|Mux35~2_combout\ & ((\alu_i|Mux21~0_combout\))) # (!\cu_i|Mux35~2_combout\ & (\Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_i|Mux34~0_combout\,
	datab => \cu_i|Mux35~2_combout\,
	datac => \Add0~16_combout\,
	datad => \alu_i|Mux21~0_combout\,
	combout => \Mux21~0_combout\);

-- Location: FF_X33_Y16_N11
\regf_i|r6_i|sREG[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux21~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r6_i|sREG\(10));

-- Location: FF_X32_Y16_N9
\regf_i|r4_i|sREG[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux21~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r4_i|sREG\(10));

-- Location: LCCOMB_X32_Y16_N8
\regf_i|Mux84~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux84~0_combout\ = (!\sRA2[0]~2_combout\ & ((\sRA2[1]~0_combout\ & (\regf_i|r6_i|sREG\(10))) # (!\sRA2[1]~0_combout\ & ((\regf_i|r4_i|sREG\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sRA2[0]~2_combout\,
	datab => \regf_i|r6_i|sREG\(10),
	datac => \regf_i|r4_i|sREG\(10),
	datad => \sRA2[1]~0_combout\,
	combout => \regf_i|Mux84~0_combout\);

-- Location: FF_X33_Y16_N15
\regf_i|r3_i|sREG[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Mux21~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \regf_i|Mux30~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r3_i|sREG\(10));

-- Location: FF_X32_Y16_N11
\regf_i|r2_i|sREG[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux21~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r2_i|sREG\(10));

-- Location: LCCOMB_X31_Y16_N8
\regf_i|r0_i|sREG[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|r0_i|sREG[10]~feeder_combout\ = \Mux21~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux21~0_combout\,
	combout => \regf_i|r0_i|sREG[10]~feeder_combout\);

-- Location: FF_X31_Y16_N9
\regf_i|r0_i|sREG[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \regf_i|r0_i|sREG[10]~feeder_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \regf_i|Mux30~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r0_i|sREG\(10));

-- Location: LCCOMB_X31_Y16_N14
\regf_i|Mux84~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux84~1_combout\ = (\sRA2[1]~0_combout\ & ((\sRA2[0]~2_combout\))) # (!\sRA2[1]~0_combout\ & (\regf_i|r0_i|sREG\(10) & !\sRA2[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regf_i|r0_i|sREG\(10),
	datac => \sRA2[1]~0_combout\,
	datad => \sRA2[0]~2_combout\,
	combout => \regf_i|Mux84~1_combout\);

-- Location: LCCOMB_X32_Y16_N10
\regf_i|Mux84~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux84~2_combout\ = (\sRA2[1]~0_combout\ & ((\regf_i|Mux84~1_combout\ & (\regf_i|r3_i|sREG\(10))) # (!\regf_i|Mux84~1_combout\ & ((\regf_i|r2_i|sREG\(10)))))) # (!\sRA2[1]~0_combout\ & (((\regf_i|Mux84~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|r3_i|sREG\(10),
	datab => \sRA2[1]~0_combout\,
	datac => \regf_i|r2_i|sREG\(10),
	datad => \regf_i|Mux84~1_combout\,
	combout => \regf_i|Mux84~2_combout\);

-- Location: LCCOMB_X32_Y16_N16
\sB[10]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sB[10]~34_combout\ = (\sB[0]~6_combout\ & ((\sRA2[2]~1_combout\ & (\regf_i|Mux84~0_combout\)) # (!\sRA2[2]~1_combout\ & ((\regf_i|Mux84~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sRA2[2]~1_combout\,
	datab => \regf_i|Mux84~0_combout\,
	datac => \sB[0]~6_combout\,
	datad => \regf_i|Mux84~2_combout\,
	combout => \sB[10]~34_combout\);

-- Location: LCCOMB_X32_Y16_N22
\sB[10]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sB[10]~35_combout\ = (\sB[10]~34_combout\) # ((!\cu_i|Mux28~0_combout\ & \prog_i|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_i|Mux28~0_combout\,
	datac => \prog_i|Equal0~1_combout\,
	datad => \sB[10]~34_combout\,
	combout => \sB[10]~35_combout\);

-- Location: LCCOMB_X31_Y18_N30
\regf_i|Mux52~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux52~0_combout\ = (\prog_i|oQ[17]~2_combout\ & (((\regf_i|r2_i|sREG\(10)) # (\prog_i|oQ[18]~1_combout\)))) # (!\prog_i|oQ[17]~2_combout\ & (\regf_i|r0_i|sREG\(10) & ((!\prog_i|oQ[18]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|r0_i|sREG\(10),
	datab => \regf_i|r2_i|sREG\(10),
	datac => \prog_i|oQ[17]~2_combout\,
	datad => \prog_i|oQ[18]~1_combout\,
	combout => \regf_i|Mux52~0_combout\);

-- Location: LCCOMB_X33_Y16_N10
\regf_i|Mux52~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux52~1_combout\ = (\prog_i|oQ[18]~1_combout\ & ((\regf_i|Mux52~0_combout\ & ((\regf_i|r6_i|sREG\(10)))) # (!\regf_i|Mux52~0_combout\ & (\regf_i|r4_i|sREG\(10))))) # (!\prog_i|oQ[18]~1_combout\ & (((\regf_i|Mux52~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|r4_i|sREG\(10),
	datab => \prog_i|oQ[18]~1_combout\,
	datac => \regf_i|r6_i|sREG\(10),
	datad => \regf_i|Mux52~0_combout\,
	combout => \regf_i|Mux52~1_combout\);

-- Location: LCCOMB_X33_Y16_N4
\regf_i|Mux52~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux52~2_combout\ = (!\prog_i|Equal3~0_combout\ & (!\prog_i|oQ[3]~3_combout\ & \regf_i|Mux52~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \prog_i|Equal3~0_combout\,
	datac => \prog_i|oQ[3]~3_combout\,
	datad => \regf_i|Mux52~1_combout\,
	combout => \regf_i|Mux52~2_combout\);

-- Location: LCCOMB_X34_Y16_N20
\alu_i|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Add0~20_combout\ = ((\sB[10]~35_combout\ $ (\regf_i|Mux52~2_combout\ $ (!\alu_i|Add0~19\)))) # (GND)
-- \alu_i|Add0~21\ = CARRY((\sB[10]~35_combout\ & ((\regf_i|Mux52~2_combout\) # (!\alu_i|Add0~19\))) # (!\sB[10]~35_combout\ & (\regf_i|Mux52~2_combout\ & !\alu_i|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sB[10]~35_combout\,
	datab => \regf_i|Mux52~2_combout\,
	datad => VCC,
	cin => \alu_i|Add0~19\,
	combout => \alu_i|Add0~20_combout\,
	cout => \alu_i|Add0~21\);

-- Location: LCCOMB_X35_Y16_N20
\alu_i|Add1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Add1~20_combout\ = ((\sB[10]~35_combout\ $ (\regf_i|Mux52~2_combout\ $ (\alu_i|Add1~19\)))) # (GND)
-- \alu_i|Add1~21\ = CARRY((\sB[10]~35_combout\ & (\regf_i|Mux52~2_combout\ & !\alu_i|Add1~19\)) # (!\sB[10]~35_combout\ & ((\regf_i|Mux52~2_combout\) # (!\alu_i|Add1~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sB[10]~35_combout\,
	datab => \regf_i|Mux52~2_combout\,
	datad => VCC,
	cin => \alu_i|Add1~19\,
	combout => \alu_i|Add1~20_combout\,
	cout => \alu_i|Add1~21\);

-- Location: LCCOMB_X33_Y16_N12
\alu_i|Mux21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Mux21~0_combout\ = (\alu_i|Mux30~10_combout\) # ((\cu_i|Mux27~0_combout\ & ((\alu_i|Add1~20_combout\))) # (!\cu_i|Mux27~0_combout\ & (\alu_i|Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_i|Add0~20_combout\,
	datab => \cu_i|Mux27~0_combout\,
	datac => \alu_i|Add1~20_combout\,
	datad => \alu_i|Mux30~10_combout\,
	combout => \alu_i|Mux21~0_combout\);

-- Location: FF_X32_Y18_N21
\pc_i|sPC[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Add0~18_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_i|sPC\(11));

-- Location: LCCOMB_X32_Y18_N20
\Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (\pc_i|sPC\(11) & (!\Add0~17\)) # (!\pc_i|sPC\(11) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!\pc_i|sPC\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_i|sPC\(11),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X33_Y16_N16
\Mux20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (!\cu_i|Mux34~0_combout\ & ((\cu_i|Mux35~2_combout\ & ((\alu_i|Mux20~0_combout\))) # (!\cu_i|Mux35~2_combout\ & (\Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_i|Mux34~0_combout\,
	datab => \cu_i|Mux35~2_combout\,
	datac => \Add0~18_combout\,
	datad => \alu_i|Mux20~0_combout\,
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X33_Y17_N26
\regf_i|r2_i|sREG[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|r2_i|sREG[11]~feeder_combout\ = \Mux20~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux20~0_combout\,
	combout => \regf_i|r2_i|sREG[11]~feeder_combout\);

-- Location: FF_X33_Y17_N27
\regf_i|r2_i|sREG[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \regf_i|r2_i|sREG[11]~feeder_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \regf_i|Mux30~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r2_i|sREG\(11));

-- Location: FF_X33_Y16_N17
\regf_i|r3_i|sREG[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Mux20~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \regf_i|Mux30~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r3_i|sREG\(11));

-- Location: LCCOMB_X33_Y17_N8
\regf_i|r0_i|sREG[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|r0_i|sREG[11]~feeder_combout\ = \Mux20~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux20~0_combout\,
	combout => \regf_i|r0_i|sREG[11]~feeder_combout\);

-- Location: FF_X33_Y17_N9
\regf_i|r0_i|sREG[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \regf_i|r0_i|sREG[11]~feeder_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \regf_i|Mux30~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r0_i|sREG\(11));

-- Location: LCCOMB_X33_Y17_N2
\regf_i|Mux83~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux83~1_combout\ = (\sRA2[0]~2_combout\ & ((\sRA2[1]~0_combout\))) # (!\sRA2[0]~2_combout\ & (\regf_i|r0_i|sREG\(11) & !\sRA2[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regf_i|r0_i|sREG\(11),
	datac => \sRA2[0]~2_combout\,
	datad => \sRA2[1]~0_combout\,
	combout => \regf_i|Mux83~1_combout\);

-- Location: LCCOMB_X33_Y17_N0
\regf_i|Mux83~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux83~2_combout\ = (\sRA2[1]~0_combout\ & ((\regf_i|Mux83~1_combout\ & ((\regf_i|r3_i|sREG\(11)))) # (!\regf_i|Mux83~1_combout\ & (\regf_i|r2_i|sREG\(11))))) # (!\sRA2[1]~0_combout\ & (((\regf_i|Mux83~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|r2_i|sREG\(11),
	datab => \regf_i|r3_i|sREG\(11),
	datac => \sRA2[1]~0_combout\,
	datad => \regf_i|Mux83~1_combout\,
	combout => \regf_i|Mux83~2_combout\);

-- Location: FF_X34_Y17_N29
\regf_i|r4_i|sREG[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux20~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r4_i|sREG\(11));

-- Location: FF_X33_Y16_N27
\regf_i|r6_i|sREG[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux20~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r6_i|sREG\(11));

-- Location: LCCOMB_X33_Y16_N26
\regf_i|Mux83~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux83~0_combout\ = (!\sRA2[0]~2_combout\ & ((\sRA2[1]~0_combout\ & ((\regf_i|r6_i|sREG\(11)))) # (!\sRA2[1]~0_combout\ & (\regf_i|r4_i|sREG\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sRA2[1]~0_combout\,
	datab => \regf_i|r4_i|sREG\(11),
	datac => \regf_i|r6_i|sREG\(11),
	datad => \sRA2[0]~2_combout\,
	combout => \regf_i|Mux83~0_combout\);

-- Location: LCCOMB_X34_Y14_N6
\sB[11]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sB[11]~36_combout\ = (\sB[0]~6_combout\ & ((\sRA2[2]~1_combout\ & ((\regf_i|Mux83~0_combout\))) # (!\sRA2[2]~1_combout\ & (\regf_i|Mux83~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sB[0]~6_combout\,
	datab => \sRA2[2]~1_combout\,
	datac => \regf_i|Mux83~2_combout\,
	datad => \regf_i|Mux83~0_combout\,
	combout => \sB[11]~36_combout\);

-- Location: LCCOMB_X34_Y14_N24
\sB[11]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sB[11]~37_combout\ = (\sB[11]~36_combout\) # ((\sRA2[0]~2_combout\ & !\cu_i|Mux28~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sRA2[0]~2_combout\,
	datac => \cu_i|Mux28~0_combout\,
	datad => \sB[11]~36_combout\,
	combout => \sB[11]~37_combout\);

-- Location: LCCOMB_X34_Y17_N10
\regf_i|Mux51~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux51~0_combout\ = (\prog_i|oQ[18]~1_combout\ & (((\regf_i|r4_i|sREG\(11)) # (\prog_i|oQ[17]~2_combout\)))) # (!\prog_i|oQ[18]~1_combout\ & (\regf_i|r0_i|sREG\(11) & ((!\prog_i|oQ[17]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|r0_i|sREG\(11),
	datab => \regf_i|r4_i|sREG\(11),
	datac => \prog_i|oQ[18]~1_combout\,
	datad => \prog_i|oQ[17]~2_combout\,
	combout => \regf_i|Mux51~0_combout\);

-- Location: LCCOMB_X34_Y17_N16
\regf_i|Mux51~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux51~1_combout\ = (\prog_i|oQ[17]~2_combout\ & ((\regf_i|Mux51~0_combout\ & (\regf_i|r6_i|sREG\(11))) # (!\regf_i|Mux51~0_combout\ & ((\regf_i|r2_i|sREG\(11)))))) # (!\prog_i|oQ[17]~2_combout\ & (((\regf_i|Mux51~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prog_i|oQ[17]~2_combout\,
	datab => \regf_i|r6_i|sREG\(11),
	datac => \regf_i|r2_i|sREG\(11),
	datad => \regf_i|Mux51~0_combout\,
	combout => \regf_i|Mux51~1_combout\);

-- Location: LCCOMB_X34_Y17_N26
\regf_i|Mux51~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux51~2_combout\ = (!\prog_i|oQ[3]~3_combout\ & (!\prog_i|Equal3~0_combout\ & \regf_i|Mux51~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prog_i|oQ[3]~3_combout\,
	datab => \prog_i|Equal3~0_combout\,
	datad => \regf_i|Mux51~1_combout\,
	combout => \regf_i|Mux51~2_combout\);

-- Location: LCCOMB_X35_Y16_N22
\alu_i|Add1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Add1~22_combout\ = (\sB[11]~37_combout\ & ((\regf_i|Mux51~2_combout\ & (!\alu_i|Add1~21\)) # (!\regf_i|Mux51~2_combout\ & ((\alu_i|Add1~21\) # (GND))))) # (!\sB[11]~37_combout\ & ((\regf_i|Mux51~2_combout\ & (\alu_i|Add1~21\ & VCC)) # 
-- (!\regf_i|Mux51~2_combout\ & (!\alu_i|Add1~21\))))
-- \alu_i|Add1~23\ = CARRY((\sB[11]~37_combout\ & ((!\alu_i|Add1~21\) # (!\regf_i|Mux51~2_combout\))) # (!\sB[11]~37_combout\ & (!\regf_i|Mux51~2_combout\ & !\alu_i|Add1~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sB[11]~37_combout\,
	datab => \regf_i|Mux51~2_combout\,
	datad => VCC,
	cin => \alu_i|Add1~21\,
	combout => \alu_i|Add1~22_combout\,
	cout => \alu_i|Add1~23\);

-- Location: LCCOMB_X34_Y16_N22
\alu_i|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Add0~22_combout\ = (\regf_i|Mux51~2_combout\ & ((\sB[11]~37_combout\ & (\alu_i|Add0~21\ & VCC)) # (!\sB[11]~37_combout\ & (!\alu_i|Add0~21\)))) # (!\regf_i|Mux51~2_combout\ & ((\sB[11]~37_combout\ & (!\alu_i|Add0~21\)) # (!\sB[11]~37_combout\ & 
-- ((\alu_i|Add0~21\) # (GND)))))
-- \alu_i|Add0~23\ = CARRY((\regf_i|Mux51~2_combout\ & (!\sB[11]~37_combout\ & !\alu_i|Add0~21\)) # (!\regf_i|Mux51~2_combout\ & ((!\alu_i|Add0~21\) # (!\sB[11]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|Mux51~2_combout\,
	datab => \sB[11]~37_combout\,
	datad => VCC,
	cin => \alu_i|Add0~21\,
	combout => \alu_i|Add0~22_combout\,
	cout => \alu_i|Add0~23\);

-- Location: LCCOMB_X33_Y16_N2
\alu_i|Mux20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Mux20~0_combout\ = (\alu_i|Mux30~10_combout\) # ((\cu_i|Mux27~0_combout\ & (\alu_i|Add1~22_combout\)) # (!\cu_i|Mux27~0_combout\ & ((\alu_i|Add0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_i|Mux30~10_combout\,
	datab => \cu_i|Mux27~0_combout\,
	datac => \alu_i|Add1~22_combout\,
	datad => \alu_i|Add0~22_combout\,
	combout => \alu_i|Mux20~0_combout\);

-- Location: FF_X32_Y18_N23
\pc_i|sPC[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Add0~20_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_i|sPC\(12));

-- Location: LCCOMB_X32_Y18_N22
\Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (\pc_i|sPC\(12) & (\Add0~19\ $ (GND))) # (!\pc_i|sPC\(12) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((\pc_i|sPC\(12) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_i|sPC\(12),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X33_Y15_N4
\Mux19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (!\cu_i|Mux34~0_combout\ & ((\cu_i|Mux35~2_combout\ & ((\alu_i|Mux19~0_combout\))) # (!\cu_i|Mux35~2_combout\ & (\Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~20_combout\,
	datab => \cu_i|Mux34~0_combout\,
	datac => \cu_i|Mux35~2_combout\,
	datad => \alu_i|Mux19~0_combout\,
	combout => \Mux19~0_combout\);

-- Location: FF_X32_Y15_N11
\regf_i|r6_i|sREG[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux19~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r6_i|sREG\(12));

-- Location: FF_X32_Y15_N21
\regf_i|r4_i|sREG[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux19~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r4_i|sREG\(12));

-- Location: LCCOMB_X36_Y18_N12
\regf_i|r2_i|sREG[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|r2_i|sREG[12]~feeder_combout\ = \Mux19~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux19~0_combout\,
	combout => \regf_i|r2_i|sREG[12]~feeder_combout\);

-- Location: FF_X36_Y18_N13
\regf_i|r2_i|sREG[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \regf_i|r2_i|sREG[12]~feeder_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \regf_i|Mux30~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r2_i|sREG\(12));

-- Location: LCCOMB_X36_Y18_N14
\regf_i|r0_i|sREG[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|r0_i|sREG[12]~feeder_combout\ = \Mux19~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux19~0_combout\,
	combout => \regf_i|r0_i|sREG[12]~feeder_combout\);

-- Location: FF_X36_Y18_N15
\regf_i|r0_i|sREG[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \regf_i|r0_i|sREG[12]~feeder_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \regf_i|Mux30~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r0_i|sREG\(12));

-- Location: LCCOMB_X36_Y18_N0
\regf_i|Mux50~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux50~0_combout\ = (\prog_i|oQ[17]~2_combout\ & ((\regf_i|r2_i|sREG\(12)) # ((\prog_i|oQ[18]~1_combout\)))) # (!\prog_i|oQ[17]~2_combout\ & (((\regf_i|r0_i|sREG\(12) & !\prog_i|oQ[18]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|r2_i|sREG\(12),
	datab => \regf_i|r0_i|sREG\(12),
	datac => \prog_i|oQ[17]~2_combout\,
	datad => \prog_i|oQ[18]~1_combout\,
	combout => \regf_i|Mux50~0_combout\);

-- Location: LCCOMB_X32_Y15_N28
\regf_i|Mux50~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux50~1_combout\ = (\prog_i|oQ[18]~1_combout\ & ((\regf_i|Mux50~0_combout\ & (\regf_i|r6_i|sREG\(12))) # (!\regf_i|Mux50~0_combout\ & ((\regf_i|r4_i|sREG\(12)))))) # (!\prog_i|oQ[18]~1_combout\ & (((\regf_i|Mux50~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|r6_i|sREG\(12),
	datab => \regf_i|r4_i|sREG\(12),
	datac => \prog_i|oQ[18]~1_combout\,
	datad => \regf_i|Mux50~0_combout\,
	combout => \regf_i|Mux50~1_combout\);

-- Location: LCCOMB_X32_Y15_N2
\regf_i|Mux50~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux50~2_combout\ = (!\prog_i|oQ[3]~3_combout\ & (!\prog_i|Equal3~0_combout\ & \regf_i|Mux50~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prog_i|oQ[3]~3_combout\,
	datac => \prog_i|Equal3~0_combout\,
	datad => \regf_i|Mux50~1_combout\,
	combout => \regf_i|Mux50~2_combout\);

-- Location: LCCOMB_X32_Y15_N20
\regf_i|Mux82~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux82~0_combout\ = (!\sRA2[0]~2_combout\ & ((\sRA2[1]~0_combout\ & (\regf_i|r6_i|sREG\(12))) # (!\sRA2[1]~0_combout\ & ((\regf_i|r4_i|sREG\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|r6_i|sREG\(12),
	datab => \sRA2[1]~0_combout\,
	datac => \regf_i|r4_i|sREG\(12),
	datad => \sRA2[0]~2_combout\,
	combout => \regf_i|Mux82~0_combout\);

-- Location: FF_X33_Y15_N5
\regf_i|r3_i|sREG[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Mux19~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \regf_i|Mux30~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r3_i|sREG\(12));

-- Location: LCCOMB_X36_Y18_N18
\regf_i|Mux82~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux82~1_combout\ = (\sRA2[1]~0_combout\ & ((\sRA2[0]~2_combout\))) # (!\sRA2[1]~0_combout\ & (\regf_i|r0_i|sREG\(12) & !\sRA2[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regf_i|r0_i|sREG\(12),
	datac => \sRA2[1]~0_combout\,
	datad => \sRA2[0]~2_combout\,
	combout => \regf_i|Mux82~1_combout\);

-- Location: LCCOMB_X36_Y18_N16
\regf_i|Mux82~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux82~2_combout\ = (\sRA2[1]~0_combout\ & ((\regf_i|Mux82~1_combout\ & ((\regf_i|r3_i|sREG\(12)))) # (!\regf_i|Mux82~1_combout\ & (\regf_i|r2_i|sREG\(12))))) # (!\sRA2[1]~0_combout\ & (((\regf_i|Mux82~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|r2_i|sREG\(12),
	datab => \regf_i|r3_i|sREG\(12),
	datac => \sRA2[1]~0_combout\,
	datad => \regf_i|Mux82~1_combout\,
	combout => \regf_i|Mux82~2_combout\);

-- Location: LCCOMB_X36_Y18_N10
\sB[12]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sB[12]~38_combout\ = (\sB[0]~6_combout\ & ((\sRA2[2]~1_combout\ & (\regf_i|Mux82~0_combout\)) # (!\sRA2[2]~1_combout\ & ((\regf_i|Mux82~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sRA2[2]~1_combout\,
	datab => \sB[0]~6_combout\,
	datac => \regf_i|Mux82~0_combout\,
	datad => \regf_i|Mux82~2_combout\,
	combout => \sB[12]~38_combout\);

-- Location: LCCOMB_X36_Y18_N24
\sB[12]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sB[12]~39_combout\ = (\sB[12]~38_combout\) # ((!\cu_i|Mux28~0_combout\ & ((\prog_i|Equal0~1_combout\) # (!\prog_i|oQ[17]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_i|Mux28~0_combout\,
	datab => \prog_i|oQ[17]~0_combout\,
	datac => \prog_i|Equal0~1_combout\,
	datad => \sB[12]~38_combout\,
	combout => \sB[12]~39_combout\);

-- Location: LCCOMB_X35_Y16_N24
\alu_i|Add1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Add1~24_combout\ = ((\regf_i|Mux50~2_combout\ $ (\sB[12]~39_combout\ $ (\alu_i|Add1~23\)))) # (GND)
-- \alu_i|Add1~25\ = CARRY((\regf_i|Mux50~2_combout\ & ((!\alu_i|Add1~23\) # (!\sB[12]~39_combout\))) # (!\regf_i|Mux50~2_combout\ & (!\sB[12]~39_combout\ & !\alu_i|Add1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|Mux50~2_combout\,
	datab => \sB[12]~39_combout\,
	datad => VCC,
	cin => \alu_i|Add1~23\,
	combout => \alu_i|Add1~24_combout\,
	cout => \alu_i|Add1~25\);

-- Location: LCCOMB_X34_Y16_N24
\alu_i|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Add0~24_combout\ = ((\regf_i|Mux50~2_combout\ $ (\sB[12]~39_combout\ $ (!\alu_i|Add0~23\)))) # (GND)
-- \alu_i|Add0~25\ = CARRY((\regf_i|Mux50~2_combout\ & ((\sB[12]~39_combout\) # (!\alu_i|Add0~23\))) # (!\regf_i|Mux50~2_combout\ & (\sB[12]~39_combout\ & !\alu_i|Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|Mux50~2_combout\,
	datab => \sB[12]~39_combout\,
	datad => VCC,
	cin => \alu_i|Add0~23\,
	combout => \alu_i|Add0~24_combout\,
	cout => \alu_i|Add0~25\);

-- Location: LCCOMB_X33_Y15_N6
\alu_i|Mux19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Mux19~0_combout\ = (\alu_i|Mux30~10_combout\) # ((\cu_i|Mux27~0_combout\ & (\alu_i|Add1~24_combout\)) # (!\cu_i|Mux27~0_combout\ & ((\alu_i|Add0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_i|Mux27~0_combout\,
	datab => \alu_i|Mux30~10_combout\,
	datac => \alu_i|Add1~24_combout\,
	datad => \alu_i|Add0~24_combout\,
	combout => \alu_i|Mux19~0_combout\);

-- Location: FF_X32_Y18_N25
\pc_i|sPC[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Add0~22_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_i|sPC\(13));

-- Location: LCCOMB_X32_Y18_N24
\Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (\pc_i|sPC\(13) & (!\Add0~21\)) # (!\pc_i|sPC\(13) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!\pc_i|sPC\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_i|sPC\(13),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X35_Y14_N8
\Mux18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (!\cu_i|Mux34~0_combout\ & ((\cu_i|Mux35~2_combout\ & ((\alu_i|Mux18~0_combout\))) # (!\cu_i|Mux35~2_combout\ & (\Add0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_i|Mux35~2_combout\,
	datab => \cu_i|Mux34~0_combout\,
	datac => \Add0~22_combout\,
	datad => \alu_i|Mux18~0_combout\,
	combout => \Mux18~0_combout\);

-- Location: FF_X34_Y14_N15
\regf_i|r6_i|sREG[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux18~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r6_i|sREG\(13));

-- Location: FF_X35_Y18_N19
\regf_i|r2_i|sREG[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux18~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r2_i|sREG\(13));

-- Location: LCCOMB_X36_Y18_N30
\regf_i|r0_i|sREG[13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|r0_i|sREG[13]~feeder_combout\ = \Mux18~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux18~0_combout\,
	combout => \regf_i|r0_i|sREG[13]~feeder_combout\);

-- Location: FF_X36_Y18_N31
\regf_i|r0_i|sREG[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \regf_i|r0_i|sREG[13]~feeder_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \regf_i|Mux30~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r0_i|sREG\(13));

-- Location: FF_X34_Y17_N5
\regf_i|r4_i|sREG[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux18~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r4_i|sREG\(13));

-- Location: LCCOMB_X34_Y17_N4
\regf_i|Mux49~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux49~0_combout\ = (\prog_i|oQ[18]~1_combout\ & (((\regf_i|r4_i|sREG\(13)) # (\prog_i|oQ[17]~2_combout\)))) # (!\prog_i|oQ[18]~1_combout\ & (\regf_i|r0_i|sREG\(13) & ((!\prog_i|oQ[17]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|r0_i|sREG\(13),
	datab => \prog_i|oQ[18]~1_combout\,
	datac => \regf_i|r4_i|sREG\(13),
	datad => \prog_i|oQ[17]~2_combout\,
	combout => \regf_i|Mux49~0_combout\);

-- Location: LCCOMB_X34_Y17_N14
\regf_i|Mux49~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux49~1_combout\ = (\regf_i|Mux49~0_combout\ & ((\regf_i|r6_i|sREG\(13)) # ((!\prog_i|oQ[17]~2_combout\)))) # (!\regf_i|Mux49~0_combout\ & (((\regf_i|r2_i|sREG\(13) & \prog_i|oQ[17]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|r6_i|sREG\(13),
	datab => \regf_i|r2_i|sREG\(13),
	datac => \regf_i|Mux49~0_combout\,
	datad => \prog_i|oQ[17]~2_combout\,
	combout => \regf_i|Mux49~1_combout\);

-- Location: LCCOMB_X34_Y17_N20
\regf_i|Mux49~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux49~2_combout\ = (!\prog_i|oQ[3]~3_combout\ & (\regf_i|Mux49~1_combout\ & !\prog_i|Equal3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prog_i|oQ[3]~3_combout\,
	datac => \regf_i|Mux49~1_combout\,
	datad => \prog_i|Equal3~0_combout\,
	combout => \regf_i|Mux49~2_combout\);

-- Location: LCCOMB_X34_Y14_N14
\regf_i|Mux81~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux81~0_combout\ = (!\sRA2[0]~2_combout\ & ((\sRA2[1]~0_combout\ & ((\regf_i|r6_i|sREG\(13)))) # (!\sRA2[1]~0_combout\ & (\regf_i|r4_i|sREG\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sRA2[1]~0_combout\,
	datab => \regf_i|r4_i|sREG\(13),
	datac => \regf_i|r6_i|sREG\(13),
	datad => \sRA2[0]~2_combout\,
	combout => \regf_i|Mux81~0_combout\);

-- Location: FF_X35_Y14_N9
\regf_i|r3_i|sREG[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Mux18~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \regf_i|Mux30~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r3_i|sREG\(13));

-- Location: LCCOMB_X36_Y18_N28
\regf_i|Mux81~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux81~1_combout\ = (\sRA2[1]~0_combout\ & ((\sRA2[0]~2_combout\))) # (!\sRA2[1]~0_combout\ & (\regf_i|r0_i|sREG\(13) & !\sRA2[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|r0_i|sREG\(13),
	datac => \sRA2[1]~0_combout\,
	datad => \sRA2[0]~2_combout\,
	combout => \regf_i|Mux81~1_combout\);

-- Location: LCCOMB_X35_Y18_N18
\regf_i|Mux81~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux81~2_combout\ = (\sRA2[1]~0_combout\ & ((\regf_i|Mux81~1_combout\ & (\regf_i|r3_i|sREG\(13))) # (!\regf_i|Mux81~1_combout\ & ((\regf_i|r2_i|sREG\(13)))))) # (!\sRA2[1]~0_combout\ & (((\regf_i|Mux81~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sRA2[1]~0_combout\,
	datab => \regf_i|r3_i|sREG\(13),
	datac => \regf_i|r2_i|sREG\(13),
	datad => \regf_i|Mux81~1_combout\,
	combout => \regf_i|Mux81~2_combout\);

-- Location: LCCOMB_X34_Y14_N12
\sB[13]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sB[13]~40_combout\ = (\sB[0]~6_combout\ & ((\sRA2[2]~1_combout\ & (\regf_i|Mux81~0_combout\)) # (!\sRA2[2]~1_combout\ & ((\regf_i|Mux81~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sB[0]~6_combout\,
	datab => \sRA2[2]~1_combout\,
	datac => \regf_i|Mux81~0_combout\,
	datad => \regf_i|Mux81~2_combout\,
	combout => \sB[13]~40_combout\);

-- Location: LCCOMB_X34_Y14_N26
\sB[13]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sB[13]~41_combout\ = (\sB[13]~40_combout\) # ((!\cu_i|Mux28~0_combout\ & \prog_i|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_i|Mux28~0_combout\,
	datac => \prog_i|Equal0~1_combout\,
	datad => \sB[13]~40_combout\,
	combout => \sB[13]~41_combout\);

-- Location: LCCOMB_X35_Y16_N26
\alu_i|Add1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Add1~26_combout\ = (\regf_i|Mux49~2_combout\ & ((\sB[13]~41_combout\ & (!\alu_i|Add1~25\)) # (!\sB[13]~41_combout\ & (\alu_i|Add1~25\ & VCC)))) # (!\regf_i|Mux49~2_combout\ & ((\sB[13]~41_combout\ & ((\alu_i|Add1~25\) # (GND))) # 
-- (!\sB[13]~41_combout\ & (!\alu_i|Add1~25\))))
-- \alu_i|Add1~27\ = CARRY((\regf_i|Mux49~2_combout\ & (\sB[13]~41_combout\ & !\alu_i|Add1~25\)) # (!\regf_i|Mux49~2_combout\ & ((\sB[13]~41_combout\) # (!\alu_i|Add1~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|Mux49~2_combout\,
	datab => \sB[13]~41_combout\,
	datad => VCC,
	cin => \alu_i|Add1~25\,
	combout => \alu_i|Add1~26_combout\,
	cout => \alu_i|Add1~27\);

-- Location: LCCOMB_X34_Y16_N26
\alu_i|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Add0~26_combout\ = (\sB[13]~41_combout\ & ((\regf_i|Mux49~2_combout\ & (\alu_i|Add0~25\ & VCC)) # (!\regf_i|Mux49~2_combout\ & (!\alu_i|Add0~25\)))) # (!\sB[13]~41_combout\ & ((\regf_i|Mux49~2_combout\ & (!\alu_i|Add0~25\)) # 
-- (!\regf_i|Mux49~2_combout\ & ((\alu_i|Add0~25\) # (GND)))))
-- \alu_i|Add0~27\ = CARRY((\sB[13]~41_combout\ & (!\regf_i|Mux49~2_combout\ & !\alu_i|Add0~25\)) # (!\sB[13]~41_combout\ & ((!\alu_i|Add0~25\) # (!\regf_i|Mux49~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sB[13]~41_combout\,
	datab => \regf_i|Mux49~2_combout\,
	datad => VCC,
	cin => \alu_i|Add0~25\,
	combout => \alu_i|Add0~26_combout\,
	cout => \alu_i|Add0~27\);

-- Location: LCCOMB_X35_Y14_N10
\alu_i|Mux18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Mux18~0_combout\ = (!\alu_i|Mux30~10_combout\ & ((\cu_i|Mux27~0_combout\ & (\alu_i|Add1~26_combout\)) # (!\cu_i|Mux27~0_combout\ & ((\alu_i|Add0~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_i|Mux30~10_combout\,
	datab => \alu_i|Add1~26_combout\,
	datac => \cu_i|Mux27~0_combout\,
	datad => \alu_i|Add0~26_combout\,
	combout => \alu_i|Mux18~0_combout\);

-- Location: FF_X32_Y18_N27
\pc_i|sPC[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Add0~24_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_i|sPC\(14));

-- Location: LCCOMB_X32_Y18_N26
\Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (\pc_i|sPC\(14) & (\Add0~23\ $ (GND))) # (!\pc_i|sPC\(14) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((\pc_i|sPC\(14) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_i|sPC\(14),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X35_Y14_N14
\Mux17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (!\cu_i|Mux34~0_combout\ & ((\cu_i|Mux35~2_combout\ & ((\alu_i|Mux17~0_combout\))) # (!\cu_i|Mux35~2_combout\ & (\Add0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_i|Mux35~2_combout\,
	datab => \cu_i|Mux34~0_combout\,
	datac => \Add0~24_combout\,
	datad => \alu_i|Mux17~0_combout\,
	combout => \Mux17~0_combout\);

-- Location: FF_X36_Y14_N21
\regf_i|r6_i|sREG[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux17~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r6_i|sREG\(14));

-- Location: FF_X36_Y14_N9
\regf_i|r4_i|sREG[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux17~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r4_i|sREG\(14));

-- Location: LCCOMB_X36_Y14_N8
\regf_i|Mux80~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux80~0_combout\ = (!\sRA2[0]~2_combout\ & ((\sRA2[1]~0_combout\ & (\regf_i|r6_i|sREG\(14))) # (!\sRA2[1]~0_combout\ & ((\regf_i|r4_i|sREG\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sRA2[1]~0_combout\,
	datab => \regf_i|r6_i|sREG\(14),
	datac => \regf_i|r4_i|sREG\(14),
	datad => \sRA2[0]~2_combout\,
	combout => \regf_i|Mux80~0_combout\);

-- Location: FF_X35_Y14_N13
\regf_i|r2_i|sREG[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux17~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r2_i|sREG\(14));

-- Location: FF_X35_Y14_N15
\regf_i|r3_i|sREG[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Mux17~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \regf_i|Mux30~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r3_i|sREG\(14));

-- Location: FF_X34_Y14_N21
\regf_i|r0_i|sREG[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux17~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r0_i|sREG\(14));

-- Location: LCCOMB_X34_Y14_N20
\regf_i|Mux80~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux80~1_combout\ = (\sRA2[1]~0_combout\ & ((\sRA2[0]~2_combout\))) # (!\sRA2[1]~0_combout\ & (\regf_i|r0_i|sREG\(14) & !\sRA2[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sRA2[1]~0_combout\,
	datac => \regf_i|r0_i|sREG\(14),
	datad => \sRA2[0]~2_combout\,
	combout => \regf_i|Mux80~1_combout\);

-- Location: LCCOMB_X36_Y14_N16
\regf_i|Mux80~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux80~2_combout\ = (\regf_i|Mux80~1_combout\ & (((\regf_i|r3_i|sREG\(14)) # (!\sRA2[1]~0_combout\)))) # (!\regf_i|Mux80~1_combout\ & (\regf_i|r2_i|sREG\(14) & ((\sRA2[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|r2_i|sREG\(14),
	datab => \regf_i|r3_i|sREG\(14),
	datac => \regf_i|Mux80~1_combout\,
	datad => \sRA2[1]~0_combout\,
	combout => \regf_i|Mux80~2_combout\);

-- Location: LCCOMB_X36_Y14_N2
\sB[14]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sB[14]~42_combout\ = (\sB[0]~6_combout\ & ((\sRA2[2]~1_combout\ & (\regf_i|Mux80~0_combout\)) # (!\sRA2[2]~1_combout\ & ((\regf_i|Mux80~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sRA2[2]~1_combout\,
	datab => \sB[0]~6_combout\,
	datac => \regf_i|Mux80~0_combout\,
	datad => \regf_i|Mux80~2_combout\,
	combout => \sB[14]~42_combout\);

-- Location: LCCOMB_X36_Y14_N4
\sB[14]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sB[14]~43_combout\ = (\sB[14]~42_combout\) # ((\prog_i|Equal0~1_combout\ & !\cu_i|Mux28~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \prog_i|Equal0~1_combout\,
	datac => \cu_i|Mux28~0_combout\,
	datad => \sB[14]~42_combout\,
	combout => \sB[14]~43_combout\);

-- Location: LCCOMB_X36_Y14_N10
\regf_i|Mux48~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux48~0_combout\ = (\prog_i|oQ[17]~2_combout\ & ((\regf_i|r2_i|sREG\(14)) # ((\prog_i|oQ[18]~1_combout\)))) # (!\prog_i|oQ[17]~2_combout\ & (((\regf_i|r0_i|sREG\(14) & !\prog_i|oQ[18]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|r2_i|sREG\(14),
	datab => \regf_i|r0_i|sREG\(14),
	datac => \prog_i|oQ[17]~2_combout\,
	datad => \prog_i|oQ[18]~1_combout\,
	combout => \regf_i|Mux48~0_combout\);

-- Location: LCCOMB_X36_Y14_N20
\regf_i|Mux48~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux48~1_combout\ = (\prog_i|oQ[18]~1_combout\ & ((\regf_i|Mux48~0_combout\ & ((\regf_i|r6_i|sREG\(14)))) # (!\regf_i|Mux48~0_combout\ & (\regf_i|r4_i|sREG\(14))))) # (!\prog_i|oQ[18]~1_combout\ & (((\regf_i|Mux48~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|r4_i|sREG\(14),
	datab => \prog_i|oQ[18]~1_combout\,
	datac => \regf_i|r6_i|sREG\(14),
	datad => \regf_i|Mux48~0_combout\,
	combout => \regf_i|Mux48~1_combout\);

-- Location: LCCOMB_X36_Y14_N14
\regf_i|Mux48~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux48~2_combout\ = (!\prog_i|Equal3~0_combout\ & (!\prog_i|oQ[3]~3_combout\ & \regf_i|Mux48~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prog_i|Equal3~0_combout\,
	datab => \prog_i|oQ[3]~3_combout\,
	datad => \regf_i|Mux48~1_combout\,
	combout => \regf_i|Mux48~2_combout\);

-- Location: LCCOMB_X35_Y16_N28
\alu_i|Add1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Add1~28_combout\ = ((\sB[14]~43_combout\ $ (\regf_i|Mux48~2_combout\ $ (\alu_i|Add1~27\)))) # (GND)
-- \alu_i|Add1~29\ = CARRY((\sB[14]~43_combout\ & (\regf_i|Mux48~2_combout\ & !\alu_i|Add1~27\)) # (!\sB[14]~43_combout\ & ((\regf_i|Mux48~2_combout\) # (!\alu_i|Add1~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sB[14]~43_combout\,
	datab => \regf_i|Mux48~2_combout\,
	datad => VCC,
	cin => \alu_i|Add1~27\,
	combout => \alu_i|Add1~28_combout\,
	cout => \alu_i|Add1~29\);

-- Location: LCCOMB_X34_Y16_N28
\alu_i|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Add0~28_combout\ = ((\regf_i|Mux48~2_combout\ $ (\sB[14]~43_combout\ $ (!\alu_i|Add0~27\)))) # (GND)
-- \alu_i|Add0~29\ = CARRY((\regf_i|Mux48~2_combout\ & ((\sB[14]~43_combout\) # (!\alu_i|Add0~27\))) # (!\regf_i|Mux48~2_combout\ & (\sB[14]~43_combout\ & !\alu_i|Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|Mux48~2_combout\,
	datab => \sB[14]~43_combout\,
	datad => VCC,
	cin => \alu_i|Add0~27\,
	combout => \alu_i|Add0~28_combout\,
	cout => \alu_i|Add0~29\);

-- Location: LCCOMB_X35_Y14_N16
\alu_i|Mux17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Mux17~0_combout\ = (\alu_i|Mux30~10_combout\) # ((\cu_i|Mux27~0_combout\ & (\alu_i|Add1~28_combout\)) # (!\cu_i|Mux27~0_combout\ & ((\alu_i|Add0~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_i|Mux30~10_combout\,
	datab => \alu_i|Add1~28_combout\,
	datac => \cu_i|Mux27~0_combout\,
	datad => \alu_i|Add0~28_combout\,
	combout => \alu_i|Mux17~0_combout\);

-- Location: FF_X32_Y18_N29
\pc_i|sPC[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Add0~26_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_i|sPC\(15));

-- Location: LCCOMB_X32_Y18_N28
\Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (\pc_i|sPC\(15) & (!\Add0~25\)) # (!\pc_i|sPC\(15) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!\pc_i|sPC\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_i|sPC\(15),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X35_Y14_N20
\Mux16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (!\cu_i|Mux34~0_combout\ & ((\cu_i|Mux35~2_combout\ & ((\alu_i|Mux16~0_combout\))) # (!\cu_i|Mux35~2_combout\ & (\Add0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_i|Mux35~2_combout\,
	datab => \Add0~26_combout\,
	datac => \cu_i|Mux34~0_combout\,
	datad => \alu_i|Mux16~0_combout\,
	combout => \Mux16~0_combout\);

-- Location: FF_X35_Y14_N23
\regf_i|r2_i|sREG[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux16~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r2_i|sREG\(15));

-- Location: FF_X36_Y14_N31
\regf_i|r6_i|sREG[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux16~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r6_i|sREG\(15));

-- Location: FF_X36_Y14_N23
\regf_i|r4_i|sREG[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux16~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r4_i|sREG\(15));

-- Location: FF_X34_Y14_N11
\regf_i|r0_i|sREG[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux16~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r0_i|sREG\(15));

-- Location: LCCOMB_X36_Y14_N28
\regf_i|Mux47~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux47~0_combout\ = (\prog_i|oQ[17]~2_combout\ & (((\prog_i|oQ[18]~1_combout\)))) # (!\prog_i|oQ[17]~2_combout\ & ((\prog_i|oQ[18]~1_combout\ & (\regf_i|r4_i|sREG\(15))) # (!\prog_i|oQ[18]~1_combout\ & ((\regf_i|r0_i|sREG\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|r4_i|sREG\(15),
	datab => \regf_i|r0_i|sREG\(15),
	datac => \prog_i|oQ[17]~2_combout\,
	datad => \prog_i|oQ[18]~1_combout\,
	combout => \regf_i|Mux47~0_combout\);

-- Location: LCCOMB_X36_Y14_N24
\regf_i|Mux47~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux47~1_combout\ = (\prog_i|oQ[17]~2_combout\ & ((\regf_i|Mux47~0_combout\ & ((\regf_i|r6_i|sREG\(15)))) # (!\regf_i|Mux47~0_combout\ & (\regf_i|r2_i|sREG\(15))))) # (!\prog_i|oQ[17]~2_combout\ & (((\regf_i|Mux47~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|r2_i|sREG\(15),
	datab => \regf_i|r6_i|sREG\(15),
	datac => \prog_i|oQ[17]~2_combout\,
	datad => \regf_i|Mux47~0_combout\,
	combout => \regf_i|Mux47~1_combout\);

-- Location: LCCOMB_X36_Y14_N6
\regf_i|Mux47~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux47~2_combout\ = (!\prog_i|Equal3~0_combout\ & (!\prog_i|oQ[3]~3_combout\ & \regf_i|Mux47~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prog_i|Equal3~0_combout\,
	datab => \prog_i|oQ[3]~3_combout\,
	datad => \regf_i|Mux47~1_combout\,
	combout => \regf_i|Mux47~2_combout\);

-- Location: LCCOMB_X36_Y14_N30
\regf_i|Mux79~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux79~0_combout\ = (!\sRA2[0]~2_combout\ & ((\sRA2[1]~0_combout\ & ((\regf_i|r6_i|sREG\(15)))) # (!\sRA2[1]~0_combout\ & (\regf_i|r4_i|sREG\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sRA2[1]~0_combout\,
	datab => \regf_i|r4_i|sREG\(15),
	datac => \regf_i|r6_i|sREG\(15),
	datad => \sRA2[0]~2_combout\,
	combout => \regf_i|Mux79~0_combout\);

-- Location: FF_X35_Y14_N21
\regf_i|r3_i|sREG[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Mux16~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \regf_i|Mux30~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r3_i|sREG\(15));

-- Location: LCCOMB_X34_Y14_N10
\regf_i|Mux79~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux79~1_combout\ = (\sRA2[1]~0_combout\ & ((\sRA2[0]~2_combout\))) # (!\sRA2[1]~0_combout\ & (\regf_i|r0_i|sREG\(15) & !\sRA2[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sRA2[1]~0_combout\,
	datac => \regf_i|r0_i|sREG\(15),
	datad => \sRA2[0]~2_combout\,
	combout => \regf_i|Mux79~1_combout\);

-- Location: LCCOMB_X35_Y14_N22
\regf_i|Mux79~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux79~2_combout\ = (\sRA2[1]~0_combout\ & ((\regf_i|Mux79~1_combout\ & (\regf_i|r3_i|sREG\(15))) # (!\regf_i|Mux79~1_combout\ & ((\regf_i|r2_i|sREG\(15)))))) # (!\sRA2[1]~0_combout\ & (((\regf_i|Mux79~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sRA2[1]~0_combout\,
	datab => \regf_i|r3_i|sREG\(15),
	datac => \regf_i|r2_i|sREG\(15),
	datad => \regf_i|Mux79~1_combout\,
	combout => \regf_i|Mux79~2_combout\);

-- Location: LCCOMB_X36_Y14_N12
\sB[15]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sB[15]~44_combout\ = (\sB[0]~6_combout\ & ((\sRA2[2]~1_combout\ & (\regf_i|Mux79~0_combout\)) # (!\sRA2[2]~1_combout\ & ((\regf_i|Mux79~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|Mux79~0_combout\,
	datab => \sB[0]~6_combout\,
	datac => \sRA2[2]~1_combout\,
	datad => \regf_i|Mux79~2_combout\,
	combout => \sB[15]~44_combout\);

-- Location: LCCOMB_X36_Y14_N18
\sB[15]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sB[15]~45_combout\ = (\sB[15]~44_combout\) # ((\prog_i|Equal0~1_combout\ & !\cu_i|Mux28~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \prog_i|Equal0~1_combout\,
	datac => \cu_i|Mux28~0_combout\,
	datad => \sB[15]~44_combout\,
	combout => \sB[15]~45_combout\);

-- Location: LCCOMB_X34_Y16_N30
\alu_i|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Add0~30_combout\ = (\regf_i|Mux47~2_combout\ & ((\sB[15]~45_combout\ & (\alu_i|Add0~29\ & VCC)) # (!\sB[15]~45_combout\ & (!\alu_i|Add0~29\)))) # (!\regf_i|Mux47~2_combout\ & ((\sB[15]~45_combout\ & (!\alu_i|Add0~29\)) # (!\sB[15]~45_combout\ & 
-- ((\alu_i|Add0~29\) # (GND)))))
-- \alu_i|Add0~31\ = CARRY((\regf_i|Mux47~2_combout\ & (!\sB[15]~45_combout\ & !\alu_i|Add0~29\)) # (!\regf_i|Mux47~2_combout\ & ((!\alu_i|Add0~29\) # (!\sB[15]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|Mux47~2_combout\,
	datab => \sB[15]~45_combout\,
	datad => VCC,
	cin => \alu_i|Add0~29\,
	combout => \alu_i|Add0~30_combout\,
	cout => \alu_i|Add0~31\);

-- Location: LCCOMB_X35_Y16_N30
\alu_i|Add1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Add1~30_combout\ = (\sB[15]~45_combout\ & ((\regf_i|Mux47~2_combout\ & (!\alu_i|Add1~29\)) # (!\regf_i|Mux47~2_combout\ & ((\alu_i|Add1~29\) # (GND))))) # (!\sB[15]~45_combout\ & ((\regf_i|Mux47~2_combout\ & (\alu_i|Add1~29\ & VCC)) # 
-- (!\regf_i|Mux47~2_combout\ & (!\alu_i|Add1~29\))))
-- \alu_i|Add1~31\ = CARRY((\sB[15]~45_combout\ & ((!\alu_i|Add1~29\) # (!\regf_i|Mux47~2_combout\))) # (!\sB[15]~45_combout\ & (!\regf_i|Mux47~2_combout\ & !\alu_i|Add1~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sB[15]~45_combout\,
	datab => \regf_i|Mux47~2_combout\,
	datad => VCC,
	cin => \alu_i|Add1~29\,
	combout => \alu_i|Add1~30_combout\,
	cout => \alu_i|Add1~31\);

-- Location: LCCOMB_X35_Y14_N6
\alu_i|Mux16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Mux16~0_combout\ = (\alu_i|Mux30~10_combout\) # ((\cu_i|Mux27~0_combout\ & ((\alu_i|Add1~30_combout\))) # (!\cu_i|Mux27~0_combout\ & (\alu_i|Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_i|Mux30~10_combout\,
	datab => \cu_i|Mux27~0_combout\,
	datac => \alu_i|Add0~30_combout\,
	datad => \alu_i|Add1~30_combout\,
	combout => \alu_i|Mux16~0_combout\);

-- Location: FF_X32_Y18_N31
\pc_i|sPC[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Add0~28_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_i|sPC\(16));

-- Location: LCCOMB_X32_Y18_N30
\Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (\pc_i|sPC\(16) & (\Add0~27\ $ (GND))) # (!\pc_i|sPC\(16) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((\pc_i|sPC\(16) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_i|sPC\(16),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X31_Y15_N26
\Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (!\cu_i|Mux34~0_combout\ & ((\cu_i|Mux35~2_combout\ & ((\alu_i|Mux15~0_combout\))) # (!\cu_i|Mux35~2_combout\ & (\Add0~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_i|Mux35~2_combout\,
	datab => \Add0~28_combout\,
	datac => \cu_i|Mux34~0_combout\,
	datad => \alu_i|Mux15~0_combout\,
	combout => \Mux15~0_combout\);

-- Location: FF_X32_Y15_N13
\regf_i|r4_i|sREG[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux15~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r4_i|sREG\(16));

-- Location: FF_X32_Y15_N23
\regf_i|r6_i|sREG[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux15~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r6_i|sREG\(16));

-- Location: LCCOMB_X32_Y15_N22
\regf_i|Mux78~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux78~0_combout\ = (!\sRA2[0]~2_combout\ & ((\sRA2[1]~0_combout\ & ((\regf_i|r6_i|sREG\(16)))) # (!\sRA2[1]~0_combout\ & (\regf_i|r4_i|sREG\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sRA2[1]~0_combout\,
	datab => \regf_i|r4_i|sREG\(16),
	datac => \regf_i|r6_i|sREG\(16),
	datad => \sRA2[0]~2_combout\,
	combout => \regf_i|Mux78~0_combout\);

-- Location: FF_X31_Y15_N9
\regf_i|r2_i|sREG[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux15~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r2_i|sREG\(16));

-- Location: FF_X31_Y15_N27
\regf_i|r3_i|sREG[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Mux15~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \regf_i|Mux30~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r3_i|sREG\(16));

-- Location: FF_X33_Y15_N25
\regf_i|r0_i|sREG[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux15~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r0_i|sREG\(16));

-- Location: LCCOMB_X33_Y15_N24
\regf_i|Mux78~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux78~1_combout\ = (\sRA2[0]~2_combout\ & ((\sRA2[1]~0_combout\))) # (!\sRA2[0]~2_combout\ & (\regf_i|r0_i|sREG\(16) & !\sRA2[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sRA2[0]~2_combout\,
	datac => \regf_i|r0_i|sREG\(16),
	datad => \sRA2[1]~0_combout\,
	combout => \regf_i|Mux78~1_combout\);

-- Location: LCCOMB_X32_Y15_N18
\regf_i|Mux78~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux78~2_combout\ = (\sRA2[1]~0_combout\ & ((\regf_i|Mux78~1_combout\ & ((\regf_i|r3_i|sREG\(16)))) # (!\regf_i|Mux78~1_combout\ & (\regf_i|r2_i|sREG\(16))))) # (!\sRA2[1]~0_combout\ & (((\regf_i|Mux78~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|r2_i|sREG\(16),
	datab => \sRA2[1]~0_combout\,
	datac => \regf_i|r3_i|sREG\(16),
	datad => \regf_i|Mux78~1_combout\,
	combout => \regf_i|Mux78~2_combout\);

-- Location: LCCOMB_X32_Y15_N8
\sB[16]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sB[16]~46_combout\ = (\sB[0]~6_combout\ & ((\sRA2[2]~1_combout\ & (\regf_i|Mux78~0_combout\)) # (!\sRA2[2]~1_combout\ & ((\regf_i|Mux78~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sRA2[2]~1_combout\,
	datab => \sB[0]~6_combout\,
	datac => \regf_i|Mux78~0_combout\,
	datad => \regf_i|Mux78~2_combout\,
	combout => \sB[16]~46_combout\);

-- Location: LCCOMB_X31_Y15_N8
\regf_i|Mux46~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux46~0_combout\ = (\prog_i|oQ[17]~2_combout\ & (((\regf_i|r2_i|sREG\(16)) # (\prog_i|oQ[18]~1_combout\)))) # (!\prog_i|oQ[17]~2_combout\ & (\regf_i|r0_i|sREG\(16) & ((!\prog_i|oQ[18]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prog_i|oQ[17]~2_combout\,
	datab => \regf_i|r0_i|sREG\(16),
	datac => \regf_i|r2_i|sREG\(16),
	datad => \prog_i|oQ[18]~1_combout\,
	combout => \regf_i|Mux46~0_combout\);

-- Location: LCCOMB_X32_Y15_N12
\regf_i|Mux46~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux46~1_combout\ = (\prog_i|oQ[18]~1_combout\ & ((\regf_i|Mux46~0_combout\ & (\regf_i|r6_i|sREG\(16))) # (!\regf_i|Mux46~0_combout\ & ((\regf_i|r4_i|sREG\(16)))))) # (!\prog_i|oQ[18]~1_combout\ & (((\regf_i|Mux46~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prog_i|oQ[18]~1_combout\,
	datab => \regf_i|r6_i|sREG\(16),
	datac => \regf_i|r4_i|sREG\(16),
	datad => \regf_i|Mux46~0_combout\,
	combout => \regf_i|Mux46~1_combout\);

-- Location: LCCOMB_X32_Y15_N24
\regf_i|Mux46~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux46~2_combout\ = (!\prog_i|oQ[3]~3_combout\ & (!\prog_i|Equal3~0_combout\ & \regf_i|Mux46~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prog_i|oQ[3]~3_combout\,
	datac => \prog_i|Equal3~0_combout\,
	datad => \regf_i|Mux46~1_combout\,
	combout => \regf_i|Mux46~2_combout\);

-- Location: LCCOMB_X34_Y15_N0
\alu_i|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Add0~32_combout\ = ((\sB[16]~46_combout\ $ (\regf_i|Mux46~2_combout\ $ (!\alu_i|Add0~31\)))) # (GND)
-- \alu_i|Add0~33\ = CARRY((\sB[16]~46_combout\ & ((\regf_i|Mux46~2_combout\) # (!\alu_i|Add0~31\))) # (!\sB[16]~46_combout\ & (\regf_i|Mux46~2_combout\ & !\alu_i|Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sB[16]~46_combout\,
	datab => \regf_i|Mux46~2_combout\,
	datad => VCC,
	cin => \alu_i|Add0~31\,
	combout => \alu_i|Add0~32_combout\,
	cout => \alu_i|Add0~33\);

-- Location: LCCOMB_X35_Y15_N0
\alu_i|Add1~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Add1~32_combout\ = ((\sB[16]~46_combout\ $ (\regf_i|Mux46~2_combout\ $ (\alu_i|Add1~31\)))) # (GND)
-- \alu_i|Add1~33\ = CARRY((\sB[16]~46_combout\ & (\regf_i|Mux46~2_combout\ & !\alu_i|Add1~31\)) # (!\sB[16]~46_combout\ & ((\regf_i|Mux46~2_combout\) # (!\alu_i|Add1~31\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sB[16]~46_combout\,
	datab => \regf_i|Mux46~2_combout\,
	datad => VCC,
	cin => \alu_i|Add1~31\,
	combout => \alu_i|Add1~32_combout\,
	cout => \alu_i|Add1~33\);

-- Location: LCCOMB_X31_Y15_N0
\alu_i|Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Mux15~0_combout\ = (!\alu_i|Mux30~10_combout\ & ((\cu_i|Mux27~0_combout\ & ((\alu_i|Add1~32_combout\))) # (!\cu_i|Mux27~0_combout\ & (\alu_i|Add0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_i|Mux30~10_combout\,
	datab => \cu_i|Mux27~0_combout\,
	datac => \alu_i|Add0~32_combout\,
	datad => \alu_i|Add1~32_combout\,
	combout => \alu_i|Mux15~0_combout\);

-- Location: FF_X32_Y17_N1
\pc_i|sPC[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Add0~30_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_i|sPC\(17));

-- Location: LCCOMB_X32_Y17_N0
\Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (\pc_i|sPC\(17) & (!\Add0~29\)) # (!\pc_i|sPC\(17) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!\pc_i|sPC\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_i|sPC\(17),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X35_Y14_N30
\Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (!\cu_i|Mux34~0_combout\ & ((\cu_i|Mux35~2_combout\ & ((\alu_i|Mux14~0_combout\))) # (!\cu_i|Mux35~2_combout\ & (\Add0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_i|Mux35~2_combout\,
	datab => \cu_i|Mux34~0_combout\,
	datac => \Add0~30_combout\,
	datad => \alu_i|Mux14~0_combout\,
	combout => \Mux14~0_combout\);

-- Location: FF_X35_Y14_N5
\regf_i|r2_i|sREG[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux14~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r2_i|sREG\(17));

-- Location: FF_X36_Y14_N27
\regf_i|r6_i|sREG[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux14~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r6_i|sREG\(17));

-- Location: FF_X34_Y14_N9
\regf_i|r0_i|sREG[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux14~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r0_i|sREG\(17));

-- Location: FF_X36_Y14_N1
\regf_i|r4_i|sREG[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux14~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r4_i|sREG\(17));

-- Location: LCCOMB_X36_Y14_N0
\regf_i|Mux45~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux45~0_combout\ = (\prog_i|oQ[17]~2_combout\ & (((\prog_i|oQ[18]~1_combout\)))) # (!\prog_i|oQ[17]~2_combout\ & ((\prog_i|oQ[18]~1_combout\ & ((\regf_i|r4_i|sREG\(17)))) # (!\prog_i|oQ[18]~1_combout\ & (\regf_i|r0_i|sREG\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|r0_i|sREG\(17),
	datab => \prog_i|oQ[17]~2_combout\,
	datac => \regf_i|r4_i|sREG\(17),
	datad => \prog_i|oQ[18]~1_combout\,
	combout => \regf_i|Mux45~0_combout\);

-- Location: LCCOMB_X36_Y14_N26
\regf_i|Mux45~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux45~1_combout\ = (\prog_i|oQ[17]~2_combout\ & ((\regf_i|Mux45~0_combout\ & ((\regf_i|r6_i|sREG\(17)))) # (!\regf_i|Mux45~0_combout\ & (\regf_i|r2_i|sREG\(17))))) # (!\prog_i|oQ[17]~2_combout\ & (((\regf_i|Mux45~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prog_i|oQ[17]~2_combout\,
	datab => \regf_i|r2_i|sREG\(17),
	datac => \regf_i|r6_i|sREG\(17),
	datad => \regf_i|Mux45~0_combout\,
	combout => \regf_i|Mux45~1_combout\);

-- Location: LCCOMB_X35_Y14_N12
\regf_i|Mux45~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux45~2_combout\ = (!\prog_i|Equal3~0_combout\ & (!\prog_i|oQ[3]~3_combout\ & \regf_i|Mux45~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prog_i|Equal3~0_combout\,
	datab => \prog_i|oQ[3]~3_combout\,
	datad => \regf_i|Mux45~1_combout\,
	combout => \regf_i|Mux45~2_combout\);

-- Location: LCCOMB_X34_Y14_N30
\regf_i|Mux77~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux77~0_combout\ = (!\sRA2[0]~2_combout\ & ((\sRA2[1]~0_combout\ & (\regf_i|r6_i|sREG\(17))) # (!\sRA2[1]~0_combout\ & ((\regf_i|r4_i|sREG\(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|r6_i|sREG\(17),
	datab => \regf_i|r4_i|sREG\(17),
	datac => \sRA2[1]~0_combout\,
	datad => \sRA2[0]~2_combout\,
	combout => \regf_i|Mux77~0_combout\);

-- Location: FF_X35_Y14_N31
\regf_i|r3_i|sREG[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Mux14~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \regf_i|Mux30~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r3_i|sREG\(17));

-- Location: LCCOMB_X34_Y14_N8
\regf_i|Mux77~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux77~1_combout\ = (\sRA2[1]~0_combout\ & ((\sRA2[0]~2_combout\))) # (!\sRA2[1]~0_combout\ & (\regf_i|r0_i|sREG\(17) & !\sRA2[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sRA2[1]~0_combout\,
	datac => \regf_i|r0_i|sREG\(17),
	datad => \sRA2[0]~2_combout\,
	combout => \regf_i|Mux77~1_combout\);

-- Location: LCCOMB_X35_Y14_N4
\regf_i|Mux77~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux77~2_combout\ = (\sRA2[1]~0_combout\ & ((\regf_i|Mux77~1_combout\ & (\regf_i|r3_i|sREG\(17))) # (!\regf_i|Mux77~1_combout\ & ((\regf_i|r2_i|sREG\(17)))))) # (!\sRA2[1]~0_combout\ & (((\regf_i|Mux77~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sRA2[1]~0_combout\,
	datab => \regf_i|r3_i|sREG\(17),
	datac => \regf_i|r2_i|sREG\(17),
	datad => \regf_i|Mux77~1_combout\,
	combout => \regf_i|Mux77~2_combout\);

-- Location: LCCOMB_X34_Y14_N0
\sB[17]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sB[17]~47_combout\ = (\sB[0]~6_combout\ & ((\sRA2[2]~1_combout\ & (\regf_i|Mux77~0_combout\)) # (!\sRA2[2]~1_combout\ & ((\regf_i|Mux77~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sB[0]~6_combout\,
	datab => \sRA2[2]~1_combout\,
	datac => \regf_i|Mux77~0_combout\,
	datad => \regf_i|Mux77~2_combout\,
	combout => \sB[17]~47_combout\);

-- Location: LCCOMB_X35_Y15_N2
\alu_i|Add1~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Add1~34_combout\ = (\regf_i|Mux45~2_combout\ & ((\sB[17]~47_combout\ & (!\alu_i|Add1~33\)) # (!\sB[17]~47_combout\ & (\alu_i|Add1~33\ & VCC)))) # (!\regf_i|Mux45~2_combout\ & ((\sB[17]~47_combout\ & ((\alu_i|Add1~33\) # (GND))) # 
-- (!\sB[17]~47_combout\ & (!\alu_i|Add1~33\))))
-- \alu_i|Add1~35\ = CARRY((\regf_i|Mux45~2_combout\ & (\sB[17]~47_combout\ & !\alu_i|Add1~33\)) # (!\regf_i|Mux45~2_combout\ & ((\sB[17]~47_combout\) # (!\alu_i|Add1~33\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|Mux45~2_combout\,
	datab => \sB[17]~47_combout\,
	datad => VCC,
	cin => \alu_i|Add1~33\,
	combout => \alu_i|Add1~34_combout\,
	cout => \alu_i|Add1~35\);

-- Location: LCCOMB_X34_Y15_N2
\alu_i|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Add0~34_combout\ = (\regf_i|Mux45~2_combout\ & ((\sB[17]~47_combout\ & (\alu_i|Add0~33\ & VCC)) # (!\sB[17]~47_combout\ & (!\alu_i|Add0~33\)))) # (!\regf_i|Mux45~2_combout\ & ((\sB[17]~47_combout\ & (!\alu_i|Add0~33\)) # (!\sB[17]~47_combout\ & 
-- ((\alu_i|Add0~33\) # (GND)))))
-- \alu_i|Add0~35\ = CARRY((\regf_i|Mux45~2_combout\ & (!\sB[17]~47_combout\ & !\alu_i|Add0~33\)) # (!\regf_i|Mux45~2_combout\ & ((!\alu_i|Add0~33\) # (!\sB[17]~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|Mux45~2_combout\,
	datab => \sB[17]~47_combout\,
	datad => VCC,
	cin => \alu_i|Add0~33\,
	combout => \alu_i|Add0~34_combout\,
	cout => \alu_i|Add0~35\);

-- Location: LCCOMB_X35_Y14_N28
\alu_i|Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Mux14~0_combout\ = (\alu_i|Mux30~10_combout\) # ((\cu_i|Mux27~0_combout\ & (\alu_i|Add1~34_combout\)) # (!\cu_i|Mux27~0_combout\ & ((\alu_i|Add0~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_i|Mux30~10_combout\,
	datab => \cu_i|Mux27~0_combout\,
	datac => \alu_i|Add1~34_combout\,
	datad => \alu_i|Add0~34_combout\,
	combout => \alu_i|Mux14~0_combout\);

-- Location: FF_X32_Y17_N3
\pc_i|sPC[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Add0~32_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_i|sPC\(18));

-- Location: LCCOMB_X32_Y17_N2
\Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (\pc_i|sPC\(18) & (\Add0~31\ $ (GND))) # (!\pc_i|sPC\(18) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((\pc_i|sPC\(18) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_i|sPC\(18),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X31_Y15_N16
\Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (!\cu_i|Mux34~0_combout\ & ((\cu_i|Mux35~2_combout\ & ((\alu_i|Mux13~0_combout\))) # (!\cu_i|Mux35~2_combout\ & (\Add0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_i|Mux35~2_combout\,
	datab => \Add0~32_combout\,
	datac => \cu_i|Mux34~0_combout\,
	datad => \alu_i|Mux13~0_combout\,
	combout => \Mux13~0_combout\);

-- Location: FF_X32_Y15_N31
\regf_i|r4_i|sREG[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux13~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r4_i|sREG\(18));

-- Location: FF_X32_Y15_N17
\regf_i|r6_i|sREG[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux13~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r6_i|sREG\(18));

-- Location: LCCOMB_X32_Y15_N16
\regf_i|Mux76~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux76~0_combout\ = (!\sRA2[0]~2_combout\ & ((\sRA2[1]~0_combout\ & ((\regf_i|r6_i|sREG\(18)))) # (!\sRA2[1]~0_combout\ & (\regf_i|r4_i|sREG\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|r4_i|sREG\(18),
	datab => \sRA2[1]~0_combout\,
	datac => \regf_i|r6_i|sREG\(18),
	datad => \sRA2[0]~2_combout\,
	combout => \regf_i|Mux76~0_combout\);

-- Location: FF_X31_Y15_N23
\regf_i|r2_i|sREG[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux13~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r2_i|sREG\(18));

-- Location: FF_X32_Y14_N5
\regf_i|r0_i|sREG[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux13~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r0_i|sREG\(18));

-- Location: LCCOMB_X32_Y14_N4
\regf_i|Mux76~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux76~1_combout\ = (\sRA2[1]~0_combout\ & (\sRA2[0]~2_combout\)) # (!\sRA2[1]~0_combout\ & (!\sRA2[0]~2_combout\ & \regf_i|r0_i|sREG\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sRA2[1]~0_combout\,
	datab => \sRA2[0]~2_combout\,
	datac => \regf_i|r0_i|sREG\(18),
	combout => \regf_i|Mux76~1_combout\);

-- Location: FF_X31_Y15_N17
\regf_i|r3_i|sREG[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Mux13~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \regf_i|Mux30~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r3_i|sREG\(18));

-- Location: LCCOMB_X32_Y14_N18
\regf_i|Mux76~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux76~2_combout\ = (\sRA2[1]~0_combout\ & ((\regf_i|Mux76~1_combout\ & ((\regf_i|r3_i|sREG\(18)))) # (!\regf_i|Mux76~1_combout\ & (\regf_i|r2_i|sREG\(18))))) # (!\sRA2[1]~0_combout\ & (((\regf_i|Mux76~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sRA2[1]~0_combout\,
	datab => \regf_i|r2_i|sREG\(18),
	datac => \regf_i|Mux76~1_combout\,
	datad => \regf_i|r3_i|sREG\(18),
	combout => \regf_i|Mux76~2_combout\);

-- Location: LCCOMB_X33_Y14_N8
\sB[18]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sB[18]~48_combout\ = (\sB[0]~6_combout\ & ((\sRA2[2]~1_combout\ & (\regf_i|Mux76~0_combout\)) # (!\sRA2[2]~1_combout\ & ((\regf_i|Mux76~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sRA2[2]~1_combout\,
	datab => \sB[0]~6_combout\,
	datac => \regf_i|Mux76~0_combout\,
	datad => \regf_i|Mux76~2_combout\,
	combout => \sB[18]~48_combout\);

-- Location: LCCOMB_X31_Y15_N22
\regf_i|Mux44~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux44~0_combout\ = (\prog_i|oQ[17]~2_combout\ & (((\regf_i|r2_i|sREG\(18)) # (\prog_i|oQ[18]~1_combout\)))) # (!\prog_i|oQ[17]~2_combout\ & (\regf_i|r0_i|sREG\(18) & ((!\prog_i|oQ[18]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prog_i|oQ[17]~2_combout\,
	datab => \regf_i|r0_i|sREG\(18),
	datac => \regf_i|r2_i|sREG\(18),
	datad => \prog_i|oQ[18]~1_combout\,
	combout => \regf_i|Mux44~0_combout\);

-- Location: LCCOMB_X32_Y15_N30
\regf_i|Mux44~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux44~1_combout\ = (\prog_i|oQ[18]~1_combout\ & ((\regf_i|Mux44~0_combout\ & (\regf_i|r6_i|sREG\(18))) # (!\regf_i|Mux44~0_combout\ & ((\regf_i|r4_i|sREG\(18)))))) # (!\prog_i|oQ[18]~1_combout\ & (((\regf_i|Mux44~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prog_i|oQ[18]~1_combout\,
	datab => \regf_i|r6_i|sREG\(18),
	datac => \regf_i|r4_i|sREG\(18),
	datad => \regf_i|Mux44~0_combout\,
	combout => \regf_i|Mux44~1_combout\);

-- Location: LCCOMB_X32_Y15_N6
\regf_i|Mux44~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux44~2_combout\ = (!\prog_i|Equal3~0_combout\ & (\regf_i|Mux44~1_combout\ & !\prog_i|oQ[3]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prog_i|Equal3~0_combout\,
	datac => \regf_i|Mux44~1_combout\,
	datad => \prog_i|oQ[3]~3_combout\,
	combout => \regf_i|Mux44~2_combout\);

-- Location: LCCOMB_X35_Y15_N4
\alu_i|Add1~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Add1~36_combout\ = ((\sB[18]~48_combout\ $ (\regf_i|Mux44~2_combout\ $ (\alu_i|Add1~35\)))) # (GND)
-- \alu_i|Add1~37\ = CARRY((\sB[18]~48_combout\ & (\regf_i|Mux44~2_combout\ & !\alu_i|Add1~35\)) # (!\sB[18]~48_combout\ & ((\regf_i|Mux44~2_combout\) # (!\alu_i|Add1~35\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sB[18]~48_combout\,
	datab => \regf_i|Mux44~2_combout\,
	datad => VCC,
	cin => \alu_i|Add1~35\,
	combout => \alu_i|Add1~36_combout\,
	cout => \alu_i|Add1~37\);

-- Location: LCCOMB_X34_Y15_N4
\alu_i|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Add0~36_combout\ = ((\regf_i|Mux44~2_combout\ $ (\sB[18]~48_combout\ $ (!\alu_i|Add0~35\)))) # (GND)
-- \alu_i|Add0~37\ = CARRY((\regf_i|Mux44~2_combout\ & ((\sB[18]~48_combout\) # (!\alu_i|Add0~35\))) # (!\regf_i|Mux44~2_combout\ & (\sB[18]~48_combout\ & !\alu_i|Add0~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|Mux44~2_combout\,
	datab => \sB[18]~48_combout\,
	datad => VCC,
	cin => \alu_i|Add0~35\,
	combout => \alu_i|Add0~36_combout\,
	cout => \alu_i|Add0~37\);

-- Location: LCCOMB_X31_Y15_N18
\alu_i|Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Mux13~0_combout\ = (!\alu_i|Mux30~10_combout\ & ((\cu_i|Mux27~0_combout\ & (\alu_i|Add1~36_combout\)) # (!\cu_i|Mux27~0_combout\ & ((\alu_i|Add0~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_i|Mux30~10_combout\,
	datab => \cu_i|Mux27~0_combout\,
	datac => \alu_i|Add1~36_combout\,
	datad => \alu_i|Add0~36_combout\,
	combout => \alu_i|Mux13~0_combout\);

-- Location: FF_X32_Y17_N5
\pc_i|sPC[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Add0~34_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_i|sPC\(19));

-- Location: LCCOMB_X32_Y17_N4
\Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (\pc_i|sPC\(19) & (!\Add0~33\)) # (!\pc_i|sPC\(19) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!\pc_i|sPC\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_i|sPC\(19),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X35_Y14_N0
\Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (!\cu_i|Mux34~0_combout\ & ((\cu_i|Mux35~2_combout\ & ((\alu_i|Mux12~0_combout\))) # (!\cu_i|Mux35~2_combout\ & (\Add0~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_i|Mux35~2_combout\,
	datab => \cu_i|Mux34~0_combout\,
	datac => \Add0~34_combout\,
	datad => \alu_i|Mux12~0_combout\,
	combout => \Mux12~0_combout\);

-- Location: FF_X34_Y17_N7
\regf_i|r4_i|sREG[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux12~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r4_i|sREG\(19));

-- Location: FF_X36_Y15_N5
\regf_i|r6_i|sREG[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux12~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r6_i|sREG\(19));

-- Location: LCCOMB_X36_Y15_N12
\regf_i|Mux75~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux75~0_combout\ = (!\sRA2[0]~2_combout\ & ((\sRA2[1]~0_combout\ & ((\regf_i|r6_i|sREG\(19)))) # (!\sRA2[1]~0_combout\ & (\regf_i|r4_i|sREG\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sRA2[0]~2_combout\,
	datab => \regf_i|r4_i|sREG\(19),
	datac => \sRA2[1]~0_combout\,
	datad => \regf_i|r6_i|sREG\(19),
	combout => \regf_i|Mux75~0_combout\);

-- Location: FF_X35_Y14_N1
\regf_i|r3_i|sREG[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Mux12~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \regf_i|Mux30~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r3_i|sREG\(19));

-- Location: FF_X35_Y14_N27
\regf_i|r2_i|sREG[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux12~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r2_i|sREG\(19));

-- Location: FF_X34_Y17_N1
\regf_i|r0_i|sREG[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux12~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r0_i|sREG\(19));

-- Location: LCCOMB_X34_Y17_N0
\regf_i|Mux75~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux75~1_combout\ = (\sRA2[1]~0_combout\ & (\sRA2[0]~2_combout\)) # (!\sRA2[1]~0_combout\ & (!\sRA2[0]~2_combout\ & \regf_i|r0_i|sREG\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sRA2[1]~0_combout\,
	datab => \sRA2[0]~2_combout\,
	datac => \regf_i|r0_i|sREG\(19),
	combout => \regf_i|Mux75~1_combout\);

-- Location: LCCOMB_X35_Y14_N26
\regf_i|Mux75~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux75~2_combout\ = (\sRA2[1]~0_combout\ & ((\regf_i|Mux75~1_combout\ & (\regf_i|r3_i|sREG\(19))) # (!\regf_i|Mux75~1_combout\ & ((\regf_i|r2_i|sREG\(19)))))) # (!\sRA2[1]~0_combout\ & (((\regf_i|Mux75~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sRA2[1]~0_combout\,
	datab => \regf_i|r3_i|sREG\(19),
	datac => \regf_i|r2_i|sREG\(19),
	datad => \regf_i|Mux75~1_combout\,
	combout => \regf_i|Mux75~2_combout\);

-- Location: LCCOMB_X36_Y15_N18
\sB[19]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sB[19]~49_combout\ = (\sB[0]~6_combout\ & ((\sRA2[2]~1_combout\ & (\regf_i|Mux75~0_combout\)) # (!\sRA2[2]~1_combout\ & ((\regf_i|Mux75~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|Mux75~0_combout\,
	datab => \sRA2[2]~1_combout\,
	datac => \sB[0]~6_combout\,
	datad => \regf_i|Mux75~2_combout\,
	combout => \sB[19]~49_combout\);

-- Location: LCCOMB_X35_Y17_N4
\regf_i|Mux43~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux43~0_combout\ = (\prog_i|oQ[18]~1_combout\ & (((\regf_i|r4_i|sREG\(19)) # (\prog_i|oQ[17]~2_combout\)))) # (!\prog_i|oQ[18]~1_combout\ & (\regf_i|r0_i|sREG\(19) & ((!\prog_i|oQ[17]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|r0_i|sREG\(19),
	datab => \prog_i|oQ[18]~1_combout\,
	datac => \regf_i|r4_i|sREG\(19),
	datad => \prog_i|oQ[17]~2_combout\,
	combout => \regf_i|Mux43~0_combout\);

-- Location: LCCOMB_X36_Y15_N4
\regf_i|Mux43~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux43~1_combout\ = (\prog_i|oQ[17]~2_combout\ & ((\regf_i|Mux43~0_combout\ & ((\regf_i|r6_i|sREG\(19)))) # (!\regf_i|Mux43~0_combout\ & (\regf_i|r2_i|sREG\(19))))) # (!\prog_i|oQ[17]~2_combout\ & (((\regf_i|Mux43~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prog_i|oQ[17]~2_combout\,
	datab => \regf_i|r2_i|sREG\(19),
	datac => \regf_i|r6_i|sREG\(19),
	datad => \regf_i|Mux43~0_combout\,
	combout => \regf_i|Mux43~1_combout\);

-- Location: LCCOMB_X36_Y15_N26
\regf_i|Mux43~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux43~2_combout\ = (!\prog_i|oQ[3]~3_combout\ & (\regf_i|Mux43~1_combout\ & !\prog_i|Equal3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prog_i|oQ[3]~3_combout\,
	datac => \regf_i|Mux43~1_combout\,
	datad => \prog_i|Equal3~0_combout\,
	combout => \regf_i|Mux43~2_combout\);

-- Location: LCCOMB_X35_Y15_N6
\alu_i|Add1~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Add1~38_combout\ = (\sB[19]~49_combout\ & ((\regf_i|Mux43~2_combout\ & (!\alu_i|Add1~37\)) # (!\regf_i|Mux43~2_combout\ & ((\alu_i|Add1~37\) # (GND))))) # (!\sB[19]~49_combout\ & ((\regf_i|Mux43~2_combout\ & (\alu_i|Add1~37\ & VCC)) # 
-- (!\regf_i|Mux43~2_combout\ & (!\alu_i|Add1~37\))))
-- \alu_i|Add1~39\ = CARRY((\sB[19]~49_combout\ & ((!\alu_i|Add1~37\) # (!\regf_i|Mux43~2_combout\))) # (!\sB[19]~49_combout\ & (!\regf_i|Mux43~2_combout\ & !\alu_i|Add1~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sB[19]~49_combout\,
	datab => \regf_i|Mux43~2_combout\,
	datad => VCC,
	cin => \alu_i|Add1~37\,
	combout => \alu_i|Add1~38_combout\,
	cout => \alu_i|Add1~39\);

-- Location: LCCOMB_X34_Y15_N6
\alu_i|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Add0~38_combout\ = (\sB[19]~49_combout\ & ((\regf_i|Mux43~2_combout\ & (\alu_i|Add0~37\ & VCC)) # (!\regf_i|Mux43~2_combout\ & (!\alu_i|Add0~37\)))) # (!\sB[19]~49_combout\ & ((\regf_i|Mux43~2_combout\ & (!\alu_i|Add0~37\)) # 
-- (!\regf_i|Mux43~2_combout\ & ((\alu_i|Add0~37\) # (GND)))))
-- \alu_i|Add0~39\ = CARRY((\sB[19]~49_combout\ & (!\regf_i|Mux43~2_combout\ & !\alu_i|Add0~37\)) # (!\sB[19]~49_combout\ & ((!\alu_i|Add0~37\) # (!\regf_i|Mux43~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sB[19]~49_combout\,
	datab => \regf_i|Mux43~2_combout\,
	datad => VCC,
	cin => \alu_i|Add0~37\,
	combout => \alu_i|Add0~38_combout\,
	cout => \alu_i|Add0~39\);

-- Location: LCCOMB_X35_Y14_N18
\alu_i|Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Mux12~0_combout\ = (\alu_i|Mux30~10_combout\) # ((\cu_i|Mux27~0_combout\ & (\alu_i|Add1~38_combout\)) # (!\cu_i|Mux27~0_combout\ & ((\alu_i|Add0~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_i|Mux30~10_combout\,
	datab => \alu_i|Add1~38_combout\,
	datac => \cu_i|Mux27~0_combout\,
	datad => \alu_i|Add0~38_combout\,
	combout => \alu_i|Mux12~0_combout\);

-- Location: FF_X32_Y17_N7
\pc_i|sPC[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Add0~36_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_i|sPC\(20));

-- Location: LCCOMB_X32_Y17_N6
\Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (\pc_i|sPC\(20) & (\Add0~35\ $ (GND))) # (!\pc_i|sPC\(20) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((\pc_i|sPC\(20) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_i|sPC\(20),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X35_Y14_N24
\Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (!\cu_i|Mux34~0_combout\ & ((\cu_i|Mux35~2_combout\ & ((\alu_i|Mux11~0_combout\))) # (!\cu_i|Mux35~2_combout\ & (\Add0~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_i|Mux35~2_combout\,
	datab => \cu_i|Mux34~0_combout\,
	datac => \Add0~36_combout\,
	datad => \alu_i|Mux11~0_combout\,
	combout => \Mux11~0_combout\);

-- Location: FF_X36_Y15_N29
\regf_i|r4_i|sREG[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux11~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r4_i|sREG\(20));

-- Location: FF_X36_Y15_N11
\regf_i|r6_i|sREG[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux11~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r6_i|sREG\(20));

-- Location: LCCOMB_X36_Y15_N10
\regf_i|Mux74~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux74~0_combout\ = (!\sRA2[0]~2_combout\ & ((\sRA2[1]~0_combout\ & ((\regf_i|r6_i|sREG\(20)))) # (!\sRA2[1]~0_combout\ & (\regf_i|r4_i|sREG\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|r4_i|sREG\(20),
	datab => \sRA2[1]~0_combout\,
	datac => \regf_i|r6_i|sREG\(20),
	datad => \sRA2[0]~2_combout\,
	combout => \regf_i|Mux74~0_combout\);

-- Location: FF_X36_Y16_N17
\regf_i|r2_i|sREG[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux11~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r2_i|sREG\(20));

-- Location: FF_X36_Y16_N31
\regf_i|r0_i|sREG[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux11~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r0_i|sREG\(20));

-- Location: LCCOMB_X37_Y15_N0
\regf_i|Mux74~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux74~1_combout\ = (\sRA2[1]~0_combout\ & ((\sRA2[0]~2_combout\))) # (!\sRA2[1]~0_combout\ & (\regf_i|r0_i|sREG\(20) & !\sRA2[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regf_i|r0_i|sREG\(20),
	datac => \sRA2[1]~0_combout\,
	datad => \sRA2[0]~2_combout\,
	combout => \regf_i|Mux74~1_combout\);

-- Location: FF_X35_Y14_N25
\regf_i|r3_i|sREG[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Mux11~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \regf_i|Mux30~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r3_i|sREG\(20));

-- Location: LCCOMB_X36_Y15_N6
\regf_i|Mux74~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux74~2_combout\ = (\sRA2[1]~0_combout\ & ((\regf_i|Mux74~1_combout\ & ((\regf_i|r3_i|sREG\(20)))) # (!\regf_i|Mux74~1_combout\ & (\regf_i|r2_i|sREG\(20))))) # (!\sRA2[1]~0_combout\ & (((\regf_i|Mux74~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|r2_i|sREG\(20),
	datab => \sRA2[1]~0_combout\,
	datac => \regf_i|Mux74~1_combout\,
	datad => \regf_i|r3_i|sREG\(20),
	combout => \regf_i|Mux74~2_combout\);

-- Location: LCCOMB_X36_Y15_N16
\sB[20]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sB[20]~50_combout\ = (\sB[0]~6_combout\ & ((\sRA2[2]~1_combout\ & (\regf_i|Mux74~0_combout\)) # (!\sRA2[2]~1_combout\ & ((\regf_i|Mux74~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|Mux74~0_combout\,
	datab => \sRA2[2]~1_combout\,
	datac => \sB[0]~6_combout\,
	datad => \regf_i|Mux74~2_combout\,
	combout => \sB[20]~50_combout\);

-- Location: LCCOMB_X36_Y16_N12
\regf_i|Mux42~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux42~0_combout\ = (\prog_i|oQ[18]~1_combout\ & (((\prog_i|oQ[17]~2_combout\)))) # (!\prog_i|oQ[18]~1_combout\ & ((\prog_i|oQ[17]~2_combout\ & ((\regf_i|r2_i|sREG\(20)))) # (!\prog_i|oQ[17]~2_combout\ & (\regf_i|r0_i|sREG\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|r0_i|sREG\(20),
	datab => \regf_i|r2_i|sREG\(20),
	datac => \prog_i|oQ[18]~1_combout\,
	datad => \prog_i|oQ[17]~2_combout\,
	combout => \regf_i|Mux42~0_combout\);

-- Location: LCCOMB_X36_Y15_N28
\regf_i|Mux42~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux42~1_combout\ = (\prog_i|oQ[18]~1_combout\ & ((\regf_i|Mux42~0_combout\ & (\regf_i|r6_i|sREG\(20))) # (!\regf_i|Mux42~0_combout\ & ((\regf_i|r4_i|sREG\(20)))))) # (!\prog_i|oQ[18]~1_combout\ & (((\regf_i|Mux42~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|r6_i|sREG\(20),
	datab => \prog_i|oQ[18]~1_combout\,
	datac => \regf_i|r4_i|sREG\(20),
	datad => \regf_i|Mux42~0_combout\,
	combout => \regf_i|Mux42~1_combout\);

-- Location: LCCOMB_X36_Y15_N0
\regf_i|Mux42~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux42~2_combout\ = (!\prog_i|oQ[3]~3_combout\ & (!\prog_i|Equal3~0_combout\ & \regf_i|Mux42~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prog_i|oQ[3]~3_combout\,
	datab => \prog_i|Equal3~0_combout\,
	datad => \regf_i|Mux42~1_combout\,
	combout => \regf_i|Mux42~2_combout\);

-- Location: LCCOMB_X35_Y15_N8
\alu_i|Add1~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Add1~40_combout\ = ((\sB[20]~50_combout\ $ (\regf_i|Mux42~2_combout\ $ (\alu_i|Add1~39\)))) # (GND)
-- \alu_i|Add1~41\ = CARRY((\sB[20]~50_combout\ & (\regf_i|Mux42~2_combout\ & !\alu_i|Add1~39\)) # (!\sB[20]~50_combout\ & ((\regf_i|Mux42~2_combout\) # (!\alu_i|Add1~39\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sB[20]~50_combout\,
	datab => \regf_i|Mux42~2_combout\,
	datad => VCC,
	cin => \alu_i|Add1~39\,
	combout => \alu_i|Add1~40_combout\,
	cout => \alu_i|Add1~41\);

-- Location: LCCOMB_X34_Y15_N8
\alu_i|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Add0~40_combout\ = ((\sB[20]~50_combout\ $ (\regf_i|Mux42~2_combout\ $ (!\alu_i|Add0~39\)))) # (GND)
-- \alu_i|Add0~41\ = CARRY((\sB[20]~50_combout\ & ((\regf_i|Mux42~2_combout\) # (!\alu_i|Add0~39\))) # (!\sB[20]~50_combout\ & (\regf_i|Mux42~2_combout\ & !\alu_i|Add0~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sB[20]~50_combout\,
	datab => \regf_i|Mux42~2_combout\,
	datad => VCC,
	cin => \alu_i|Add0~39\,
	combout => \alu_i|Add0~40_combout\,
	cout => \alu_i|Add0~41\);

-- Location: LCCOMB_X35_Y14_N2
\alu_i|Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Mux11~0_combout\ = (\alu_i|Mux30~10_combout\) # ((\cu_i|Mux27~0_combout\ & (\alu_i|Add1~40_combout\)) # (!\cu_i|Mux27~0_combout\ & ((\alu_i|Add0~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_i|Mux30~10_combout\,
	datab => \cu_i|Mux27~0_combout\,
	datac => \alu_i|Add1~40_combout\,
	datad => \alu_i|Add0~40_combout\,
	combout => \alu_i|Mux11~0_combout\);

-- Location: FF_X32_Y17_N9
\pc_i|sPC[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Add0~38_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_i|sPC\(21));

-- Location: LCCOMB_X32_Y17_N8
\Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (\pc_i|sPC\(21) & (!\Add0~37\)) # (!\pc_i|sPC\(21) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!\pc_i|sPC\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_i|sPC\(21),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X33_Y14_N26
\Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (!\cu_i|Mux34~0_combout\ & ((\cu_i|Mux35~2_combout\ & ((\alu_i|Mux10~0_combout\))) # (!\cu_i|Mux35~2_combout\ & (\Add0~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_i|Mux34~0_combout\,
	datab => \Add0~38_combout\,
	datac => \cu_i|Mux35~2_combout\,
	datad => \alu_i|Mux10~0_combout\,
	combout => \Mux10~0_combout\);

-- Location: FF_X36_Y15_N3
\regf_i|r6_i|sREG[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux10~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r6_i|sREG\(21));

-- Location: FF_X32_Y14_N1
\regf_i|r4_i|sREG[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux10~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r4_i|sREG\(21));

-- Location: LCCOMB_X33_Y14_N16
\regf_i|Mux73~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux73~0_combout\ = (!\sRA2[0]~2_combout\ & ((\sRA2[1]~0_combout\ & (\regf_i|r6_i|sREG\(21))) # (!\sRA2[1]~0_combout\ & ((\regf_i|r4_i|sREG\(21))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sRA2[1]~0_combout\,
	datab => \regf_i|r6_i|sREG\(21),
	datac => \regf_i|r4_i|sREG\(21),
	datad => \sRA2[0]~2_combout\,
	combout => \regf_i|Mux73~0_combout\);

-- Location: FF_X33_Y14_N27
\regf_i|r3_i|sREG[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Mux10~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \regf_i|Mux30~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r3_i|sREG\(21));

-- Location: FF_X33_Y14_N23
\regf_i|r2_i|sREG[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux10~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r2_i|sREG\(21));

-- Location: LCCOMB_X32_Y14_N2
\regf_i|r0_i|sREG[21]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|r0_i|sREG[21]~feeder_combout\ = \Mux10~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux10~0_combout\,
	combout => \regf_i|r0_i|sREG[21]~feeder_combout\);

-- Location: FF_X32_Y14_N3
\regf_i|r0_i|sREG[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \regf_i|r0_i|sREG[21]~feeder_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \regf_i|Mux30~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r0_i|sREG\(21));

-- Location: LCCOMB_X32_Y14_N20
\regf_i|Mux73~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux73~1_combout\ = (\sRA2[1]~0_combout\ & ((\sRA2[0]~2_combout\))) # (!\sRA2[1]~0_combout\ & (\regf_i|r0_i|sREG\(21) & !\sRA2[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sRA2[1]~0_combout\,
	datab => \regf_i|r0_i|sREG\(21),
	datad => \sRA2[0]~2_combout\,
	combout => \regf_i|Mux73~1_combout\);

-- Location: LCCOMB_X33_Y14_N22
\regf_i|Mux73~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux73~2_combout\ = (\sRA2[1]~0_combout\ & ((\regf_i|Mux73~1_combout\ & (\regf_i|r3_i|sREG\(21))) # (!\regf_i|Mux73~1_combout\ & ((\regf_i|r2_i|sREG\(21)))))) # (!\sRA2[1]~0_combout\ & (((\regf_i|Mux73~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sRA2[1]~0_combout\,
	datab => \regf_i|r3_i|sREG\(21),
	datac => \regf_i|r2_i|sREG\(21),
	datad => \regf_i|Mux73~1_combout\,
	combout => \regf_i|Mux73~2_combout\);

-- Location: LCCOMB_X34_Y14_N2
\sB[21]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sB[21]~51_combout\ = (\sB[0]~6_combout\ & ((\sRA2[2]~1_combout\ & (\regf_i|Mux73~0_combout\)) # (!\sRA2[2]~1_combout\ & ((\regf_i|Mux73~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sB[0]~6_combout\,
	datab => \sRA2[2]~1_combout\,
	datac => \regf_i|Mux73~0_combout\,
	datad => \regf_i|Mux73~2_combout\,
	combout => \sB[21]~51_combout\);

-- Location: LCCOMB_X32_Y14_N0
\regf_i|Mux41~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux41~0_combout\ = (\prog_i|oQ[17]~2_combout\ & (((\prog_i|oQ[18]~1_combout\)))) # (!\prog_i|oQ[17]~2_combout\ & ((\prog_i|oQ[18]~1_combout\ & ((\regf_i|r4_i|sREG\(21)))) # (!\prog_i|oQ[18]~1_combout\ & (\regf_i|r0_i|sREG\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prog_i|oQ[17]~2_combout\,
	datab => \regf_i|r0_i|sREG\(21),
	datac => \regf_i|r4_i|sREG\(21),
	datad => \prog_i|oQ[18]~1_combout\,
	combout => \regf_i|Mux41~0_combout\);

-- Location: LCCOMB_X36_Y15_N2
\regf_i|Mux41~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux41~1_combout\ = (\regf_i|Mux41~0_combout\ & (((\regf_i|r6_i|sREG\(21)) # (!\prog_i|oQ[17]~2_combout\)))) # (!\regf_i|Mux41~0_combout\ & (\regf_i|r2_i|sREG\(21) & ((\prog_i|oQ[17]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|r2_i|sREG\(21),
	datab => \regf_i|Mux41~0_combout\,
	datac => \regf_i|r6_i|sREG\(21),
	datad => \prog_i|oQ[17]~2_combout\,
	combout => \regf_i|Mux41~1_combout\);

-- Location: LCCOMB_X36_Y15_N8
\regf_i|Mux41~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux41~2_combout\ = (!\prog_i|oQ[3]~3_combout\ & (!\prog_i|Equal3~0_combout\ & \regf_i|Mux41~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prog_i|oQ[3]~3_combout\,
	datab => \prog_i|Equal3~0_combout\,
	datad => \regf_i|Mux41~1_combout\,
	combout => \regf_i|Mux41~2_combout\);

-- Location: LCCOMB_X35_Y15_N10
\alu_i|Add1~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Add1~42_combout\ = (\sB[21]~51_combout\ & ((\regf_i|Mux41~2_combout\ & (!\alu_i|Add1~41\)) # (!\regf_i|Mux41~2_combout\ & ((\alu_i|Add1~41\) # (GND))))) # (!\sB[21]~51_combout\ & ((\regf_i|Mux41~2_combout\ & (\alu_i|Add1~41\ & VCC)) # 
-- (!\regf_i|Mux41~2_combout\ & (!\alu_i|Add1~41\))))
-- \alu_i|Add1~43\ = CARRY((\sB[21]~51_combout\ & ((!\alu_i|Add1~41\) # (!\regf_i|Mux41~2_combout\))) # (!\sB[21]~51_combout\ & (!\regf_i|Mux41~2_combout\ & !\alu_i|Add1~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sB[21]~51_combout\,
	datab => \regf_i|Mux41~2_combout\,
	datad => VCC,
	cin => \alu_i|Add1~41\,
	combout => \alu_i|Add1~42_combout\,
	cout => \alu_i|Add1~43\);

-- Location: LCCOMB_X34_Y15_N10
\alu_i|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Add0~42_combout\ = (\sB[21]~51_combout\ & ((\regf_i|Mux41~2_combout\ & (\alu_i|Add0~41\ & VCC)) # (!\regf_i|Mux41~2_combout\ & (!\alu_i|Add0~41\)))) # (!\sB[21]~51_combout\ & ((\regf_i|Mux41~2_combout\ & (!\alu_i|Add0~41\)) # 
-- (!\regf_i|Mux41~2_combout\ & ((\alu_i|Add0~41\) # (GND)))))
-- \alu_i|Add0~43\ = CARRY((\sB[21]~51_combout\ & (!\regf_i|Mux41~2_combout\ & !\alu_i|Add0~41\)) # (!\sB[21]~51_combout\ & ((!\alu_i|Add0~41\) # (!\regf_i|Mux41~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sB[21]~51_combout\,
	datab => \regf_i|Mux41~2_combout\,
	datad => VCC,
	cin => \alu_i|Add0~41\,
	combout => \alu_i|Add0~42_combout\,
	cout => \alu_i|Add0~43\);

-- Location: LCCOMB_X33_Y14_N24
\alu_i|Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Mux10~0_combout\ = (\alu_i|Mux30~10_combout\) # ((\cu_i|Mux27~0_combout\ & (\alu_i|Add1~42_combout\)) # (!\cu_i|Mux27~0_combout\ & ((\alu_i|Add0~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_i|Mux30~10_combout\,
	datab => \cu_i|Mux27~0_combout\,
	datac => \alu_i|Add1~42_combout\,
	datad => \alu_i|Add0~42_combout\,
	combout => \alu_i|Mux10~0_combout\);

-- Location: FF_X32_Y17_N11
\pc_i|sPC[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Add0~40_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_i|sPC\(22));

-- Location: LCCOMB_X32_Y17_N10
\Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (\pc_i|sPC\(22) & (\Add0~39\ $ (GND))) # (!\pc_i|sPC\(22) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((\pc_i|sPC\(22) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_i|sPC\(22),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X33_Y15_N2
\Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (!\cu_i|Mux34~0_combout\ & ((\cu_i|Mux35~2_combout\ & ((\alu_i|Mux9~0_combout\))) # (!\cu_i|Mux35~2_combout\ & (\Add0~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~40_combout\,
	datab => \cu_i|Mux34~0_combout\,
	datac => \cu_i|Mux35~2_combout\,
	datad => \alu_i|Mux9~0_combout\,
	combout => \Mux9~0_combout\);

-- Location: FF_X34_Y17_N31
\regf_i|r0_i|sREG[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux9~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r0_i|sREG\(22));

-- Location: FF_X33_Y17_N11
\regf_i|r2_i|sREG[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux9~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r2_i|sREG\(22));

-- Location: LCCOMB_X33_Y17_N10
\regf_i|Mux40~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux40~0_combout\ = (\prog_i|oQ[18]~1_combout\ & (((\prog_i|oQ[17]~2_combout\)))) # (!\prog_i|oQ[18]~1_combout\ & ((\prog_i|oQ[17]~2_combout\ & ((\regf_i|r2_i|sREG\(22)))) # (!\prog_i|oQ[17]~2_combout\ & (\regf_i|r0_i|sREG\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|r0_i|sREG\(22),
	datab => \prog_i|oQ[18]~1_combout\,
	datac => \regf_i|r2_i|sREG\(22),
	datad => \prog_i|oQ[17]~2_combout\,
	combout => \regf_i|Mux40~0_combout\);

-- Location: FF_X34_Y15_N13
\regf_i|r6_i|sREG[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux9~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r6_i|sREG\(22));

-- Location: FF_X36_Y15_N31
\regf_i|r4_i|sREG[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux9~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r4_i|sREG\(22));

-- Location: LCCOMB_X36_Y15_N30
\regf_i|Mux40~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux40~1_combout\ = (\regf_i|Mux40~0_combout\ & ((\regf_i|r6_i|sREG\(22)) # ((!\prog_i|oQ[18]~1_combout\)))) # (!\regf_i|Mux40~0_combout\ & (((\regf_i|r4_i|sREG\(22) & \prog_i|oQ[18]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|Mux40~0_combout\,
	datab => \regf_i|r6_i|sREG\(22),
	datac => \regf_i|r4_i|sREG\(22),
	datad => \prog_i|oQ[18]~1_combout\,
	combout => \regf_i|Mux40~1_combout\);

-- Location: LCCOMB_X36_Y15_N24
\regf_i|Mux40~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux40~2_combout\ = (!\prog_i|oQ[3]~3_combout\ & (!\prog_i|Equal3~0_combout\ & \regf_i|Mux40~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prog_i|oQ[3]~3_combout\,
	datab => \prog_i|Equal3~0_combout\,
	datac => \regf_i|Mux40~1_combout\,
	combout => \regf_i|Mux40~2_combout\);

-- Location: LCCOMB_X36_Y15_N22
\regf_i|Mux72~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux72~0_combout\ = (!\sRA2[0]~2_combout\ & ((\sRA2[1]~0_combout\ & ((\regf_i|r6_i|sREG\(22)))) # (!\sRA2[1]~0_combout\ & (\regf_i|r4_i|sREG\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|r4_i|sREG\(22),
	datab => \sRA2[1]~0_combout\,
	datac => \regf_i|r6_i|sREG\(22),
	datad => \sRA2[0]~2_combout\,
	combout => \regf_i|Mux72~0_combout\);

-- Location: FF_X33_Y15_N3
\regf_i|r3_i|sREG[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Mux9~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \regf_i|Mux30~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r3_i|sREG\(22));

-- Location: LCCOMB_X34_Y17_N30
\regf_i|Mux72~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux72~1_combout\ = (\sRA2[1]~0_combout\ & (\sRA2[0]~2_combout\)) # (!\sRA2[1]~0_combout\ & (!\sRA2[0]~2_combout\ & \regf_i|r0_i|sREG\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sRA2[1]~0_combout\,
	datab => \sRA2[0]~2_combout\,
	datac => \regf_i|r0_i|sREG\(22),
	combout => \regf_i|Mux72~1_combout\);

-- Location: LCCOMB_X36_Y15_N20
\regf_i|Mux72~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux72~2_combout\ = (\sRA2[1]~0_combout\ & ((\regf_i|Mux72~1_combout\ & (\regf_i|r3_i|sREG\(22))) # (!\regf_i|Mux72~1_combout\ & ((\regf_i|r2_i|sREG\(22)))))) # (!\sRA2[1]~0_combout\ & (((\regf_i|Mux72~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|r3_i|sREG\(22),
	datab => \sRA2[1]~0_combout\,
	datac => \regf_i|Mux72~1_combout\,
	datad => \regf_i|r2_i|sREG\(22),
	combout => \regf_i|Mux72~2_combout\);

-- Location: LCCOMB_X36_Y15_N14
\sB[22]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sB[22]~52_combout\ = (\sB[0]~6_combout\ & ((\sRA2[2]~1_combout\ & (\regf_i|Mux72~0_combout\)) # (!\sRA2[2]~1_combout\ & ((\regf_i|Mux72~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sB[0]~6_combout\,
	datab => \sRA2[2]~1_combout\,
	datac => \regf_i|Mux72~0_combout\,
	datad => \regf_i|Mux72~2_combout\,
	combout => \sB[22]~52_combout\);

-- Location: LCCOMB_X34_Y15_N12
\alu_i|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Add0~44_combout\ = ((\regf_i|Mux40~2_combout\ $ (\sB[22]~52_combout\ $ (!\alu_i|Add0~43\)))) # (GND)
-- \alu_i|Add0~45\ = CARRY((\regf_i|Mux40~2_combout\ & ((\sB[22]~52_combout\) # (!\alu_i|Add0~43\))) # (!\regf_i|Mux40~2_combout\ & (\sB[22]~52_combout\ & !\alu_i|Add0~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|Mux40~2_combout\,
	datab => \sB[22]~52_combout\,
	datad => VCC,
	cin => \alu_i|Add0~43\,
	combout => \alu_i|Add0~44_combout\,
	cout => \alu_i|Add0~45\);

-- Location: LCCOMB_X35_Y15_N12
\alu_i|Add1~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Add1~44_combout\ = ((\regf_i|Mux40~2_combout\ $ (\sB[22]~52_combout\ $ (\alu_i|Add1~43\)))) # (GND)
-- \alu_i|Add1~45\ = CARRY((\regf_i|Mux40~2_combout\ & ((!\alu_i|Add1~43\) # (!\sB[22]~52_combout\))) # (!\regf_i|Mux40~2_combout\ & (!\sB[22]~52_combout\ & !\alu_i|Add1~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|Mux40~2_combout\,
	datab => \sB[22]~52_combout\,
	datad => VCC,
	cin => \alu_i|Add1~43\,
	combout => \alu_i|Add1~44_combout\,
	cout => \alu_i|Add1~45\);

-- Location: LCCOMB_X33_Y15_N28
\alu_i|Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Mux9~0_combout\ = (!\alu_i|Mux30~10_combout\ & ((\cu_i|Mux27~0_combout\ & ((\alu_i|Add1~44_combout\))) # (!\cu_i|Mux27~0_combout\ & (\alu_i|Add0~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_i|Mux27~0_combout\,
	datab => \alu_i|Mux30~10_combout\,
	datac => \alu_i|Add0~44_combout\,
	datad => \alu_i|Add1~44_combout\,
	combout => \alu_i|Mux9~0_combout\);

-- Location: FF_X32_Y17_N13
\pc_i|sPC[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Add0~42_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_i|sPC\(23));

-- Location: LCCOMB_X32_Y17_N12
\Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (\pc_i|sPC\(23) & (!\Add0~41\)) # (!\pc_i|sPC\(23) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!\pc_i|sPC\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_i|sPC\(23),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X33_Y14_N12
\Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (!\cu_i|Mux34~0_combout\ & ((\cu_i|Mux35~2_combout\ & ((\alu_i|Mux8~0_combout\))) # (!\cu_i|Mux35~2_combout\ & (\Add0~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~42_combout\,
	datab => \cu_i|Mux35~2_combout\,
	datac => \alu_i|Mux8~0_combout\,
	datad => \cu_i|Mux34~0_combout\,
	combout => \Mux8~0_combout\);

-- Location: FF_X31_Y14_N17
\regf_i|r6_i|sREG[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux8~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r6_i|sREG\(23));

-- Location: LCCOMB_X33_Y14_N18
\regf_i|r2_i|sREG[23]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|r2_i|sREG[23]~feeder_combout\ = \Mux8~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux8~0_combout\,
	combout => \regf_i|r2_i|sREG[23]~feeder_combout\);

-- Location: FF_X33_Y14_N19
\regf_i|r2_i|sREG[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \regf_i|r2_i|sREG[23]~feeder_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \regf_i|Mux30~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r2_i|sREG\(23));

-- Location: FF_X32_Y14_N29
\regf_i|r0_i|sREG[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux8~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r0_i|sREG\(23));

-- Location: FF_X32_Y14_N27
\regf_i|r4_i|sREG[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux8~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r4_i|sREG\(23));

-- Location: LCCOMB_X32_Y14_N26
\regf_i|Mux39~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux39~0_combout\ = (\prog_i|oQ[17]~2_combout\ & (((\prog_i|oQ[18]~1_combout\)))) # (!\prog_i|oQ[17]~2_combout\ & ((\prog_i|oQ[18]~1_combout\ & ((\regf_i|r4_i|sREG\(23)))) # (!\prog_i|oQ[18]~1_combout\ & (\regf_i|r0_i|sREG\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prog_i|oQ[17]~2_combout\,
	datab => \regf_i|r0_i|sREG\(23),
	datac => \regf_i|r4_i|sREG\(23),
	datad => \prog_i|oQ[18]~1_combout\,
	combout => \regf_i|Mux39~0_combout\);

-- Location: LCCOMB_X31_Y14_N6
\regf_i|Mux39~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux39~1_combout\ = (\prog_i|oQ[17]~2_combout\ & ((\regf_i|Mux39~0_combout\ & (\regf_i|r6_i|sREG\(23))) # (!\regf_i|Mux39~0_combout\ & ((\regf_i|r2_i|sREG\(23)))))) # (!\prog_i|oQ[17]~2_combout\ & (((\regf_i|Mux39~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prog_i|oQ[17]~2_combout\,
	datab => \regf_i|r6_i|sREG\(23),
	datac => \regf_i|r2_i|sREG\(23),
	datad => \regf_i|Mux39~0_combout\,
	combout => \regf_i|Mux39~1_combout\);

-- Location: LCCOMB_X31_Y14_N0
\regf_i|Mux39~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux39~2_combout\ = (!\prog_i|Equal3~0_combout\ & (!\prog_i|oQ[3]~3_combout\ & \regf_i|Mux39~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prog_i|Equal3~0_combout\,
	datac => \prog_i|oQ[3]~3_combout\,
	datad => \regf_i|Mux39~1_combout\,
	combout => \regf_i|Mux39~2_combout\);

-- Location: LCCOMB_X32_Y14_N22
\regf_i|Mux71~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux71~0_combout\ = (!\sRA2[0]~2_combout\ & ((\sRA2[1]~0_combout\ & ((\regf_i|r6_i|sREG\(23)))) # (!\sRA2[1]~0_combout\ & (\regf_i|r4_i|sREG\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|r4_i|sREG\(23),
	datab => \sRA2[1]~0_combout\,
	datac => \regf_i|r6_i|sREG\(23),
	datad => \sRA2[0]~2_combout\,
	combout => \regf_i|Mux71~0_combout\);

-- Location: FF_X33_Y14_N13
\regf_i|r3_i|sREG[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Mux8~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \regf_i|Mux30~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r3_i|sREG\(23));

-- Location: LCCOMB_X32_Y14_N28
\regf_i|Mux71~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux71~1_combout\ = (\sRA2[1]~0_combout\ & (\sRA2[0]~2_combout\)) # (!\sRA2[1]~0_combout\ & (!\sRA2[0]~2_combout\ & \regf_i|r0_i|sREG\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sRA2[1]~0_combout\,
	datab => \sRA2[0]~2_combout\,
	datac => \regf_i|r0_i|sREG\(23),
	combout => \regf_i|Mux71~1_combout\);

-- Location: LCCOMB_X32_Y14_N16
\regf_i|Mux71~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux71~2_combout\ = (\sRA2[1]~0_combout\ & ((\regf_i|Mux71~1_combout\ & (\regf_i|r3_i|sREG\(23))) # (!\regf_i|Mux71~1_combout\ & ((\regf_i|r2_i|sREG\(23)))))) # (!\sRA2[1]~0_combout\ & (((\regf_i|Mux71~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|r3_i|sREG\(23),
	datab => \regf_i|r2_i|sREG\(23),
	datac => \sRA2[1]~0_combout\,
	datad => \regf_i|Mux71~1_combout\,
	combout => \regf_i|Mux71~2_combout\);

-- Location: LCCOMB_X32_Y14_N30
\sB[23]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sB[23]~53_combout\ = (\sB[0]~6_combout\ & ((\sRA2[2]~1_combout\ & (\regf_i|Mux71~0_combout\)) # (!\sRA2[2]~1_combout\ & ((\regf_i|Mux71~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sRA2[2]~1_combout\,
	datab => \sB[0]~6_combout\,
	datac => \regf_i|Mux71~0_combout\,
	datad => \regf_i|Mux71~2_combout\,
	combout => \sB[23]~53_combout\);

-- Location: LCCOMB_X35_Y15_N14
\alu_i|Add1~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Add1~46_combout\ = (\regf_i|Mux39~2_combout\ & ((\sB[23]~53_combout\ & (!\alu_i|Add1~45\)) # (!\sB[23]~53_combout\ & (\alu_i|Add1~45\ & VCC)))) # (!\regf_i|Mux39~2_combout\ & ((\sB[23]~53_combout\ & ((\alu_i|Add1~45\) # (GND))) # 
-- (!\sB[23]~53_combout\ & (!\alu_i|Add1~45\))))
-- \alu_i|Add1~47\ = CARRY((\regf_i|Mux39~2_combout\ & (\sB[23]~53_combout\ & !\alu_i|Add1~45\)) # (!\regf_i|Mux39~2_combout\ & ((\sB[23]~53_combout\) # (!\alu_i|Add1~45\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|Mux39~2_combout\,
	datab => \sB[23]~53_combout\,
	datad => VCC,
	cin => \alu_i|Add1~45\,
	combout => \alu_i|Add1~46_combout\,
	cout => \alu_i|Add1~47\);

-- Location: LCCOMB_X34_Y15_N14
\alu_i|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Add0~46_combout\ = (\sB[23]~53_combout\ & ((\regf_i|Mux39~2_combout\ & (\alu_i|Add0~45\ & VCC)) # (!\regf_i|Mux39~2_combout\ & (!\alu_i|Add0~45\)))) # (!\sB[23]~53_combout\ & ((\regf_i|Mux39~2_combout\ & (!\alu_i|Add0~45\)) # 
-- (!\regf_i|Mux39~2_combout\ & ((\alu_i|Add0~45\) # (GND)))))
-- \alu_i|Add0~47\ = CARRY((\sB[23]~53_combout\ & (!\regf_i|Mux39~2_combout\ & !\alu_i|Add0~45\)) # (!\sB[23]~53_combout\ & ((!\alu_i|Add0~45\) # (!\regf_i|Mux39~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sB[23]~53_combout\,
	datab => \regf_i|Mux39~2_combout\,
	datad => VCC,
	cin => \alu_i|Add0~45\,
	combout => \alu_i|Add0~46_combout\,
	cout => \alu_i|Add0~47\);

-- Location: LCCOMB_X33_Y14_N30
\alu_i|Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Mux8~0_combout\ = (\alu_i|Mux30~10_combout\) # ((\cu_i|Mux27~0_combout\ & (\alu_i|Add1~46_combout\)) # (!\cu_i|Mux27~0_combout\ & ((\alu_i|Add0~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_i|Mux30~10_combout\,
	datab => \cu_i|Mux27~0_combout\,
	datac => \alu_i|Add1~46_combout\,
	datad => \alu_i|Add0~46_combout\,
	combout => \alu_i|Mux8~0_combout\);

-- Location: FF_X32_Y17_N15
\pc_i|sPC[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Add0~44_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_i|sPC\(24));

-- Location: LCCOMB_X32_Y17_N14
\Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (\pc_i|sPC\(24) & (\Add0~43\ $ (GND))) # (!\pc_i|sPC\(24) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((\pc_i|sPC\(24) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_i|sPC\(24),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X33_Y15_N30
\Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (!\cu_i|Mux34~0_combout\ & ((\cu_i|Mux35~2_combout\ & ((\alu_i|Mux7~0_combout\))) # (!\cu_i|Mux35~2_combout\ & (\Add0~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~44_combout\,
	datab => \cu_i|Mux34~0_combout\,
	datac => \cu_i|Mux35~2_combout\,
	datad => \alu_i|Mux7~0_combout\,
	combout => \Mux7~0_combout\);

-- Location: FF_X30_Y15_N27
\regf_i|r6_i|sREG[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux7~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r6_i|sREG\(24));

-- Location: FF_X30_Y15_N29
\regf_i|r4_i|sREG[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux7~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r4_i|sREG\(24));

-- Location: FF_X34_Y15_N15
\regf_i|r2_i|sREG[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux7~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r2_i|sREG\(24));

-- Location: FF_X33_Y17_N5
\regf_i|r0_i|sREG[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux7~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r0_i|sREG\(24));

-- Location: LCCOMB_X31_Y17_N28
\regf_i|Mux38~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux38~0_combout\ = (\prog_i|oQ[18]~1_combout\ & (((\prog_i|oQ[17]~2_combout\)))) # (!\prog_i|oQ[18]~1_combout\ & ((\prog_i|oQ[17]~2_combout\ & (\regf_i|r2_i|sREG\(24))) # (!\prog_i|oQ[17]~2_combout\ & ((\regf_i|r0_i|sREG\(24))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prog_i|oQ[18]~1_combout\,
	datab => \regf_i|r2_i|sREG\(24),
	datac => \regf_i|r0_i|sREG\(24),
	datad => \prog_i|oQ[17]~2_combout\,
	combout => \regf_i|Mux38~0_combout\);

-- Location: LCCOMB_X30_Y15_N28
\regf_i|Mux38~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux38~1_combout\ = (\prog_i|oQ[18]~1_combout\ & ((\regf_i|Mux38~0_combout\ & (\regf_i|r6_i|sREG\(24))) # (!\regf_i|Mux38~0_combout\ & ((\regf_i|r4_i|sREG\(24)))))) # (!\prog_i|oQ[18]~1_combout\ & (((\regf_i|Mux38~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prog_i|oQ[18]~1_combout\,
	datab => \regf_i|r6_i|sREG\(24),
	datac => \regf_i|r4_i|sREG\(24),
	datad => \regf_i|Mux38~0_combout\,
	combout => \regf_i|Mux38~1_combout\);

-- Location: LCCOMB_X30_Y15_N4
\regf_i|Mux38~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux38~2_combout\ = (!\prog_i|oQ[3]~3_combout\ & (\regf_i|Mux38~1_combout\ & !\prog_i|Equal3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prog_i|oQ[3]~3_combout\,
	datac => \regf_i|Mux38~1_combout\,
	datad => \prog_i|Equal3~0_combout\,
	combout => \regf_i|Mux38~2_combout\);

-- Location: LCCOMB_X30_Y15_N26
\regf_i|Mux70~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux70~0_combout\ = (!\sRA2[0]~2_combout\ & ((\sRA2[1]~0_combout\ & ((\regf_i|r6_i|sREG\(24)))) # (!\sRA2[1]~0_combout\ & (\regf_i|r4_i|sREG\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sRA2[1]~0_combout\,
	datab => \regf_i|r4_i|sREG\(24),
	datac => \regf_i|r6_i|sREG\(24),
	datad => \sRA2[0]~2_combout\,
	combout => \regf_i|Mux70~0_combout\);

-- Location: FF_X33_Y15_N31
\regf_i|r3_i|sREG[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Mux7~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \regf_i|Mux30~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r3_i|sREG\(24));

-- Location: LCCOMB_X33_Y17_N14
\regf_i|Mux70~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux70~1_combout\ = (\sRA2[0]~2_combout\ & ((\sRA2[1]~0_combout\))) # (!\sRA2[0]~2_combout\ & (\regf_i|r0_i|sREG\(24) & !\sRA2[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regf_i|r0_i|sREG\(24),
	datac => \sRA2[0]~2_combout\,
	datad => \sRA2[1]~0_combout\,
	combout => \regf_i|Mux70~1_combout\);

-- Location: LCCOMB_X30_Y15_N2
\regf_i|Mux70~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux70~2_combout\ = (\sRA2[1]~0_combout\ & ((\regf_i|Mux70~1_combout\ & (\regf_i|r3_i|sREG\(24))) # (!\regf_i|Mux70~1_combout\ & ((\regf_i|r2_i|sREG\(24)))))) # (!\sRA2[1]~0_combout\ & (((\regf_i|Mux70~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|r3_i|sREG\(24),
	datab => \sRA2[1]~0_combout\,
	datac => \regf_i|r2_i|sREG\(24),
	datad => \regf_i|Mux70~1_combout\,
	combout => \regf_i|Mux70~2_combout\);

-- Location: LCCOMB_X30_Y15_N20
\sB[24]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sB[24]~54_combout\ = (\sB[0]~6_combout\ & ((\sRA2[2]~1_combout\ & (\regf_i|Mux70~0_combout\)) # (!\sRA2[2]~1_combout\ & ((\regf_i|Mux70~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sB[0]~6_combout\,
	datab => \sRA2[2]~1_combout\,
	datac => \regf_i|Mux70~0_combout\,
	datad => \regf_i|Mux70~2_combout\,
	combout => \sB[24]~54_combout\);

-- Location: LCCOMB_X35_Y15_N16
\alu_i|Add1~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Add1~48_combout\ = ((\regf_i|Mux38~2_combout\ $ (\sB[24]~54_combout\ $ (\alu_i|Add1~47\)))) # (GND)
-- \alu_i|Add1~49\ = CARRY((\regf_i|Mux38~2_combout\ & ((!\alu_i|Add1~47\) # (!\sB[24]~54_combout\))) # (!\regf_i|Mux38~2_combout\ & (!\sB[24]~54_combout\ & !\alu_i|Add1~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|Mux38~2_combout\,
	datab => \sB[24]~54_combout\,
	datad => VCC,
	cin => \alu_i|Add1~47\,
	combout => \alu_i|Add1~48_combout\,
	cout => \alu_i|Add1~49\);

-- Location: LCCOMB_X34_Y15_N16
\alu_i|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Add0~48_combout\ = ((\regf_i|Mux38~2_combout\ $ (\sB[24]~54_combout\ $ (!\alu_i|Add0~47\)))) # (GND)
-- \alu_i|Add0~49\ = CARRY((\regf_i|Mux38~2_combout\ & ((\sB[24]~54_combout\) # (!\alu_i|Add0~47\))) # (!\regf_i|Mux38~2_combout\ & (\sB[24]~54_combout\ & !\alu_i|Add0~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|Mux38~2_combout\,
	datab => \sB[24]~54_combout\,
	datad => VCC,
	cin => \alu_i|Add0~47\,
	combout => \alu_i|Add0~48_combout\,
	cout => \alu_i|Add0~49\);

-- Location: LCCOMB_X33_Y15_N0
\alu_i|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Mux7~0_combout\ = (!\alu_i|Mux30~10_combout\ & ((\cu_i|Mux27~0_combout\ & (\alu_i|Add1~48_combout\)) # (!\cu_i|Mux27~0_combout\ & ((\alu_i|Add0~48_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_i|Mux27~0_combout\,
	datab => \alu_i|Mux30~10_combout\,
	datac => \alu_i|Add1~48_combout\,
	datad => \alu_i|Add0~48_combout\,
	combout => \alu_i|Mux7~0_combout\);

-- Location: FF_X32_Y17_N17
\pc_i|sPC[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Add0~46_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_i|sPC\(25));

-- Location: LCCOMB_X32_Y17_N16
\Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (\pc_i|sPC\(25) & (!\Add0~45\)) # (!\pc_i|sPC\(25) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!\pc_i|sPC\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_i|sPC\(25),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X33_Y14_N14
\Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (!\cu_i|Mux34~0_combout\ & ((\cu_i|Mux35~2_combout\ & ((\alu_i|Mux6~0_combout\))) # (!\cu_i|Mux35~2_combout\ & (\Add0~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_i|Mux34~0_combout\,
	datab => \cu_i|Mux35~2_combout\,
	datac => \Add0~46_combout\,
	datad => \alu_i|Mux6~0_combout\,
	combout => \Mux6~0_combout\);

-- Location: FF_X33_Y14_N15
\regf_i|r3_i|sREG[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Mux6~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \regf_i|Mux30~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r3_i|sREG\(25));

-- Location: FF_X33_Y14_N5
\regf_i|r2_i|sREG[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux6~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r2_i|sREG\(25));

-- Location: FF_X32_Y14_N9
\regf_i|r0_i|sREG[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux6~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r0_i|sREG\(25));

-- Location: LCCOMB_X32_Y14_N8
\regf_i|Mux69~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux69~1_combout\ = (\sRA2[1]~0_combout\ & (\sRA2[0]~2_combout\)) # (!\sRA2[1]~0_combout\ & (!\sRA2[0]~2_combout\ & \regf_i|r0_i|sREG\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sRA2[1]~0_combout\,
	datab => \sRA2[0]~2_combout\,
	datac => \regf_i|r0_i|sREG\(25),
	combout => \regf_i|Mux69~1_combout\);

-- Location: LCCOMB_X33_Y14_N4
\regf_i|Mux69~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux69~2_combout\ = (\sRA2[1]~0_combout\ & ((\regf_i|Mux69~1_combout\ & (\regf_i|r3_i|sREG\(25))) # (!\regf_i|Mux69~1_combout\ & ((\regf_i|r2_i|sREG\(25)))))) # (!\sRA2[1]~0_combout\ & (((\regf_i|Mux69~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sRA2[1]~0_combout\,
	datab => \regf_i|r3_i|sREG\(25),
	datac => \regf_i|r2_i|sREG\(25),
	datad => \regf_i|Mux69~1_combout\,
	combout => \regf_i|Mux69~2_combout\);

-- Location: LCCOMB_X31_Y14_N8
\regf_i|r6_i|sREG[25]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|r6_i|sREG[25]~feeder_combout\ = \Mux6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux6~0_combout\,
	combout => \regf_i|r6_i|sREG[25]~feeder_combout\);

-- Location: FF_X31_Y14_N9
\regf_i|r6_i|sREG[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \regf_i|r6_i|sREG[25]~feeder_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \regf_i|Mux30~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r6_i|sREG\(25));

-- Location: FF_X32_Y14_N21
\regf_i|r4_i|sREG[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux6~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r4_i|sREG\(25));

-- Location: LCCOMB_X32_Y14_N14
\regf_i|Mux69~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux69~0_combout\ = (!\sRA2[0]~2_combout\ & ((\sRA2[1]~0_combout\ & (\regf_i|r6_i|sREG\(25))) # (!\sRA2[1]~0_combout\ & ((\regf_i|r4_i|sREG\(25))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|r6_i|sREG\(25),
	datab => \regf_i|r4_i|sREG\(25),
	datac => \sRA2[1]~0_combout\,
	datad => \sRA2[0]~2_combout\,
	combout => \regf_i|Mux69~0_combout\);

-- Location: LCCOMB_X33_Y14_N28
\sB[25]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sB[25]~55_combout\ = (\sB[0]~6_combout\ & ((\sRA2[2]~1_combout\ & ((\regf_i|Mux69~0_combout\))) # (!\sRA2[2]~1_combout\ & (\regf_i|Mux69~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sRA2[2]~1_combout\,
	datab => \sB[0]~6_combout\,
	datac => \regf_i|Mux69~2_combout\,
	datad => \regf_i|Mux69~0_combout\,
	combout => \sB[25]~55_combout\);

-- Location: LCCOMB_X31_Y14_N14
\regf_i|Mux37~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux37~0_combout\ = (\prog_i|oQ[17]~2_combout\ & (((\prog_i|oQ[18]~1_combout\)))) # (!\prog_i|oQ[17]~2_combout\ & ((\prog_i|oQ[18]~1_combout\ & (\regf_i|r4_i|sREG\(25))) # (!\prog_i|oQ[18]~1_combout\ & ((\regf_i|r0_i|sREG\(25))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|r4_i|sREG\(25),
	datab => \regf_i|r0_i|sREG\(25),
	datac => \prog_i|oQ[17]~2_combout\,
	datad => \prog_i|oQ[18]~1_combout\,
	combout => \regf_i|Mux37~0_combout\);

-- Location: LCCOMB_X31_Y14_N18
\regf_i|Mux37~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux37~1_combout\ = (\prog_i|oQ[17]~2_combout\ & ((\regf_i|Mux37~0_combout\ & ((\regf_i|r6_i|sREG\(25)))) # (!\regf_i|Mux37~0_combout\ & (\regf_i|r2_i|sREG\(25))))) # (!\prog_i|oQ[17]~2_combout\ & (((\regf_i|Mux37~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prog_i|oQ[17]~2_combout\,
	datab => \regf_i|r2_i|sREG\(25),
	datac => \regf_i|Mux37~0_combout\,
	datad => \regf_i|r6_i|sREG\(25),
	combout => \regf_i|Mux37~1_combout\);

-- Location: LCCOMB_X31_Y14_N12
\regf_i|Mux37~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux37~2_combout\ = (!\prog_i|Equal3~0_combout\ & (!\prog_i|oQ[3]~3_combout\ & \regf_i|Mux37~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prog_i|Equal3~0_combout\,
	datac => \prog_i|oQ[3]~3_combout\,
	datad => \regf_i|Mux37~1_combout\,
	combout => \regf_i|Mux37~2_combout\);

-- Location: LCCOMB_X34_Y15_N18
\alu_i|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Add0~50_combout\ = (\sB[25]~55_combout\ & ((\regf_i|Mux37~2_combout\ & (\alu_i|Add0~49\ & VCC)) # (!\regf_i|Mux37~2_combout\ & (!\alu_i|Add0~49\)))) # (!\sB[25]~55_combout\ & ((\regf_i|Mux37~2_combout\ & (!\alu_i|Add0~49\)) # 
-- (!\regf_i|Mux37~2_combout\ & ((\alu_i|Add0~49\) # (GND)))))
-- \alu_i|Add0~51\ = CARRY((\sB[25]~55_combout\ & (!\regf_i|Mux37~2_combout\ & !\alu_i|Add0~49\)) # (!\sB[25]~55_combout\ & ((!\alu_i|Add0~49\) # (!\regf_i|Mux37~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sB[25]~55_combout\,
	datab => \regf_i|Mux37~2_combout\,
	datad => VCC,
	cin => \alu_i|Add0~49\,
	combout => \alu_i|Add0~50_combout\,
	cout => \alu_i|Add0~51\);

-- Location: LCCOMB_X35_Y15_N18
\alu_i|Add1~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Add1~50_combout\ = (\regf_i|Mux37~2_combout\ & ((\sB[25]~55_combout\ & (!\alu_i|Add1~49\)) # (!\sB[25]~55_combout\ & (\alu_i|Add1~49\ & VCC)))) # (!\regf_i|Mux37~2_combout\ & ((\sB[25]~55_combout\ & ((\alu_i|Add1~49\) # (GND))) # 
-- (!\sB[25]~55_combout\ & (!\alu_i|Add1~49\))))
-- \alu_i|Add1~51\ = CARRY((\regf_i|Mux37~2_combout\ & (\sB[25]~55_combout\ & !\alu_i|Add1~49\)) # (!\regf_i|Mux37~2_combout\ & ((\sB[25]~55_combout\) # (!\alu_i|Add1~49\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|Mux37~2_combout\,
	datab => \sB[25]~55_combout\,
	datad => VCC,
	cin => \alu_i|Add1~49\,
	combout => \alu_i|Add1~50_combout\,
	cout => \alu_i|Add1~51\);

-- Location: LCCOMB_X33_Y14_N10
\alu_i|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Mux6~0_combout\ = (\alu_i|Mux30~10_combout\) # ((\cu_i|Mux27~0_combout\ & ((\alu_i|Add1~50_combout\))) # (!\cu_i|Mux27~0_combout\ & (\alu_i|Add0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_i|Mux30~10_combout\,
	datab => \alu_i|Add0~50_combout\,
	datac => \alu_i|Add1~50_combout\,
	datad => \cu_i|Mux27~0_combout\,
	combout => \alu_i|Mux6~0_combout\);

-- Location: FF_X32_Y17_N19
\pc_i|sPC[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Add0~48_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_i|sPC\(26));

-- Location: LCCOMB_X32_Y17_N18
\Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (\pc_i|sPC\(26) & (\Add0~47\ $ (GND))) # (!\pc_i|sPC\(26) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((\pc_i|sPC\(26) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_i|sPC\(26),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X31_Y15_N30
\Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (!\cu_i|Mux34~0_combout\ & ((\cu_i|Mux35~2_combout\ & ((\alu_i|Mux5~0_combout\))) # (!\cu_i|Mux35~2_combout\ & (\Add0~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_i|Mux34~0_combout\,
	datab => \Add0~48_combout\,
	datac => \cu_i|Mux35~2_combout\,
	datad => \alu_i|Mux5~0_combout\,
	combout => \Mux5~0_combout\);

-- Location: FF_X30_Y15_N11
\regf_i|r4_i|sREG[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux5~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r4_i|sREG\(26));

-- Location: FF_X29_Y15_N25
\regf_i|r0_i|sREG[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux5~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r0_i|sREG\(26));

-- Location: FF_X31_Y15_N13
\regf_i|r2_i|sREG[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux5~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r2_i|sREG\(26));

-- Location: LCCOMB_X31_Y15_N12
\regf_i|Mux36~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux36~0_combout\ = (\prog_i|oQ[17]~2_combout\ & (((\regf_i|r2_i|sREG\(26)) # (\prog_i|oQ[18]~1_combout\)))) # (!\prog_i|oQ[17]~2_combout\ & (\regf_i|r0_i|sREG\(26) & ((!\prog_i|oQ[18]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prog_i|oQ[17]~2_combout\,
	datab => \regf_i|r0_i|sREG\(26),
	datac => \regf_i|r2_i|sREG\(26),
	datad => \prog_i|oQ[18]~1_combout\,
	combout => \regf_i|Mux36~0_combout\);

-- Location: FF_X30_Y15_N9
\regf_i|r6_i|sREG[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux5~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r6_i|sREG\(26));

-- Location: LCCOMB_X30_Y15_N18
\regf_i|Mux36~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux36~1_combout\ = (\regf_i|Mux36~0_combout\ & (((\regf_i|r6_i|sREG\(26)) # (!\prog_i|oQ[18]~1_combout\)))) # (!\regf_i|Mux36~0_combout\ & (\regf_i|r4_i|sREG\(26) & (\prog_i|oQ[18]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|r4_i|sREG\(26),
	datab => \regf_i|Mux36~0_combout\,
	datac => \prog_i|oQ[18]~1_combout\,
	datad => \regf_i|r6_i|sREG\(26),
	combout => \regf_i|Mux36~1_combout\);

-- Location: LCCOMB_X30_Y15_N16
\regf_i|Mux36~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux36~2_combout\ = (!\prog_i|oQ[3]~3_combout\ & (\regf_i|Mux36~1_combout\ & !\prog_i|Equal3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prog_i|oQ[3]~3_combout\,
	datac => \regf_i|Mux36~1_combout\,
	datad => \prog_i|Equal3~0_combout\,
	combout => \regf_i|Mux36~2_combout\);

-- Location: LCCOMB_X30_Y15_N8
\regf_i|Mux68~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux68~0_combout\ = (!\sRA2[0]~2_combout\ & ((\sRA2[1]~0_combout\ & (\regf_i|r6_i|sREG\(26))) # (!\sRA2[1]~0_combout\ & ((\regf_i|r4_i|sREG\(26))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sRA2[1]~0_combout\,
	datab => \sRA2[0]~2_combout\,
	datac => \regf_i|r6_i|sREG\(26),
	datad => \regf_i|r4_i|sREG\(26),
	combout => \regf_i|Mux68~0_combout\);

-- Location: FF_X31_Y15_N31
\regf_i|r3_i|sREG[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Mux5~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \regf_i|Mux30~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r3_i|sREG\(26));

-- Location: LCCOMB_X29_Y15_N10
\regf_i|Mux68~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux68~1_combout\ = (\sRA2[1]~0_combout\ & ((\sRA2[0]~2_combout\))) # (!\sRA2[1]~0_combout\ & (\regf_i|r0_i|sREG\(26) & !\sRA2[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regf_i|r0_i|sREG\(26),
	datac => \sRA2[1]~0_combout\,
	datad => \sRA2[0]~2_combout\,
	combout => \regf_i|Mux68~1_combout\);

-- Location: LCCOMB_X31_Y15_N28
\regf_i|Mux68~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux68~2_combout\ = (\sRA2[1]~0_combout\ & ((\regf_i|Mux68~1_combout\ & (\regf_i|r3_i|sREG\(26))) # (!\regf_i|Mux68~1_combout\ & ((\regf_i|r2_i|sREG\(26)))))) # (!\sRA2[1]~0_combout\ & (((\regf_i|Mux68~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|r3_i|sREG\(26),
	datab => \regf_i|r2_i|sREG\(26),
	datac => \sRA2[1]~0_combout\,
	datad => \regf_i|Mux68~1_combout\,
	combout => \regf_i|Mux68~2_combout\);

-- Location: LCCOMB_X31_Y15_N10
\sB[26]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sB[26]~56_combout\ = (\sB[0]~6_combout\ & ((\sRA2[2]~1_combout\ & (\regf_i|Mux68~0_combout\)) # (!\sRA2[2]~1_combout\ & ((\regf_i|Mux68~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|Mux68~0_combout\,
	datab => \sB[0]~6_combout\,
	datac => \sRA2[2]~1_combout\,
	datad => \regf_i|Mux68~2_combout\,
	combout => \sB[26]~56_combout\);

-- Location: LCCOMB_X34_Y15_N20
\alu_i|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Add0~52_combout\ = ((\regf_i|Mux36~2_combout\ $ (\sB[26]~56_combout\ $ (!\alu_i|Add0~51\)))) # (GND)
-- \alu_i|Add0~53\ = CARRY((\regf_i|Mux36~2_combout\ & ((\sB[26]~56_combout\) # (!\alu_i|Add0~51\))) # (!\regf_i|Mux36~2_combout\ & (\sB[26]~56_combout\ & !\alu_i|Add0~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|Mux36~2_combout\,
	datab => \sB[26]~56_combout\,
	datad => VCC,
	cin => \alu_i|Add0~51\,
	combout => \alu_i|Add0~52_combout\,
	cout => \alu_i|Add0~53\);

-- Location: LCCOMB_X35_Y15_N20
\alu_i|Add1~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Add1~52_combout\ = ((\sB[26]~56_combout\ $ (\regf_i|Mux36~2_combout\ $ (\alu_i|Add1~51\)))) # (GND)
-- \alu_i|Add1~53\ = CARRY((\sB[26]~56_combout\ & (\regf_i|Mux36~2_combout\ & !\alu_i|Add1~51\)) # (!\sB[26]~56_combout\ & ((\regf_i|Mux36~2_combout\) # (!\alu_i|Add1~51\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sB[26]~56_combout\,
	datab => \regf_i|Mux36~2_combout\,
	datad => VCC,
	cin => \alu_i|Add1~51\,
	combout => \alu_i|Add1~52_combout\,
	cout => \alu_i|Add1~53\);

-- Location: LCCOMB_X31_Y15_N20
\alu_i|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Mux5~0_combout\ = (!\alu_i|Mux30~10_combout\ & ((\cu_i|Mux27~0_combout\ & ((\alu_i|Add1~52_combout\))) # (!\cu_i|Mux27~0_combout\ & (\alu_i|Add0~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_i|Mux30~10_combout\,
	datab => \cu_i|Mux27~0_combout\,
	datac => \alu_i|Add0~52_combout\,
	datad => \alu_i|Add1~52_combout\,
	combout => \alu_i|Mux5~0_combout\);

-- Location: FF_X32_Y17_N21
\pc_i|sPC[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Add0~50_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_i|sPC\(27));

-- Location: LCCOMB_X32_Y17_N20
\Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (\pc_i|sPC\(27) & (!\Add0~49\)) # (!\pc_i|sPC\(27) & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!\pc_i|sPC\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_i|sPC\(27),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: LCCOMB_X33_Y15_N14
\Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (!\cu_i|Mux34~0_combout\ & ((\cu_i|Mux35~2_combout\ & ((\alu_i|Mux4~0_combout\))) # (!\cu_i|Mux35~2_combout\ & (\Add0~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~50_combout\,
	datab => \cu_i|Mux34~0_combout\,
	datac => \cu_i|Mux35~2_combout\,
	datad => \alu_i|Mux4~0_combout\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X30_Y15_N30
\regf_i|r4_i|sREG[27]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|r4_i|sREG[27]~feeder_combout\ = \Mux4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux4~0_combout\,
	combout => \regf_i|r4_i|sREG[27]~feeder_combout\);

-- Location: FF_X30_Y15_N31
\regf_i|r4_i|sREG[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \regf_i|r4_i|sREG[27]~feeder_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \regf_i|Mux30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r4_i|sREG\(27));

-- Location: FF_X30_Y15_N23
\regf_i|r6_i|sREG[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux4~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r6_i|sREG\(27));

-- Location: LCCOMB_X30_Y15_N14
\regf_i|Mux67~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux67~0_combout\ = (!\sRA2[0]~2_combout\ & ((\sRA2[1]~0_combout\ & ((\regf_i|r6_i|sREG\(27)))) # (!\sRA2[1]~0_combout\ & (\regf_i|r4_i|sREG\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|r4_i|sREG\(27),
	datab => \regf_i|r6_i|sREG\(27),
	datac => \sRA2[1]~0_combout\,
	datad => \sRA2[0]~2_combout\,
	combout => \regf_i|Mux67~0_combout\);

-- Location: FF_X33_Y15_N15
\regf_i|r3_i|sREG[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Mux4~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \regf_i|Mux30~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r3_i|sREG\(27));

-- Location: FF_X33_Y17_N21
\regf_i|r2_i|sREG[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux4~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r2_i|sREG\(27));

-- Location: FF_X33_Y17_N19
\regf_i|r0_i|sREG[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux4~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r0_i|sREG\(27));

-- Location: LCCOMB_X33_Y17_N28
\regf_i|Mux67~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux67~1_combout\ = (\sRA2[0]~2_combout\ & ((\sRA2[1]~0_combout\))) # (!\sRA2[0]~2_combout\ & (\regf_i|r0_i|sREG\(27) & !\sRA2[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regf_i|r0_i|sREG\(27),
	datac => \sRA2[0]~2_combout\,
	datad => \sRA2[1]~0_combout\,
	combout => \regf_i|Mux67~1_combout\);

-- Location: LCCOMB_X33_Y17_N20
\regf_i|Mux67~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux67~2_combout\ = (\sRA2[1]~0_combout\ & ((\regf_i|Mux67~1_combout\ & (\regf_i|r3_i|sREG\(27))) # (!\regf_i|Mux67~1_combout\ & ((\regf_i|r2_i|sREG\(27)))))) # (!\sRA2[1]~0_combout\ & (((\regf_i|Mux67~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|r3_i|sREG\(27),
	datab => \sRA2[1]~0_combout\,
	datac => \regf_i|r2_i|sREG\(27),
	datad => \regf_i|Mux67~1_combout\,
	combout => \regf_i|Mux67~2_combout\);

-- Location: LCCOMB_X30_Y15_N12
\sB[27]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sB[27]~57_combout\ = (\sB[0]~6_combout\ & ((\sRA2[2]~1_combout\ & (\regf_i|Mux67~0_combout\)) # (!\sRA2[2]~1_combout\ & ((\regf_i|Mux67~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sB[0]~6_combout\,
	datab => \sRA2[2]~1_combout\,
	datac => \regf_i|Mux67~0_combout\,
	datad => \regf_i|Mux67~2_combout\,
	combout => \sB[27]~57_combout\);

-- Location: LCCOMB_X30_Y15_N0
\regf_i|Mux35~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux35~0_combout\ = (\prog_i|oQ[18]~1_combout\ & ((\regf_i|r4_i|sREG\(27)) # ((\prog_i|oQ[17]~2_combout\)))) # (!\prog_i|oQ[18]~1_combout\ & (((\regf_i|r0_i|sREG\(27) & !\prog_i|oQ[17]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prog_i|oQ[18]~1_combout\,
	datab => \regf_i|r4_i|sREG\(27),
	datac => \regf_i|r0_i|sREG\(27),
	datad => \prog_i|oQ[17]~2_combout\,
	combout => \regf_i|Mux35~0_combout\);

-- Location: LCCOMB_X30_Y15_N22
\regf_i|Mux35~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux35~1_combout\ = (\regf_i|Mux35~0_combout\ & (((\regf_i|r6_i|sREG\(27)) # (!\prog_i|oQ[17]~2_combout\)))) # (!\regf_i|Mux35~0_combout\ & (\regf_i|r2_i|sREG\(27) & ((\prog_i|oQ[17]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|Mux35~0_combout\,
	datab => \regf_i|r2_i|sREG\(27),
	datac => \regf_i|r6_i|sREG\(27),
	datad => \prog_i|oQ[17]~2_combout\,
	combout => \regf_i|Mux35~1_combout\);

-- Location: LCCOMB_X30_Y15_N24
\regf_i|Mux35~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux35~2_combout\ = (!\prog_i|oQ[3]~3_combout\ & (\regf_i|Mux35~1_combout\ & !\prog_i|Equal3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prog_i|oQ[3]~3_combout\,
	datac => \regf_i|Mux35~1_combout\,
	datad => \prog_i|Equal3~0_combout\,
	combout => \regf_i|Mux35~2_combout\);

-- Location: LCCOMB_X35_Y15_N22
\alu_i|Add1~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Add1~54_combout\ = (\sB[27]~57_combout\ & ((\regf_i|Mux35~2_combout\ & (!\alu_i|Add1~53\)) # (!\regf_i|Mux35~2_combout\ & ((\alu_i|Add1~53\) # (GND))))) # (!\sB[27]~57_combout\ & ((\regf_i|Mux35~2_combout\ & (\alu_i|Add1~53\ & VCC)) # 
-- (!\regf_i|Mux35~2_combout\ & (!\alu_i|Add1~53\))))
-- \alu_i|Add1~55\ = CARRY((\sB[27]~57_combout\ & ((!\alu_i|Add1~53\) # (!\regf_i|Mux35~2_combout\))) # (!\sB[27]~57_combout\ & (!\regf_i|Mux35~2_combout\ & !\alu_i|Add1~53\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sB[27]~57_combout\,
	datab => \regf_i|Mux35~2_combout\,
	datad => VCC,
	cin => \alu_i|Add1~53\,
	combout => \alu_i|Add1~54_combout\,
	cout => \alu_i|Add1~55\);

-- Location: LCCOMB_X34_Y15_N22
\alu_i|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Add0~54_combout\ = (\sB[27]~57_combout\ & ((\regf_i|Mux35~2_combout\ & (\alu_i|Add0~53\ & VCC)) # (!\regf_i|Mux35~2_combout\ & (!\alu_i|Add0~53\)))) # (!\sB[27]~57_combout\ & ((\regf_i|Mux35~2_combout\ & (!\alu_i|Add0~53\)) # 
-- (!\regf_i|Mux35~2_combout\ & ((\alu_i|Add0~53\) # (GND)))))
-- \alu_i|Add0~55\ = CARRY((\sB[27]~57_combout\ & (!\regf_i|Mux35~2_combout\ & !\alu_i|Add0~53\)) # (!\sB[27]~57_combout\ & ((!\alu_i|Add0~53\) # (!\regf_i|Mux35~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sB[27]~57_combout\,
	datab => \regf_i|Mux35~2_combout\,
	datad => VCC,
	cin => \alu_i|Add0~53\,
	combout => \alu_i|Add0~54_combout\,
	cout => \alu_i|Add0~55\);

-- Location: LCCOMB_X33_Y15_N16
\alu_i|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Mux4~0_combout\ = (\alu_i|Mux30~10_combout\) # ((\cu_i|Mux27~0_combout\ & (\alu_i|Add1~54_combout\)) # (!\cu_i|Mux27~0_combout\ & ((\alu_i|Add0~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_i|Mux27~0_combout\,
	datab => \alu_i|Mux30~10_combout\,
	datac => \alu_i|Add1~54_combout\,
	datad => \alu_i|Add0~54_combout\,
	combout => \alu_i|Mux4~0_combout\);

-- Location: FF_X32_Y17_N23
\pc_i|sPC[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Add0~52_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_i|sPC\(28));

-- Location: LCCOMB_X32_Y17_N22
\Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (\pc_i|sPC\(28) & (\Add0~51\ $ (GND))) # (!\pc_i|sPC\(28) & (!\Add0~51\ & VCC))
-- \Add0~53\ = CARRY((\pc_i|sPC\(28) & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_i|sPC\(28),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: LCCOMB_X31_Y15_N4
\Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (!\cu_i|Mux34~0_combout\ & ((\cu_i|Mux35~2_combout\ & ((\alu_i|Mux3~0_combout\))) # (!\cu_i|Mux35~2_combout\ & (\Add0~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_i|Mux35~2_combout\,
	datab => \Add0~52_combout\,
	datac => \cu_i|Mux34~0_combout\,
	datad => \alu_i|Mux3~0_combout\,
	combout => \Mux3~0_combout\);

-- Location: FF_X32_Y15_N5
\regf_i|r4_i|sREG[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux3~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r4_i|sREG\(28));

-- Location: FF_X32_Y15_N15
\regf_i|r6_i|sREG[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux3~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r6_i|sREG\(28));

-- Location: LCCOMB_X32_Y15_N14
\regf_i|Mux66~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux66~0_combout\ = (!\sRA2[0]~2_combout\ & ((\sRA2[1]~0_combout\ & ((\regf_i|r6_i|sREG\(28)))) # (!\sRA2[1]~0_combout\ & (\regf_i|r4_i|sREG\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sRA2[1]~0_combout\,
	datab => \regf_i|r4_i|sREG\(28),
	datac => \regf_i|r6_i|sREG\(28),
	datad => \sRA2[0]~2_combout\,
	combout => \regf_i|Mux66~0_combout\);

-- Location: FF_X31_Y15_N15
\regf_i|r2_i|sREG[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux3~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r2_i|sREG\(28));

-- Location: FF_X31_Y15_N5
\regf_i|r3_i|sREG[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Mux3~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \regf_i|Mux30~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r3_i|sREG\(28));

-- Location: FF_X32_Y14_N13
\regf_i|r0_i|sREG[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux3~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r0_i|sREG\(28));

-- Location: LCCOMB_X32_Y14_N12
\regf_i|Mux66~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux66~1_combout\ = (\sRA2[1]~0_combout\ & (\sRA2[0]~2_combout\)) # (!\sRA2[1]~0_combout\ & (!\sRA2[0]~2_combout\ & \regf_i|r0_i|sREG\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sRA2[1]~0_combout\,
	datab => \sRA2[0]~2_combout\,
	datac => \regf_i|r0_i|sREG\(28),
	combout => \regf_i|Mux66~1_combout\);

-- Location: LCCOMB_X31_Y15_N2
\regf_i|Mux66~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux66~2_combout\ = (\sRA2[1]~0_combout\ & ((\regf_i|Mux66~1_combout\ & ((\regf_i|r3_i|sREG\(28)))) # (!\regf_i|Mux66~1_combout\ & (\regf_i|r2_i|sREG\(28))))) # (!\sRA2[1]~0_combout\ & (((\regf_i|Mux66~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sRA2[1]~0_combout\,
	datab => \regf_i|r2_i|sREG\(28),
	datac => \regf_i|r3_i|sREG\(28),
	datad => \regf_i|Mux66~1_combout\,
	combout => \regf_i|Mux66~2_combout\);

-- Location: LCCOMB_X31_Y15_N24
\sB[28]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sB[28]~58_combout\ = (\sB[0]~6_combout\ & ((\sRA2[2]~1_combout\ & (\regf_i|Mux66~0_combout\)) # (!\sRA2[2]~1_combout\ & ((\regf_i|Mux66~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sB[0]~6_combout\,
	datab => \regf_i|Mux66~0_combout\,
	datac => \sRA2[2]~1_combout\,
	datad => \regf_i|Mux66~2_combout\,
	combout => \sB[28]~58_combout\);

-- Location: LCCOMB_X31_Y15_N14
\regf_i|Mux34~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux34~0_combout\ = (\prog_i|oQ[17]~2_combout\ & ((\prog_i|oQ[18]~1_combout\) # ((\regf_i|r2_i|sREG\(28))))) # (!\prog_i|oQ[17]~2_combout\ & (!\prog_i|oQ[18]~1_combout\ & ((\regf_i|r0_i|sREG\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prog_i|oQ[17]~2_combout\,
	datab => \prog_i|oQ[18]~1_combout\,
	datac => \regf_i|r2_i|sREG\(28),
	datad => \regf_i|r0_i|sREG\(28),
	combout => \regf_i|Mux34~0_combout\);

-- Location: LCCOMB_X32_Y15_N4
\regf_i|Mux34~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux34~1_combout\ = (\prog_i|oQ[18]~1_combout\ & ((\regf_i|Mux34~0_combout\ & (\regf_i|r6_i|sREG\(28))) # (!\regf_i|Mux34~0_combout\ & ((\regf_i|r4_i|sREG\(28)))))) # (!\prog_i|oQ[18]~1_combout\ & (((\regf_i|Mux34~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prog_i|oQ[18]~1_combout\,
	datab => \regf_i|r6_i|sREG\(28),
	datac => \regf_i|r4_i|sREG\(28),
	datad => \regf_i|Mux34~0_combout\,
	combout => \regf_i|Mux34~1_combout\);

-- Location: LCCOMB_X32_Y15_N10
\regf_i|Mux34~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux34~2_combout\ = (!\prog_i|Equal3~0_combout\ & (!\prog_i|oQ[3]~3_combout\ & \regf_i|Mux34~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prog_i|Equal3~0_combout\,
	datab => \prog_i|oQ[3]~3_combout\,
	datad => \regf_i|Mux34~1_combout\,
	combout => \regf_i|Mux34~2_combout\);

-- Location: LCCOMB_X34_Y15_N24
\alu_i|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Add0~56_combout\ = ((\sB[28]~58_combout\ $ (\regf_i|Mux34~2_combout\ $ (!\alu_i|Add0~55\)))) # (GND)
-- \alu_i|Add0~57\ = CARRY((\sB[28]~58_combout\ & ((\regf_i|Mux34~2_combout\) # (!\alu_i|Add0~55\))) # (!\sB[28]~58_combout\ & (\regf_i|Mux34~2_combout\ & !\alu_i|Add0~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sB[28]~58_combout\,
	datab => \regf_i|Mux34~2_combout\,
	datad => VCC,
	cin => \alu_i|Add0~55\,
	combout => \alu_i|Add0~56_combout\,
	cout => \alu_i|Add0~57\);

-- Location: LCCOMB_X35_Y15_N24
\alu_i|Add1~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Add1~56_combout\ = ((\sB[28]~58_combout\ $ (\regf_i|Mux34~2_combout\ $ (\alu_i|Add1~55\)))) # (GND)
-- \alu_i|Add1~57\ = CARRY((\sB[28]~58_combout\ & (\regf_i|Mux34~2_combout\ & !\alu_i|Add1~55\)) # (!\sB[28]~58_combout\ & ((\regf_i|Mux34~2_combout\) # (!\alu_i|Add1~55\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sB[28]~58_combout\,
	datab => \regf_i|Mux34~2_combout\,
	datad => VCC,
	cin => \alu_i|Add1~55\,
	combout => \alu_i|Add1~56_combout\,
	cout => \alu_i|Add1~57\);

-- Location: LCCOMB_X31_Y15_N6
\alu_i|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Mux3~0_combout\ = (\alu_i|Mux30~10_combout\) # ((\cu_i|Mux27~0_combout\ & ((\alu_i|Add1~56_combout\))) # (!\cu_i|Mux27~0_combout\ & (\alu_i|Add0~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_i|Mux30~10_combout\,
	datab => \cu_i|Mux27~0_combout\,
	datac => \alu_i|Add0~56_combout\,
	datad => \alu_i|Add1~56_combout\,
	combout => \alu_i|Mux3~0_combout\);

-- Location: FF_X32_Y17_N25
\pc_i|sPC[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Add0~54_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_i|sPC\(29));

-- Location: LCCOMB_X32_Y17_N24
\Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (\pc_i|sPC\(29) & (!\Add0~53\)) # (!\pc_i|sPC\(29) & ((\Add0~53\) # (GND)))
-- \Add0~55\ = CARRY((!\Add0~53\) # (!\pc_i|sPC\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_i|sPC\(29),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: LCCOMB_X33_Y14_N6
\Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (!\cu_i|Mux34~0_combout\ & ((\cu_i|Mux35~2_combout\ & ((\alu_i|Mux2~0_combout\))) # (!\cu_i|Mux35~2_combout\ & (\Add0~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_i|Mux34~0_combout\,
	datab => \cu_i|Mux35~2_combout\,
	datac => \Add0~54_combout\,
	datad => \alu_i|Mux2~0_combout\,
	combout => \Mux2~0_combout\);

-- Location: FF_X32_Y14_N7
\regf_i|r4_i|sREG[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux2~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r4_i|sREG\(29));

-- Location: FF_X34_Y14_N29
\regf_i|r6_i|sREG[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux2~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r6_i|sREG\(29));

-- Location: LCCOMB_X32_Y14_N10
\regf_i|Mux65~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux65~0_combout\ = (!\sRA2[0]~2_combout\ & ((\sRA2[1]~0_combout\ & ((\regf_i|r6_i|sREG\(29)))) # (!\sRA2[1]~0_combout\ & (\regf_i|r4_i|sREG\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|r4_i|sREG\(29),
	datab => \sRA2[1]~0_combout\,
	datac => \regf_i|r6_i|sREG\(29),
	datad => \sRA2[0]~2_combout\,
	combout => \regf_i|Mux65~0_combout\);

-- Location: FF_X33_Y14_N7
\regf_i|r3_i|sREG[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Mux2~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \regf_i|Mux30~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r3_i|sREG\(29));

-- Location: FF_X32_Y14_N25
\regf_i|r0_i|sREG[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux2~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r0_i|sREG\(29));

-- Location: LCCOMB_X32_Y14_N24
\regf_i|Mux65~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux65~1_combout\ = (\sRA2[1]~0_combout\ & (\sRA2[0]~2_combout\)) # (!\sRA2[1]~0_combout\ & (!\sRA2[0]~2_combout\ & \regf_i|r0_i|sREG\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sRA2[1]~0_combout\,
	datab => \sRA2[0]~2_combout\,
	datac => \regf_i|r0_i|sREG\(29),
	combout => \regf_i|Mux65~1_combout\);

-- Location: FF_X33_Y14_N21
\regf_i|r2_i|sREG[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux2~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r2_i|sREG\(29));

-- Location: LCCOMB_X33_Y14_N20
\regf_i|Mux65~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux65~2_combout\ = (\regf_i|Mux65~1_combout\ & ((\regf_i|r3_i|sREG\(29)) # ((!\sRA2[1]~0_combout\)))) # (!\regf_i|Mux65~1_combout\ & (((\regf_i|r2_i|sREG\(29) & \sRA2[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|r3_i|sREG\(29),
	datab => \regf_i|Mux65~1_combout\,
	datac => \regf_i|r2_i|sREG\(29),
	datad => \sRA2[1]~0_combout\,
	combout => \regf_i|Mux65~2_combout\);

-- Location: LCCOMB_X33_Y14_N0
\sB[29]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sB[29]~59_combout\ = (\sB[0]~6_combout\ & ((\sRA2[2]~1_combout\ & (\regf_i|Mux65~0_combout\)) # (!\sRA2[2]~1_combout\ & ((\regf_i|Mux65~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sRA2[2]~1_combout\,
	datab => \regf_i|Mux65~0_combout\,
	datac => \sB[0]~6_combout\,
	datad => \regf_i|Mux65~2_combout\,
	combout => \sB[29]~59_combout\);

-- Location: LCCOMB_X32_Y14_N6
\regf_i|Mux33~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux33~0_combout\ = (\prog_i|oQ[17]~2_combout\ & (((\prog_i|oQ[18]~1_combout\)))) # (!\prog_i|oQ[17]~2_combout\ & ((\prog_i|oQ[18]~1_combout\ & ((\regf_i|r4_i|sREG\(29)))) # (!\prog_i|oQ[18]~1_combout\ & (\regf_i|r0_i|sREG\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prog_i|oQ[17]~2_combout\,
	datab => \regf_i|r0_i|sREG\(29),
	datac => \regf_i|r4_i|sREG\(29),
	datad => \prog_i|oQ[18]~1_combout\,
	combout => \regf_i|Mux33~0_combout\);

-- Location: LCCOMB_X34_Y14_N28
\regf_i|Mux33~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux33~1_combout\ = (\prog_i|oQ[17]~2_combout\ & ((\regf_i|Mux33~0_combout\ & ((\regf_i|r6_i|sREG\(29)))) # (!\regf_i|Mux33~0_combout\ & (\regf_i|r2_i|sREG\(29))))) # (!\prog_i|oQ[17]~2_combout\ & (((\regf_i|Mux33~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prog_i|oQ[17]~2_combout\,
	datab => \regf_i|r2_i|sREG\(29),
	datac => \regf_i|r6_i|sREG\(29),
	datad => \regf_i|Mux33~0_combout\,
	combout => \regf_i|Mux33~1_combout\);

-- Location: LCCOMB_X34_Y14_N22
\regf_i|Mux33~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux33~2_combout\ = (!\prog_i|oQ[3]~3_combout\ & (!\prog_i|Equal3~0_combout\ & \regf_i|Mux33~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \prog_i|oQ[3]~3_combout\,
	datac => \prog_i|Equal3~0_combout\,
	datad => \regf_i|Mux33~1_combout\,
	combout => \regf_i|Mux33~2_combout\);

-- Location: LCCOMB_X35_Y15_N26
\alu_i|Add1~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Add1~58_combout\ = (\sB[29]~59_combout\ & ((\regf_i|Mux33~2_combout\ & (!\alu_i|Add1~57\)) # (!\regf_i|Mux33~2_combout\ & ((\alu_i|Add1~57\) # (GND))))) # (!\sB[29]~59_combout\ & ((\regf_i|Mux33~2_combout\ & (\alu_i|Add1~57\ & VCC)) # 
-- (!\regf_i|Mux33~2_combout\ & (!\alu_i|Add1~57\))))
-- \alu_i|Add1~59\ = CARRY((\sB[29]~59_combout\ & ((!\alu_i|Add1~57\) # (!\regf_i|Mux33~2_combout\))) # (!\sB[29]~59_combout\ & (!\regf_i|Mux33~2_combout\ & !\alu_i|Add1~57\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sB[29]~59_combout\,
	datab => \regf_i|Mux33~2_combout\,
	datad => VCC,
	cin => \alu_i|Add1~57\,
	combout => \alu_i|Add1~58_combout\,
	cout => \alu_i|Add1~59\);

-- Location: LCCOMB_X34_Y15_N26
\alu_i|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Add0~58_combout\ = (\sB[29]~59_combout\ & ((\regf_i|Mux33~2_combout\ & (\alu_i|Add0~57\ & VCC)) # (!\regf_i|Mux33~2_combout\ & (!\alu_i|Add0~57\)))) # (!\sB[29]~59_combout\ & ((\regf_i|Mux33~2_combout\ & (!\alu_i|Add0~57\)) # 
-- (!\regf_i|Mux33~2_combout\ & ((\alu_i|Add0~57\) # (GND)))))
-- \alu_i|Add0~59\ = CARRY((\sB[29]~59_combout\ & (!\regf_i|Mux33~2_combout\ & !\alu_i|Add0~57\)) # (!\sB[29]~59_combout\ & ((!\alu_i|Add0~57\) # (!\regf_i|Mux33~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sB[29]~59_combout\,
	datab => \regf_i|Mux33~2_combout\,
	datad => VCC,
	cin => \alu_i|Add0~57\,
	combout => \alu_i|Add0~58_combout\,
	cout => \alu_i|Add0~59\);

-- Location: LCCOMB_X33_Y14_N2
\alu_i|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Mux2~0_combout\ = (\alu_i|Mux30~10_combout\) # ((\cu_i|Mux27~0_combout\ & (\alu_i|Add1~58_combout\)) # (!\cu_i|Mux27~0_combout\ & ((\alu_i|Add0~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_i|Mux30~10_combout\,
	datab => \cu_i|Mux27~0_combout\,
	datac => \alu_i|Add1~58_combout\,
	datad => \alu_i|Add0~58_combout\,
	combout => \alu_i|Mux2~0_combout\);

-- Location: FF_X32_Y17_N27
\pc_i|sPC[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Add0~56_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_i|sPC\(30));

-- Location: LCCOMB_X32_Y17_N26
\Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (\pc_i|sPC\(30) & (\Add0~55\ $ (GND))) # (!\pc_i|sPC\(30) & (!\Add0~55\ & VCC))
-- \Add0~57\ = CARRY((\pc_i|sPC\(30) & !\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_i|sPC\(30),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: LCCOMB_X33_Y17_N12
\Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\Add0~56_combout\ & (!\cu_i|Mux35~2_combout\ & !\cu_i|Mux34~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~56_combout\,
	datab => \cu_i|Mux35~2_combout\,
	datad => \cu_i|Mux34~0_combout\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X36_Y17_N24
\regf_i|r4_i|sREG[30]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|r4_i|sREG[30]~feeder_combout\ = \Mux1~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux1~1_combout\,
	combout => \regf_i|r4_i|sREG[30]~feeder_combout\);

-- Location: FF_X36_Y17_N25
\regf_i|r4_i|sREG[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \regf_i|r4_i|sREG[30]~feeder_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \regf_i|Mux30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r4_i|sREG\(30));

-- Location: FF_X35_Y17_N27
\regf_i|r6_i|sREG[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux1~1_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r6_i|sREG\(30));

-- Location: FF_X35_Y18_N5
\regf_i|r2_i|sREG[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux1~1_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r2_i|sREG\(30));

-- Location: FF_X34_Y17_N13
\regf_i|r0_i|sREG[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux1~1_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r0_i|sREG\(30));

-- Location: LCCOMB_X34_Y17_N12
\regf_i|Mux32~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux32~0_combout\ = (\prog_i|oQ[18]~1_combout\ & (((\prog_i|oQ[17]~2_combout\)))) # (!\prog_i|oQ[18]~1_combout\ & ((\prog_i|oQ[17]~2_combout\ & (\regf_i|r2_i|sREG\(30))) # (!\prog_i|oQ[17]~2_combout\ & ((\regf_i|r0_i|sREG\(30))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|r2_i|sREG\(30),
	datab => \prog_i|oQ[18]~1_combout\,
	datac => \regf_i|r0_i|sREG\(30),
	datad => \prog_i|oQ[17]~2_combout\,
	combout => \regf_i|Mux32~0_combout\);

-- Location: LCCOMB_X35_Y17_N26
\regf_i|Mux32~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux32~1_combout\ = (\prog_i|oQ[18]~1_combout\ & ((\regf_i|Mux32~0_combout\ & ((\regf_i|r6_i|sREG\(30)))) # (!\regf_i|Mux32~0_combout\ & (\regf_i|r4_i|sREG\(30))))) # (!\prog_i|oQ[18]~1_combout\ & (((\regf_i|Mux32~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|r4_i|sREG\(30),
	datab => \prog_i|oQ[18]~1_combout\,
	datac => \regf_i|r6_i|sREG\(30),
	datad => \regf_i|Mux32~0_combout\,
	combout => \regf_i|Mux32~1_combout\);

-- Location: LCCOMB_X34_Y17_N6
\regf_i|Mux32~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux32~2_combout\ = (!\prog_i|oQ[3]~3_combout\ & (\regf_i|Mux32~1_combout\ & !\prog_i|Equal3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prog_i|oQ[3]~3_combout\,
	datab => \regf_i|Mux32~1_combout\,
	datad => \prog_i|Equal3~0_combout\,
	combout => \regf_i|Mux32~2_combout\);

-- Location: LCCOMB_X35_Y15_N28
\alu_i|Add1~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Add1~60_combout\ = ((\regf_i|Mux32~2_combout\ $ (\sB[30]~60_combout\ $ (\alu_i|Add1~59\)))) # (GND)
-- \alu_i|Add1~61\ = CARRY((\regf_i|Mux32~2_combout\ & ((!\alu_i|Add1~59\) # (!\sB[30]~60_combout\))) # (!\regf_i|Mux32~2_combout\ & (!\sB[30]~60_combout\ & !\alu_i|Add1~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|Mux32~2_combout\,
	datab => \sB[30]~60_combout\,
	datad => VCC,
	cin => \alu_i|Add1~59\,
	combout => \alu_i|Add1~60_combout\,
	cout => \alu_i|Add1~61\);

-- Location: LCCOMB_X35_Y17_N2
\alu_i|Mux1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Mux1~4_combout\ = (\cu_i|Mux27~0_combout\ & ((\alu_i|Add1~60_combout\))) # (!\cu_i|Mux27~0_combout\ & (\alu_i|Add0~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cu_i|Mux27~0_combout\,
	datac => \alu_i|Add0~60_combout\,
	datad => \alu_i|Add1~60_combout\,
	combout => \alu_i|Mux1~4_combout\);

-- Location: LCCOMB_X35_Y17_N0
\Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\Mux1~0_combout\) # ((!\alu_i|Mux30~10_combout\ & (\Mux31~6_combout\ & \alu_i|Mux1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datab => \alu_i|Mux30~10_combout\,
	datac => \Mux31~6_combout\,
	datad => \alu_i|Mux1~4_combout\,
	combout => \Mux1~1_combout\);

-- Location: FF_X35_Y17_N1
\regf_i|r3_i|sREG[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Mux1~1_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \regf_i|Mux30~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r3_i|sREG\(30));

-- Location: LCCOMB_X35_Y18_N24
\regf_i|Mux64~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux64~1_combout\ = (\sRA2[0]~2_combout\ & ((\sRA2[1]~0_combout\))) # (!\sRA2[0]~2_combout\ & (\regf_i|r0_i|sREG\(30) & !\sRA2[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sRA2[0]~2_combout\,
	datab => \regf_i|r0_i|sREG\(30),
	datad => \sRA2[1]~0_combout\,
	combout => \regf_i|Mux64~1_combout\);

-- Location: LCCOMB_X35_Y18_N4
\regf_i|Mux64~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux64~2_combout\ = (\sRA2[1]~0_combout\ & ((\regf_i|Mux64~1_combout\ & (\regf_i|r3_i|sREG\(30))) # (!\regf_i|Mux64~1_combout\ & ((\regf_i|r2_i|sREG\(30)))))) # (!\sRA2[1]~0_combout\ & (((\regf_i|Mux64~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sRA2[1]~0_combout\,
	datab => \regf_i|r3_i|sREG\(30),
	datac => \regf_i|r2_i|sREG\(30),
	datad => \regf_i|Mux64~1_combout\,
	combout => \regf_i|Mux64~2_combout\);

-- Location: LCCOMB_X36_Y17_N2
\regf_i|Mux64~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux64~0_combout\ = (!\sRA2[0]~2_combout\ & ((\sRA2[1]~0_combout\ & (\regf_i|r6_i|sREG\(30))) # (!\sRA2[1]~0_combout\ & ((\regf_i|r4_i|sREG\(30))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|r6_i|sREG\(30),
	datab => \regf_i|r4_i|sREG\(30),
	datac => \sRA2[0]~2_combout\,
	datad => \sRA2[1]~0_combout\,
	combout => \regf_i|Mux64~0_combout\);

-- Location: LCCOMB_X35_Y18_N22
\sB[30]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sB[30]~60_combout\ = (\sB[0]~6_combout\ & ((\sRA2[2]~1_combout\ & ((\regf_i|Mux64~0_combout\))) # (!\sRA2[2]~1_combout\ & (\regf_i|Mux64~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sRA2[2]~1_combout\,
	datab => \sB[0]~6_combout\,
	datac => \regf_i|Mux64~2_combout\,
	datad => \regf_i|Mux64~0_combout\,
	combout => \sB[30]~60_combout\);

-- Location: LCCOMB_X34_Y15_N28
\alu_i|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Add0~60_combout\ = ((\sB[30]~60_combout\ $ (\regf_i|Mux32~2_combout\ $ (!\alu_i|Add0~59\)))) # (GND)
-- \alu_i|Add0~61\ = CARRY((\sB[30]~60_combout\ & ((\regf_i|Mux32~2_combout\) # (!\alu_i|Add0~59\))) # (!\sB[30]~60_combout\ & (\regf_i|Mux32~2_combout\ & !\alu_i|Add0~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sB[30]~60_combout\,
	datab => \regf_i|Mux32~2_combout\,
	datad => VCC,
	cin => \alu_i|Add0~59\,
	combout => \alu_i|Add0~60_combout\,
	cout => \alu_i|Add0~61\);

-- Location: LCCOMB_X30_Y15_N6
\alu_i|Mux1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Mux1~5_combout\ = (!\alu_i|Mux30~10_combout\ & ((\cu_i|Mux27~0_combout\ & ((\alu_i|Add1~60_combout\))) # (!\cu_i|Mux27~0_combout\ & (\alu_i|Add0~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_i|Mux27~0_combout\,
	datab => \alu_i|Add0~60_combout\,
	datac => \alu_i|Add1~60_combout\,
	datad => \alu_i|Mux30~10_combout\,
	combout => \alu_i|Mux1~5_combout\);

-- Location: FF_X32_Y17_N29
\pc_i|sPC[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Add0~58_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_i|sPC\(31));

-- Location: LCCOMB_X32_Y17_N28
\Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = \Add0~57\ $ (\pc_i|sPC\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \pc_i|sPC\(31),
	cin => \Add0~57\,
	combout => \Add0~58_combout\);

-- Location: LCCOMB_X35_Y17_N20
\Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!\cu_i|Mux35~2_combout\ & (\Add0~58_combout\ & !\cu_i|Mux34~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_i|Mux35~2_combout\,
	datab => \Add0~58_combout\,
	datad => \cu_i|Mux34~0_combout\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X35_Y17_N24
\Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\Mux0~0_combout\) # ((\Mux31~6_combout\ & ((\alu_i|Mux30~10_combout\) # (\alu_i|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \alu_i|Mux30~10_combout\,
	datac => \Mux31~6_combout\,
	datad => \alu_i|Mux0~4_combout\,
	combout => \Mux0~1_combout\);

-- Location: FF_X35_Y17_N25
\regf_i|r3_i|sREG[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Mux0~1_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \regf_i|Mux30~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r3_i|sREG\(31));

-- Location: FF_X36_Y18_N27
\regf_i|r2_i|sREG[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux0~1_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r2_i|sREG\(31));

-- Location: LCCOMB_X36_Y18_N8
\regf_i|r0_i|sREG[31]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|r0_i|sREG[31]~feeder_combout\ = \Mux0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux0~1_combout\,
	combout => \regf_i|r0_i|sREG[31]~feeder_combout\);

-- Location: FF_X36_Y18_N9
\regf_i|r0_i|sREG[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \regf_i|r0_i|sREG[31]~feeder_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \regf_i|Mux30~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r0_i|sREG\(31));

-- Location: LCCOMB_X36_Y18_N6
\regf_i|Mux63~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux63~1_combout\ = (\sRA2[1]~0_combout\ & ((\sRA2[0]~2_combout\))) # (!\sRA2[1]~0_combout\ & (\regf_i|r0_i|sREG\(31) & !\sRA2[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regf_i|r0_i|sREG\(31),
	datac => \sRA2[1]~0_combout\,
	datad => \sRA2[0]~2_combout\,
	combout => \regf_i|Mux63~1_combout\);

-- Location: LCCOMB_X36_Y18_N26
\regf_i|Mux63~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux63~2_combout\ = (\sRA2[1]~0_combout\ & ((\regf_i|Mux63~1_combout\ & (\regf_i|r3_i|sREG\(31))) # (!\regf_i|Mux63~1_combout\ & ((\regf_i|r2_i|sREG\(31)))))) # (!\sRA2[1]~0_combout\ & (((\regf_i|Mux63~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sRA2[1]~0_combout\,
	datab => \regf_i|r3_i|sREG\(31),
	datac => \regf_i|r2_i|sREG\(31),
	datad => \regf_i|Mux63~1_combout\,
	combout => \regf_i|Mux63~2_combout\);

-- Location: FF_X35_Y17_N29
\regf_i|r6_i|sREG[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux0~1_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r6_i|sREG\(31));

-- Location: FF_X36_Y17_N29
\regf_i|r4_i|sREG[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Mux0~1_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regf_i|Mux30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regf_i|r4_i|sREG\(31));

-- Location: LCCOMB_X36_Y17_N22
\regf_i|Mux63~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux63~0_combout\ = (!\sRA2[0]~2_combout\ & ((\sRA2[1]~0_combout\ & (\regf_i|r6_i|sREG\(31))) # (!\sRA2[1]~0_combout\ & ((\regf_i|r4_i|sREG\(31))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|r6_i|sREG\(31),
	datab => \regf_i|r4_i|sREG\(31),
	datac => \sRA2[0]~2_combout\,
	datad => \sRA2[1]~0_combout\,
	combout => \regf_i|Mux63~0_combout\);

-- Location: LCCOMB_X36_Y18_N20
\sB[31]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sB[31]~61_combout\ = (\sB[0]~6_combout\ & ((\sRA2[2]~1_combout\ & ((\regf_i|Mux63~0_combout\))) # (!\sRA2[2]~1_combout\ & (\regf_i|Mux63~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sRA2[2]~1_combout\,
	datab => \sB[0]~6_combout\,
	datac => \regf_i|Mux63~2_combout\,
	datad => \regf_i|Mux63~0_combout\,
	combout => \sB[31]~61_combout\);

-- Location: LCCOMB_X36_Y17_N28
\regf_i|Mux31~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux31~0_combout\ = (\prog_i|oQ[17]~2_combout\ & (((\prog_i|oQ[18]~1_combout\)))) # (!\prog_i|oQ[17]~2_combout\ & ((\prog_i|oQ[18]~1_combout\ & ((\regf_i|r4_i|sREG\(31)))) # (!\prog_i|oQ[18]~1_combout\ & (\regf_i|r0_i|sREG\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prog_i|oQ[17]~2_combout\,
	datab => \regf_i|r0_i|sREG\(31),
	datac => \regf_i|r4_i|sREG\(31),
	datad => \prog_i|oQ[18]~1_combout\,
	combout => \regf_i|Mux31~0_combout\);

-- Location: LCCOMB_X35_Y17_N28
\regf_i|Mux31~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux31~1_combout\ = (\regf_i|Mux31~0_combout\ & (((\regf_i|r6_i|sREG\(31)) # (!\prog_i|oQ[17]~2_combout\)))) # (!\regf_i|Mux31~0_combout\ & (\regf_i|r2_i|sREG\(31) & ((\prog_i|oQ[17]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regf_i|Mux31~0_combout\,
	datab => \regf_i|r2_i|sREG\(31),
	datac => \regf_i|r6_i|sREG\(31),
	datad => \prog_i|oQ[17]~2_combout\,
	combout => \regf_i|Mux31~1_combout\);

-- Location: LCCOMB_X35_Y17_N6
\regf_i|Mux31~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regf_i|Mux31~2_combout\ = (!\prog_i|Equal3~0_combout\ & (!\prog_i|oQ[3]~3_combout\ & \regf_i|Mux31~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \prog_i|Equal3~0_combout\,
	datac => \prog_i|oQ[3]~3_combout\,
	datad => \regf_i|Mux31~1_combout\,
	combout => \regf_i|Mux31~2_combout\);

-- Location: LCCOMB_X34_Y15_N30
\alu_i|Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Add0~62_combout\ = \sB[31]~61_combout\ $ (\alu_i|Add0~61\ $ (\regf_i|Mux31~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sB[31]~61_combout\,
	datad => \regf_i|Mux31~2_combout\,
	cin => \alu_i|Add0~61\,
	combout => \alu_i|Add0~62_combout\);

-- Location: LCCOMB_X35_Y15_N30
\alu_i|Add1~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Add1~62_combout\ = \sB[31]~61_combout\ $ (\alu_i|Add1~61\ $ (!\regf_i|Mux31~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sB[31]~61_combout\,
	datad => \regf_i|Mux31~2_combout\,
	cin => \alu_i|Add1~61\,
	combout => \alu_i|Add1~62_combout\);

-- Location: LCCOMB_X35_Y17_N10
\alu_i|Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Mux0~4_combout\ = (\cu_i|Mux27~0_combout\ & ((\alu_i|Add1~62_combout\))) # (!\cu_i|Mux27~0_combout\ & (\alu_i|Add0~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cu_i|Mux27~0_combout\,
	datac => \alu_i|Add0~62_combout\,
	datad => \alu_i|Add1~62_combout\,
	combout => \alu_i|Mux0~4_combout\);

-- Location: LCCOMB_X33_Y15_N26
\alu_i|Mux0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_i|Mux0~5_combout\ = (\alu_i|Mux0~4_combout\) # (((\cu_i|Mux18~0_combout\ & \cu_i|Mux25~0_combout\)) # (!\cu_i|Mux26~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_i|Mux0~4_combout\,
	datab => \cu_i|Mux18~0_combout\,
	datac => \cu_i|Mux26~0_combout\,
	datad => \cu_i|Mux25~0_combout\,
	combout => \alu_i|Mux0~5_combout\);

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

ww_oZ(0) <= \oZ[0]~output_o\;

ww_oZ(1) <= \oZ[1]~output_o\;

ww_oZ(2) <= \oZ[2]~output_o\;

ww_oZ(3) <= \oZ[3]~output_o\;

ww_oZ(4) <= \oZ[4]~output_o\;

ww_oZ(5) <= \oZ[5]~output_o\;

ww_oZ(6) <= \oZ[6]~output_o\;

ww_oZ(7) <= \oZ[7]~output_o\;

ww_oZ(8) <= \oZ[8]~output_o\;

ww_oZ(9) <= \oZ[9]~output_o\;

ww_oZ(10) <= \oZ[10]~output_o\;

ww_oZ(11) <= \oZ[11]~output_o\;

ww_oZ(12) <= \oZ[12]~output_o\;

ww_oZ(13) <= \oZ[13]~output_o\;

ww_oZ(14) <= \oZ[14]~output_o\;

ww_oZ(15) <= \oZ[15]~output_o\;

ww_oZ(16) <= \oZ[16]~output_o\;

ww_oZ(17) <= \oZ[17]~output_o\;

ww_oZ(18) <= \oZ[18]~output_o\;

ww_oZ(19) <= \oZ[19]~output_o\;

ww_oZ(20) <= \oZ[20]~output_o\;

ww_oZ(21) <= \oZ[21]~output_o\;

ww_oZ(22) <= \oZ[22]~output_o\;

ww_oZ(23) <= \oZ[23]~output_o\;

ww_oZ(24) <= \oZ[24]~output_o\;

ww_oZ(25) <= \oZ[25]~output_o\;

ww_oZ(26) <= \oZ[26]~output_o\;

ww_oZ(27) <= \oZ[27]~output_o\;

ww_oZ(28) <= \oZ[28]~output_o\;

ww_oZ(29) <= \oZ[29]~output_o\;

ww_oZ(30) <= \oZ[30]~output_o\;

ww_oZ(31) <= \oZ[31]~output_o\;
END structure;


