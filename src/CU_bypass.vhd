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
		iALUadr	:	in		std_logic_vector(4 downto 0); -- Rc
		iMEMadr	:	in		std_logic_vector(4 downto 0); -- Rc
		iWBadr	:	in		std_logic_vector(4 downto 0); -- Rc
		iRA2SEL	:	in		std_logic;
		iOpALU	:	in		std_logic_vector(5 downto 0);
		iOpMEM	:	in		std_logic_vector(5 downto 0);
		iRaRF		:	in		std_logic_vector(4 downto 0);
		iRbRF		:	in		std_logic_vector(4 downto 0);
		
		--output
		oStall	:	out	std_logic;
		oA_by		:	out	std_logic_vector(31 downto 0);
		oB_by		:	out	std_logic_vector(31 downto 0)
	);
end entity;

architecture behavioral of CU_bypass is

	--signals
	signal s_a_bypass	:	std_logic_vector(31 downto 0);
	signal s_b_bypass	:	std_logic_vector(31 downto 0);
	signal s_b_ra2sel	:	std_logic_vector(31 downto 0);

	begin
	
	s_a_bypass <=	iALU	when (iRA1 = iALUadr)	else
						iMEM	when (iRA1 = iMEMadr)	else
						iWB	when (iRA1 = iWBadr)		else
						iRD1;
	
	s_b_bypass <=	iALU	when (iRA2 = iALUadr)	else
						iMEM	when (iRA2 = iMEMadr)	else
						iWB	when (iRA2 = iWBadr)		else
						iRD2;

	with iRA2SEL select s_b_ra2sel <=
		s_b_bypass	when '0',
		iRD2			when others;
		
---------------------------------------------------------------------------------
	
	process(iOpALU, iOpMEM, iALUadr, iMEMadr, iRaRF, iRbRF) begin
		if (iOpALU = "011000") then
			if (iALUadr = iRaRF) then
				oStall <= '1';
			elsif (iALUadr = iRbRF) then
				oStall <= '1';
			else
				oStall <= '0';
			end if;
		elsif (iOpMEM = "011000") then
			if (iMEMadr = iRaRF) then
				oStall <= '1';
			elsif (iMEMadr = iRbRF) then
				oStall <= '1';
			else
				oStall <= '0';
			end if;
		else
			oStall <= '0';
		end if;
	end process;
	
	oA_by <= s_a_bypass;
	oB_by <= s_b_ra2sel;

end architecture;