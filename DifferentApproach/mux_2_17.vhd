library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_2_17 is
    Port(A:in std_logic_vector(16 downto 0);
            B:in std_logic_vector(16 downto 0);
            S0:in std_logic;
            Z:out std_logic_vector(16 downto 0));
end mux_2_17;

architecture Behavioral of mux_2_17 is
    begin
        with S0 select
        Z <= A after 5 ns when '0',
            B after 5 ns when '1',
            "XXXXXXXXXXXXXXXXX" after 5ns when others;
end Behavioral;
