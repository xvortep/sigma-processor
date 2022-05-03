library ieee;
use ieee.std_logic_1164.all;

library work;

entity reg_file is
	port
	(
		--inputs
		iRA1	:	in		std_logic_vector(4 downto 0);
		iRA2	:	in		std_logic_vector(4 downto 0);
		iWA	:	in		std_logic_vector(4 downto 0);
		iWD	:	in		std_logic_vector(31 downto 0);
		iWE	:	in		std_logic;
		iCLK	:	in		std_logic;
		iRST	:	in		std_logic;
		
		--outputs
		oRD1	:	out	std_logic_vector(31 downto 0);
		oRD2	:	out	std_logic_vector(31 downto 0)
	);
end entity reg_file;

architecture Behavioral of reg_file is

	--types
	type tREG is array(0 to 31) of std_logic_vector(31 downto 0);

	--signals
	signal sREG_WE	:	std_logic_vector(31 downto 0);
	signal sREG		:	tREG;
	signal sI1		:	integer;
	signal sI2		:	integer;

	begin
		--WA
		with iWA select sREG_WE <=
			x"00000001"	when x"00",
			x"00000002"	when x"01",
			x"00000004"	when x"02",
			x"00000008"	when x"03",
			x"00000010"	when x"04",
			x"00000020"	when x"05",
			x"00000040"	when x"06",
			x"00000080"	when x"07",
			x"00000100"	when x"08",
			x"00000200"	when x"09",
			x"00000400"	when x"0a",
			x"00000800"	when x"0b",
			x"00001000"	when x"0c",
			x"00002000"	when x"0d",
			x"00004000"	when x"0e",
			x"00008000"	when x"0f",
			x"00010000"	when x"10",
			x"00020000"	when x"11",
			x"00040000"	when x"12",
			x"00080000"	when x"13",
			x"00100000"	when x"14",
			x"00200000"	when x"15",
			x"00400000"	when x"16",
			x"00800000"	when x"17",
			x"01000000"	when x"18",
			x"02000000"	when x"19",
			x"04000000"	when x"1a",
			x"08000000"	when x"1b",
			x"10000000"	when x"1c",
			x"20000000"	when x"1d",
			x"40000000"	when x"1e",
			x"80000000"	when others;
			
		--adresses
		with iRA1 select sI1 <=
			0	when x"00",
			1	when x"01",
			2	when x"02",
			3	when x"03",
			4	when x"04",
			5	when x"05",
			6	when x"06",
			7	when x"07",
			8	when x"08",
			9	when x"09",
			10	when x"0a",
			11	when x"0b",
			12	when x"0c",
			13	when x"0d",
			14	when x"0e",
			15	when x"0f",
			16	when x"10",
			17	when x"11",
			18	when x"12",
			19	when x"13",
			20	when x"14",
			21	when x"15",
			22	when x"16",
			23	when x"17",
			24	when x"18",
			25	when x"19",
			26	when x"1a",
			27	when x"1b",
			28	when x"1c",
			29	when x"1d",
			30	when x"1e",
			31	when others;
		
		with iRA2 select sI2 <=
			0	when x"00",
			1	when x"01",
			2	when x"02",
			3	when x"03",
			4	when x"04",
			5	when x"05",
			6	when x"06",
			7	when x"07",
			8	when x"08",
			9	when x"09",
			10	when x"0a",
			11	when x"0b",
			12	when x"0c",
			13	when x"0d",
			14	when x"0e",
			15	when x"0f",
			16	when x"10",
			17	when x"11",
			18	when x"12",
			19	when x"13",
			20	when x"14",
			21	when x"15",
			22	when x"16",
			23	when x"17",
			24	when x"18",
			25	when x"19",
			26	when x"1a",
			27	when x"1b",
			28	when x"1c",
			29	when x"1d",
			30	when x"1e",
			31	when others;

		--outputs
		oRD1 <= sREG(sI1);
		oRD2 <= sREG(sI2);
	
		--regs
		r0_i	:	entity work.reg
		port map
		(
			iD		=> iWD,
			iWE	=> sREG_WE(0),
			iCLK	=> iCLK,
			iRST	=> iRST,
			oREG	=> sREG(0)
		);
		
		r1_i	:	entity work.reg
		port map
		(
			iD		=> iWD,
			iWE	=> sREG_WE(1),
			iCLK	=> iCLK,
			iRST	=> iRST,
			oREG	=> sREG(1)
		);
		
		r2_i	:	entity work.reg
		port map
		(
			iD		=> iWD,
			iWE	=> sREG_WE(2),
			iCLK	=> iCLK,
			iRST	=> iRST,
			oREG	=> sREG(2)
		);
		
		r3_i	:	entity work.reg
		port map
		(
			iD		=> iWD,
			iWE	=> sREG_WE(3),
			iCLK	=> iCLK,
			iRST	=> iRST,
			oREG	=> sREG(3)
		);
		
		r4_i	:	entity work.reg
		port map
		(
			iD		=> iWD,
			iWE	=> sREG_WE(4),
			iCLK	=> iCLK,
			iRST	=> iRST,
			oREG	=> sREG(4)
		);
		
		r5_i	:	entity work.reg
		port map
		(
			iD		=> iWD,
			iWE	=> sREG_WE(5),
			iCLK	=> iCLK,
			iRST	=> iRST,
			oREG	=> sREG(5)
		);
		
		r6_i	:	entity work.reg
		port map
		(
			iD		=> iWD,
			iWE	=> sREG_WE(6),
			iCLK	=> iCLK,
			iRST	=> iRST,
			oREG	=> sREG(6)
		);
		
		r7_i	:	entity work.reg
		port map
		(
			iD		=> iWD,
			iWE	=> sREG_WE(7),
			iCLK	=> iCLK,
			iRST	=> iRST,
			oREG	=> sREG(7)
		);
		
		r8_i	:	entity work.reg
		port map
		(
			iD		=> iWD,
			iWE	=> sREG_WE(8),
			iCLK	=> iCLK,
			iRST	=> iRST,
			oREG	=> sREG(8)
		);
		
		r9_i	:	entity work.reg
		port map
		(
			iD		=> iWD,
			iWE	=> sREG_WE(9),
			iCLK	=> iCLK,
			iRST	=> iRST,
			oREG	=> sREG(9)
		);
		
		r10_i	:	entity work.reg
		port map
		(
			iD		=> iWD,
			iWE	=> sREG_WE(10),
			iCLK	=> iCLK,
			iRST	=> iRST,
			oREG	=> sREG(10)
		);
		
		r11_i	:	entity work.reg
		port map
		(
			iD		=> iWD,
			iWE	=> sREG_WE(11),
			iCLK	=> iCLK,
			iRST	=> iRST,
			oREG	=> sREG(11)
		);
		
		r12_i	:	entity work.reg
		port map
		(
			iD		=> iWD,
			iWE	=> sREG_WE(12),
			iCLK	=> iCLK,
			iRST	=> iRST,
			oREG	=> sREG(12)
		);
		
		r13_i	:	entity work.reg
		port map
		(
			iD		=> iWD,
			iWE	=> sREG_WE(13),
			iCLK	=> iCLK,
			iRST	=> iRST,
			oREG	=> sREG(13)
		);
		
		r14_i	:	entity work.reg
		port map
		(
			iD		=> iWD,
			iWE	=> sREG_WE(14),
			iCLK	=> iCLK,
			iRST	=> iRST,
			oREG	=> sREG(14)
		);
		
		r15_i	:	entity work.reg
		port map
		(
			iD		=> iWD,
			iWE	=> sREG_WE(15),
			iCLK	=> iCLK,
			iRST	=> iRST,
			oREG	=> sREG(15)
		);
		
		r16_i	:	entity work.reg
		port map
		(
			iD		=> iWD,
			iWE	=> sREG_WE(16),
			iCLK	=> iCLK,
			iRST	=> iRST,
			oREG	=> sREG(16)
		);
		
		r17_i	:	entity work.reg
		port map
		(
			iD		=> iWD,
			iWE	=> sREG_WE(17),
			iCLK	=> iCLK,
			iRST	=> iRST,
			oREG	=> sREG(17)
		);
		
		r18_i	:	entity work.reg
		port map
		(
			iD		=> iWD,
			iWE	=> sREG_WE(18),
			iCLK	=> iCLK,
			iRST	=> iRST,
			oREG	=> sREG(18)
		);
		
		r19_i	:	entity work.reg
		port map
		(
			iD		=> iWD,
			iWE	=> sREG_WE(19),
			iCLK	=> iCLK,
			iRST	=> iRST,
			oREG	=> sREG(19)
		);
		
		r20_i	:	entity work.reg
		port map
		(
			iD		=> iWD,
			iWE	=> sREG_WE(20),
			iCLK	=> iCLK,
			iRST	=> iRST,
			oREG	=> sREG(20)
		);
		
		r21_i	:	entity work.reg
		port map
		(
			iD		=> iWD,
			iWE	=> sREG_WE(21),
			iCLK	=> iCLK,
			iRST	=> iRST,
			oREG	=> sREG(21)
		);
		
		r22_i	:	entity work.reg
		port map
		(
			iD		=> iWD,
			iWE	=> sREG_WE(22),
			iCLK	=> iCLK,
			iRST	=> iRST,
			oREG	=> sREG(22)
		);
		
		r23_i	:	entity work.reg
		port map
		(
			iD		=> iWD,
			iWE	=> sREG_WE(23),
			iCLK	=> iCLK,
			iRST	=> iRST,
			oREG	=> sREG(23)
		);
		
		r24_i	:	entity work.reg
		port map
		(
			iD		=> iWD,
			iWE	=> sREG_WE(24),
			iCLK	=> iCLK,
			iRST	=> iRST,
			oREG	=> sREG(24)
		);
		
		r25_i	:	entity work.reg
		port map
		(
			iD		=> iWD,
			iWE	=> sREG_WE(25),
			iCLK	=> iCLK,
			iRST	=> iRST,
			oREG	=> sREG(25)
		);
		
		r26_i	:	entity work.reg
		port map
		(
			iD		=> iWD,
			iWE	=> sREG_WE(26),
			iCLK	=> iCLK,
			iRST	=> iRST,
			oREG	=> sREG(26)
		);
		
		r27_i	:	entity work.reg
		port map
		(
			iD		=> iWD,
			iWE	=> sREG_WE(27),
			iCLK	=> iCLK,
			iRST	=> iRST,
			oREG	=> sREG(27)
		);
		
		r28_i	:	entity work.reg
		port map
		(
			iD		=> iWD,
			iWE	=> sREG_WE(28),
			iCLK	=> iCLK,
			iRST	=> iRST,
			oREG	=> sREG(28)
		);
		
		r29_i	:	entity work.reg
		port map
		(
			iD		=> iWD,
			iWE	=> sREG_WE(29),
			iCLK	=> iCLK,
			iRST	=> iRST,
			oREG	=> sREG(29)
		);
		
		r30_i	:	entity work.reg
		port map
		(
			iD		=> iWD,
			iWE	=> sREG_WE(30),
			iCLK	=> iCLK,
			iRST	=> iRST,
			oREG	=> sREG(30)
		);
		
		sREG(31) <= x"00000000";

end architecture;