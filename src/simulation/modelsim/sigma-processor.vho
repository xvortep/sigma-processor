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

-- DATE "03/28/2022 19:52:55"

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

ENTITY 	ProgramCounter IS
    PORT (
	iPC_SEL : IN std_logic_vector(3 DOWNTO 0);
	iCLK : IN std_logic;
	iRST : IN std_logic;
	iJT : IN std_logic_vector(31 DOWNTO 0);
	iSXT : IN std_logic_vector(31 DOWNTO 0)
	);
END ProgramCounter;

-- Design Ports Information
-- iPC_SEL[0]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iPC_SEL[1]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iPC_SEL[2]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iPC_SEL[3]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iCLK	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iRST	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iJT[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iJT[1]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iJT[2]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iJT[3]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iJT[4]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iJT[5]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iJT[6]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iJT[7]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iJT[8]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iJT[9]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iJT[10]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iJT[11]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iJT[12]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iJT[13]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iJT[14]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iJT[15]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iJT[16]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iJT[17]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iJT[18]	=>  Location: PIN_L10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iJT[19]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iJT[20]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iJT[21]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iJT[22]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iJT[23]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iJT[24]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iJT[25]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iJT[26]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iJT[27]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iJT[28]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iJT[29]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iJT[30]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iJT[31]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iSXT[0]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iSXT[1]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iSXT[2]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iSXT[3]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iSXT[4]	=>  Location: PIN_M12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iSXT[5]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iSXT[6]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iSXT[7]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iSXT[8]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iSXT[9]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iSXT[10]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iSXT[11]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iSXT[12]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iSXT[13]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iSXT[14]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iSXT[15]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iSXT[16]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iSXT[17]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iSXT[18]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iSXT[19]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iSXT[20]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iSXT[21]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iSXT[22]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iSXT[23]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iSXT[24]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iSXT[25]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iSXT[26]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iSXT[27]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iSXT[28]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iSXT[29]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iSXT[30]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iSXT[31]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ProgramCounter IS
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
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \iPC_SEL[0]~input_o\ : std_logic;
SIGNAL \iPC_SEL[1]~input_o\ : std_logic;
SIGNAL \iPC_SEL[2]~input_o\ : std_logic;
SIGNAL \iPC_SEL[3]~input_o\ : std_logic;
SIGNAL \iCLK~input_o\ : std_logic;
SIGNAL \iRST~input_o\ : std_logic;
SIGNAL \iJT[0]~input_o\ : std_logic;
SIGNAL \iJT[1]~input_o\ : std_logic;
SIGNAL \iJT[2]~input_o\ : std_logic;
SIGNAL \iJT[3]~input_o\ : std_logic;
SIGNAL \iJT[4]~input_o\ : std_logic;
SIGNAL \iJT[5]~input_o\ : std_logic;
SIGNAL \iJT[6]~input_o\ : std_logic;
SIGNAL \iJT[7]~input_o\ : std_logic;
SIGNAL \iJT[8]~input_o\ : std_logic;
SIGNAL \iJT[9]~input_o\ : std_logic;
SIGNAL \iJT[10]~input_o\ : std_logic;
SIGNAL \iJT[11]~input_o\ : std_logic;
SIGNAL \iJT[12]~input_o\ : std_logic;
SIGNAL \iJT[13]~input_o\ : std_logic;
SIGNAL \iJT[14]~input_o\ : std_logic;
SIGNAL \iJT[15]~input_o\ : std_logic;
SIGNAL \iJT[16]~input_o\ : std_logic;
SIGNAL \iJT[17]~input_o\ : std_logic;
SIGNAL \iJT[18]~input_o\ : std_logic;
SIGNAL \iJT[19]~input_o\ : std_logic;
SIGNAL \iJT[20]~input_o\ : std_logic;
SIGNAL \iJT[21]~input_o\ : std_logic;
SIGNAL \iJT[22]~input_o\ : std_logic;
SIGNAL \iJT[23]~input_o\ : std_logic;
SIGNAL \iJT[24]~input_o\ : std_logic;
SIGNAL \iJT[25]~input_o\ : std_logic;
SIGNAL \iJT[26]~input_o\ : std_logic;
SIGNAL \iJT[27]~input_o\ : std_logic;
SIGNAL \iJT[28]~input_o\ : std_logic;
SIGNAL \iJT[29]~input_o\ : std_logic;
SIGNAL \iJT[30]~input_o\ : std_logic;
SIGNAL \iJT[31]~input_o\ : std_logic;
SIGNAL \iSXT[0]~input_o\ : std_logic;
SIGNAL \iSXT[1]~input_o\ : std_logic;
SIGNAL \iSXT[2]~input_o\ : std_logic;
SIGNAL \iSXT[3]~input_o\ : std_logic;
SIGNAL \iSXT[4]~input_o\ : std_logic;
SIGNAL \iSXT[5]~input_o\ : std_logic;
SIGNAL \iSXT[6]~input_o\ : std_logic;
SIGNAL \iSXT[7]~input_o\ : std_logic;
SIGNAL \iSXT[8]~input_o\ : std_logic;
SIGNAL \iSXT[9]~input_o\ : std_logic;
SIGNAL \iSXT[10]~input_o\ : std_logic;
SIGNAL \iSXT[11]~input_o\ : std_logic;
SIGNAL \iSXT[12]~input_o\ : std_logic;
SIGNAL \iSXT[13]~input_o\ : std_logic;
SIGNAL \iSXT[14]~input_o\ : std_logic;
SIGNAL \iSXT[15]~input_o\ : std_logic;
SIGNAL \iSXT[16]~input_o\ : std_logic;
SIGNAL \iSXT[17]~input_o\ : std_logic;
SIGNAL \iSXT[18]~input_o\ : std_logic;
SIGNAL \iSXT[19]~input_o\ : std_logic;
SIGNAL \iSXT[20]~input_o\ : std_logic;
SIGNAL \iSXT[21]~input_o\ : std_logic;
SIGNAL \iSXT[22]~input_o\ : std_logic;
SIGNAL \iSXT[23]~input_o\ : std_logic;
SIGNAL \iSXT[24]~input_o\ : std_logic;
SIGNAL \iSXT[25]~input_o\ : std_logic;
SIGNAL \iSXT[26]~input_o\ : std_logic;
SIGNAL \iSXT[27]~input_o\ : std_logic;
SIGNAL \iSXT[28]~input_o\ : std_logic;
SIGNAL \iSXT[29]~input_o\ : std_logic;
SIGNAL \iSXT[30]~input_o\ : std_logic;
SIGNAL \iSXT[31]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;

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
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X26_Y28_N8
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

-- Location: IOIBUF_X50_Y26_N15
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

-- Location: IOIBUF_X3_Y0_N1
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

-- Location: IOIBUF_X12_Y17_N15
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

-- Location: IOIBUF_X50_Y11_N8
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

-- Location: IOIBUF_X19_Y17_N22
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

-- Location: IOIBUF_X25_Y23_N15
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

-- Location: IOIBUF_X0_Y9_N1
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

-- Location: IOIBUF_X0_Y7_N1
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

-- Location: IOIBUF_X19_Y0_N29
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

-- Location: IOIBUF_X0_Y8_N22
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

-- Location: IOIBUF_X19_Y17_N15
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

-- Location: IOIBUF_X14_Y0_N15
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

-- Location: IOIBUF_X0_Y14_N1
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

-- Location: IOIBUF_X6_Y0_N1
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

-- Location: IOIBUF_X0_Y9_N15
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

-- Location: IOIBUF_X0_Y3_N15
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

-- Location: IOIBUF_X50_Y8_N22
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

-- Location: IOIBUF_X6_Y0_N29
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

-- Location: IOIBUF_X0_Y7_N22
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

-- Location: IOIBUF_X16_Y17_N22
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

-- Location: IOIBUF_X19_Y17_N29
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

-- Location: IOIBUF_X14_Y0_N1
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

-- Location: IOIBUF_X16_Y0_N29
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

-- Location: IOIBUF_X50_Y21_N23
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

-- Location: IOIBUF_X24_Y0_N1
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

-- Location: IOIBUF_X16_Y0_N15
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

-- Location: IOIBUF_X6_Y0_N22
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

-- Location: IOIBUF_X8_Y17_N15
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

-- Location: IOIBUF_X21_Y17_N29
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

-- Location: IOIBUF_X50_Y22_N8
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

-- Location: IOIBUF_X19_Y17_N1
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

-- Location: IOIBUF_X10_Y17_N8
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

-- Location: IOIBUF_X14_Y17_N22
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

-- Location: IOIBUF_X6_Y0_N8
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

-- Location: IOIBUF_X50_Y11_N23
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

-- Location: IOIBUF_X0_Y7_N15
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

-- Location: IOIBUF_X50_Y22_N22
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

-- Location: IOIBUF_X50_Y2_N22
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

-- Location: IOIBUF_X3_Y0_N8
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

-- Location: IOIBUF_X21_Y0_N22
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

-- Location: IOIBUF_X14_Y17_N29
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

-- Location: IOIBUF_X50_Y10_N22
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

-- Location: IOIBUF_X19_Y0_N15
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

-- Location: IOIBUF_X0_Y11_N22
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

-- Location: IOIBUF_X50_Y11_N15
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

-- Location: IOIBUF_X50_Y2_N8
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

-- Location: IOIBUF_X21_Y0_N29
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

-- Location: IOIBUF_X0_Y8_N8
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

-- Location: IOIBUF_X50_Y24_N15
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

-- Location: IOIBUF_X50_Y14_N15
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

-- Location: IOIBUF_X0_Y8_N15
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

-- Location: IOIBUF_X50_Y14_N22
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

-- Location: IOIBUF_X0_Y9_N22
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

-- Location: IOIBUF_X0_Y7_N8
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

-- Location: IOIBUF_X0_Y9_N8
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

-- Location: IOIBUF_X14_Y0_N8
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

-- Location: IOIBUF_X10_Y17_N1
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

-- Location: IOIBUF_X14_Y17_N1
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

-- Location: IOIBUF_X24_Y0_N29
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

-- Location: IOIBUF_X50_Y21_N8
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

-- Location: IOIBUF_X50_Y24_N8
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

-- Location: IOIBUF_X50_Y22_N15
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

-- Location: IOIBUF_X16_Y17_N8
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

-- Location: IOIBUF_X16_Y17_N1
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

-- Location: IOIBUF_X6_Y0_N15
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

-- Location: IOIBUF_X16_Y17_N15
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

-- Location: IOIBUF_X50_Y15_N22
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

-- Location: IOIBUF_X50_Y8_N15
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

-- Location: IOIBUF_X8_Y0_N29
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

-- Location: IOIBUF_X8_Y17_N22
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
END structure;


