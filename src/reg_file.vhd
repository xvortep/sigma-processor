library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

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

	begin
		--WA
		with iWA select sREG_WE <=
			x"00000001"	when ("00000"),
			x"00000002"	when ("00001"),
			x"00000004"	when ("00010"),
			x"00000008"	when ("00011"),
			x"00000010"	when ("00100"),
			x"00000020"	when ("00101"),
			x"00000040"	when ("00110"),
			x"00000080"	when ("00111"),
			x"00000100"	when ("01000"),
			x"00000200"	when ("01001"),
			x"00000400"	when ("01010"),
			x"00000800"	when ("01011"),
			x"00001000"	when ("01100"),
			x"00002000"	when ("01101"),
			x"00004000"	when ("01110"),
			x"00008000"	when ("01111"),
			x"00010000"	when ("10000"),
			x"00020000"	when ("10001"),
			x"00040000"	when ("10010"),
			x"00080000"	when ("10011"),
			x"00100000"	when ("10100"),
			x"00200000"	when ("10101"),
			x"00400000"	when ("10110"),
			x"00800000"	when ("10111"),
			x"01000000"	when ("11000"),
			x"02000000"	when ("11001"),
			x"04000000"	when ("11010"),
			x"08000000"	when ("11011"),
			x"10000000"	when ("11100"),
			x"20000000"	when ("11101"),
			x"40000000"	when ("11110"),
			x"80000000"	when others;
			
		--adresses
--		with iRA1 select sI1 <=
--			0		when ("00000"),
--			1		when ("00001"),
--			2		when ("00010"),
--			3		when ("00011"),
--			4		when ("00100"),
--			5		when ("00101"),
--			6		when ("00110"),
--			7		when ("00111"),
--			8		when ("01000"),
--			9		when ("01001"),
--			10		when ("01010"),
--			11		when ("01011"),
--			12		when ("01100"),
--			13		when ("01101"),
--			14		when ("01110"),
--			15		when ("01111"),
--			16		when ("10000"),
--			17		when ("10001"),
--			18		when ("10010"),
--			19		when ("10011"),
--			20		when ("10100"),
--			21		when ("10101"),
--			22		when ("10110"),
--			23		when ("10111"),
--			24		when ("11000"),
--			25		when ("11001"),
--			26		when ("11010"),
--			27		when ("11011"),
--			28		when ("11100"),
--			29		when ("11101"),
--			30		when ("11110"),
--			31		when others;
--		
--		with iRA2 select sI2 <=
--			0		when ("00000"),
--			1		when ("00001"),
--			2		when ("00010"),
--			3		when ("00011"),
--			4		when ("00100"),
--			5		when ("00101"),
--			6		when ("00110"),
--			7		when ("00111"),
--			8		when ("01000"),
--			9		when ("01001"),
--			10		when ("01010"),
--			11		when ("01011"),
--			12		when ("01100"),
--			13		when ("01101"),
--			14		when ("01110"),
--			15		when ("01111"),
--			16		when ("10000"),
--			17		when ("10001"),
--			18		when ("10010"),
--			19		when ("10011"),
--			20		when ("10100"),
--			21		when ("10101"),
--			22		when ("10110"),
--			23		when ("10111"),
--			24		when ("11000"),
--			25		when ("11001"),
--			26		when ("11010"),
--			27		when ("11011"),
--			28		when ("11100"),
--			29		when ("11101"),
--			30		when ("11110"),
--			31		when others;

		--outputs
		oRD1 <= sREG(to_integer(unsigned(iRA1)));
		oRD2 <= sREG(to_integer(unsigned(iRA2)));

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