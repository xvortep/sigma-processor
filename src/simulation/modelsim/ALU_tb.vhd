library ieee;
use ieee.std_logic_1164.all;

entity ALU_tb is
end entity;

architecture Behavioral of ALU_tb is
	signal sA			:	std_logic_vector(31 downto 0);
	signal sB			:	std_logic_vector(31 downto 0);
	signal sALUFN		:	std_logic_vector(5 downto 0);
	signal sOutput		:	std_logic_vector(31 downto 0);
	signal sCLK			:	std_logic;
	
	constant iCLK_period : time := 10 ns;
	
	component ALU
	port
	(
		iA			:	in		std_logic_vector(31 downto 0);
		iB			:	in		std_logic_vector(31 downto 0);
		iALUFN	:	in		std_logic_vector(5 downto 0);
		oOutput	:	out	std_logic_vector(31 downto 0)
	);
	end component;

	begin
	
	fddt : ALU port map
	(
		iA			=> sA,
		iB			=> sB,
		iALUFN	=> sALUFN,
		oOutput	=> sOutput
	);
	
	iCLK_process : process
	begin
		sCLK <= '0';
		wait for iCLK_period/2;
		sCLK <= '1';
		wait for iCLK_period/2;
	end process;
	
	stimulus : process
	begin
		sA <= x"0000000a";
		sB <= x"00000003";
		
		sALUFN <= "000011";
		wait for 2 * iCLK_period;
		
		sALUFN <= "000101";
		wait for 2 * iCLK_period;
		
		sALUFN <= "000111";
		wait for 2 * iCLK_period;
		
		sALUFN <= "010000";
		wait for 2 * iCLK_period;
		
		sALUFN <= "010001";
		wait for 2 * iCLK_period;

		sALUFN <= "101000";
		wait for 2 * iCLK_period;
		
		sALUFN <= "101110";
		wait for 2 * iCLK_period;
		
		sALUFN <= "100110";
		wait for 2 * iCLK_period;
		
		sALUFN <= "101010";
		wait for 2 * iCLK_period;
		
		sALUFN <= "110000";
		wait for 2 * iCLK_period;
		
		sALUFN <= "110001";
		wait for 2 * iCLK_period;
		
		sALUFN <= "110011";
		wait for 2 * iCLK_period;
		
		sALUFN <= "000000";				--should be babadeda
		wait for 2 * iCLK_period;
		
		
		sA <= x"8001000f";				--check for sign extension
		sALUFN <= "110011";				--on SRA
		wait;
	end process;


end architecture;