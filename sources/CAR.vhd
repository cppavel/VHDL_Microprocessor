library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity CAR is
     Port(D:in std_logic_vector(16 downto 0); load: in std_logic; Clk: in std_logic;
            reset: in std_logic;
            Q:inout std_logic_vector(16 downto 0));
end CAR;

architecture Behavioral of CAR is
    begin
        process(Clk)
            begin
                if (rising_edge(Clk)) then
                  if reset='0' then
                    if (load)='1'then
                        Q<=D after 5 ns;
                    else
                        -- we were allowed not to use adder or alu here
                        Q<= std_logic_vector(unsigned(Q) + 1) after 5 ns;
                    end if;   
                  else
                        Q<="00000000000000000" after 5 ns;
                  end if;
                end if;
        end process;
end Behavioral;
