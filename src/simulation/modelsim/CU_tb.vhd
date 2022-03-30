library ieee;
use ieee.std_logic_1164.all;

entity CU_tb is
end entity;

architecture Behavioral of CU_tb is

	--inputs
	signal sOpcode		:		std_logic_vector(5 downto 0);
	signal sZ			:		std_logic;
	
	--outputs
	signal sALUFN		:		std_logic_vector(5 downto 0);
	signal sASEL		:		std_logic;
	signal sBSEL		:		std_logic;
	signal sMOE			:		std_logic;
	signal sMWR			:		std_logic;
	signal sPCSEL		:		std_logic_vector(2 downto 0);
	signal sRA2SEL	:		std_logic;
	signal sWASEL		:		std_logic;
	signal sWDSEL		:		std_logic_vector(1 downto 0);
	signal sWERF		:		std_logic;
	
	--clock
	constant iCLK_period	:	time := 10 ns;
	signal	sCLK			:	std_logic;
	
	--component
	component ControlUnit
	port
	(
		--inputs
		iOpcode	:	in		std_logic_vector(5 downto 0);
		iZ			:	in		std_logic;
		
		--outputs
		oALUFN	:	out	std_logic_vector(5 downto 0);
		oASEL		:	out	std_logic;
		oBSEL		:	out	std_logic;
		oMOE		:	out	std_logic;
		oMWR		:	out	std_logic;
		oPCSEL	:	out	std_logic_vector(2 downto 0);
		oRA2SEL	:	out	std_logic;
		oWASEL	:	out	std_logic;
		oWDSEL	:	out	std_logic_vector(1 downto 0);
		oWERF		:	out	std_logic
	);
	end component;
	
	begin
		uut : ControlUnit port map
		(
			--inputs
			iOpcode	=> sOpcode,
			iZ			=>	sZ,

			--outputs
			oALUFN 	=>	sALUFN,
			oASEL 	=>	sASEL,
			oBSEL 	=>	sBSEL,
			oMOE 		=>	sMOE,
			oMWR 		=>	sMWR,
			oPCSEL	=>	sPCSEL,
			oRA2SEL	=>	sRA2SEL,
			oWASEL	=>	sWASEL,
			oWDSEL	=>	sWDSEL,
			oWERF		=>	sWERF
		);
		
		iCLK_process : process
		begin
			sCLK <= '0';
			wait for iCLK_period/2;
			sCLK <= '1';
			wait for iCLK_period/2;
		end process;
	
		stimulus : process
		begin
			sOpcode	<= "100000"; --add
			sZ			<= '0';
			wait for 1 * iCLK_period;
			
			sOpcode	<= "011101"; --bne
			sZ			<= '0';
			wait for 1 * iCLK_period;
			
			sOpcode	<= "100110"; --cmple
			sZ			<= '1';
			wait for 1 * iCLK_period;
			
			sOpcode	<= "011101"; --bne
			sZ			<= '1';
			wait for 1 * iCLK_period;
			
			sOpcode <= "100000"; --add
			sZ			<= '0';
			wait;
		end process;
		
end architecture;