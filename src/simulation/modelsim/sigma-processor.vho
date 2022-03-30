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

-- DATE "03/30/2022 19:54:17"

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

ENTITY 	ControlUnit IS
    PORT (
	iOpcode : IN std_logic_vector(5 DOWNTO 0);
	iZ : IN std_logic;
	oALUFN : OUT std_logic_vector(5 DOWNTO 0);
	oASEL : OUT std_logic;
	oBSEL : OUT std_logic;
	oMOE : OUT std_logic;
	oMWR : OUT std_logic;
	oPCSEL : OUT std_logic_vector(2 DOWNTO 0);
	oRA2SEL : OUT std_logic;
	oWASEL : OUT std_logic;
	oWDSEL : OUT std_logic_vector(1 DOWNTO 0);
	oWERF : OUT std_logic
	);
END ControlUnit;

-- Design Ports Information
-- oALUFN[0]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oALUFN[1]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oALUFN[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oALUFN[3]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oALUFN[4]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oALUFN[5]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oASEL	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oBSEL	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oMOE	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oMWR	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oPCSEL[0]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oPCSEL[1]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oPCSEL[2]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oRA2SEL	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oWASEL	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oWDSEL[0]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oWDSEL[1]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oWERF	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iOpcode[4]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iOpcode[3]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iOpcode[0]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iOpcode[1]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iOpcode[2]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iOpcode[5]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iZ	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ControlUnit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_iOpcode : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_iZ : std_logic;
SIGNAL ww_oALUFN : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_oASEL : std_logic;
SIGNAL ww_oBSEL : std_logic;
SIGNAL ww_oMOE : std_logic;
SIGNAL ww_oMWR : std_logic;
SIGNAL ww_oPCSEL : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_oRA2SEL : std_logic;
SIGNAL ww_oWASEL : std_logic;
SIGNAL ww_oWDSEL : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_oWERF : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \oALUFN[0]~output_o\ : std_logic;
SIGNAL \oALUFN[1]~output_o\ : std_logic;
SIGNAL \oALUFN[2]~output_o\ : std_logic;
SIGNAL \oALUFN[3]~output_o\ : std_logic;
SIGNAL \oALUFN[4]~output_o\ : std_logic;
SIGNAL \oALUFN[5]~output_o\ : std_logic;
SIGNAL \oASEL~output_o\ : std_logic;
SIGNAL \oBSEL~output_o\ : std_logic;
SIGNAL \oMOE~output_o\ : std_logic;
SIGNAL \oMWR~output_o\ : std_logic;
SIGNAL \oPCSEL[0]~output_o\ : std_logic;
SIGNAL \oPCSEL[1]~output_o\ : std_logic;
SIGNAL \oPCSEL[2]~output_o\ : std_logic;
SIGNAL \oRA2SEL~output_o\ : std_logic;
SIGNAL \oWASEL~output_o\ : std_logic;
SIGNAL \oWDSEL[0]~output_o\ : std_logic;
SIGNAL \oWDSEL[1]~output_o\ : std_logic;
SIGNAL \oWERF~output_o\ : std_logic;
SIGNAL \iOpcode[2]~input_o\ : std_logic;
SIGNAL \iOpcode[0]~input_o\ : std_logic;
SIGNAL \iOpcode[1]~input_o\ : std_logic;
SIGNAL \iOpcode[3]~input_o\ : std_logic;
SIGNAL \Mux27~9_combout\ : std_logic;
SIGNAL \iOpcode[5]~input_o\ : std_logic;
SIGNAL \Mux27~10_combout\ : std_logic;
SIGNAL \iOpcode[4]~input_o\ : std_logic;
SIGNAL \Mux26~4_combout\ : std_logic;
SIGNAL \Mux26~5_combout\ : std_logic;
SIGNAL \Mux26~12_combout\ : std_logic;
SIGNAL \Mux25~9_combout\ : std_logic;
SIGNAL \Mux25~10_combout\ : std_logic;
SIGNAL \Mux24~7_combout\ : std_logic;
SIGNAL \Mux24~8_combout\ : std_logic;
SIGNAL \Mux23~9_combout\ : std_logic;
SIGNAL \Mux23~8_combout\ : std_logic;
SIGNAL \Mux23~12_combout\ : std_logic;
SIGNAL \Mux23~13_combout\ : std_logic;
SIGNAL \Mux23~11_combout\ : std_logic;
SIGNAL \Mux22~4_combout\ : std_logic;
SIGNAL \Mux22~7_combout\ : std_logic;
SIGNAL \Mux28~7_combout\ : std_logic;
SIGNAL \Mux28~10_combout\ : std_logic;
SIGNAL \Mux28~11_combout\ : std_logic;
SIGNAL \Mux28~6_combout\ : std_logic;
SIGNAL \Mux28~9_combout\ : std_logic;
SIGNAL \Mux29~8_combout\ : std_logic;
SIGNAL \Mux29~9_combout\ : std_logic;
SIGNAL \Mux29~12_combout\ : std_logic;
SIGNAL \Mux29~13_combout\ : std_logic;
SIGNAL \Mux29~11_combout\ : std_logic;
SIGNAL \Mux30~7_combout\ : std_logic;
SIGNAL \Mux30~16_combout\ : std_logic;
SIGNAL \iZ~input_o\ : std_logic;
SIGNAL \Mux32~5_combout\ : std_logic;
SIGNAL \Mux32~17_combout\ : std_logic;
SIGNAL \Mux31~3_combout\ : std_logic;
SIGNAL \Mux31~12_combout\ : std_logic;
SIGNAL \Mux33~14_combout\ : std_logic;
SIGNAL \Mux33~15_combout\ : std_logic;
SIGNAL \Mux35~8_combout\ : std_logic;
SIGNAL \Mux34~4_combout\ : std_logic;
SIGNAL \Mux34~9_combout\ : std_logic;
SIGNAL \Mux36~7_combout\ : std_logic;
SIGNAL \Mux36~4_combout\ : std_logic;
SIGNAL \Mux36~8_combout\ : std_logic;
SIGNAL \Mux36~6_combout\ : std_logic;
SIGNAL \Mux36~9_combout\ : std_logic;
SIGNAL \ALT_INV_Mux29~11_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_iOpcode <= iOpcode;
ww_iZ <= iZ;
oALUFN <= ww_oALUFN;
oASEL <= ww_oASEL;
oBSEL <= ww_oBSEL;
oMOE <= ww_oMOE;
oMWR <= ww_oMWR;
oPCSEL <= ww_oPCSEL;
oRA2SEL <= ww_oRA2SEL;
oWASEL <= ww_oWASEL;
oWDSEL <= ww_oWDSEL;
oWERF <= ww_oWERF;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
\ALT_INV_Mux29~11_combout\ <= NOT \Mux29~11_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X26_Y19_N16
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

-- Location: IOOBUF_X50_Y22_N23
\oALUFN[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux27~10_combout\,
	devoe => ww_devoe,
	o => \oALUFN[0]~output_o\);

-- Location: IOOBUF_X25_Y23_N16
\oALUFN[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux26~12_combout\,
	devoe => ww_devoe,
	o => \oALUFN[1]~output_o\);

-- Location: IOOBUF_X50_Y21_N2
\oALUFN[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux25~10_combout\,
	devoe => ww_devoe,
	o => \oALUFN[2]~output_o\);

-- Location: IOOBUF_X25_Y25_N23
\oALUFN[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux24~8_combout\,
	devoe => ww_devoe,
	o => \oALUFN[3]~output_o\);

-- Location: IOOBUF_X50_Y22_N2
\oALUFN[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux23~11_combout\,
	devoe => ww_devoe,
	o => \oALUFN[4]~output_o\);

-- Location: IOOBUF_X25_Y25_N16
\oALUFN[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux22~7_combout\,
	devoe => ww_devoe,
	o => \oALUFN[5]~output_o\);

-- Location: IOOBUF_X12_Y17_N30
\oASEL~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \oASEL~output_o\);

-- Location: IOOBUF_X19_Y17_N30
\oBSEL~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux28~9_combout\,
	devoe => ww_devoe,
	o => \oBSEL~output_o\);

-- Location: IOOBUF_X50_Y24_N16
\oMOE~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux29~11_combout\,
	devoe => ww_devoe,
	o => \oMOE~output_o\);

-- Location: IOOBUF_X50_Y22_N9
\oMWR~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux30~16_combout\,
	devoe => ww_devoe,
	o => \oMWR~output_o\);

-- Location: IOOBUF_X50_Y22_N16
\oPCSEL[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux32~17_combout\,
	devoe => ww_devoe,
	o => \oPCSEL[0]~output_o\);

-- Location: IOOBUF_X25_Y24_N16
\oPCSEL[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux31~12_combout\,
	devoe => ww_devoe,
	o => \oPCSEL[1]~output_o\);

-- Location: IOOBUF_X50_Y10_N9
\oPCSEL[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \oPCSEL[2]~output_o\);

-- Location: IOOBUF_X21_Y17_N30
\oRA2SEL~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux33~15_combout\,
	devoe => ww_devoe,
	o => \oRA2SEL~output_o\);

-- Location: IOOBUF_X24_Y0_N30
\oWASEL~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \oWASEL~output_o\);

-- Location: IOOBUF_X25_Y22_N23
\oWDSEL[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux35~8_combout\,
	devoe => ww_devoe,
	o => \oWDSEL[0]~output_o\);

-- Location: IOOBUF_X25_Y24_N23
\oWDSEL[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux34~9_combout\,
	devoe => ww_devoe,
	o => \oWDSEL[1]~output_o\);

-- Location: IOOBUF_X25_Y23_N23
\oWERF~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux36~9_combout\,
	devoe => ww_devoe,
	o => \oWERF~output_o\);

-- Location: IOIBUF_X50_Y24_N22
\iOpcode[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iOpcode(2),
	o => \iOpcode[2]~input_o\);

-- Location: IOIBUF_X50_Y24_N1
\iOpcode[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iOpcode(0),
	o => \iOpcode[0]~input_o\);

-- Location: IOIBUF_X50_Y21_N8
\iOpcode[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iOpcode(1),
	o => \iOpcode[1]~input_o\);

-- Location: IOIBUF_X50_Y25_N15
\iOpcode[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iOpcode(3),
	o => \iOpcode[3]~input_o\);

-- Location: LCCOMB_X49_Y22_N24
\Mux27~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~9_combout\ = (\iOpcode[0]~input_o\ & (\iOpcode[1]~input_o\ $ (((\iOpcode[2]~input_o\) # (!\iOpcode[3]~input_o\))))) # (!\iOpcode[0]~input_o\ & (\iOpcode[2]~input_o\ & ((\iOpcode[1]~input_o\) # (!\iOpcode[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iOpcode[2]~input_o\,
	datab => \iOpcode[0]~input_o\,
	datac => \iOpcode[1]~input_o\,
	datad => \iOpcode[3]~input_o\,
	combout => \Mux27~9_combout\);

-- Location: IOIBUF_X50_Y21_N15
\iOpcode[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iOpcode(5),
	o => \iOpcode[5]~input_o\);

-- Location: LCCOMB_X49_Y22_N26
\Mux27~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~10_combout\ = (\Mux27~9_combout\ & \iOpcode[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux27~9_combout\,
	datad => \iOpcode[5]~input_o\,
	combout => \Mux27~10_combout\);

-- Location: IOIBUF_X50_Y24_N8
\iOpcode[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iOpcode(4),
	o => \iOpcode[4]~input_o\);

-- Location: LCCOMB_X26_Y23_N26
\Mux26~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux26~4_combout\ = (\iOpcode[0]~input_o\ & (\iOpcode[1]~input_o\ & (\iOpcode[3]~input_o\ & \iOpcode[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iOpcode[0]~input_o\,
	datab => \iOpcode[1]~input_o\,
	datac => \iOpcode[3]~input_o\,
	datad => \iOpcode[4]~input_o\,
	combout => \Mux26~4_combout\);

-- Location: LCCOMB_X26_Y23_N28
\Mux26~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux26~5_combout\ = (\iOpcode[0]~input_o\ & (\iOpcode[3]~input_o\ & (!\iOpcode[1]~input_o\ & !\iOpcode[2]~input_o\))) # (!\iOpcode[0]~input_o\ & ((\iOpcode[3]~input_o\ & (\iOpcode[1]~input_o\)) # (!\iOpcode[3]~input_o\ & ((\iOpcode[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iOpcode[0]~input_o\,
	datab => \iOpcode[3]~input_o\,
	datac => \iOpcode[1]~input_o\,
	datad => \iOpcode[2]~input_o\,
	combout => \Mux26~5_combout\);

-- Location: LCCOMB_X26_Y23_N20
\Mux26~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux26~12_combout\ = (\iOpcode[5]~input_o\ & (((\Mux26~5_combout\)))) # (!\iOpcode[5]~input_o\ & (\Mux26~4_combout\ & ((\iOpcode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~4_combout\,
	datab => \Mux26~5_combout\,
	datac => \iOpcode[5]~input_o\,
	datad => \iOpcode[2]~input_o\,
	combout => \Mux26~12_combout\);

-- Location: LCCOMB_X49_Y22_N0
\Mux25~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux25~9_combout\ = (\iOpcode[2]~input_o\ & (!\iOpcode[3]~input_o\ & (\iOpcode[0]~input_o\ $ (\iOpcode[1]~input_o\)))) # (!\iOpcode[2]~input_o\ & (\iOpcode[3]~input_o\ & (\iOpcode[0]~input_o\ $ (\iOpcode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iOpcode[2]~input_o\,
	datab => \iOpcode[0]~input_o\,
	datac => \iOpcode[1]~input_o\,
	datad => \iOpcode[3]~input_o\,
	combout => \Mux25~9_combout\);

-- Location: LCCOMB_X49_Y22_N18
\Mux25~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux25~10_combout\ = (\Mux25~9_combout\ & \iOpcode[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux25~9_combout\,
	datad => \iOpcode[5]~input_o\,
	combout => \Mux25~10_combout\);

-- Location: LCCOMB_X29_Y24_N18
\Mux24~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux24~7_combout\ = (\iOpcode[5]~input_o\ & (((!\iOpcode[2]~input_o\)))) # (!\iOpcode[5]~input_o\ & (\iOpcode[4]~input_o\ & (\iOpcode[1]~input_o\ & \iOpcode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iOpcode[4]~input_o\,
	datab => \iOpcode[1]~input_o\,
	datac => \iOpcode[5]~input_o\,
	datad => \iOpcode[2]~input_o\,
	combout => \Mux24~7_combout\);

-- Location: LCCOMB_X29_Y24_N4
\Mux24~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux24~8_combout\ = (\Mux24~7_combout\ & (\iOpcode[3]~input_o\ & ((\iOpcode[0]~input_o\) # (!\iOpcode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~7_combout\,
	datab => \iOpcode[1]~input_o\,
	datac => \iOpcode[0]~input_o\,
	datad => \iOpcode[3]~input_o\,
	combout => \Mux24~8_combout\);

-- Location: LCCOMB_X49_Y22_N10
\Mux23~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~9_combout\ = (\iOpcode[5]~input_o\ & ((\iOpcode[3]~input_o\) # ((\iOpcode[0]~input_o\ & \iOpcode[1]~input_o\)))) # (!\iOpcode[5]~input_o\ & (((!\iOpcode[0]~input_o\ & \iOpcode[1]~input_o\)) # (!\iOpcode[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iOpcode[5]~input_o\,
	datab => \iOpcode[0]~input_o\,
	datac => \iOpcode[1]~input_o\,
	datad => \iOpcode[3]~input_o\,
	combout => \Mux23~9_combout\);

-- Location: LCCOMB_X49_Y22_N8
\Mux23~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~8_combout\ = ((\iOpcode[3]~input_o\) # ((\iOpcode[0]~input_o\ & \iOpcode[1]~input_o\))) # (!\iOpcode[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iOpcode[5]~input_o\,
	datab => \iOpcode[0]~input_o\,
	datac => \iOpcode[1]~input_o\,
	datad => \iOpcode[3]~input_o\,
	combout => \Mux23~8_combout\);

-- Location: LCCOMB_X49_Y22_N30
\Mux23~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~12_combout\ = (\iOpcode[5]~input_o\ & (((!\iOpcode[1]~input_o\ & !\iOpcode[3]~input_o\)))) # (!\iOpcode[5]~input_o\ & (((!\iOpcode[3]~input_o\) # (!\iOpcode[1]~input_o\)) # (!\iOpcode[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iOpcode[5]~input_o\,
	datab => \iOpcode[0]~input_o\,
	datac => \iOpcode[1]~input_o\,
	datad => \iOpcode[3]~input_o\,
	combout => \Mux23~12_combout\);

-- Location: LCCOMB_X49_Y22_N16
\Mux23~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~13_combout\ = (\iOpcode[2]~input_o\ & (\iOpcode[4]~input_o\)) # (!\iOpcode[2]~input_o\ & ((\Mux23~12_combout\) # ((!\iOpcode[4]~input_o\ & !\iOpcode[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iOpcode[4]~input_o\,
	datab => \iOpcode[5]~input_o\,
	datac => \iOpcode[2]~input_o\,
	datad => \Mux23~12_combout\,
	combout => \Mux23~13_combout\);

-- Location: LCCOMB_X49_Y22_N12
\Mux23~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~11_combout\ = (\iOpcode[2]~input_o\ & ((\Mux23~13_combout\ & (\Mux23~9_combout\)) # (!\Mux23~13_combout\ & ((\Mux23~8_combout\))))) # (!\iOpcode[2]~input_o\ & (((\Mux23~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~9_combout\,
	datab => \Mux23~8_combout\,
	datac => \iOpcode[2]~input_o\,
	datad => \Mux23~13_combout\,
	combout => \Mux23~11_combout\);

-- Location: LCCOMB_X29_Y24_N8
\Mux22~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~4_combout\ = (\iOpcode[5]~input_o\ & (((!\iOpcode[0]~input_o\)) # (!\iOpcode[2]~input_o\))) # (!\iOpcode[5]~input_o\ & (\iOpcode[2]~input_o\ & (\iOpcode[0]~input_o\ & \iOpcode[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iOpcode[5]~input_o\,
	datab => \iOpcode[2]~input_o\,
	datac => \iOpcode[0]~input_o\,
	datad => \iOpcode[4]~input_o\,
	combout => \Mux22~4_combout\);

-- Location: LCCOMB_X29_Y24_N2
\Mux22~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~7_combout\ = (\iOpcode[3]~input_o\ & ((\iOpcode[1]~input_o\ & ((\Mux22~4_combout\))) # (!\iOpcode[1]~input_o\ & (\iOpcode[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iOpcode[5]~input_o\,
	datab => \iOpcode[1]~input_o\,
	datac => \Mux22~4_combout\,
	datad => \iOpcode[3]~input_o\,
	combout => \Mux22~7_combout\);

-- Location: LCCOMB_X29_Y24_N10
\Mux28~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~7_combout\ = (\iOpcode[4]~input_o\) # ((\iOpcode[1]~input_o\ & \iOpcode[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iOpcode[1]~input_o\,
	datac => \iOpcode[0]~input_o\,
	datad => \iOpcode[4]~input_o\,
	combout => \Mux28~7_combout\);

-- Location: LCCOMB_X29_Y24_N30
\Mux28~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~10_combout\ = (((\iOpcode[1]~input_o\ & !\iOpcode[0]~input_o\)) # (!\iOpcode[3]~input_o\)) # (!\iOpcode[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iOpcode[4]~input_o\,
	datab => \iOpcode[1]~input_o\,
	datac => \iOpcode[0]~input_o\,
	datad => \iOpcode[3]~input_o\,
	combout => \Mux28~10_combout\);

-- Location: LCCOMB_X29_Y24_N24
\Mux28~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~11_combout\ = (\iOpcode[5]~input_o\ & (((\iOpcode[2]~input_o\)))) # (!\iOpcode[5]~input_o\ & ((\Mux28~10_combout\) # ((!\iOpcode[1]~input_o\ & !\iOpcode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iOpcode[5]~input_o\,
	datab => \iOpcode[1]~input_o\,
	datac => \Mux28~10_combout\,
	datad => \iOpcode[2]~input_o\,
	combout => \Mux28~11_combout\);

-- Location: LCCOMB_X29_Y24_N0
\Mux28~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~6_combout\ = (\iOpcode[4]~input_o\ & ((\iOpcode[3]~input_o\) # (!\iOpcode[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iOpcode[4]~input_o\,
	datab => \iOpcode[1]~input_o\,
	datad => \iOpcode[3]~input_o\,
	combout => \Mux28~6_combout\);

-- Location: LCCOMB_X29_Y24_N16
\Mux28~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~9_combout\ = (\Mux28~11_combout\ & ((\Mux28~7_combout\) # ((!\iOpcode[5]~input_o\)))) # (!\Mux28~11_combout\ & (((\Mux28~6_combout\ & \iOpcode[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~7_combout\,
	datab => \Mux28~11_combout\,
	datac => \Mux28~6_combout\,
	datad => \iOpcode[5]~input_o\,
	combout => \Mux28~9_combout\);

-- Location: LCCOMB_X26_Y23_N30
\Mux29~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~8_combout\ = (!\iOpcode[1]~input_o\ & (\iOpcode[5]~input_o\ & \iOpcode[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iOpcode[1]~input_o\,
	datac => \iOpcode[5]~input_o\,
	datad => \iOpcode[2]~input_o\,
	combout => \Mux29~8_combout\);

-- Location: LCCOMB_X26_Y23_N0
\Mux29~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~9_combout\ = (\iOpcode[0]~input_o\ & (((!\iOpcode[5]~input_o\ & !\iOpcode[2]~input_o\)))) # (!\iOpcode[0]~input_o\ & (\iOpcode[1]~input_o\ & (\iOpcode[5]~input_o\ & \iOpcode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iOpcode[0]~input_o\,
	datab => \iOpcode[1]~input_o\,
	datac => \iOpcode[5]~input_o\,
	datad => \iOpcode[2]~input_o\,
	combout => \Mux29~9_combout\);

-- Location: LCCOMB_X26_Y23_N24
\Mux29~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~12_combout\ = (\iOpcode[0]~input_o\ & ((\iOpcode[4]~input_o\ & (!\iOpcode[1]~input_o\ & \iOpcode[2]~input_o\)) # (!\iOpcode[4]~input_o\ & (\iOpcode[1]~input_o\ & !\iOpcode[2]~input_o\)))) # (!\iOpcode[0]~input_o\ & (\iOpcode[2]~input_o\ & 
-- (\iOpcode[4]~input_o\ $ (!\iOpcode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iOpcode[0]~input_o\,
	datab => \iOpcode[4]~input_o\,
	datac => \iOpcode[1]~input_o\,
	datad => \iOpcode[2]~input_o\,
	combout => \Mux29~12_combout\);

-- Location: LCCOMB_X26_Y23_N2
\Mux29~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~13_combout\ = (\iOpcode[3]~input_o\ & (((\iOpcode[4]~input_o\)))) # (!\iOpcode[3]~input_o\ & (\Mux29~12_combout\ & (\iOpcode[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~12_combout\,
	datab => \iOpcode[5]~input_o\,
	datac => \iOpcode[3]~input_o\,
	datad => \iOpcode[4]~input_o\,
	combout => \Mux29~13_combout\);

-- Location: LCCOMB_X26_Y23_N22
\Mux29~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~11_combout\ = (\iOpcode[3]~input_o\ & ((\Mux29~13_combout\ & ((\Mux29~9_combout\))) # (!\Mux29~13_combout\ & (\Mux29~8_combout\)))) # (!\iOpcode[3]~input_o\ & (((\Mux29~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~8_combout\,
	datab => \Mux29~9_combout\,
	datac => \iOpcode[3]~input_o\,
	datad => \Mux29~13_combout\,
	combout => \Mux29~11_combout\);

-- Location: LCCOMB_X49_Y22_N6
\Mux30~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~7_combout\ = (!\iOpcode[1]~input_o\ & (\iOpcode[4]~input_o\ & \iOpcode[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iOpcode[1]~input_o\,
	datac => \iOpcode[4]~input_o\,
	datad => \iOpcode[0]~input_o\,
	combout => \Mux30~7_combout\);

-- Location: LCCOMB_X49_Y22_N4
\Mux30~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~16_combout\ = (\Mux30~7_combout\ & (!\iOpcode[5]~input_o\ & (!\iOpcode[2]~input_o\ & \iOpcode[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~7_combout\,
	datab => \iOpcode[5]~input_o\,
	datac => \iOpcode[2]~input_o\,
	datad => \iOpcode[3]~input_o\,
	combout => \Mux30~16_combout\);

-- Location: IOIBUF_X50_Y21_N23
\iZ~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iZ,
	o => \iZ~input_o\);

-- Location: LCCOMB_X49_Y22_N22
\Mux32~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux32~5_combout\ = (!\iOpcode[1]~input_o\ & (\iOpcode[4]~input_o\ & (\iZ~input_o\ $ (\iOpcode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iZ~input_o\,
	datab => \iOpcode[1]~input_o\,
	datac => \iOpcode[4]~input_o\,
	datad => \iOpcode[0]~input_o\,
	combout => \Mux32~5_combout\);

-- Location: LCCOMB_X49_Y22_N28
\Mux32~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux32~17_combout\ = (\iOpcode[2]~input_o\ & (!\iOpcode[5]~input_o\ & (\Mux32~5_combout\ & \iOpcode[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iOpcode[2]~input_o\,
	datab => \iOpcode[5]~input_o\,
	datac => \Mux32~5_combout\,
	datad => \iOpcode[3]~input_o\,
	combout => \Mux32~17_combout\);

-- Location: LCCOMB_X29_Y24_N22
\Mux31~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~3_combout\ = (!\iOpcode[5]~input_o\ & (\iOpcode[1]~input_o\ & !\iOpcode[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iOpcode[5]~input_o\,
	datab => \iOpcode[1]~input_o\,
	datad => \iOpcode[2]~input_o\,
	combout => \Mux31~3_combout\);

-- Location: LCCOMB_X29_Y24_N20
\Mux31~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~12_combout\ = (\iOpcode[4]~input_o\ & (\iOpcode[0]~input_o\ & (\Mux31~3_combout\ & \iOpcode[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iOpcode[4]~input_o\,
	datab => \iOpcode[0]~input_o\,
	datac => \Mux31~3_combout\,
	datad => \iOpcode[3]~input_o\,
	combout => \Mux31~12_combout\);

-- Location: LCCOMB_X29_Y24_N26
\Mux33~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux33~14_combout\ = (\iOpcode[5]~input_o\ & (\iOpcode[1]~input_o\ & (\iOpcode[0]~input_o\))) # (!\iOpcode[5]~input_o\ & (((\iOpcode[1]~input_o\ & !\iOpcode[0]~input_o\)) # (!\iOpcode[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iOpcode[5]~input_o\,
	datab => \iOpcode[1]~input_o\,
	datac => \iOpcode[0]~input_o\,
	datad => \iOpcode[4]~input_o\,
	combout => \Mux33~14_combout\);

-- Location: LCCOMB_X29_Y24_N28
\Mux33~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux33~15_combout\ = (\iOpcode[2]~input_o\ & ((\Mux33~14_combout\) # ((!\iOpcode[5]~input_o\ & !\iOpcode[3]~input_o\)))) # (!\iOpcode[2]~input_o\ & (!\iOpcode[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iOpcode[5]~input_o\,
	datab => \iOpcode[2]~input_o\,
	datac => \Mux33~14_combout\,
	datad => \iOpcode[3]~input_o\,
	combout => \Mux33~15_combout\);

-- Location: LCCOMB_X26_Y23_N16
\Mux35~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux35~8_combout\ = (\iOpcode[5]~input_o\ & (((!\iOpcode[2]~input_o\) # (!\iOpcode[1]~input_o\)) # (!\iOpcode[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iOpcode[0]~input_o\,
	datab => \iOpcode[1]~input_o\,
	datac => \iOpcode[5]~input_o\,
	datad => \iOpcode[2]~input_o\,
	combout => \Mux35~8_combout\);

-- Location: LCCOMB_X29_Y24_N12
\Mux34~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux34~4_combout\ = (\iOpcode[1]~input_o\ & (\iOpcode[0]~input_o\ & \iOpcode[2]~input_o\)) # (!\iOpcode[1]~input_o\ & (!\iOpcode[0]~input_o\ & !\iOpcode[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iOpcode[1]~input_o\,
	datac => \iOpcode[0]~input_o\,
	datad => \iOpcode[2]~input_o\,
	combout => \Mux34~4_combout\);

-- Location: LCCOMB_X29_Y24_N6
\Mux34~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux34~9_combout\ = (!\iOpcode[5]~input_o\ & (\iOpcode[3]~input_o\ & (\Mux34~4_combout\ & \iOpcode[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iOpcode[5]~input_o\,
	datab => \iOpcode[3]~input_o\,
	datac => \Mux34~4_combout\,
	datad => \iOpcode[4]~input_o\,
	combout => \Mux34~9_combout\);

-- Location: LCCOMB_X26_Y23_N10
\Mux36~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux36~7_combout\ = (\iOpcode[5]~input_o\ & ((\iOpcode[2]~input_o\ & (!\iOpcode[0]~input_o\)) # (!\iOpcode[2]~input_o\ & ((\iOpcode[3]~input_o\))))) # (!\iOpcode[5]~input_o\ & (\iOpcode[0]~input_o\ & (\iOpcode[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iOpcode[0]~input_o\,
	datab => \iOpcode[3]~input_o\,
	datac => \iOpcode[5]~input_o\,
	datad => \iOpcode[2]~input_o\,
	combout => \Mux36~7_combout\);

-- Location: LCCOMB_X26_Y23_N6
\Mux36~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux36~4_combout\ = (\iOpcode[5]~input_o\ & ((\iOpcode[2]~input_o\ & (!\iOpcode[0]~input_o\)) # (!\iOpcode[2]~input_o\ & ((\iOpcode[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iOpcode[0]~input_o\,
	datab => \iOpcode[3]~input_o\,
	datac => \iOpcode[5]~input_o\,
	datad => \iOpcode[2]~input_o\,
	combout => \Mux36~4_combout\);

-- Location: LCCOMB_X26_Y23_N18
\Mux36~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux36~8_combout\ = (\iOpcode[1]~input_o\ & ((\Mux36~4_combout\) # ((\iOpcode[4]~input_o\)))) # (!\iOpcode[1]~input_o\ & (((\iOpcode[5]~input_o\ & !\iOpcode[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux36~4_combout\,
	datab => \iOpcode[1]~input_o\,
	datac => \iOpcode[5]~input_o\,
	datad => \iOpcode[4]~input_o\,
	combout => \Mux36~8_combout\);

-- Location: LCCOMB_X26_Y23_N8
\Mux36~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux36~6_combout\ = (\iOpcode[5]~input_o\) # ((\iOpcode[2]~input_o\ & \iOpcode[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iOpcode[2]~input_o\,
	datab => \iOpcode[3]~input_o\,
	datac => \iOpcode[5]~input_o\,
	combout => \Mux36~6_combout\);

-- Location: LCCOMB_X26_Y23_N12
\Mux36~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux36~9_combout\ = (\Mux36~8_combout\ & ((\Mux36~7_combout\) # ((!\iOpcode[4]~input_o\)))) # (!\Mux36~8_combout\ & (((\Mux36~6_combout\ & \iOpcode[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux36~7_combout\,
	datab => \Mux36~8_combout\,
	datac => \Mux36~6_combout\,
	datad => \iOpcode[4]~input_o\,
	combout => \Mux36~9_combout\);

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

ww_oALUFN(0) <= \oALUFN[0]~output_o\;

ww_oALUFN(1) <= \oALUFN[1]~output_o\;

ww_oALUFN(2) <= \oALUFN[2]~output_o\;

ww_oALUFN(3) <= \oALUFN[3]~output_o\;

ww_oALUFN(4) <= \oALUFN[4]~output_o\;

ww_oALUFN(5) <= \oALUFN[5]~output_o\;

ww_oASEL <= \oASEL~output_o\;

ww_oBSEL <= \oBSEL~output_o\;

ww_oMOE <= \oMOE~output_o\;

ww_oMWR <= \oMWR~output_o\;

ww_oPCSEL(0) <= \oPCSEL[0]~output_o\;

ww_oPCSEL(1) <= \oPCSEL[1]~output_o\;

ww_oPCSEL(2) <= \oPCSEL[2]~output_o\;

ww_oRA2SEL <= \oRA2SEL~output_o\;

ww_oWASEL <= \oWASEL~output_o\;

ww_oWDSEL(0) <= \oWDSEL[0]~output_o\;

ww_oWDSEL(1) <= \oWDSEL[1]~output_o\;

ww_oWERF <= \oWERF~output_o\;
END structure;


