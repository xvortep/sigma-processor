library ieee;
use ieee.std_logic_1164.all;

entity reg_nwe_stall is
	port
	(
		--inputs
		iD		:	in		std_logic_vector(31 downto 0);
		iCLK	:	in		std_logic;
		iRST	:	in		std_logic;
		iSTL	:	in		std_logic;
		
		--outputs
		oREG	:	out	std_logic_vector(31 downto 0)
	);
end entity;

architecture Behavioral of reg_nwe_stall is

	--reg value
	signal sREG	:	std_logic_vector(31 downto 0);

	begin
		--reg without WE
		process(iCLK, iRST) begin
			if(iRST = '1') then
				sREG <= x"00000000";
			elsif(rising_edge(iCLK) and (iSTL = '0')) then
				sREG <= iD;
			end if;
		end process;
		
		oREG <= sREG;

end architecture;
