library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decoder_3_8 is
    Port(A:in std_logic_vector(2 downto 0);
            E_not:in std_logic;
            D_not:out std_logic_vector(7 downto 0));
end decoder_3_8;

architecture Behavioral of decoder_3_8  is
    begin
        D_not(0) <= (not(not E_not and not A(2) and not A(1) and not A(0))) after 5 ns; --7
        D_not(1) <= (not(not E_not and not A(2) and not A(1) and A(0))) after 5 ns; -- 6
        D_not(2) <= (not(not E_not and not A(2) and A(1) and not A(0))) after 5 ns; --5
        D_not(3) <= (not(not E_not and not A(2) and A(1) and A(0))) after 5 ns; --4
        D_not(4) <= (not(not E_not and A(2) and not A(1) and not A(0))) after 5 ns; --3
        D_not(5) <= (not(not E_not and A(2) and not A(1) and A(0))) after 5 ns; --2
        D_not(6) <= (not(not E_not and A(2) and A(1) and not A(0))) after 5 ns; --1
        D_not(7) <= (not(not E_not and A(2) and A(1) and A(0))) after 5 ns; --0
end Behavioral;