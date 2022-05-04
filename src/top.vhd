library ieee;
use ieee.std_logic_1164.all;

library work;

entity top is
	port(
		iCLK	:	in	std_logic;
		iRST	:	in	std_logic;
	);
end entity;

architecture arch of top is
	-- control unit signals
	signal sOpcode		:	std_logic_vector(5 downto 0);
	signal sZ			:	std_logic;
	signal sALUFNcu	:	std_logic_vector(5 downto 0);
	signal sASEL		:	std_logic;
	signal sBSEL		:	std_logic;
	signal sMOE			:	std_logic;
	signal sMWR			:	std_logic;
	signal sPCSEL		:	std_logic_vector(2 downto 0);
	signal sRA2SEL		:	std_logic;
	signal sWASEL		:	std_logic;
	signal sWDSEL		:	std_logic_vector(1 downto 0);
	signal sWERF		:	std_logic;
	-- program memory signals
	signal sApm			:	std_logic_vector(7 downto 0);
	signal sQpm			: std_logic_vector(31 downto 0)
	-- data ram signals 
   signal sCLKdr	:  in  std_logic;
   signal sRSTdr 	:  in  std_logic;
   signal sAdr 	:  in  std_logic_vector (7 downto 0); 
   signal sWDdr  	:  in  std_logic_vector (31 downto 0);
   signal sWEdr  	:  in  std_logic;
   signal sOEdr  	:  in  std_logic;
   signal sRDdr  	:  out  std_logic_vector (31 downto 0));
	-- program counter signals
	signal sPC_SEL		:	std_logic_vector(3 downto 0);
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
	signal sRSTrf			:	std_logic;
	signal sRD1			:	std_logic_vector(31 downto 0);
	signal sRD2			:	std_logic_vector(31 downto 0)
	-- al unit signals
	signal sA			:	std_logic_vector(31 downto 0);
	signal sB			:	std_logic_vector(31 downto 0);
	signal sALUFNal	:	std_logic_vector(5 downto 0);
	signal sOutput		:	std_logic_vector(31 downto 0)

begin
---------------------------------------------------------------------------------------------------------------
	-- control unit
	cu_i	:	entity work.ControlUnit
	port map(
		iOpcode	=>	sOpcode,
		iZ			=> sZ,
		oALUFN	=> sALUFNcu,
		oASEL		=> sASEL,
		oBSEL		=> sBSEL,
		oMOE		=> sMOE,
		oMWR		=> sMWR,
		oPCSEL	=>	sPCSEL,
		oRA2SEL	=>	sRA2SEL,
		oWASEL	=> sWASEL,
		oWDSEL	=> sWDSEL,
		oWERF		=> sWERF
	);
	-- logic -in
	with sRD1 select sZ <=
		'1' when x"00000000",
		'0' when others;
	sOpcode 	<= sQpm;
---------------------------------------------------------------------------------------------------------------
	-- program memory
	prog_i	:	entity work.instr_rom
   Port map( 
		iA 		=> sApm,
      oQ 		=> sQpm
	);
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
	-- logic -in
	sCLKdr 	<= iCLK;
	sRSTdr 	<= iRST;
	sAdr 		<= sOutput;
	sWDdr		<= sRD2;
	sWEdr		<= sMWR;
	sOEdr		<= sMOE;
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
	-- logic -in
	sPC_SEL 	<= sPCSEL;										-- take calculated pcsel from cu to pc mux
	sCLKpc 	<= iCLK;
	sRSTpc	<=	iRST;
	sJT		<= sRD1;
	sSXT		<= x"00000000"									-- sxt not used!!!
---------------------------------------------------------------------------------------------------------------	
	-- register file
	regf_i	:	entity work.reg_file
	port map(
		iRA1	=>	sRA1,
		iRA2	=>	sRA2,
		iWA	=>	sWA,
		iWD	=>	sWD,
		iWE	=>	sWE,
		iCLK	=>	sCLK,
		iRST	=>	sRST,
		oRD1	=>	sRD1,
		oRD2	=>	sRD2
	);
	-- logic -in
	sCLKrf	<= iCLK;
	sRSTrf	<=	iRST;
	sWE 		<= sWERF;
	sRA1 		<= sOpcode(20 downto 16);		 			-- sRA1
	with sRA2SEL select sRA2 <=							-- sRA2
		sOpcode(25 downto 21)	when '1',
		sOpcode(15 downto 11)	when others;
	with sWASEL select sWA <=								-- sWA
		(0x"1e")						when 	'1',				-- hardcoded reg30 exception
		sOpcode(25 downto 21)	when others;
	with sWDSEL select sWD <=								-- wdsel
		(sPC + 4)					when	'00',
		sOutput						when	'01',
---------------------------------------------------------------------------------------------------------------		
	-- al unit
	alu_i	:	entity work.ALU
	port map(
		iA				=> sA,
		iB				=> sB,
		iALUFN		=> sALUFNal,
		oOutput		=>	sOutput
	);
	sA 		<= sRD1;
	-- treba primiti u sB registar ili literal pomocu bsel iz cu
	with sBSEL select sB <=
		x"0000" & sOpcode(15 downto 0) 	when '1',
		sRD2										when others;
	sALUFNal <= sALUFNcu;
---------------------------------------------------------------------------------------------------------------
		

end architecture;