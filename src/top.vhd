library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

library work;

entity top is
	port(
		iCLK	:	in		std_logic;
		iRST	:	in		std_logic;
		
		oZ		:	out	std_logic_vector(31 downto 0);
		oIns	:	out	std_logic_vector(5 downto 0);
		oHALT	:	out	std_logic
	);
end entity;

architecture arch of top is
	-- end signals
	signal sEND			:	std_logic;
	signal sRST			:	std_logic;
	signal sCLK			:	std_logic;
	-- stall signals
	signal sStall		:	std_logic;
	-- bypass signals
	signal s_a_bypass	:	std_logic_vector(31 downto 0);
	signal s_b_bypass	:	std_logic_vector(31 downto 0);
	signal s_a_ctrl	: 	std_logic_vector(2 downto 0);
	signal s_b_ctrl	: 	std_logic_vector(2 downto 0);
	-- pipeline misc signals
	signal s_irs_rc_if:	std_logic;
	signal s_irs_rc_rf:	std_logic;
	signal s_irs_rc_alu: std_logic;
	signal s_irs_rc_mem:	std_logic;
	-- control unit - IF signals 
	signal sOpcode_IF	:	std_logic_vector(5 downto 0);
	--signal sZ_IF		:	std_logic;
	signal sPCSEL_IF	:	std_logic_vector(2 downto 0);
	-- control unit - RF signals
	signal sOpcode_RF	:	std_logic_vector(5 downto 0);
	signal sZ_RF		:	std_logic;
	signal sRA2SEL_RF	:	std_logic;
	signal sWASEL_RF	:	std_logic;
	signal sASEL_RF	:	std_logic;
	signal sBSEL_RF	:	std_logic;
	signal sPCSEL_RF	:	std_logic_vector(2 downto 0);
	-- control unit - ALU signals 
	signal sOpcode_ALU	:	std_logic_vector(5 downto 0);
	signal sALUFN_ALU		:	std_logic_vector(5 downto 0);
	-- control unit - MEM signals 
	signal sOpcode_MEM	:	std_logic_vector(5 downto 0);
	signal sMOE_MEM		:	std_logic;
	signal sMWR_MEM		:	std_logic;
	-- control unit - WB signals 
	signal sOpcode_WB		:	std_logic_vector(5 downto 0);
	signal sWDSEL_WB		:	std_logic_vector(1 downto 0);
	signal sWERF_WB		:	std_logic;
	-- pipeline registers signals 
	signal sCLKpr		:	std_logic;
	signal sRSTpr		:	std_logic;
	signal s_i_pc_rf	:	std_logic_vector(31 downto 0);
	signal s_i_pc_alu	:	std_logic_vector(31 downto 0);
	signal s_i_pc_mem	:	std_logic_vector(31 downto 0);
	signal s_i_pc_wb	:	std_logic_vector(31 downto 0);
	signal s_i_ir_rf	:	std_logic_vector(31 downto 0);
	signal s_i_ir_alu	:	std_logic_vector(31 downto 0);
	signal s_i_ir_mem	:	std_logic_vector(31 downto 0);
	signal s_i_ir_wb	:	std_logic_vector(31 downto 0);
	signal s_i_a_alu	:	std_logic_vector(31 downto 0);
	signal s_i_b_alu	:	std_logic_vector(31 downto 0);
	signal s_i_y_mem	:	std_logic_vector(31 downto 0);
	signal s_i_y_wb	:	std_logic_vector(31 downto 0);
	signal s_i_d_alu	:	std_logic_vector(31 downto 0);
	signal s_i_d_mem	:	std_logic_vector(31 downto 0);
	signal s_i_d_wb	:	std_logic_vector(31 downto 0);
	signal s_o_pc_rf	:	std_logic_vector(31 downto 0);
	signal s_o_pc_alu	:	std_logic_vector(31 downto 0);
	signal s_o_pc_mem	:	std_logic_vector(31 downto 0);
	signal s_o_pc_wb	:	std_logic_vector(31 downto 0);
	signal s_o_ir_rf	:	std_logic_vector(31 downto 0);
	signal s_o_ir_alu	:	std_logic_vector(31 downto 0);
	signal s_o_ir_mem	:	std_logic_vector(31 downto 0);
	signal s_o_ir_wb	:	std_logic_vector(31 downto 0);
	signal s_o_a_alu	:	std_logic_vector(31 downto 0);

	signal s_o_b_alu	:	std_logic_vector(31 downto 0);
	signal s_o_y_mem	:	std_logic_vector(31 downto 0);
	signal s_o_y_wb	:	std_logic_vector(31 downto 0);
	signal s_o_d_alu	:	std_logic_vector(31 downto 0);
	signal s_o_d_mem	:	std_logic_vector(31 downto 0);
	signal s_o_d_wb	:	std_logic_vector(31 downto 0);
	-- program memory signals
	signal sApm			:	std_logic_vector(7 downto 0);
	signal sQpm			: 	std_logic_vector(31 downto 0);
	-- data ram signals 
   signal sCLKdr		:  std_logic;
   signal sRSTdr 		:  std_logic;
   signal sAdr 		:  std_logic_vector (7 downto 0); 
   signal sWDdr  		:	std_logic_vector (31 downto 0);
   signal sWEdr  		:	std_logic;
   signal sOEdr  		:	std_logic;
   signal sRDdr  		:	std_logic_vector (31 downto 0);
	-- program counter signals
	signal sPC_SEL		:	std_logic_vector(2 downto 0);
	signal sCLKpc		:	std_logic;
	signal sRSTpc		:	std_logic;
	signal sJT			:	std_logic_vector(31 downto 0);
	signal sSXT			:	std_logic_vector(31 downto 0);
	signal sPC			:	std_logic_vector(31 downto 0);
	-- register file signals
	signal sRA1			:	std_logic_vector(4 downto 0);
	signal sRA2			:	std_logic_vector(4 downto 0);
	signal sWA			:	std_logic_vector(4 downto 0);
	signal sWD			:	std_logic_vector(31 downto 0);
	signal sWE			:	std_logic;
	signal sCLKrf		:	std_logic;
	signal sRSTrf		:	std_logic;
	signal sRD1			:	std_logic_vector(31 downto 0);
	signal sRD2			:	std_logic_vector(31 downto 0);
	-- al unit signals
	signal sA			:	std_logic_vector(31 downto 0);
	signal sB			:	std_logic_vector(31 downto 0);
	signal sALUFNal	:	std_logic_vector(5 downto 0);
	signal sOutput		:	std_logic_vector(31 downto 0);
	signal sEX			:	std_logic_vector(31 downto 0);
	-- branch handler signals
	signal s_bh_ins	:	std_logic_vector(7 downto 0);
	signal s_bh_next	:	std_logic_vector(31 downto 0);

begin
---------------------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------------------
-- control unit - IF
	cu_if		:	entity work.ControlUnit_IF
	Port map(
		iOpcode	=> sOpcode_IF,
		iZ			=> '0',
		iSXT		=> sQpm(15 downto 0),
		iADDR		=> sApm,
		oPCSEL	=> sPCSEL_IF
	);
	-- logic -in:
	sOpcode_IF <= sQpm(31 downto 26) when s_irs_rc_if 	= '0' else "000000";

	
---------------------------------------------------------------------------------------------------------------
-- control unit - RF
	cu_rf		:	entity work.ControlUnit_RF
	Port map(
		iOpcode	=> sOpcode_RF,
		iZ			=> sZ_RF,
		iSXT		=> s_o_ir_rf(15 downto 0),
		iADDR		=> s_o_pc_alu(7 downto 0),
		oRA2SEL	=> sRA2SEL_RF,
		oWASEL	=> sWASEL_RF,
		oASEL		=> sASEL_RF,
		oBSEL		=>	sBSEL_RF,
		oPCSEL	=>	sPCSEL_RF
	);
	-- logic -in:
	sOpcode_RF <= s_i_ir_alu(31 downto 26);
	with s_a_bypass select sZ_RF <=
		'1'		when x"00000000",
		'0'		when others;
	
	
---------------------------------------------------------------------------------------------------------------
-- control unit - ALU
	cu_alu	:	entity work.ControlUnit_ALU 
	Port map(
		iOpcode	=>	sOpcode_ALU,
		iZ			=> '0',
		oALUFN	=>	sALUFN_ALU
	);
	-- logic -in:
	sOpcode_ALU <= s_i_ir_mem(31 downto 26);
	
---------------------------------------------------------------------------------------------------------------
-- control unit - MEM
	cu_mem	:	entity work.ControlUnit_MEM
	Port map(
		iOpcode	=> sOpcode_MEM,
		iZ			=> '0',
		oMOE		=> sMOE_MEM,
		oMWR		=> sMWR_MEM
	);
	-- logic -in:
	sOpcode_MEM <= s_i_ir_wb(31 downto 26);
	
---------------------------------------------------------------------------------------------------------------
-- control unit - WB
	s_irs_rc_alu	<= '0';
	s_irs_rc_mem	<= '0';

	cu_wb		:	entity work.ControlUnit_WB
	Port map(
		iOpcode	=> sOpcode_WB,
		iZ			=> '0',
		oWDSEL	=> sWDSEL_WB,
		oWERF		=> sWERF_WB
	);
	-- logic -in:
	sOpcode_WB <= s_o_ir_wb(31 downto 26);
	
---------------------------------------------------------------------------------------------------------------
	reg_pipeline	:	entity work.reg_top_pipeline 
	Port map(	
		iCLK 		=> sCLKpr,
		iRST		=>	sRSTpr,
		iSTALL	=> sStall,
		i_pc_rf	=> s_i_pc_rf,
		i_pc_alu	=> s_i_pc_alu,
		i_pc_mem	=> s_i_pc_mem,
		i_pc_wb	=> s_i_pc_wb,	
		i_ir_rf	=> s_i_ir_rf,
		i_ir_alu	=> s_i_ir_alu,	
		i_ir_mem	=> s_i_ir_mem,	
		i_ir_wb	=> s_i_ir_wb,	
		i_a_alu	=> s_i_a_alu,	
		i_b_alu	=> s_i_b_alu,	
		i_y_mem	=> s_i_y_mem,	
		i_y_wb	=> s_i_y_wb,	
		i_d_alu	=> s_i_d_alu,	
		i_d_mem	=> s_i_d_mem,
		i_d_wb	=>	s_i_d_wb,
		o_pc_rf	=> s_o_pc_rf,	
		o_pc_alu	=> s_o_pc_alu,
		o_pc_mem	=> s_o_pc_mem,	
		o_pc_wb	=> s_o_pc_wb,	
		o_ir_rf	=> s_o_ir_rf,	
		o_ir_alu	=> s_o_ir_alu,	
		o_ir_mem	=> s_o_ir_mem,	
		o_ir_wb	=> s_o_ir_wb,	
		o_a_alu	=> s_o_a_alu,	
		o_b_alu	=> s_o_b_alu,
		o_y_mem	=> s_o_y_mem,	
		o_y_wb	=> s_o_y_wb,	
		o_d_alu	=> s_o_d_alu,	
		o_d_mem	=> s_o_d_mem,
		o_d_wb	=>	s_o_d_wb
	);
	-- logic -in:
	sCLKpr <= sCLK;
	sRSTpr <= iRST;
	s_i_pc_rf	<= sPC;
	s_i_pc_alu	<= s_o_pc_rf;
	s_i_pc_mem	<= s_o_pc_alu;
	s_i_pc_wb	<= s_o_pc_mem;
	s_i_ir_rf	<= sQpm 			when s_irs_rc_if 	= '0' else x"00000000";		-- regular instruction or NOP for pipeline "halt" todo stop reading from prog if needed
	s_i_ir_alu	<= s_o_ir_rf 	when s_irs_rc_rf 	= '0' else x"00000000";		-- same
	s_i_ir_mem	<= s_o_ir_alu 	when s_irs_rc_alu	= '0' else x"00000000";		-- same
	s_i_ir_wb	<= s_o_ir_mem	when s_irs_rc_mem = '0' else x"00000000";  	-- same
	s_i_a_alu	<= s_a_bypass;
	s_i_b_alu	<= s_b_bypass	when sBSEL_RF = '0'		else sEX;
	s_i_y_mem	<= sOutput;
	s_i_y_wb		<= s_o_y_mem;
	s_i_d_alu	<= s_b_bypass;
	s_i_d_mem	<= s_o_d_alu;
	s_i_d_wb		<= sRDdr;
	
---------------------------------------------------------------------------------------------------------------
	-- program memory<3
	prog_i	:	entity work.instr_rom
   Port map( 
		iA 		=> sApm,
      oQ 		=> sQpm
	);
	-- logic -in:
	sApm 			<= s_bh_ins;						-- potential bug??? - false
---------------------------------------------------------------------------------------------------------------
	-- data ram											-- ACTUALLY NOT COMPLETE??? - false
    data_i	:	entity work.data_ram
	 Port map(  
		iCLK => sCLKdr,
      iRST => sRSTdr,
      iAdr => sAdr, 
      iWD  => sWDdr,
      iWE  => sWEdr,
      iOE  => sOEdr,
      oRD  => sRDdr
	);
	-- logic -in:
	sCLKdr 	<= sCLK;
	sRSTdr 	<= iRST;
	sAdr 		<= s_o_y_mem(7 downto 0);
	sWDdr		<= s_o_d_mem;
	sWEdr		<= sMWR_MEM;
	sOEdr		<= sMOE_MEM;
---------------------------------------------------------------------------------------------------------------	
	-- program counter
	pc_i	:	entity work.PC
	port map(
		iPC_SEL		=>	sPC_SEL,
		iCLK			=>	sCLKpc,
		iRST			=>	sRSTpc,
		iJT			=>	sJT,
		iSXT			=>	sSXT,
		iEXTERN		=> s_bh_ins,
		iEXTERN_FL	=> s_irs_rc_if,
		iSTALL		=> sStall,
		oPC			=>	sPC
	);
	-- logic -in:
	sPC_SEL 	<= sPCSEL_IF;											-- take calculated pcsel from cu to pc mux
	sCLKpc 	<= sCLK;
	sRSTpc	<=	iRST;
	sJT		<= sSXT;
	sSXT		<= x"0000" & sQpm(15 downto 0);
---------------------------------------------------------------------------------------------------------------	
	-- register file
	regf_i	:	entity work.reg_file
	port map(
		iRA1	=>	sRA1,
		iRA2	=>	sRA2,
		iWA	=>	sWA,
		iWD	=>	sWD,
		iWE	=>	sWE,
		iCLK	=>	sCLKrf,
		iRST	=>	sRSTrf,
		oRD1	=>	sRD1,
		oRD2	=>	sRD2
	);
	-- logic -in:
	sCLKrf	<= sCLK;
	sRSTrf	<=	iRST;
	sWE 		<= sWERF_WB;
	sRA1 		<= s_o_ir_rf(20 downto 16);
	with sRA2SEL_RF select sRA2 <=
		s_o_ir_rf(25 downto 21) when '1',
		s_o_ir_rf(15 downto 11) when others;
	with sWASEL_RF select sWA <=
		("11110") 					when '1',
		s_o_ir_wb(25 downto 21)	when others;
	with sWDSEL_WB select sWD <=
		-- TODO: da li treba ovako - valjda da
		(s_o_pc_wb + 4)			when "00",
		s_o_y_wb						when "01",
		s_o_d_wb						when others;
---------------------------------------------------------------------------------------------------------------
	-- branch handler
	branch_handler : entity work.branch_handler
	port map
	(
		iPC_NEXT			=> sPC,
		iNEXT_INSTR		=> s_bh_next,
		iJMP_INSTR		=> s_i_ir_alu,
		iPCSEL_RF		=> sPCSEL_RF,
		iZ					=> sZ_RF,
		oINS_ADDR		=> s_bh_ins,
		oNOP_IF			=> s_irs_rc_if
	);
	
	s_bh_next	<=	(s_i_pc_alu + 4);

---------------------------------------------------------------------------------------------------------------
	-- al unit
	alu_i	:	entity work.ALU
	port map(
		iA				=> sA,
		iB				=> sB,
		iALUFN		=> sALUFNal,
		oOutput		=>	sOutput
	);
	sA 		<= s_o_a_alu;

	with s_i_ir_alu(15) select sEX <=							-- sign extension of constant 
		x"0000" & s_i_ir_alu(15 downto 0) when '0',
		x"FFFF" & s_i_ir_alu(15 downto 0) when others;

	sB <= s_o_b_alu;
	
	sALUFNal <= sALUFN_ALU;
---------------------------------------------------------------------------------------------------------------
	--CU_bypass
	cu_bypass :	entity work.CU_bypass
	port map
	(
		iRD1		=> sRD1,
		iRD2		=> sRD2,
		iALU		=> sOutput,
		iMEM		=> s_o_y_mem,
		iWB		=> sWD,
		iRA1		=> sRA1,
		iRA2		=> sRA2,
		iALUadr	=> s_o_ir_alu(25 downto 21),
		iMEMadr	=> s_i_ir_wb(25 downto 21),
		iWBadr	=> s_o_ir_wb(25 downto 21),
		iRA2SEL	=> sRA2SEL_RF,
		iOpALU	=> s_i_ir_mem(31 downto 26),
		iOpMEM	=> s_i_ir_wb(31 downto 26),
		iRaRF		=> s_o_ir_rf(20 downto 16),
		iRbRF		=>	s_o_ir_rf(15 downto 11),
		oStall	=> sStall,
		oA_by		=> s_a_bypass,
		oB_by		=> s_b_bypass
	);
	
	s_irs_rc_rf	<= sStall;

---------------------------------------------------------------------------------------------------------------
	oZ 	<= s_o_y_wb;
	oIns 	<= s_o_ir_wb(31 downto 26);
---------------------------------------------------------------------------------------------------------------
	-- control
	s_irs_rc_alu	<= '0';
	s_irs_rc_mem	<= '0';

---------------------------------------------------------------------------------------------------------------
	-- end program
--	sEND <= '1' when s_o_ir_wb(31 downto 26) = o"77" else iRST;
	sEND 	<= '1' when s_o_ir_wb(31 downto 26) = o"77" else '0';
	sCLK 	<= '1' when sEND = '1' else iCLK;
	oHALT	<= sEND;
	

---------------------------------------------------------------------------------------------------------------
	
end architecture;