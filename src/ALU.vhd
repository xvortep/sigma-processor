library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

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
		with iALUFN select oOutput <=
			iA = iB		when "000011",
			iA < iB		when "000101",
			iA <= iB		when "000111",
			iA + iB		when "010000",
			iA - iB		when "010001",
			iA and iB	when "101000",
			iA or iB		when "101110",
			iA xor iB	when "100110",
			iA xnor iB	when "101001",
			iA				when "101010",
			iA sll iB	when "110000",
			iA srl iB	when "110001",
			iA sra iB	when "110011",
			iB				when others;
		
end architecture;