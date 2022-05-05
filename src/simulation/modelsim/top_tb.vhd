library ieee;
use ieee.std_logic_1164.all;

entity top_tb is
end entity;

architecture Behavioral of top_tb is

	--signals
	signal sRST	:	std_logic;
	--------------------------
	signal sZ	:	std_logic_vector(31 downto 0);
	signal sIns	:	std_logic_vector(5 downto 0);
	
	--clock
	constant iCLK_period	:	time := 10 ns;
	signal	sCLK			:	std_logic;
	
	--component
	component top
		port
		(
			--inputs
			iCLK	:	in		std_logic;
			iRST	:	in		std_logic;
			
			--outputs
			oZ		:	out	std_logic_vector(31 downto 0);
			oIns	:	out	std_logic_vector(5 downto 0)
		);
	end component;
	
	begin
		uut : top port map
		(
			iCLK	=>	sCLK,
			iRST	=>	sRST,
			oZ		=>	sZ,
			oIns	=> sIns
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
			sRST <= '1';
			wait for iCLK_period*10;
			sRST <= '0';
			wait;
		end process;
		
end architecture;