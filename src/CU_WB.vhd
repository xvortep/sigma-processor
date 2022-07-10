library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity ControlUnit_WB is
	port
	(
		--inputs
		iOpcode	:	in		std_logic_vector(5 downto 0);
		iZ			:	in		std_logic;
		
		--outputs
		oWDSEL	:	out	std_logic_vector(1 downto 0);
		oWERF		:	out	std_logic
	);
end entity;

architecture Behavioral of ControlUnit_WB is

	--output signals
	constant c_NOP		:	integer := 0;
	constant c_LD		:	integer := 1;
	constant c_ST		:	integer := 2;
	constant c_JMP		:	integer := 3;
	constant c_BEQ		:	integer := 4;
	constant c_BNE		:	integer := 5;
	constant c_LDR		:	integer := 6;
	constant c_ADD		:	integer := 7;
	constant c_SUB		:	integer := 8;
	constant c_MUL		:	integer := 9;
	constant c_DIV		:	integer := 10;
	constant c_CMPEQ	:	integer := 11;
	constant c_CMPLT	:	integer := 12;
	constant c_CMPLE	:	integer := 13;
	constant c_AND		:	integer := 14;
	constant c_OR		:	integer := 15;
	constant c_XOR		:	integer := 16;
	constant c_XNOR	:	integer := 17;
	constant c_SHL		:	integer := 18;
	constant c_SHR		:	integer := 19;
	constant c_SRA		:	integer := 20;
	constant c_ADDC	:	integer := 21;
	constant c_SUBC	:	integer := 22;
	constant c_MULC	:	integer := 23;
	constant c_DIVC	:	integer := 24;
	constant c_CMPEQC	:	integer := 25;
	constant c_CMPLTC	:	integer := 26;
	constant c_CMPLEC	:	integer := 27;
	constant c_ANDC	:	integer := 28;
	constant c_ORC		:	integer := 29;
	constant c_XORC	:	integer := 30;
	constant c_XNORC	:	integer := 31;
	constant c_SHLC	:	integer := 32;
	constant c_SHRC	:	integer := 33;
	constant c_SRAC	:	integer := 34;
	
	type t_Table is array(0 to 7, 0 to 7) of integer;

	--signals
	signal sOpTable : t_Table :=
	(
		(c_NOP, c_NOP, c_NOP, c_NOP, c_NOP, c_NOP, c_NOP, c_NOP),
		(c_NOP, c_NOP, c_NOP, c_NOP, c_NOP, c_NOP, c_NOP, c_NOP),
		(c_NOP, c_NOP, c_NOP, c_NOP, c_NOP, c_NOP, c_NOP, c_NOP),
		(c_LD, c_ST, c_NOP, c_JMP, c_BEQ, c_BNE, c_NOP, c_LDR),
		(c_ADD, c_SUB, c_MUL, c_DIV, c_CMPEQ, c_CMPLT, c_CMPLE, c_NOP),
		(c_AND, c_OR, c_XOR, c_XNOR, c_SHL, c_SHR, c_SRA, c_NOP),
		(c_ADDC, c_SUBC, c_MULC, c_DIVC, c_CMPEQC, c_CMPLTC, c_CMPLEC, c_NOP),
		(c_ANDC, c_ORC, c_XORC, c_XNORC, c_SHLC, c_SHRC, c_SRAC, c_NOP)
	);
	
	signal sCodeWord	:	std_logic_vector(17 downto 0);
	
	--coordinates
	signal sX : integer range 0 to 7;
	signal sY : integer range 0 to 7;
	
	begin
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
		
		--get codeword
		with sOpTable(sX, sY) select sCodeWord <=
		"010000" & "0" & "1" & "1" & "0" & "000" & "-" & "0" & "10" & "-" 			when 1,			-- LD
		"010000" & "0" & "1" & "0" & "1" & "000" & "1" & "-" & "00" & "0" 			when 2, 			-- ST
		"------" & "-" & "-" & "0" & "0" & "010" & "-" & "0" & "00" & "1" 			when 3, 			-- JMP
		"------" & "-" & "-" & "0" & "0" & "00" & iZ & "-" & "0" & "00" & "1" 		when 4, 			-- BEQ
		"------" & "-" & "-" & "0" & "0" & "00" & not(iZ) & "-" & "0" & "00" & "1"	when 5, 			-- BNE
		"101010" & "-" & "-" & "1" & "0" & "000" & "-" & "0" & "10" & "1" 			when 6, 			-- LDR
		"010000" & "0" & "0" & "0" & "0" & "000" & "0" & "0" & "01" & "1" 			when 7, 			-- ADD
		"010001" & "0" & "0" & "0" & "0" & "000" & "0" & "0" & "01" & "1" 			when 8, 			-- SUB
		"------" & "-" & "-" & "0" & "0" & "---" & "-" & "-" & "--" & "-" 			when 9, 			-- MUL
		"------" & "-" & "-" & "0" & "0" & "---" & "-" & "-" & "--" & "-" 			when 10,			-- DIV
		"000011" & "0" & "0" & "0" & "0" & "000" & "0" & "0" & "01" & "1" 			when 11,			-- CMPEQ
		"000101" & "0" & "0" & "0" & "0" & "000" & "0" & "0" & "01" & "1" 			when 12,			-- CMPLT
		"000111" & "0" & "0" & "0" & "0" & "000" & "0" & "0" & "01" & "1" 			when 13,			-- CMPLE
		"101000" & "0" & "0" & "0" & "0" & "000" & "0" & "0" & "01" & "1" 			when 14,			-- AND
		"101110" & "0" & "0" & "0" & "0" & "000" & "0" & "0" & "01" & "1" 			when 15,			-- OR
		"100110" & "0" & "0" & "0" & "0" & "000" & "0" & "0" & "01" & "1" 			when 16,			-- XOR
		"101001" & "0" & "0" & "0" & "0" & "000" & "0" & "0" & "01" & "1" 			when 17,			-- XNOR
		"110000" & "0" & "0" & "0" & "0" & "000" & "0" & "0" & "01" & "1" 			when 18,			-- SHL
		"110001" & "0" & "0" & "0" & "0" & "000" & "0" & "0" & "01" & "1" 			when 19,			-- SHR
		"110011" & "0" & "0" & "0" & "0" & "000" & "0" & "0" & "01" & "1" 			when 20,			-- SRA
		"010000" & "0" & "1" & "0" & "0" & "000" & "0" & "0" & "01" & "1" 			when 21,			-- ADDC
		"010001" & "0" & "1" & "0" & "0" & "000" & "0" & "0" & "01" & "1" 			when 22,			-- SUBC
		"------" & "-" & "-" & "0" & "0" & "---" & "-" & "-" & "--" & "0" 			when 23,			-- MULC
		"------" & "-" & "-" & "0" & "0" & "---" & "-" & "-" & "--" & "-" 			when 24,			-- DIVC
		"000011" & "0" & "1" & "0" & "0" & "000" & "0" & "0" & "01" & "1" 			when 25,			-- CMPEQC
		"000101" & "0" & "1" & "0" & "0" & "000" & "0" & "0" & "01" & "1" 			when 26,			-- CMPLTC
		"000111" & "0" & "1" & "0" & "0" & "000" & "0" & "0" & "01" & "1" 			when 27,			-- CMPLEC
		"101000" & "0" & "1" & "0" & "0" & "000" & "0" & "0" & "01" & "1" 			when 28,			-- ANDC
		"101110" & "0" & "1" & "0" & "0" & "000" & "0" & "0" & "01" & "1" 			when 29,			-- ORC
		"100110" & "0" & "1" & "0" & "0" & "000" & "0" & "0" & "01" & "1" 			when 30,			-- XORC
		"101001" & "0" & "1" & "0" & "0" & "000" & "0" & "0" & "01" & "1" 			when 31,			-- XNORC
		"110000" & "0" & "1" & "0" & "0" & "000" & "0" & "0" & "01" & "1" 			when 32,			-- SHLC
		"110001" & "0" & "1" & "0" & "0" & "000" & "0" & "0" & "01" & "1" 			when 33,			-- SHRC
		"110011" & "0" & "1" & "0" & "0" & "000" & "0" & "0" & "01" & "1" 			when 34,			-- SRAC
		"------" & "-" & "-" & "0" & "0" & "---" & "-" & "-" & "--" & "0" 			when others;	-- NOP

		oWDSEL	<= sCodeWord(2 downto 1);
		oWERF		<= sCodeWord(0);

end architecture;
