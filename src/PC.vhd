library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity ProgramCounter is
	port
	(
		iPC_SEL		:	in		std_logic_vector(3 downto 0);
		iCLK			:	in		std_logic;
		iRST			:	in		std_logic;
		iJT			:	in		std_logic_vector(31 downto 0);
		iSXT			:	in		std_logic_vector(31 downto 0)
	);
end entity;

architecture Behavioral of ProgramCounter is

	constant RESET		:	std_logic_vector(31 downto 0) := x"80000000";
	constant ILLOP		:	std_logic_vector(31 downto 0) := x"80000004";
	constant XADDR 	:	std_logic_vector(31 downto 0) := x"80000008";
	constant BBDD		:	std_logic_vector(31 downto 0) := x"babadeda";

	signal sPC_MUX		:	std_logic_vector(31 downto 0);
	signal sPC			:	std_logic_vector(31 downto 0) := x"80000000";
	signal sPC_NEXT	:	std_logic_vector(31 downto 0);
	signal sPC_BRANCH	:	std_logic_vector(31 downto 0);
	signal sPC_4		:	std_logic_vector(31 downto 0);


	begin

		sPC_4 <= sPC + 4;
		sPC_BRANCH <= sPC_NEXT + (iSXT(29 downto 2) & "00"); -- sPC_NEXT + (iSXT << 2)

		with iPC_SEL select sPC_MUX <= 
			sPC_4				when	x"0",
			sPC_BRANCH		when	x"1",
			iJT				when 	x"2",
			ILLOP				when	x"3",
			XADDR				when	x"4",
			BBDD				when 	others;

		with iRST select sPC_NEXT <=
			sPC_MUX	when '0',
			RESET		when '1';

		process(iCLK, iRST) begin
			if(iRST = '1') then
				sPC <= x"00000000";
			elsif(rising_edge(iCLK)) then
				sPC <= sPC_NEXT;
			end if;
		end process;

end architecture;

