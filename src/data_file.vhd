library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity data_ram is
    Port (  iCLK :  in  std_logic;
            iRST :  in  std_logic;
            iAdr :  in  std_logic_vector (7 downto 0); -- was 5 bits because the memory had 32 places
            iWD  :  in  std_logic_vector (31 downto 0);
            iWE  :  in  std_logic;
            iOE  :  in  std_logic;
            oRD  :  out  std_logic_vector (31 downto 0));
end data_ram;

architecture Behavioral of data_ram is

    type tMEM is array(0 to 255) of std_logic_vector(31 downto 0);
    signal rMEM : tMEM;
	 signal sMEM : tMEM := (others => x"00000000");

begin

    process (iCLK, iRST) begin
        if (iRST = '1') then
            for i in 0 to 255 loop
                rMEM(i) <= sMEM(i); 
            end loop;
        elsif (iCLK'event and iCLK = '1') then
            if (iWE = '1') then
                rMEM(to_integer(unsigned(iAdr(7 downto 2)))) <= iWD;
            end if;
        end if;
    end process;
-- from here ---------------------------------------------------------------
 -- .data
	sMEM(0) 	<= "00000000000000000000000000000010";  -- _var
--- to here  ---------------------------------------------------------------

with iOE select oRD <=
    rMEM(to_integer(unsigned(iAdr(7 downto 2))))    when '1',
    x"00000000"                         when others;

end Behavioral;
