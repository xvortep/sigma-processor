library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity CU_bypass is
	port
	(
		--input
		iRD1		:	in		std_logic_vector(31 downto 0);
		iRD2		:	in		std_logic_vector(31 downto 0);
		iALU		:	in		std_logic_vector(31 downto 0);
		iMEM		:	in		std_logic_vector(31 downto 0);
		iWB		:	in		std_logic_vector(31 downto 0);
		iRA1		:	in		std_logic_vector(4 downto 0);
		iRA2		:	in		std_logic_vector(4 downto 0);
		iALUadr	:	in		std_logic_vector(4 downto 0);
		iMEMadr	:	in		std_logic_vector(4 downto 0);
		iWBadr	:	in		std_logic_vector(4 downto 0);
		iRA2SEL	:	in		std_logic;
		
		--output
		oA_by		:	out	std_logic_vector(31 downto 0);
		oB_by		:	out	std_logic_vector(31 downto 0)
	);
end entity;

architecture behavioral of CU_bypass is

	--signals
	signal sA	:	std_logic_vector(31 downto 0);
	signal sB	:	std_logic_vector(31 downto 0);

	begin
	
	process(iRD1, iALU, iMEM, iWB, iRA1, iALUadr, iMEMadr, iWBadr) begin
		if(iRA1 = iALUadr) then
			sA <= iALU;
		elsif(iRA1 = iMEMadr) then
			sA <= iMEM;
		elsif(iRA1 = iWBadr) then
			sA <= iWB;
		else
			sA <= iRD1;
		end if;
	end process;
	
	process(iRA2SEL, iRD2, iALU, iMEM, iWB, iRA2, iALUadr, iMEMadr, iWBadr) begin
		if(iRA2SEL = '0') then
			if(iRA2 = iALUadr) then
				sB <= iALU;
			elsif(iRA2 = iMEMadr) then
				sB <= iMEM;
			elsif(iRA2 = iWBadr) then
				sB <= iWB;
			else
				sB <= iRD2;
			end if;
		else
			sB <= iRD2;
		end if;
	end process;
	
	oA_by <= sA;
	oB_by <= sB;

end architecture;