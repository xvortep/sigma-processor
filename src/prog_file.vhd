library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;

entity instr_rom is
    Port ( iA : in  STD_LOGIC_VECTOR (7 downto 0);
           oQ : out  STD_LOGIC_VECTOR (31 downto 0));
end instr_rom;

architecture Behavioral of instr_rom is
begin
	oQ <=
	"10000000010000100001100000000000"	when iA(7 downto 2) = 0 else	
	"10000100011000100001000000000000"	when iA(7 downto 2) = 1 else	
	"01100000100001010010000000000000"	when iA(7 downto 2) = 2 else	
	"01100000110000100011000000000000"	when iA(7 downto 2) = 3 else	
	"11000000010001100000000000000001"	when iA(7 downto 2) = 4 else	
	"11000010100101011111111111111011"	when iA(7 downto 2) = 5 else	
	"11000010100101011111111111111011"	when iA(7 downto 2) = 6 else	
	"01110000100000110000000000000100"	when iA(7 downto 2) = 7 else	
	"11000010100101011111111111111011"	when iA(7 downto 2) = 8 else	
	"11000010100101011111111111111011"	when iA(7 downto 2) = 9 else	
	"11000010100101011111111111111011"	when iA(7 downto 2) = 10 else	
	"00000000000000000000000000000000";
end Behavioral;
------------------------------------------------------------------
