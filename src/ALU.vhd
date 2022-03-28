library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith;
use ieee.std_logic_unsigned;

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
	
	begin
		--calculation
		process (iALUFN, iA, iB) begin
			case (iALUFN) is
				when	"000011"	=>	oOutput <= iA = iB;		--CPMEQ
				when	"000101"	=>	oOutput <= iA < iB;		--CMPLT
				when	"000111"	=>	oOutput <= iA <= iB;		--CMPLE
				when	"010000"	=>	oOutput <= iA + iB;		--ADD
				when	"010001"	=>	oOutput <= iA - iB;		--SUB
				when	"101000"	=>	oOutput <= iA and iB;	--AND
				when	"101110"	=>	oOutput <= iA or iB;		--OR
				when	"100110"	=>	oOutput <= iA xor iB;	--XOR
				when	"101001"	=>	oOutput <= iA xnor iB;	--XNOR
				when	"101010"	=>	oOutput <= iA;				--"A"
				when	"110000"	=>	oOutput <= iA sll iB;	--SHL
				when	"110001"	=>	oOutput <= iA srl iB;	--SHR
				when	"110011"	=>	oOutput <= iA sra iB;	--SRA
				when	others	=>	oOutput <= iB;				--???
			end case;
		end process;
		
end architecture;