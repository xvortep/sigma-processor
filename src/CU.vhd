library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity ControlUnit is
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
end entity;

architecture Behavioral of ControlUnit is

	--output signals
	signal sNOP		:	std_logic_vector(17 downto 0) := "------" & "-" & "-" & "-" & "0" & "---" & "-" & "-" & "--" & "0";
	signal sLD		:	std_logic_vector(17 downto 0) := "010000" & "0" & "1" & "1" & "0" & "000" & "-" & "0" & "10" & "-";
	signal sST		:	std_logic_vector(17 downto 0) := "010000" & "0" & "1" & "0" & "1" & "000" & "1" & "-" & "--" & "0";
	signal sJMP		:	std_logic_vector(17 downto 0) := "------" & "-" & "-" & "-" & "0" & "010" & "-" & "0" & "00" & "1";
	signal sBEQ		:	std_logic_vector(17 downto 0) := "------" & "-" & "-" & "-" & "0" & "00-" & "-" & "0" & "00" & "1";
	signal sBNE		:	std_logic_vector(17 downto 0) := "------" & "-" & "-" & "-" & "0" & "00-" & "-" & "0" & "00" & "1";
	signal sLDR		:	std_logic_vector(17 downto 0) := "101010" & "-" & "-" & "1" & "0" & "000" & "-" & "0" & "10" & "1";
	signal sADD		:	std_logic_vector(17 downto 0) := "010000" & "0" & "0" & "-" & "0" & "000" & "0" & "0" & "01" & "1";
	signal sSUB		:	std_logic_vector(17 downto 0) := "010001" & "0" & "0" & "-" & "0" & "000" & "0" & "0" & "01" & "1";
	signal sMUL		:	std_logic_vector(17 downto 0) := "------" & "-" & "-" & "-" & "0" & "---" & "-" & "-" & "--" & "-";
	signal sDIV		:	std_logic_vector(17 downto 0) := "------" & "-" & "-" & "-" & "0" & "---" & "-" & "-" & "--" & "-";
	signal sCMPEQ	:	std_logic_vector(17 downto 0) := "000011" & "0" & "0" & "-" & "0" & "000" & "0" & "0" & "01" & "1";
	signal sCMPLT	:	std_logic_vector(17 downto 0) := "000101" & "0" & "0" & "-" & "0" & "000" & "0" & "0" & "01" & "1";
	signal sCMPLE	:	std_logic_vector(17 downto 0) := "000111" & "0" & "0" & "-" & "0" & "000" & "0" & "0" & "01" & "1";
	signal sAND		:	std_logic_vector(17 downto 0) := "101000" & "0" & "0" & "-" & "0" & "000" & "0" & "0" & "01" & "1";
	signal sOR		:	std_logic_vector(17 downto 0) := "101110" & "0" & "0" & "-" & "0" & "000" & "0" & "0" & "01" & "1";
	signal sXOR		:	std_logic_vector(17 downto 0) := "100110" & "0" & "0" & "-" & "0" & "000" & "0" & "0" & "01" & "1";
	signal sXNOR	:	std_logic_vector(17 downto 0) := "101001" & "0" & "0" & "-" & "0" & "000" & "0" & "0" & "01" & "1";
	signal sSHL		:	std_logic_vector(17 downto 0) := "110000" & "0" & "0" & "-" & "0" & "000" & "0" & "0" & "01" & "1";
	signal sSHR		:	std_logic_vector(17 downto 0) := "110001" & "0" & "0" & "-" & "0" & "000" & "0" & "0" & "01" & "1";
	signal sSRA		:	std_logic_vector(17 downto 0) := "110011" & "0" & "0" & "-" & "0" & "000" & "0" & "0" & "01" & "1";
	signal sADDC	:	std_logic_vector(17 downto 0) := "010000" & "0" & "1" & "-" & "0" & "000" & "0" & "0" & "01" & "1";
	signal sSUBC	:	std_logic_vector(17 downto 0) := "010001" & "0" & "1" & "-" & "0" & "000" & "0" & "0" & "01" & "1";
	signal sMULC	:	std_logic_vector(17 downto 0) := "------" & "-" & "-" & "-" & "0" & "---" & "-" & "-" & "--" & "0";
	signal sDIVC	:	std_logic_vector(17 downto 0) := "------" & "-" & "-" & "-" & "0" & "---" & "-" & "-" & "--" & "-";
	signal sCMPEQC	:	std_logic_vector(17 downto 0) := "000011" & "0" & "1" & "-" & "0" & "000" & "0" & "0" & "01" & "1";
	signal sCMPLTC	:	std_logic_vector(17 downto 0) := "000101" & "0" & "1" & "-" & "0" & "000" & "0" & "0" & "01" & "1";
	signal sCMPLEC	:	std_logic_vector(17 downto 0) := "000111" & "0" & "1" & "-" & "0" & "000" & "0" & "0" & "01" & "1";
	signal sANDC	:	std_logic_vector(17 downto 0) := "101000" & "0" & "1" & "-" & "0" & "000" & "0" & "0" & "01" & "1";
	signal sORC		:	std_logic_vector(17 downto 0) := "101110" & "0" & "1" & "-" & "0" & "000" & "0" & "0" & "01" & "1";
	signal sXORC	:	std_logic_vector(17 downto 0) := "100110" & "0" & "1" & "-" & "0" & "000" & "0" & "0" & "01" & "1";
	signal sXNORC	:	std_logic_vector(17 downto 0) := "101001" & "0" & "1" & "-" & "0" & "000" & "0" & "0" & "01" & "1";
	signal sSHLC	:	std_logic_vector(17 downto 0) := "110000" & "0" & "1" & "-" & "0" & "000" & "0" & "0" & "01" & "1";
	signal sSHRC	:	std_logic_vector(17 downto 0) := "110001" & "0" & "1" & "-" & "0" & "000" & "0" & "0" & "01" & "1";
	signal sSRAC	:	std_logic_vector(17 downto 0) := "110011" & "0" & "1" & "-" & "0" & "000" & "0" & "0" & "01" & "1";
	
	type t_Table is array(0 to 7, 0 to 7) of std_logic_vector(17 downto 0);

	--signals
	signal sOpTable : t_Table :=
	(
		(sNOP, sNOP, sNOP, sNOP, sNOP, sNOP, sNOP, sNOP),
		(sNOP, sNOP, sNOP, sNOP, sNOP, sNOP, sNOP, sNOP),
		(sNOP, sNOP, sNOP, sNOP, sNOP, sNOP, sNOP, sNOP),
		(sLD, sST, sNOP, sJMP, sBEQ, sBNE, sNOP, sLDR),
		(sADD,sSUB, sMUL, sDIV, sCMPEQ, sCMPLT, sCMPLE, sNOP),
		(sAND, sOR, sXOR, sXNOR, sSHL, sSHR, sSRA, sNOP),
		(sADDC, sSUBC, sMULC, sDIVC, sCMPEQC, sCMPLTC, sCMPLEC, sNOP),
		(sANDC, sORC, sXORC, sXNORC, sSHLC, sSHRC, sSRAC, sNOP)
	);
	
	--coordinates
	signal sX : integer range 0 to 7;
	signal sY : integer range 0 to 7;
	
	begin
		--set zero
		with iZ select sBEQ <=
		sBEQ(17 downto 6) & '0' & sBEQ(4 downto 0) when '0',
		sBEQ(17 downto 6) & '1' & sBEQ(4 downto 0) when others;
		
		with iZ select sBNE <=
		sBNE(17 downto 6) & '1' & sBNE(4 downto 0) when '0',
		sBNE(17 downto 6) & '0' & sBNE(4 downto 0) when others;
	
		--get coordinates
		with iOpcode(5 downto 3) select sX <=
		0	when o"0",
		1	when o"1",
		2	when o"2",
		3	when o"3",
		4	when o"4",
		5	when o"5",
		6	when o"6",
		7	when others;
		
		with iOpcode(2 downto 0) select sY <=
		0	when o"0",
		1	when o"1",
		2	when o"2",
		3	when o"3",
		4	when o"4",
		5	when o"5",
		6	when o"6",
		7	when others;
	
		oALUFN	<= sOpTable(sX, sY)(17 downto 12);
		oASEL		<= sOpTable(sX, sY)(11);
		oBSEL		<= sOpTable(sX, sY)(10);
		oMOE		<= sOpTable(sX, sY)(9);
		oMWR		<= sOpTable(sX, sY)(8);
		oPCSEL	<= sOpTable(sX, sY)(7 downto 5);
		oRA2SEL	<= sOpTable(sX, sY)(4);
		oWASEL	<= sOpTable(sX, sY)(3);
		oWDSEL	<= sOpTable(sX, sY)(2 downto 1);
		oWERF		<= sOpTable(sX, sY)(0);

end architecture;
