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
	signal sStall		:	std_logic;
	signal s_stl_alu	:	std_logic;
	signal s_stl_mem	:	std_logic;

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

	oA_by <= s_a_bypass;
	oB_by <= s_b_ra2sel;
		
---------------------------------------------------------------------------------
	
	s_stl_alu <= '1' when (iALUadr = iRaRF) else
					 '1' when (iALUadr = iRbRF) else
					 '0';
					 
	s_stl_mem <= '1' when (iMEMadr = iRaRF) else
					 '1' when (iMEMadr = iRbRF) else
					 '0';
					 
	sStall <= s_stl_alu or s_stl_mem;
	
	oStall <= sStall when (iOpALU = "011000") else
				 sStall when (iOpMEM = "011000") else
				 '0';

end architecture;