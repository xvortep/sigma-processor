library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity PC is
	port
	(
		iPC_SEL		:	in		std_logic_vector(2 downto 0);
		iCLK			:	in		std_logic;
		iRST			:	in		std_logic;
		iJT			:	in		std_logic_vector(31 downto 0);
		iSXT			:	in		std_logic_vector(31 downto 0);
		oPC			:	out	std_logic_vector(31 downto 0)
	);
end entity;

architecture Behavioral of PC is

	constant RESET		:	std_logic_vector(31 downto 0) := x"80000000";
	constant ILLOP		:	std_logic_vector(31 downto 0) := x"80000004";
	constant XADDR 	:	std_logic_vector(31 downto 0) := x"80000008";
	constant BBDD		:	std_logic_vector(31 downto 0) := x"babadeda";

	signal sPC_MUX		:	std_logic_vector(31 downto 0);
	signal sPC			:	std_logic_vector(31 downto 0);
	signal sPC_NEXT	:	std_logic_vector(31 downto 0);
	signal sPC_BRANCH	:	std_logic_vector(31 downto 0);
	signal sPC_4		:	std_logic_vector(31 downto 0);


	begin

		sPC_4 <= sPC + 4;
		-- sPC_BRANCH <= sPC_4 + (iSXT(29 downto 2) & "00"); -- sPC + (iSXT << 2)
		sPC_BRANCH <= iSXT(31 downto 2) & "00";

		with iPC_SEL select sPC_NEXT <= 
			sPC_4				when	o"0",
			sPC_BRANCH		when	o"1",
			iJT				when 	o"2",
			ILLOP				when	o"3",
			XADDR				when	o"4",
			BBDD				when 	others;
--
--		with iRST select sPC_NEXT <=
--			sPC_MUX	when '0',
--			RESET		when others;
			
		--Program counter register
		process(iCLK, iRST) begin
			if(iRST = '1') then
				sPC <= x"00000000";
			elsif(rising_edge(iCLK)) then
				sPC <= sPC_NEXT;
			end if;
		end process;

		oPC <= sPC;
end architecture;

