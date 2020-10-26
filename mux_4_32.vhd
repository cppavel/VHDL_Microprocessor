library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_4_32 is
    Port(A:in std_logic_vector(31 downto 0);
            B:in std_logic_vector(31 downto 0);
            C:in std_logic_vector(31 downto 0);
            D:in std_logic_vector(31 downto 0);
            S:in std_logic_vector(1 downto 0);
            Z:out std_logic_vector(31 downto 0));
end mux_4_32;

architecture Behavioral of mux_4_32 is
    begin
        with S select
        Z <= A after 5 ns when "00",
            B after 5 ns when "01",
            C after 5 ns when "10",
            D after 5 ns when "11",
            "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX" after 5ns when others;
end Behavioral;