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
	"01100000000111110000000001011100"	when iA(7 downto 2) = 0 else	 -- LD
	"11000000001000000000000000000001"	when iA(7 downto 2) = 1 else	 -- ADDC
	"01100100001111110000000000000000"	when iA(7 downto 2) = 2 else	 -- ST
	"01100000000111110000000000000000"	when iA(7 downto 2) = 3 else	 -- LD
	"10100000001111110000100000000000"	when iA(7 downto 2) = 4 else	 -- AND
	"10000000000000000000100000000000"	when iA(7 downto 2) = 5 else	 -- ADD
	"00000000000000000000000000000000";
end Behavioral;
------------------------------------------------------------------
