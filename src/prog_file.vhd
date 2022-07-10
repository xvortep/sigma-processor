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
	"11000100101001010000000000000001"	when iA(7 downto 2) = 6 else	 -- SUBC
	"10000000001000010000000000000000"	when iA(7 downto 2) = 7 else	 -- ADD
	"10000100100001000000100000000000"	when iA(7 downto 2) = 8 else	 -- SUB
	"10100000001000010000000000000000"	when iA(7 downto 2) = 9 else	 -- AND
	"10100100000000000000100000000000"	when iA(7 downto 2) = 10 else	 -- OR
	"10000000010000100001100000000000"	when iA(7 downto 2) = 11 else	 -- ADD
	"10101000010000100001000000000000"	when iA(7 downto 2) = 12 else	 -- XOR
	"10101100001000010000100000000000"	when iA(7 downto 2) = 13 else	 -- XNOR
	"11110000001000010000000000000100"	when iA(7 downto 2) = 14 else	 -- SHLC
	"10110100001000010001100000000000"	when iA(7 downto 2) = 15 else	 -- SHR
	"10010000110111110010100000000000"	when iA(7 downto 2) = 16 else	 -- CMPEQ
	"01110000111001100000000000011000"	when iA(7 downto 2) = 17 else	 -- BEQ
	"00000000000000000000000000000000";
end Behavioral;
------------------------------------------------------------------
