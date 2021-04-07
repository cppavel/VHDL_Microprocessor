library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_3_8 is
    Port(   A: std_logic_vector(7 downto 0);
            S:in std_logic_vector(2 downto 0);
            Z:out std_logic);
end mux_3_8;

architecture Behavioral of mux_3_8 is
    begin
        with S select
        Z <= A(0) after 5 ns when "000",
            A(1) after 5 ns when "001",
            A(2) after 5 ns when "010",
            A(3) after 5 ns when "011",
            A(4) after 5 ns when "100",
            A(5) after 5 ns when "101",
            A(6) after 5 ns when "110",
            A (7) after 5 ns when "111",
            'X' after 5 ns when others;
end Behavioral;