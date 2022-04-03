library ieee;
use ieee.std_logic_1164.all;

entity PC_tb is
end entity;

architecture Behavioral of PC_tb is
		signal sPC_SEL 	:	std_logic_vector(3 downto 0);
		signal sCLK			:	std_logic;
		signal sRST			:	std_logic;
		signal sJT			:	std_logic_vector(31 downto 0);
		signal sSXT			:	std_logic_vector(31 downto 0);
		signal sPC			:	std_logic_vector(31 downto 0);
		
		constant iCLK_period : time := 10 ns;
		
		component PC
		port
		(
			iPC_SEL		:	in		std_logic_vector(3 downto 0);
			iCLK			:	in		std_logic;
			iRST			:	in		std_logic;
			iJT			:	in		std_logic_vector(31 downto 0);
			iSXT			:	in		std_logic_vector(31 downto 0);
			oPC			:	out	std_logic_vector(31 downto 0)
		);
		end component;

		begin
		
			uut : PC port map
			(
				iPC_SEL	=> sPC_SEL,
				iCLK		=> sCLK,
				iRST		=> sRST,
				iJT		=> sJT,
				iSXT		=> sSXT,
				oPC		=>	sPC
			);
			
			
			iCLK_process : process
			begin
				sCLK <= '0';
				wait for iCLK_period / 2;
				sCLK <= '1';
				wait for iCLK_period / 2;
			end process;
			
			stimulus : process
			begin
				sSXT <= x"babadeda";
				sJT <= x"babadeda";
				sRST <= '0';
				wait for iCLK_period;
				sRST <= '1';
				wait for iCLK_period;
				sRST <= '0';
				

				wait for iCLK_period;
				sRST <= '0';
				sPC_SEL <= x"0";
				wait for iCLK_period;
				
				sPC_SEL <= x"1";
				wait for iCLK_period;
				
				sPC_SEL <= x"2";
				wait for iCLK_period;
				
				sPC_SEL <= x"3";
				wait for iCLK_period;
				
				sPC_SEL <= x"0";
				wait for iCLK_period;
				wait;
			end process;
		
end architecture;