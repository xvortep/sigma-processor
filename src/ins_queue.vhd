library ieee;
use ieee.std_logic_1164.all;

library work;

entity ins_queue is
	port
	(
		--inputs
		iPC_4	:	in		std_logic_vector(31 downto 0);
		iCLK	:	in		std_logic;
		iRST	:	in		std_logic;
		
		--outputs
		oINS	:	out	std_logic_vector(31 downto 0)
	);
end entity ins_queue;

architecture Behavioral of ins_queue is
	
	--constants
	constant ENABLED	:	std_logic := '1';
	
	--singlas
	signal sR0_R1	:	std_logic_vector(31 downto 0);
	signal sR1_R2	:	std_logic_vector(31 downto 0);
	signal sRout	:	std_logic_vector(31 downto 0);

	begin
		--regs
		r0_q	:	entity work.reg
		port map
		(
			iD		=> iPC_4,
			iWE	=> ENABLED,
			iCLK	=> iCLK,
			iRST	=> iRST,
			oREG	=> sR0_R1
		);
		
		r1_q	:	entity work.reg
		port map
		(
			iD		=> sR0_R1,
			iWE	=> ENABLED,
			iCLK	=> iCLK,
			iRST	=> iRST,
			oREG	=> sR1_R2
		);
		
		r2_q	:	entity work.reg
		port map
		(
			iD		=> sR1_R2,
			iWE	=> ENABLED,
			iCLK	=> iCLK,
			iRST	=> iRST,
			oREG	=> sRout
		);
end architecture;