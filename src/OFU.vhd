library ieee;
use ieee.std_logic_1164.all;

entity OFU is
	port
	(
		--inputs
		iRa_RF	:	in 	std_logic_vector(4 downto 0);
		iRb_RF	:	in		std_logic_vector(4 downto 0);
		
		iRc_ALU	:	in		std_logic_vector(4 downto 0);
		iRc_MEM	:	in		std_logic_vector(4 downto 0);
		iRc_WB	:	in		std_logic_vector(4 downto 0);
		
		--outputs
		oBypassA	:	out	std_logic_vector(1 downto 0);
		oBypassB	:	out	std_logic_vector(1 downto 0);
	);
end entity;

architecture Behavioral of OFU is

	signal sBypassA	:	std_logic_vector(1 downto 0);
	signal sBypassB	:	std_logic_vector(1 downto 0);

	begin
		process(iRa_RF, iRc_ALU, iRc_MEM, iRc_WB)
			if iRa_RF = iRc_ALU
				sBypassA <= "01";
			elsif iRa_RF = iRc_MEM
				sBypassA <= "10";
			elsif iRa_RF = iRc_WB
				sBypassA <= "11";
			else
				sBypassA <= "00";
			end if;
		end process
		
		process(iRb_RF, iRc_ALU, iRc_MEM, iRc_WB)
			if iRb_RF = iRc_ALU
				sBypassB <= "01";
			elsif iRb_RF = iRc_MEM
				sBypassB <= "10";
			elsif iRb_RF = iRc_WB
				sBypassB <= "11";
			else
				sBypassB <= "00";
			end if;
		end process
		
		oBypassA <= sBypassA;
		oBypassB <= sBypassB;
end architecture;