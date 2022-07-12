library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;

entity instr_rom is
    Port ( iA : in  std_logic_vector (7 downto 0);
           oQ : out  std_logic_vector (31 downto 0));
end instr_rom;

architecture Behavioral of instr_rom is
begin
	oQ <=
	"11000000000111110000000000000100"	when iA(7 downto 2) = 0 else	 -- ADDC
	"11000000001111110000000000000101"	when iA(7 downto 2) = 1 else	 -- ADDC
	"11000000010111110000000000000110"	when iA(7 downto 2) = 2 else	 -- ADDC
	"11000000011111110000000000000111"	when iA(7 downto 2) = 3 else	 -- ADDC
	"11000000100111110000000000001000"	when iA(7 downto 2) = 4 else	 -- ADDC
	"01100000101111110000000000000000"	when iA(7 downto 2) = 5 else	 -- LD
	"00000000000000000000000000000000"	when iA(7 downto 2) = 6 else	 -- NOP
	"00000000000000000000000000000000"	when iA(7 downto 2) = 7 else	 -- NOP
	"00000000000000000000000000000000"	when iA(7 downto 2) = 8 else	 -- NOP
	"00000000000000000000000000000000"	when iA(7 downto 2) = 9 else	 -- NOP
	"11000100101001010000000000000001"	when iA(7 downto 2) = 10 else	 -- SUBC
	"10000000001000010000000000000000"	when iA(7 downto 2) = 11 else	 -- ADD
	"10000100100001000000100000000000"	when iA(7 downto 2) = 12 else	 -- SUB
	"00000000000000000000000000000000"	when iA(7 downto 2) = 13 else	 -- NOP
	"00000000000000000000000000000000"	when iA(7 downto 2) = 14 else	 -- NOP
	"00000000000000000000000000000000"	when iA(7 downto 2) = 15 else	 -- NOP
	"10100000001000010000000000000000"	when iA(7 downto 2) = 16 else	 -- AND
	"10100100000000000000100000000000"	when iA(7 downto 2) = 17 else	 -- OR
	"10000000010000100001100000000000"	when iA(7 downto 2) = 18 else	 -- ADD
	"00000000000000000000000000000000"	when iA(7 downto 2) = 19 else	 -- NOP
	"00000000000000000000000000000000"	when iA(7 downto 2) = 20 else	 -- NOP
	"00000000000000000000000000000000"	when iA(7 downto 2) = 21 else	 -- NOP
	"00000000000000000000000000000000"	when iA(7 downto 2) = 22 else	 -- NOP
	"10101000010000100001000000000000"	when iA(7 downto 2) = 23 else	 -- XOR
	"10101100001000010000100000000000"	when iA(7 downto 2) = 24 else	 -- XNOR
	"00000000000000000000000000000000"	when iA(7 downto 2) = 25 else	 -- NOP
	"00000000000000000000000000000000"	when iA(7 downto 2) = 26 else	 -- NOP
	"00000000000000000000000000000000"	when iA(7 downto 2) = 27 else	 -- NOP
	"00000000000000000000000000000000"	when iA(7 downto 2) = 28 else	 -- NOP
	"11110000001000010000000000000100"	when iA(7 downto 2) = 29 else	 -- SHLC
	"00000000000000000000000000000000"	when iA(7 downto 2) = 30 else	 -- NOP
	"00000000000000000000000000000000"	when iA(7 downto 2) = 31 else	 -- NOP
	"00000000000000000000000000000000"	when iA(7 downto 2) = 32 else	 -- NOP
	"00000000000000000000000000000000"	when iA(7 downto 2) = 33 else	 -- NOP
	"10110100001000010001100000000000"	when iA(7 downto 2) = 34 else	 -- SHR
	"10010000110111110010100000000000"	when iA(7 downto 2) = 35 else	 -- CMPEQ
	"00000000000000000000000000000000"	when iA(7 downto 2) = 36 else	 -- NOP
	"00000000000000000000000000000000"	when iA(7 downto 2) = 37 else	 -- NOP
	"00000000000000000000000000000000"	when iA(7 downto 2) = 38 else	 -- NOP
	"00000000000000000000000000000000"	when iA(7 downto 2) = 39 else	 -- NOP
	"01110100111001100000000000101000"	when iA(7 downto 2) = 40 else	 -- BNE
	"00000000000000000000000000000000";
end Behavioral;
------------------------------------------------------------------
