library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_4 is
    Port(A:in std_logic;
            B:in std_logic;
            C:in std_logic;
            D:in std_logic;
            S:in std_logic_vector(1 downto 0);
            Z:out std_logic);
end mux_4;

architecture Behavioral of mux_4 is
    begin
        with S select
        Z <= A after 5 ns when "00",
            B after 5 ns when "01",
            C after 5 ns when "10",
            D after 5 ns when "11",
            'X' after 5 ns when others;
end Behavioral;