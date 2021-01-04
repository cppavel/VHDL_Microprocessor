library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

  entity IR is
        port(Clk, IL: in std_logic;
                D:in std_logic_vector(31 downto 0);           
                opcode: out std_logic_vector(16 downto 0);
                DR: out std_logic_vector(4 downto 0);
                SA: out std_logic_vector(4 downto 0);
                SB: out std_logic_vector(4 downto 0));
    end IR;

architecture Behavioral of IR is

begin    
        process(Clk)
            begin
                if (rising_edge(Clk)) then
                    if (IL)='1' then
                      SB<=D(4 downto 0) after  5 ns;
                      SA<=D(9 downto 5) after  5 ns;
                      DR<=D(14 downto 10) after   5 ns;
                      opcode<=D(31 downto 15) after 5 ns;
                    end if;
                end if;
        end process;
end Behavioral;
