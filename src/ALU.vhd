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
	signal sA	:	std_logic_vector(31 downto 0) := iA;
	signal sB	:	std_logic_vector(31 downto 0) := iB;
	
	signal sCMPEQ	:	std_logic_vector(31 downto 0);
	signal sCMPLT	:	std_logic_vector(31 downto 0);
	signal sCMPLE	:	std_logic_vector(31 downto 0);
	
	signal sSHL		:	std_logic_vector(31 downto 0);
	signal sSHR		:	std_logic_vector(31 downto 0);
	signal sSHA		:	std_logic_vector(31 downto 0);
	
	begin
		--compare
		sCMPEQ	<=	"1" when sA = sB else "0";
		sCMPLT	<=	"1" when sA < sB else "0";
		sCMPLE	<=	"1" when sA <= sB else "0";
	
		--shift left
		with sB select sSHL <=
			sA												when "00000",
			sA(30 downto 0) & (others => '0')	when "00001",
			sA(29 downto 0) & (others => '0')	when "00010",
			sA(28 downto 0) & (others => '0')	when "00011",
			sA(27 downto 0) & (others => '0')	when "00100",
			sA(26 downto 0) & (others => '0')	when "00101",
			sA(25 downto 0) & (others => '0')	when "00110",
			sA(24 downto 0) & (others => '0')	when "00111",
			sA(23 downto 0) & (others => '0')	when "01000",
			sA(22 downto 0) & (others => '0')	when "01001",
			sA(21 downto 0) & (others => '0')	when "01010",
			sA(20 downto 0) & (others => '0')	when "01011",
			sA(19 downto 0) & (others => '0')	when "01100",
			sA(18 downto 0) & (others => '0')	when "01101",
			sA(17 downto 0) & (others => '0')	when "01110",
			sA(16 downto 0) & (others => '0')	when "01111",
			sA(15 downto 0) & (others => '0')	when "10000",
			sA(14 downto 0) & (others => '0')	when "10001",
			sA(13 downto 0) & (others => '0')	when "10010",
			sA(12 downto 0) & (others => '0')	when "10011",
			sA(11 downto 0) & (others => '0')	when "10100",
			sA(10 downto 0) & (others => '0')	when "10101",
			sA(9 downto 0) & (others => '0')		when "10110",
			sA(8 downto 0) & (others => '0')		when "10111",
			sA(7 downto 0) & (others => '0')		when "11000",
			sA(6 downto 0) & (others => '0')		when "11001",
			sA(5 downto 0) & (others => '0')		when "11010",
			sA(4 downto 0) & (others => '0')		when "11011",
			sA(3 downto 0) & (others => '0')		when "11100",
			sA(2 downto 0) & (others => '0')		when "11101",
			sA(1 downto 0) & (others => '0')		when "11110",
			sA(0) & (others => '0')					when "11111",
			(others => '0')	when others;
			
		--shift right
		with sB select sSHR <=
			sA														when "00000",
			'0' & sA(31 downto 1)							when "00001",
			(31 downto 30 => '0') & sA(31 downto 2)	when "00010",
			(31 downto 29 => '0') & sA(31 downto 3)	when "00011",
			(31 downto 28 => '0') & sA(31 downto 4)	when "00100",
			(31 downto 27 => '0') & sA(31 downto 5)	when "00101",
			(31 downto 26 => '0') & sA(31 downto 6)	when "00110",
			(31 downto 25 => '0') & sA(31 downto 7)	when "00111",
			(31 downto 24 => '0') & sA(31 downto 8)	when "01000",
			(31 downto 23 => '0') & sA(31 downto 9)	when "01001",
			(31 downto 22 => '0') & sA(31 downto 10)	when "01010",
			(31 downto 21 => '0') & sA(31 downto 11)	when "01011",
			(31 downto 20 => '0') & sA(31 downto 12)	when "01100",
			(31 downto 19 => '0') & sA(31 downto 13)	when "01101",
			(31 downto 18 => '0') & sA(31 downto 14)	when "01110",
			(31 downto 17 => '0') & sA(31 downto 15)	when "01111",
			(31 downto 16 => '0') & sA(31 downto 16)	when "10000",
			(31 downto 15 => '0') & sA(31 downto 17)	when "10001",
			(31 downto 14 => '0') & sA(31 downto 18)	when "10010",
			(31 downto 13 => '0') & sA(31 downto 19)	when "10011",
			(31 downto 12 => '0') & sA(31 downto 20)	when "10100",
			(31 downto 11 => '0') & sA(31 downto 21)	when "10101",
			(31 downto 10 => '0') & sA(31 downto 22)	when "10110",
			(31 downto 9 => '0') & sA(31 downto 23)	when "10111",
			(31 downto 8 => '0') & sA(31 downto 24)	when "11000",
			(31 downto 7 => '0') & sA(31 downto 25)	when "11001",
			(31 downto 6 => '0') & sA(31 downto 26)	when "11010",
			(31 downto 5 => '0') & sA(31 downto 27)	when "11011",
			(31 downto 4 => '0') & sA(31 downto 28)	when "11100",
			(31 downto 3 => '0') & sA(31 downto 29)	when "11101",
			(31 downto 2 => '0') & sA(31 downto 30)	when "11110",
			(31 downto 1 => '0') & sA(31)					when "11111",
			(others => '0')	when others;
	
		--shift right arithmetic
		with sB select sSHA <=
			sA															when "00000",
			sA(31) & sA(31 downto 1)							when "00001",
			(31 downto 30 => sA(31)) & sA(31 downto 2)	when "00010",
			(31 downto 29 => sA(31)) & sA(31 downto 3)	when "00011",
			(31 downto 28 => sA(31)) & sA(31 downto 4)	when "00100",
			(31 downto 27 => sA(31)) & sA(31 downto 5)	when "00101",
			(31 downto 26 => sA(31)) & sA(31 downto 6)	when "00110",
			(31 downto 25 => sA(31)) & sA(31 downto 7)	when "00111",
			(31 downto 24 => sA(31)) & sA(31 downto 8)	when "01000",
			(31 downto 23 => sA(31)) & sA(31 downto 9)	when "01001",
			(31 downto 22 => sA(31)) & sA(31 downto 10)	when "01010",
			(31 downto 21 => sA(31)) & sA(31 downto 11)	when "01011",
			(31 downto 20 => sA(31)) & sA(31 downto 12)	when "01100",
			(31 downto 19 => sA(31)) & sA(31 downto 13)	when "01101",
			(31 downto 18 => sA(31)) & sA(31 downto 14)	when "01110",
			(31 downto 17 => sA(31)) & sA(31 downto 15)	when "01111",
			(31 downto 16 => sA(31)) & sA(31 downto 16)	when "10000",
			(31 downto 15 => sA(31)) & sA(31 downto 17)	when "10001",
			(31 downto 14 => sA(31)) & sA(31 downto 18)	when "10010",
			(31 downto 13 => sA(31)) & sA(31 downto 19)	when "10011",
			(31 downto 12 => sA(31)) & sA(31 downto 20)	when "10100",
			(31 downto 11 => sA(31)) & sA(31 downto 21)	when "10101",
			(31 downto 10 => sA(31)) & sA(31 downto 22)	when "10110",
			(31 downto 9 => sA(31)) & sA(31 downto 23)	when "10111",
			(31 downto 8 => sA(31)) & sA(31 downto 24)	when "11000",
			(31 downto 7 => sA(31)) & sA(31 downto 25)	when "11001",
			(31 downto 6 => sA(31)) & sA(31 downto 26)	when "11010",
			(31 downto 5 => sA(31)) & sA(31 downto 27)	when "11011",
			(31 downto 4 => sA(31)) & sA(31 downto 28)	when "11100",
			(31 downto 3 => sA(31)) & sA(31 downto 29)	when "11101",
			(31 downto 2 => sA(31)) & sA(31 downto 30)	when "11110",
			(31 downto 1 => sA(31)) & sA(31)					when "11111",
			(others => sA(31))	when others;
	
		--calculation
		with iALUFN select oOutput <=
			sCMPEQ		when "000011",
			sCMPLT		when "000101",
			sCMPLE		when "000111",
			sA + sB		when "010000",
			sA - sB		when "010001",
			sA and sB	when "101000",
			sA or sB		when "101110",
			sA xor sB	when "100110",
			sA xnor sB	when "101001",
			sA				when "101010",
			sSHL			when "110000",
			sSHR			when "110001",
			sSHA			when "110011",
			"0"			when others;

end architecture;