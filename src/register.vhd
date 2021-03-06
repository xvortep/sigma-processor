library ieee;
use ieee.std_logic_1164.all;

entity reg is
	port
	(
		--inputs
		iD		:	in		std_logic_vector(31 downto 0);
		iWE	:	in		std_logic;
		iCLK	:	in		std_logic;
		iRST	:	in		std_logic;
		
		--outputs
		oREG	:	out	std_logic_vector(31 downto 0)
	);
end entity;

architecture Behavioral of reg is

	--reg value
	signal sREG	:	std_logic_vector(31 downto 0);

	begin
		--generic reg
		process(iCLK, iRST) begin
			if(iRST = '1') then
				sREG <= x"00000000";
			elsif(rising_edge(iCLK)) then
				if(iWE = '1') then
					sREG <= iD;
				else
					sREG <= sREG;
				end if;
			end if;
		end process;
		
		oREG <= sREG;

end architecture;
