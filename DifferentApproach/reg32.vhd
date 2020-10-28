library ieee;
use ieee.std_logic_1164.all;

    entity reg32 is
        port(Clk, load: in std_logic;
                D:in std_logic_vector(31 downto 0);
                Q: out std_logic_vector(31 downto 0));
    end reg32;
    
    architecture Behavioral of reg32 is
    begin
        process(Clk)
            begin
                if (rising_edge(Clk)) then
                    if (not load)='1' then
                        Q<=D after 5 ns;
                    end if;
                end if;
        end process;
    end Behavioral;