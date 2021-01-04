library ieee;
use ieee.std_logic_1164.all;

    entity NZCV is
        port(Clk, load: in std_logic;
                D:in std_logic_vector(3 downto 0);
                reset:in std_logic_vector(3 downto 0);
                Q: out std_logic_vector(3 downto 0));
    end NZCV;
    
    architecture Behavioral of NZCV is
    begin
        process(Clk)
            begin
                if (rising_edge(Clk)) then
                    if (load)='1' then
                        Q<=D after 5 ns;
                    else
                      if reset(0) = '1' then
                        Q(0)<='0' after 5 ns;
                      end if;
                      
                      if reset(1) = '1' then
                        Q(1)<='0' after 5 ns;
                      end if;
                      
                      if reset(2) = '1' then
                        Q(2)<='0' after 5 ns;
                      end if;
                      
                      if reset(3) = '1' then
                        Q(3)<='0' after 5 ns;
                      end if;
                      
                    end if;
                end if;
        end process;
    end Behavioral;