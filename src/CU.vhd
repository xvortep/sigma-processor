library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ControlUnit is
	port
	(
		--inputs
		iOpcode	:	in		std_logic_vector(5 downto 0);

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

	--constants
	constant c_NOP		:	std_logic_vector(17 downto 0) := "------" & "-" & "-" & "-" & "0" & "---" & "-" & "-" & "--" & "0";
	constant c_LD		:	std_logic_vector(17 downto 0) := "010000" & "0" & "1" & "1" & "0" & "000" & "-" & "0" & "10" & "-";
	constant c_ST		:	std_logic_vector(17 downto 0) := "010000" & "0" & "1" & "0" & "1" & "000" & "1" & "-" & "--" & "0";
	constant c_JMP		:	std_logic_vector(17 downto 0) := "------" & "-" & "-" & "-" & "0" & "010" & "-" & "0" & "00" & "1";
	constant c_BEQ		:	std_logic_vector(17 downto 0) := "------" & "-" & "-" & "-" & "0" & "001" & "-" & "0" & "00" & "1";
	constant c_BNE		:	std_logic_vector(17 downto 0) := "------" & "-" & "-" & "-" & "0" & "001" & "-" & "0" & "00" & "1";
	constant c_LDR		:	std_logic_vector(17 downto 0) := "101010" & "-" & "-" & "1" & "0" & "000" & "-" & "0" & "10" & "1";
	constant c_ADD		:	std_logic_vector(17 downto 0) := "010000" & "0" & "0" & "-" & "0" & "000" & "0" & "0" & "01" & "1";
	constant c_SUB		:	std_logic_vector(17 downto 0) := "010001" & "0" & "0" & "-" & "0" & "000" & "0" & "0" & "01" & "1";
	constant c_MUL		:	std_logic_vector(17 downto 0) := "------" & "-" & "-" & "-" & "0" & "---" & "-" & "-" & "--" & "-";
	constant c_DIV		:	std_logic_vector(17 downto 0) := "------" & "-" & "-" & "-" & "0" & "---" & "-" & "-" & "--" & "-";
	constant c_CMPEQ	:	std_logic_vector(17 downto 0) := "000011" & "0" & "0" & "-" & "0" & "000" & "0" & "0" & "01" & "1";
	constant c_CMPLT	:	std_logic_vector(17 downto 0) := "000101" & "0" & "0" & "-" & "0" & "000" & "0" & "0" & "01" & "1";
	constant c_CMPLE	:	std_logic_vector(17 downto 0) := "000111" & "0" & "0" & "-" & "0" & "000" & "0" & "0" & "01" & "1";
	constant c_AND		:	std_logic_vector(17 downto 0) := "101000" & "0" & "0" & "-" & "0" & "000" & "0" & "0" & "01" & "1";
	constant c_OR		:	std_logic_vector(17 downto 0) := "101110" & "0" & "0" & "-" & "0" & "000" & "0" & "0" & "01" & "1";
	constant c_XOR		:	std_logic_vector(17 downto 0) := "100110" & "0" & "0" & "-" & "0" & "000" & "0" & "0" & "01" & "1";
	constant c_XNOR	:	std_logic_vector(17 downto 0) := "101001" & "0" & "0" & "-" & "0" & "000" & "0" & "0" & "01" & "1";
	constant c_SHL		:	std_logic_vector(17 downto 0) := "110000" & "0" & "0" & "-" & "0" & "000" & "0" & "0" & "01" & "1";
	constant c_SHR		:	std_logic_vector(17 downto 0) := "110001" & "0" & "0" & "-" & "0" & "000" & "0" & "0" & "01" & "1";
	constant c_SRA		:	std_logic_vector(17 downto 0) := "110011" & "0" & "0" & "-" & "0" & "000" & "0" & "0" & "01" & "1";
	constant c_ADDC	:	std_logic_vector(17 downto 0) := "010000" & "0" & "1" & "-" & "0" & "000" & "0" & "0" & "01" & "1";
	constant c_SUBC	:	std_logic_vector(17 downto 0) := "010001" & "0" & "1" & "-" & "0" & "000" & "0" & "0" & "01" & "1";
	constant c_MULC	:	std_logic_vector(17 downto 0) := "------" & "-" & "-" & "-" & "0" & "---" & "-" & "-" & "--" & "0";
	constant c_DIVC	:	std_logic_vector(17 downto 0) := "------" & "-" & "-" & "-" & "0" & "---" & "-" & "-" & "--" & "-";
	constant c_CMPEQC	:	std_logic_vector(17 downto 0) := "000011" & "0" & "1" & "-" & "0" & "000" & "0" & "0" & "01" & "1";
	constant c_CMPLTC	:	std_logic_vector(17 downto 0) := "000101" & "0" & "1" & "-" & "0" & "000" & "0" & "0" & "01" & "1";
	constant c_CMPLEC	:	std_logic_vector(17 downto 0) := "000111" & "0" & "1" & "-" & "0" & "000" & "0" & "0" & "01" & "1";
	constant c_ANDC	:	std_logic_vector(17 downto 0) := "101000" & "0" & "1" & "-" & "0" & "000" & "0" & "0" & "01" & "1";
	constant c_ORC		:	std_logic_vector(17 downto 0) := "101110" & "0" & "1" & "-" & "0" & "000" & "0" & "0" & "01" & "1";
	constant c_XORC	:	std_logic_vector(17 downto 0) := "100110" & "0" & "1" & "-" & "0" & "000" & "0" & "0" & "01" & "1";
	constant c_XNORC	:	std_logic_vector(17 downto 0) := "101001" & "0" & "1" & "-" & "0" & "000" & "0" & "0" & "01" & "1";
	constant c_SHLC	:	std_logic_vector(17 downto 0) := "110000" & "0" & "1" & "-" & "0" & "000" & "0" & "0" & "01" & "1";
	constant c_SHRC	:	std_logic_vector(17 downto 0) := "110001" & "0" & "1" & "-" & "0" & "000" & "0" & "0" & "01" & "1";
	constant c_SRAC	:	std_logic_vector(17 downto 0) := "110011" & "0" & "1" & "-" & "0" & "000" & "0" & "0" & "01" & "1";

	type t_Table is array(0 to 7, 0 to 7) of std_logic_vector(17 downto 0);

	--signals
	signal sOpTable : t_Table :=
	(
		(c_NOP, c_NOP, c_NOP, c_NOP, c_NOP, c_NOP, c_NOP, c_NOP),
		(c_NOP, c_NOP, c_NOP, c_NOP, c_NOP, c_NOP, c_NOP, c_NOP),
		(c_NOP, c_NOP, c_NOP, c_NOP, c_NOP, c_NOP, c_NOP, c_NOP),
		(c_LD, c_ST, c_NOP, c_JMP, c_BEQ, c_BNE, c_NOP, c_LDR),
		(c_ADD,c_SUB, c_MUL, c_DIV, c_CMPEQ, c_CMPLT, c_CMPLE, c_NOP),
		(c_AND, c_OR, c_XOR, c_XNOR, c_SHL, c_SHR, c_SRA, c_NOP),
		(c_ADDC, c_SUBC, c_MULC, c_DIVC, c_CMPEQC, c_CMPLTC, c_CMPLEC, c_NOP),
		(c_ANDC, c_ORC, c_XORC, c_XNORC, c_SHLC, c_SHRC, c_SRAC, c_NOP)
	);
	
	signal sX : integer := to_integer(unsigned(iOpcode(2 downto 0)));
	signal sY : integer := to_integer(unsigned(iOpcode(5 downto 3)));
	
	begin
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
