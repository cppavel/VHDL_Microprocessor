library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decoder_5_32 is
    Port(A:in std_logic_vector(5 downto 0);
            D_not:out std_logic_vector(32 downto 0));
end decoder_5_32;   

architecture Behavioral of decoder_5_32  is
    begin
    
    D_not(0) <= (not A(5) and not A(4) and not A(3) and not A(2) and not A(1) and not A(0)) after 5 ns;
    D_not(1) <= (not A(5) and not A(4) and not A(3) and not A(2) and not A(1) and  A(0)) after 5 ns;
    D_not(2) <= (not A(5) and not A(4) and not A(3) and not A(2) and  A(1) and not A(0)) after 5 ns;
    D_not(3) <= (not A(5) and not A(4) and not A(3) and not A(2) and  A(1) and  A(0)) after 5 ns;
    D_not(4) <= (not A(5) and not A(4) and not A(3) and  A(2) and not A(1) and not A(0)) after 5 ns;
    D_not(5) <= (not A(5) and not A(4) and not A(3) and  A(2) and not A(1) and  A(0)) after 5 ns;
    D_not(6) <= (not A(5) and not A(4) and not A(3) and  A(2) and  A(1) and not A(0)) after 5 ns;
    D_not(7) <= (not A(5) and not A(4) and not A(3) and  A(2) and  A(1) and  A(0)) after 5 ns;
    D_not(8) <= (not A(5) and not A(4) and  A(3) and not A(2) and not A(1) and not A(0)) after 5 ns;
    D_not(9) <= (not A(5) and not A(4) and  A(3) and not A(2) and not A(1) and  A(0)) after 5 ns;
    D_not(10) <=(not A(5) and not A(4) and  A(3) and not A(2) and  A(1) and not A(0)) after 5 ns;
    D_not(11) <=(not A(5) and not A(4) and  A(3) and not A(2) and  A(1) and  A(0)) after 5 ns;
    D_not(12) <=(not A(5) and not A(4) and  A(3) and  A(2) and not A(1) and not A(0)) after 5 ns;
    D_not(13) <=(not A(5) and not A(4) and  A(3) and  A(2) and not A(1) and  A(0)) after 5 ns;
    D_not(14) <=(not A(5) and not A(4) and  A(3) and  A(2) and  A(1) and not A(0)) after 5 ns;
    D_not(15) <=(not A(5) and not A(4) and  A(3) and  A(2) and  A(1) and  A(0)) after 5 ns;
    D_not(16) <=( not A(5) and A(4) and not A(3) and not A(2) and not A(1) and not A(0)) after 5 ns;
    D_not(17) <=( not A(5) and A(4) and not A(3) and not A(2) and not A(1) and  A(0)) after 5 ns;
    D_not(18) <=( not A(5) and A(4) and not A(3) and not A(2) and  A(1) and not A(0)) after 5 ns;
    D_not(19) <=( not A(5) and A(4) and not A(3) and not A(2) and  A(1) and  A(0)) after 5 ns;
    D_not(20) <=( not A(5) and A(4) and not A(3) and  A(2) and not A(1) and not A(0)) after 5 ns;
    D_not(21) <=( not A(5) and A(4) and not A(3) and  A(2) and not A(1) and  A(0)) after 5 ns;
    D_not(22) <=( not A(5) and A(4) and not A(3) and  A(2) and  A(1) and not A(0)) after 5 ns;
    D_not(23) <=( not A(5) and A(4) and not A(3) and  A(2) and  A(1) and  A(0)) after 5 ns;
    D_not(24) <=( not A(5) and A(4) and  A(3) and not A(2) and not A(1) and not A(0)) after 5 ns;
    D_not(25) <=( not A(5) and A(4) and  A(3) and not A(2) and not A(1) and  A(0)) after 5 ns;
    D_not(26) <=( not A(5) and A(4) and  A(3) and not A(2) and  A(1) and not A(0)) after 5 ns;
    D_not(27) <=( not A(5) and A(4) and  A(3) and not A(2) and  A(1) and  A(0)) after 5 ns;
    D_not(28) <=( not A(5) and A(4) and  A(3) and  A(2) and not A(1) and not A(0)) after 5 ns;
    D_not(29) <=( not A(5) and A(4) and  A(3) and  A(2) and not A(1) and  A(0)) after 5 ns;
    D_not(30) <=( not A(5) and A(4) and  A(3) and  A(2) and  A(1) and not A(0)) after 5 ns;
    D_not(31) <=( not A(5) and A(4) and  A(3) and  A(2) and  A(1) and  A(0)) after 5 ns;
    D_not(32) <= A(5) after 5 ns;
end Behavioral;