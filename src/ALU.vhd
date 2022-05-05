library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity ALU is
	port
	(
		--inputs
		iA			:	in		std_logic_vector(31 downto 0);
		iB			:	in		std_logic_vector(31 downto 0);
		iALUFN	:	in		std_logic_vector(5 downto 0);
		
		--outputs
		oOutput	:	out	std_logic_vector(31 downto 0)
	);
end entity;

architecture Behavioral of ALU is
	
	--signals
	signal sA		:	std_logic_vector(31 downto 0);
	signal sB		:	std_logic_vector(31 downto 0);
	signal sOutput	:	std_logic_vector(31 downto 0);
	signal sALUFN	:	std_logic_vector(5 downto 0);
	
	signal sCMPEQ	:	std_logic_vector(31 downto 0);
	signal sCMPLT	:	std_logic_vector(31 downto 0);
	signal sCMPLE	:	std_logic_vector(31 downto 0);
	
	signal sSHL		:	std_logic_vector(31 downto 0);
	signal sSHR		:	std_logic_vector(31 downto 0);
	signal sSRA		:	std_logic_vector(31 downto 0);
	--shift left signals
	signal sSHL_s0	:	std_logic_vector(31 downto 0);
	signal sSHL_s1	:	std_logic_vector(31 downto 0);
	signal sSHL_s2	:	std_logic_vector(31 downto 0);
	signal sSHL_s3	:	std_logic_vector(31 downto 0);
	signal sSHL_s4	:	std_logic_vector(31 downto 0);
	signal sSHL_s5	:	std_logic_vector(31 downto 0);
	--shift right logical signals
	signal sSHR_s0	:	std_logic_vector(31 downto 0);
	signal sSHR_s1	:	std_logic_vector(31 downto 0);
	signal sSHR_s2	:	std_logic_vector(31 downto 0);
	signal sSHR_s3	:	std_logic_vector(31 downto 0);
	signal sSHR_s4	:	std_logic_vector(31 downto 0);
	signal sSHR_s5	:	std_logic_vector(31 downto 0);
	--shift right arithmetic signals
	signal sSRA_s0	:	std_logic_vector(31 downto 0);
	signal sSRA_s1	:	std_logic_vector(31 downto 0);
	signal sSRA_s2	:	std_logic_vector(31 downto 0);
	signal sSRA_s3	:	std_logic_vector(31 downto 0);
	signal sSRA_s4	:	std_logic_vector(31 downto 0);
	signal sSRA_s5	:	std_logic_vector(31 downto 0);
	--sign covered signals
	signal sS1		:	std_logic;
	signal sS2		: 	std_logic_vector(1 downto 0);
	signal sS4		: 	std_logic_vector(3 downto 0);
	signal sS8		: 	std_logic_vector(7 downto 0);
	signal sS16		: 	std_logic_vector(15 downto 0);

	
	begin
		--initialize
		sA <= iA;
		sB <= iB;
	
		--compare
		sCMPEQ	<=	x"00000001" when (sA = sB) else x"00000000";
		sCMPLT	<=	x"00000001" when (sA < sB) else x"00000000";
		sCMPLE	<=	x"00000001" when (sA <= sB) else x"00000000";
--------------------------------------------------------------------------------------------
		--shift left
		sSHL_s0 <= iA;													--original signal
		with iB(0) select sSHL_s1 <=								--1bit shift
			(sSHL_s0(30 downto 0) & '0') 		when '1',
			(sSHL_s0)								when others;
		with iB(1) select sSHL_s2 <=								--2bit shift
			(sSHL_s1(29 downto 0) & "00")		when '1',
			(sSHL_s1)								when others;
		with iB(2) select sSHL_s3 <=
			(sSHL_s2(27 downto 0) & x"0")		when '1',		--4bit shift
			(sSHL_s2)								when others;
		with iB(3) select sSHL_s4 <=								--8bit shift
			(sSHL_s3(23 downto 0) & x"00")	when '1',
			(sSHL_s3)								when others;
		with iB(4) select sSHL_s5 <=								--16bit shift
			(sSHL_s4(15 downto 0) & x"0000")	when '1',
			(sSHL_s4)								when others;
		sSHL <= sSHL_s5;
--------------------------------------------------------------------------------------------	
		--shift right logical
		sSHR_s0 <= iA;
		with iB(0) select sSHR_s1 <=								--1  bit shift
			("0" & sSHR_s0(31 downto 1))			when '1',
			(sSHR_s0)									when others;
		with iB(1) select sSHR_s2 <=								--2  bit shift
			("00" & sSHR_s1(31 downto 2))			when '1',
			(sSHR_s1)									when others;
		with iB(2) select sSHR_s3 <=								--4  bit shift
			(x"0" & sSHR_s2(31 downto 4))			when '1',
			(sSHR_s2)									when others;
		with iB(3) select sSHR_s4 <=								--8  bit shift
			(x"00" & sSHR_s3(31 downto 8))		when '1',
			(sSHR_s3)									when others;
		with iB(4) select sSHR_s5 <=								--16 bit shift
			(x"0000" & sSHR_s4(31 downto 16))	when '1',
			(sSHR_s4)									when others;
		sSHR <= sSHR_s5;
--------------------------------------------------------------------------------------------	
		--shift right arithmetic
		sSRA_s0 	<= iA;												--original signal
		sS1 		<= iA(31);											--sign bit
		sS2 		<= "11" when sS1 = '1' else "00";			--sign extended (2  bits)
		sS4 		<= x"f" when sS1 = '1' else x"f";			--sign extended (4  bits)
		sS8 		<= x"ff" when sS1 = '1' else x"ff";			--sign extended (8  bits)
		sS16 		<= x"ffff" when sS1 = '1' else x"ffff";	--sign extended (16 bits)
		with iB(0) select sSRA_s1 <= 								--1  bit shift	
			(sS1 & sSRA_s0(31 downto 1))		when '1',
			(sSRA_s0)								when others;
		with iB(1) select sSRA_s2 <=								--2  bit shift
			(sS2 & sSRA_s1(31 downto 2))		when '1',
			(sSRA_s1)								when others;
		with iB(2) select sSRA_s3 <=								--4  bit shift
			(sS4 & sSRA_s2(31 downto 4))		when '1',
			(sSRA_s2)								when others;
		with iB(3) select sSRA_s4 <=								--8  bit shift
			(sS8 & sSRA_s3(31 downto 8))		when '1',
			(sSRA_s3)								when others;
		with iB(4) select sSRA_s5 <=								--16 bit shift
			(sS16 & sSRA_s4(31 downto 16))	when '1',
			(sSRA_s4) 								when others;
		sSRA <= sSRA_s5;
--------------------------------------------------------------------------------------------			
		sALUFN <= iALUFN;
		--calculation
		with sALUFN select sOutput <=
			(sCMPEQ)			when "000011",
			(sCMPLT)			when "000101",
			(sCMPLE)			when "000111",
			(sA + sB)		when "010000",
			(sA - sB)		when "010001",
			(sA and sB)		when "101000",
			(sA or sB)		when "101110",
			(sA xor sB)		when "100110",
			(sA xnor sB)	when "101001",
			(sA)				when "101010",
			(sSHL)			when "110000",
			(sSHR)			when "110001",
			(sSRA)			when "110011",
			(x"babadeda")	when others;
			
		oOutput <= sOutput;

end architecture;