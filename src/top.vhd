library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

library work;

entity top is
	port(
		iCLK	:	in		std_logic;
		iRST	:	in		std_logic;
		
		oZ		:	out	std_logic_vector(31 downto 0);
		oIns	:	out	std_logic_vector(5 downto 0)
	);
end entity;

architecture arch of top is
--	-- control unit signals
--	signal sOpcode		:	std_logic_vector(5 downto 0);
--	signal sZ			:	std_logic;
--	signal sALUFNcu	:	std_logic_vector(5 downto 0);
--	signal sASEL		:	std_logic;
--	signal sBSEL		:	std_logic;
--	signal sMOE			:	std_logic;
--	signal sMWR			:	std_logic;
--	signal sPCSEL		:	std_logic_vector(2 downto 0);
--	signal sRA2SEL		:	std_logic;
--	signal sWASEL		:	std_logic;
--	signal sWDSEL		:	std_logic_vector(1 downto 0);
--	signal sWERF		:	std_logic;


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
	-- control unit - ALU signals 
	signal sOpcode_ALU	:	std_logic_vector(5 downto 0);
	signal sALUFN_ALU		:	std_logic_vector(5 downto 0);
	signal sASEL_ALU		:	std_logic;
	signal sBSEL_ALU		:	std_logic;
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

begin
---------------------------------------------------------------------------------------------------------------
--	-- control unit
--	cu_i	:	entity work.ControlUnit
--	port map(
--		iOpcode	=>	sOpcode,
--		iZ			=> sZ,
--		oALUFN	=> sALUFNcu,
--		oASEL		=> sASEL,
--		oBSEL		=> sBSEL,
--		oMOE		=> sMOE,
--		oMWR		=> sMWR,
--		oPCSEL	=>	sPCSEL,
--		oRA2SEL	=>	sRA2SEL,
--		oWASEL	=> sWASEL,
--		oWDSEL	=> sWDSEL,
--		oWERF		=> sWERF
--	);
--	-- logic -in:
--	with sRD1 select sZ <=
--		'1' when x"00000000",
--		'0' when others;
--	sOpcode 	<= sQpm(31 downto 26);

---------------------------------------------------------------------------------------------------------------
-- control unit - IF
	cu_if		:	entity work.ControlUnit_IF
	Port map(
		iOpcode	=> sOpcode_IF,
		iZ			=> '0',
		oPCSEL	=> sPCSEL_IF
	);
	-- logic -in:
	sOpcode_IF <= sQpm(31 downto 26);
	
	
---------------------------------------------------------------------------------------------------------------
-- control unit - RF
	cu_rf		:	entity work.ControlUnit_RF
	Port map(
		iOpcode	=> sOpcode_RF,
		iZ			=> sZ_RF,
		oRA2SEL	=> sRA2SEL_RF,
		oWASEL	=> sWASEL_RF
	);
	-- logic -in:
	sOpcode_RF <= s_o_ir_rf(31 downto 26);
	-- TODO: resi multiplekser iz RD1 za sZ_IF -- valjda ide ovako
	sZ_RF <= '0';										 -- unused
	
	
---------------------------------------------------------------------------------------------------------------
-- control unit - ALU
	cu_alu	:	entity work.ControlUnit_ALU 
	Port map(
		iOpcode	=>	sOpcode_ALU,
		iZ			=> '0',
		oALUFN	=>	sALUFN_ALU,
		oASEL		=> sASEL_ALU,
		oBSEL		=>	sBSEL_ALU
	);
	-- logic -in:
	sOpcode_ALU <= s_o_ir_alu(31 downto 26);
	
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
	sOpcode_MEM <= s_o_ir_mem(31 downto 26);
	
---------------------------------------------------------------------------------------------------------------
-- control unit - WB
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
		o_d_mem	=> s_o_d_mem	
	);
	-- logic -in:
	sCLKpr <= iCLK;
	sRSTpr <= iRST;
	s_i_pc_rf	<= sPC;
	s_i_pc_alu	<= s_o_pc_rf;
	s_i_pc_mem	<= s_o_pc_alu;
	s_i_pc_wb	<= s_o_pc_mem;
	s_i_ir_rf	<= sQpm 			when s_irs_rc_if 	= '0' else x"00000000";		-- regular instruction or NOP for pipeline "halt"
	s_i_ir_alu	<= s_o_ir_rf 	when s_irs_rc_rf 	= '0' else x"00000000";		-- same
	s_i_ir_mem	<= s_o_ir_alu 	when s_irs_rc_alu	= '0' else x"00000000";		-- same
	s_i_ir_wb	<= s_o_ir_mem	when s_irs_rc_mem = '0' else x"00000000";  	-- same
	s_i_a_alu	<= s_a_bypass;
	s_i_b_alu	<= s_b_bypass	when sBSEL_ALU = '0'			else sEX;
	s_i_y_mem	<= sOutput;
	s_i_y_wb		<= s_o_y_mem;
	s_i_d_alu	<= s_b_bypass;
	s_i_d_mem	<= s_o_d_alu;
	
---------------------------------------------------------------------------------------------------------------
	-- program memory
	prog_i	:	entity work.instr_rom
   Port map( 
		iA 		=> sApm,
      oQ 		=> sQpm
	);
	-- logic -in:
	sApm 			<= sPC(7 downto 0);				-- potential bug???
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
	sCLKdr 	<= iCLK;
	sRSTdr 	<= iRST;
--	sAdr 		<= sOutput(7 downto 0);
	sAdr 		<= s_o_y_mem(7 downto 0);
--	sWDdr		<= sRD2;
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
		oPC			=>	sPC
	);
	-- logic -in:
	sPC_SEL 	<= sPCSEL_IF;											-- take calculated pcsel from cu to pc mux
	sCLKpc 	<= iCLK;
	sRSTpc	<=	iRST;
	sJT		<= sRD1;
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
	sCLKrf	<= iCLK;
	sRSTrf	<=	iRST;
	sWE 		<= sWERF_WB;
--	sRA1 		<= sQpm(20 downto 16);		 				-- sRA1
	sRA1 		<= s_o_ir_rf(20 downto 16);
--	with sRA2SEL select sRA2 <=							-- sRA2
--		sQpm(25 downto 21)	when '1',
--		sQpm(15 downto 11)	when others;
	with sRA2SEL_RF select sRA2 <=
		s_o_ir_rf(25 downto 21) when '1',
		s_o_ir_rf(15 downto 11) when others;
--	with sWASEL select sWA <=								-- sWA
--		("11110")						when 	'1',			-- hardcoded reg30 exception
--		sQpm(25 downto 21)	when others;
	with sWASEL_RF select sWA <=
		("11110") 					when '1',
		s_o_ir_rf(25 downto 21)	when others;
--	with sWDSEL select sWD <=								-- wdsel
--		(sPC + 4)					when	"00",
--		sOutput						when	"01",
--		sRDdr							when others;
	with sWDSEL_WB select sWD <=
		-- TODO: da li treba ovako - valjda da
		(s_o_pc_wb + 4)			when "00",
		s_o_y_wb					when "01",
		sRDdr						when others;
---------------------------------------------------------------------------------------------------------------		
	-- al unit
	alu_i	:	entity work.ALU
	port map(
		iA				=> sA,
		iB				=> sB,
		iALUFN		=> sALUFNal,
		oOutput		=>	sOutput
	);
--	sA 		<= sRD1;
	sA 		<= s_o_a_alu;
	-- treba primiti u sB registar ili literal pomocu bsel iz cu
-- TODO: sta je ovo uopste i odakle ovo ovde? - aha, sign extension
--	with sQpm(15) select sEX <=
--		x"0000" & sQpm(15 downto 0)	when '0',
--		x"FFFF" & sQpm(15 downto 0)	when others;
	with s_o_ir_rf(15) select sEX <=							-- sign extension of constant 
		x"0000" & s_o_ir_rf(15 downto 0) when '0',
		x"FFFF" & s_o_ir_rf(15 downto 0) when others;

-- TODO: овај мукс преместити у стејџ изнад
--	with sBSEL select sB <=
--		sEX								 	when '1',
--		sRD2									when others;
	sB <= s_o_b_alu;
	
	sALUFNal <= sALUFN_ALU;
---------------------------------------------------------------------------------------------------------------
--	oZ <= sOutput;
--	oIns <= sQpm(31 downto 26);
	oZ 	<= s_o_y_wb;
	oIns 	<= s_o_ir_wb(31 downto 26);
---------------------------------------------------------------------------------------------------------------
	-- bypass muxes TODO
	with s_a_ctrl select s_a_bypass <=
		sRD1 			when "000",
		x"babaceca" when others;
	with s_b_ctrl select s_b_bypass <=
		sRD2			when "000",
		x"babaceca" when others;
	
end architecture;