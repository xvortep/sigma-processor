library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;

entity reg_top_pipeline is
	port
	(
		-- inputs
		iCLK 		:	in		std_logic;
		iRST		:	in		std_logic;
		i_pc_rf	:	in		std_logic_vector(31 downto 0);
		i_pc_alu	:	in		std_logic_vector(31 downto 0);
		i_pc_mem	:	in		std_logic_vector(31 downto 0);
		i_pc_wb	:	in		std_logic_vector(31 downto 0);
		i_ir_rf	:	in		std_logic_vector(31 downto 0);
		i_ir_alu	:	in		std_logic_vector(31 downto 0);
		i_ir_mem	:	in		std_logic_vector(31 downto 0);
		i_ir_wb	:	in		std_logic_vector(31 downto 0);
		i_a_alu	:	in		std_logic_vector(31 downto 0);
		i_b_alu	:	in		std_logic_vector(31 downto 0);
		i_y_mem	:	in		std_logic_vector(31 downto 0);
		i_y_wb	:	in		std_logic_vector(31 downto 0);
		i_d_alu	:	in		std_logic_vector(31 downto 0);
		i_d_mem	:	in		std_logic_vector(31 downto 0);
		i_d_wb	:	in		std_logic_vector(31 downto 0);
		
		-- outputs
		o_pc_rf	:	out	std_logic_vector(31 downto 0);
		o_pc_alu	:	out	std_logic_vector(31 downto 0);
		o_pc_mem	:	out	std_logic_vector(31 downto 0);
		o_pc_wb	:	out	std_logic_vector(31 downto 0);
		o_ir_rf	:	out	std_logic_vector(31 downto 0);
		o_ir_alu	:	out	std_logic_vector(31 downto 0);
		o_ir_mem	:	out	std_logic_vector(31 downto 0);
		o_ir_wb	:	out	std_logic_vector(31 downto 0);
		o_a_alu	:	out	std_logic_vector(31 downto 0);
		o_b_alu	:	out	std_logic_vector(31 downto 0);
		o_y_mem	:	out	std_logic_vector(31 downto 0);
		o_y_wb	:	out	std_logic_vector(31 downto 0);
		o_d_alu	:	out	std_logic_vector(31 downto 0);
		o_d_mem	:	out	std_logic_vector(31 downto 0);
		o_d_wb	:	out	std_logic_vector(31 downto 0)
	);
end entity reg_top_pipeline;

architecture Behavioral of reg_top_pipeline is begin

	r_pc_rf	:	entity work.reg_nwe
	port map
	(
		iD		=> i_pc_rf,
		iCLK	=> iCLK,
		iRST	=> iRST,
		oREG	=>	o_pc_rf
	);
	
	
	r_pc_alu	:	entity work.reg_nwe
	port map
	(
		iD		=> i_pc_alu,
		iCLK	=> iCLK,
		iRST	=> iRST,
		oREG	=>	o_pc_alu
	);
	
	r_pc_mem	:	entity work.reg_nwe
	port map
	(
		iD		=> i_pc_mem,
		iCLK	=> iCLK,
		iRST	=> iRST,
		oREG	=>	o_pc_mem
	);
	
	r_pc_wb	:	entity work.reg_nwe
	port map
	(
		iD		=> i_pc_wb,
		iCLK	=> iCLK,
		iRST	=> iRST,
		oREG	=>	o_pc_wb
	);
	
	r_ir_rf	:	entity work.reg_nwe
	port map
	(
		iD		=> i_ir_rf,
		iCLK	=> iCLK,
		iRST	=> iRST,
		oREG	=>	o_ir_rf
	);
	
	r_ir_alu	:	entity work.reg_nwe
	port map
	(
		iD		=> i_ir_alu,
		iCLK	=> iCLK,
		iRST	=> iRST,
		oREG	=>	o_ir_alu
	);
	
	r_ir_mem	:	entity work.reg_nwe
	port map
	(
		iD		=> i_ir_mem,
		iCLK	=> iCLK,
		iRST	=> iRST,
		oREG	=>	o_ir_mem
	);
	
	r_ir_wb	:	entity work.reg_nwe
	port map
	(
		iD		=> i_ir_wb,
		iCLK	=> iCLK,
		iRST	=> iRST,
		oREG	=>	o_ir_wb
	);
	
	r_a_alu	:	entity work.reg_nwe
	port map
	(
		iD		=> i_a_alu,
		iCLK	=> iCLK,
		iRST	=> iRST,
		oREG	=>	o_a_alu
	);
	
	r_b_alu	:	entity work.reg_nwe
	port map
	(
		iD		=> i_b_alu,
		iCLK	=> iCLK,
		iRST	=> iRST,
		oREG	=>	o_b_alu
	);
	
	r_y_mem	:	entity work.reg_nwe
	port map
	(
		iD		=> i_y_mem,
		iCLK	=> iCLK,
		iRST	=> iRST,
		oREG	=>	o_y_mem
	);
	
	r_y_wb	:	entity work.reg_nwe
	port map
	(
		iD		=> i_y_wb,
		iCLK	=> iCLK,
		iRST	=> iRST,
		oREG	=>	o_y_wb
	);
	
	r_d_alu	:	entity work.reg_nwe
	port map
	(
		iD		=> i_d_alu,
		iCLK	=> iCLK,
		iRST	=> iRST,
		oREG	=>	o_d_alu
	);
	
	r_d_mem	:	entity work.reg_nwe
	port map
	(
		iD		=> i_d_mem,
		iCLK	=> iCLK,
		iRST	=> iRST,
		oREG	=>	o_d_mem
	);
	
	r_d_wb	:	entity work.reg_nwe
	port map
	(
		iD		=> i_d_wb,
		iCLK	=> iCLK,
		iRST	=> iRST,
		oREG	=>	o_d_wb
	);
	

	
end architecture;
