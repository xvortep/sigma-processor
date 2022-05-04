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
	"10000000010000100001100000000000"	when iA(7 downto 2) = 0 else	 -- ADD
	"10000100011000100001000000000000"	when iA(7 downto 2) = 1 else	 -- SUB
	"01100000100111110000000001011100"	when iA(7 downto 2) = 2 else	 -- LD
	"01100000110000100000000001110000"	when iA(7 downto 2) = 3 else	 -- LD
	"11000000010001100000000000000001"	when iA(7 downto 2) = 4 else	 -- ADDC
	"11000010100101011111111111111011"	when iA(7 downto 2) = 5 else	 -- ADDC
	"00000000000000000000000000000000";
end Behavioral;
------------------------------------------------------------------
