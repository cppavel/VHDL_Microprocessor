library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decoder_2_4 is
    Port(A:in std_logic_vector(1 downto 0);
            E_not:in std_logic;
            D_not:out std_logic_vector(3 downto 0));
end decoder_2_4;

architecture Behavioral of decoder_2_4 is
    begin
        D_not(0) <= (not(not E_not and not A(1) and not A(0))) after 5 ns;
        D_not(1) <= (not(not E_not and not A(1) and A(0))) after 5 ns;
        D_not(2) <= (not(not E_not and A(1) and not A(0))) after 5 ns;
        D_not(3) <= (not(not E_not and A(1) and A(0))) after 5 ns;
end Behavioral;