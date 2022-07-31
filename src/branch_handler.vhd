library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity branch_handler is
	port
	(
		--inputs
		iPC_NEXT			:	in		std_logic_vector(31 downto 0);
		iNEXT_INSTR		:	in		std_logic_vector(31 downto 0);
		iJMP_INSTR		:	in		std_logic_vector(31 downto 0);
		iPCSEL_RF		:	in		std_logic_vector(2 downto 0);
		iZ					:	in		std_logic;
		
		--outputs
		oINS_ADDR		:	out	std_logic_vector(7 downto 0);
		oNOP_IF			:	out	std_logic
	);
end entity;

architecture behavioral of branch_handler is
	
	--signals
	signal s_jumped	:	std_logic;
	signal s_to_jump	:	std_logic;
	signal s_nchange	:	std_logic; 								-- negated bool (should we change instructions)
	signal s_mux		:	std_logic_vector(1 downto 0);

	begin
	
	-- how it should be
	with iPCSEL_RF select s_jumped <=							-- PCSEL_RF holds info whether or not jump occured in previous instruction
		'1'		when "001",
		'0'		when others;
	
	with iJMP_INSTR(31 downto 26) select s_to_jump <=		-- to_jump depends on instruction (BEQ or BNE)
		iZ			when "011100",										-- take Z flag if BEQ
		not(iZ)	when "011101",										-- take inverted if BNE
		'0'		when others;
	
	-- if jump occured (s_jumped == 1) but it shouldn't have (s_to_jump == 0), 
	--	put next instruction address (as program address from rf + 4) in PC
	-- and put NOP in IR reg file register
	-- if jump didn't occur (s_jumped == 0), but it should have (s_to_jump == 1), 
	-- put jump instruction address (from current instruction in IR stage) in PC
	-- and put NOP in IR reg file register
	s_nchange <= s_jumped xnor s_to_jump;						-- check if we should change instructions
	s_mux <= s_nchange & s_to_jump;
	
	with s_mux select oINS_ADDR <=
		iNEXT_INSTR(7 downto 0)		when "00",
		iJMP_INSTR(7 downto 0)		when "01",
		iPC_NEXT(7 downto 0)			when others;
		
	oNOP_IF <= not(s_nchange);
	
end architecture;