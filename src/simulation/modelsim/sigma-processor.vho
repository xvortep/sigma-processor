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

-- DATE "03/29/2022 21:39:14"

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
-- oALUFN[0]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oALUFN[1]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oALUFN[2]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oALUFN[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oALUFN[4]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oALUFN[5]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oASEL	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oBSEL	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oMOE	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oMWR	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oPCSEL[0]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oPCSEL[1]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oPCSEL[2]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oRA2SEL	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oWASEL	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oWDSEL[0]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oWDSEL[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oWERF	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iOpcode[5]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iOpcode[0]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iOpcode[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iOpcode[1]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iOpcode[3]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iOpcode[4]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iZ	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \iOpcode[5]~input_o\ : std_logic;
SIGNAL \iOpcode[0]~input_o\ : std_logic;
SIGNAL \iOpcode[2]~input_o\ : std_logic;
SIGNAL \iOpcode[3]~input_o\ : std_logic;
SIGNAL \iOpcode[1]~input_o\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \Mux14~3_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \iOpcode[4]~input_o\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux20~2_combout\ : std_logic;
SIGNAL \Mux20~3_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \iZ~input_o\ : std_logic;
SIGNAL \Mux23~1_combout\ : std_logic;
SIGNAL \oPCSEL~0_combout\ : std_logic;
SIGNAL \oRA2SEL~0_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \Mux31~1_combout\ : std_logic;
SIGNAL \Mux31~2_combout\ : std_logic;
SIGNAL \Mux31~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux26~0_combout\ : std_logic;
SIGNAL \ALT_INV_oRA2SEL~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux11~0_combout\ : std_logic;

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
\ALT_INV_Mux26~0_combout\ <= NOT \Mux26~0_combout\;
\ALT_INV_oRA2SEL~0_combout\ <= NOT \oRA2SEL~0_combout\;
\ALT_INV_Mux11~0_combout\ <= NOT \Mux11~0_combout\;
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

-- Location: IOOBUF_X50_Y22_N9
\oALUFN[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~1_combout\,
	devoe => ww_devoe,
	o => \oALUFN[0]~output_o\);

-- Location: IOOBUF_X25_Y25_N16
\oALUFN[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~3_combout\,
	devoe => ww_devoe,
	o => \oALUFN[1]~output_o\);

-- Location: IOOBUF_X50_Y21_N16
\oALUFN[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~0_combout\,
	devoe => ww_devoe,
	o => \oALUFN[2]~output_o\);

-- Location: IOOBUF_X50_Y24_N23
\oALUFN[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~1_combout\,
	devoe => ww_devoe,
	o => \oALUFN[3]~output_o\);

-- Location: IOOBUF_X50_Y26_N16
\oALUFN[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux11~0_combout\,
	devoe => ww_devoe,
	o => \oALUFN[4]~output_o\);

-- Location: IOOBUF_X50_Y24_N2
\oALUFN[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~0_combout\,
	devoe => ww_devoe,
	o => \oALUFN[5]~output_o\);

-- Location: IOOBUF_X50_Y2_N9
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

-- Location: IOOBUF_X50_Y24_N16
\oBSEL~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux17~0_combout\,
	devoe => ww_devoe,
	o => \oBSEL~output_o\);

-- Location: IOOBUF_X50_Y16_N23
\oMOE~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux18~0_combout\,
	devoe => ww_devoe,
	o => \oMOE~output_o\);

-- Location: IOOBUF_X25_Y23_N23
\oMWR~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux20~3_combout\,
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
	i => \Mux23~1_combout\,
	devoe => ww_devoe,
	o => \oPCSEL[0]~output_o\);

-- Location: IOOBUF_X50_Y22_N23
\oPCSEL[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \oPCSEL~0_combout\,
	devoe => ww_devoe,
	o => \oPCSEL[1]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
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

-- Location: IOOBUF_X50_Y22_N2
\oRA2SEL~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_oRA2SEL~0_combout\,
	devoe => ww_devoe,
	o => \oRA2SEL~output_o\);

-- Location: IOOBUF_X19_Y17_N2
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

-- Location: IOOBUF_X50_Y11_N16
\oWDSEL[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \iOpcode[5]~input_o\,
	devoe => ww_devoe,
	o => \oWDSEL[0]~output_o\);

-- Location: IOOBUF_X50_Y24_N9
\oWDSEL[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux26~0_combout\,
	devoe => ww_devoe,
	o => \oWDSEL[1]~output_o\);

-- Location: IOOBUF_X50_Y26_N23
\oWERF~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux31~3_combout\,
	devoe => ww_devoe,
	o => \oWERF~output_o\);

-- Location: IOIBUF_X50_Y11_N23
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

-- Location: IOIBUF_X50_Y21_N8
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

-- Location: IOIBUF_X50_Y21_N1
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

-- Location: IOIBUF_X50_Y21_N23
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

-- Location: LCCOMB_X46_Y25_N0
\Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\iOpcode[0]~input_o\ & ((\iOpcode[2]~input_o\) # ((\iOpcode[1]~input_o\) # (!\iOpcode[3]~input_o\)))) # (!\iOpcode[0]~input_o\ & (\iOpcode[2]~input_o\ & ((\iOpcode[1]~input_o\) # (!\iOpcode[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iOpcode[0]~input_o\,
	datab => \iOpcode[2]~input_o\,
	datac => \iOpcode[3]~input_o\,
	datad => \iOpcode[1]~input_o\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X49_Y22_N16
\Mux15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (\iOpcode[5]~input_o\ & \Mux15~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iOpcode[5]~input_o\,
	datac => \Mux15~0_combout\,
	combout => \Mux15~1_combout\);

-- Location: LCCOMB_X46_Y25_N26
\Mux14~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = (\iOpcode[0]~input_o\ & (!\iOpcode[2]~input_o\ & (\iOpcode[3]~input_o\ & !\iOpcode[1]~input_o\))) # (!\iOpcode[0]~input_o\ & ((\iOpcode[3]~input_o\ & ((\iOpcode[1]~input_o\))) # (!\iOpcode[3]~input_o\ & (\iOpcode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iOpcode[0]~input_o\,
	datab => \iOpcode[2]~input_o\,
	datac => \iOpcode[3]~input_o\,
	datad => \iOpcode[1]~input_o\,
	combout => \Mux14~2_combout\);

-- Location: LCCOMB_X46_Y25_N24
\Mux14~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~3_combout\ = (\iOpcode[5]~input_o\ & (\Mux14~2_combout\)) # (!\iOpcode[5]~input_o\ & ((\iOpcode[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~2_combout\,
	datac => \iOpcode[5]~input_o\,
	datad => \iOpcode[1]~input_o\,
	combout => \Mux14~3_combout\);

-- Location: LCCOMB_X46_Y25_N20
\Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\iOpcode[0]~input_o\ & (\iOpcode[3]~input_o\ $ (((\iOpcode[2]~input_o\) # (\iOpcode[1]~input_o\))))) # (!\iOpcode[0]~input_o\ & (\iOpcode[1]~input_o\ & ((!\iOpcode[3]~input_o\) # (!\iOpcode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iOpcode[0]~input_o\,
	datab => \iOpcode[2]~input_o\,
	datac => \iOpcode[3]~input_o\,
	datad => \iOpcode[1]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X49_Y21_N16
\Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\Mux3~0_combout\ & \iOpcode[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux3~0_combout\,
	datad => \iOpcode[5]~input_o\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X46_Y25_N12
\Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\iOpcode[3]~input_o\ & ((\iOpcode[5]~input_o\ & ((\iOpcode[0]~input_o\) # (!\iOpcode[1]~input_o\))) # (!\iOpcode[5]~input_o\ & ((\iOpcode[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iOpcode[0]~input_o\,
	datab => \iOpcode[5]~input_o\,
	datac => \iOpcode[3]~input_o\,
	datad => \iOpcode[1]~input_o\,
	combout => \Mux12~0_combout\);

-- Location: IOIBUF_X50_Y25_N22
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

-- Location: LCCOMB_X46_Y25_N14
\Mux12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (\Mux12~0_combout\ & ((\iOpcode[5]~input_o\ & (!\iOpcode[2]~input_o\)) # (!\iOpcode[5]~input_o\ & ((\iOpcode[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~0_combout\,
	datab => \iOpcode[2]~input_o\,
	datac => \iOpcode[5]~input_o\,
	datad => \iOpcode[4]~input_o\,
	combout => \Mux12~1_combout\);

-- Location: LCCOMB_X46_Y25_N6
\Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\iOpcode[5]~input_o\ & (\iOpcode[3]~input_o\ $ ((\iOpcode[2]~input_o\)))) # (!\iOpcode[5]~input_o\ & (((\iOpcode[2]~input_o\) # (!\iOpcode[4]~input_o\)) # (!\iOpcode[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110101101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iOpcode[3]~input_o\,
	datab => \iOpcode[2]~input_o\,
	datac => \iOpcode[5]~input_o\,
	datad => \iOpcode[4]~input_o\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X46_Y25_N8
\Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\iOpcode[3]~input_o\ & ((\iOpcode[1]~input_o\) # (\iOpcode[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iOpcode[1]~input_o\,
	datab => \iOpcode[5]~input_o\,
	datac => \iOpcode[3]~input_o\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X46_Y25_N10
\Mux17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\iOpcode[4]~input_o\ & ((\iOpcode[5]~input_o\) # (!\iOpcode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iOpcode[2]~input_o\,
	datac => \iOpcode[5]~input_o\,
	datad => \iOpcode[4]~input_o\,
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X44_Y22_N24
\Mux18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\iOpcode[1]~input_o\) # ((!\iOpcode[0]~input_o\ & !\iOpcode[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iOpcode[0]~input_o\,
	datac => \iOpcode[2]~input_o\,
	datad => \iOpcode[1]~input_o\,
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X46_Y25_N28
\Mux20~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~2_combout\ = (\iOpcode[0]~input_o\ & (!\iOpcode[2]~input_o\ & (\iOpcode[3]~input_o\ & \iOpcode[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iOpcode[0]~input_o\,
	datab => \iOpcode[2]~input_o\,
	datac => \iOpcode[3]~input_o\,
	datad => \iOpcode[4]~input_o\,
	combout => \Mux20~2_combout\);

-- Location: LCCOMB_X46_Y25_N18
\Mux20~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~3_combout\ = (\Mux20~2_combout\ & (!\iOpcode[5]~input_o\ & !\iOpcode[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux20~2_combout\,
	datac => \iOpcode[5]~input_o\,
	datad => \iOpcode[1]~input_o\,
	combout => \Mux20~3_combout\);

-- Location: LCCOMB_X44_Y22_N10
\Mux23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (!\iOpcode[5]~input_o\ & !\iOpcode[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iOpcode[5]~input_o\,
	datad => \iOpcode[1]~input_o\,
	combout => \Mux23~0_combout\);

-- Location: IOIBUF_X25_Y22_N22
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

-- Location: LCCOMB_X44_Y22_N28
\Mux23~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~1_combout\ = (\Mux23~0_combout\ & (\iOpcode[2]~input_o\ & (\iZ~input_o\ $ (\iOpcode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~0_combout\,
	datab => \iZ~input_o\,
	datac => \iOpcode[2]~input_o\,
	datad => \iOpcode[0]~input_o\,
	combout => \Mux23~1_combout\);

-- Location: LCCOMB_X44_Y22_N22
\oPCSEL~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \oPCSEL~0_combout\ = (!\iOpcode[5]~input_o\ & (!\iOpcode[2]~input_o\ & \iOpcode[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iOpcode[5]~input_o\,
	datac => \iOpcode[2]~input_o\,
	datad => \iOpcode[1]~input_o\,
	combout => \oPCSEL~0_combout\);

-- Location: LCCOMB_X44_Y22_N8
\oRA2SEL~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \oRA2SEL~0_combout\ = (\iOpcode[5]~input_o\) # (\iOpcode[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iOpcode[5]~input_o\,
	datac => \iOpcode[2]~input_o\,
	combout => \oRA2SEL~0_combout\);

-- Location: LCCOMB_X46_Y25_N30
\Mux26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (\iOpcode[5]~input_o\) # (\iOpcode[2]~input_o\ $ (\iOpcode[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iOpcode[2]~input_o\,
	datac => \iOpcode[5]~input_o\,
	datad => \iOpcode[1]~input_o\,
	combout => \Mux26~0_combout\);

-- Location: LCCOMB_X46_Y25_N16
\Mux31~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = (\iOpcode[2]~input_o\ & (!\iOpcode[0]~input_o\)) # (!\iOpcode[2]~input_o\ & ((\iOpcode[3]~input_o\) # ((!\iOpcode[0]~input_o\ & !\iOpcode[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iOpcode[0]~input_o\,
	datab => \iOpcode[2]~input_o\,
	datac => \iOpcode[3]~input_o\,
	datad => \iOpcode[4]~input_o\,
	combout => \Mux31~0_combout\);

-- Location: LCCOMB_X46_Y25_N2
\Mux31~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~1_combout\ = (\iOpcode[5]~input_o\ & ((\Mux31~0_combout\) # (!\iOpcode[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux31~0_combout\,
	datac => \iOpcode[5]~input_o\,
	datad => \iOpcode[1]~input_o\,
	combout => \Mux31~1_combout\);

-- Location: LCCOMB_X46_Y25_N4
\Mux31~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~2_combout\ = (\iOpcode[1]~input_o\ & (\iOpcode[0]~input_o\ & ((!\iOpcode[5]~input_o\)))) # (!\iOpcode[1]~input_o\ & (((\iOpcode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iOpcode[0]~input_o\,
	datab => \iOpcode[2]~input_o\,
	datac => \iOpcode[5]~input_o\,
	datad => \iOpcode[1]~input_o\,
	combout => \Mux31~2_combout\);

-- Location: LCCOMB_X46_Y25_N22
\Mux31~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~3_combout\ = (\Mux31~1_combout\) # ((\iOpcode[3]~input_o\ & (\Mux31~2_combout\ & \iOpcode[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iOpcode[3]~input_o\,
	datab => \Mux31~1_combout\,
	datac => \Mux31~2_combout\,
	datad => \iOpcode[4]~input_o\,
	combout => \Mux31~3_combout\);

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


