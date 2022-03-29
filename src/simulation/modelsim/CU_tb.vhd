library ieee;
use ieee.std_logic_1164.all;

entity CU_tb is
end entity;

architecture Behavioral of CU_tb is

	--inputs
	sOpcode	:	signal		std_logic_vector(5 downto 0);

	--outputs
	sALUFN	:	signal	std_logic_vector(5 downto 0);
	sASEL		:	signal	std_logic;
	sBSEL		:	signal	std_logic;
	sMOE		:	signal	std_logic;
	sMWR		:	signal	std_logic;
	sPCSEL	:	signal	std_logic_vector(2 downto 0);
	soRA2SEL	:	signal	std_logic;
	sWASEL	:	signal	std_logic;
	sWDSEL	:	signal	std_logic_vector(1 downto 0);
	sWERF		:	signal	std_logic;

end architecture;