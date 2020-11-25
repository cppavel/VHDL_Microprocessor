library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decoder_5_32 is
    Port(A:in std_logic_vector(4 downto 0);
            D_not:out std_logic_vector(31 downto 0));
end decoder_5_32;   

architecture Behavioral of decoder_5_32  is
    begin
    
    D_not(0) <= (not A(4) and not A(3) and not A(2) and not A(1) and not A(0)) after 5 ns;
    D_not(1) <= (not A(4) and not A(3) and not A(2) and not A(1) and  A(0)) after 5 ns;
    D_not(2) <= (not A(4) and not A(3) and not A(2) and  A(1) and not A(0)) after 5 ns;
    D_not(3) <= (not A(4) and not A(3) and not A(2) and  A(1) and  A(0)) after 5 ns;
    D_not(4) <= (not A(4) and not A(3) and  A(2) and not A(1) and not A(0)) after 5 ns;
    D_not(5) <= (not A(4) and not A(3) and  A(2) and not A(1) and  A(0)) after 5 ns;
    D_not(6) <= (not A(4) and not A(3) and  A(2) and  A(1) and not A(0)) after 5 ns;
    D_not(7) <= (not A(4) and not A(3) and  A(2) and  A(1) and  A(0)) after 5 ns;
    D_not(8) <= (not A(4) and  A(3) and not A(2) and not A(1) and not A(0)) after 5 ns;
    D_not(9) <= (not A(4) and  A(3) and not A(2) and not A(1) and  A(0)) after 5 ns;
    D_not(10) <=(not A(4) and  A(3) and not A(2) and  A(1) and not A(0)) after 5 ns;
    D_not(11) <=(not A(4) and  A(3) and not A(2) and  A(1) and  A(0)) after 5 ns;
    D_not(12) <=(not A(4) and  A(3) and  A(2) and not A(1) and not A(0)) after 5 ns;
    D_not(13) <=(not A(4) and  A(3) and  A(2) and not A(1) and  A(0)) after 5 ns;
    D_not(14) <=(not A(4) and  A(3) and  A(2) and  A(1) and not A(0)) after 5 ns;
    D_not(15) <=(not A(4) and  A(3) and  A(2) and  A(1) and  A(0)) after 5 ns;
    D_not(16) <=( A(4) and not A(3) and not A(2) and not A(1) and not A(0)) after 5 ns;
    D_not(17) <=( A(4) and not A(3) and not A(2) and not A(1) and  A(0)) after 5 ns;
    D_not(18) <=( A(4) and not A(3) and not A(2) and  A(1) and not A(0)) after 5 ns;
    D_not(19) <=( A(4) and not A(3) and not A(2) and  A(1) and  A(0)) after 5 ns;
    D_not(20) <=( A(4) and not A(3) and  A(2) and not A(1) and not A(0)) after 5 ns;
    D_not(21) <=( A(4) and not A(3) and  A(2) and not A(1) and  A(0)) after 5 ns;
    D_not(22) <=( A(4) and not A(3) and  A(2) and  A(1) and not A(0)) after 5 ns;
    D_not(23) <=( A(4) and not A(3) and  A(2) and  A(1) and  A(0)) after 5 ns;
    D_not(24) <=( A(4) and  A(3) and not A(2) and not A(1) and not A(0)) after 5 ns;
    D_not(25) <=( A(4) and  A(3) and not A(2) and not A(1) and  A(0)) after 5 ns;
    D_not(26) <=( A(4) and  A(3) and not A(2) and  A(1) and not A(0)) after 5 ns;
    D_not(27) <=( A(4) and  A(3) and not A(2) and  A(1) and  A(0)) after 5 ns;
    D_not(28) <=( A(4) and  A(3) and  A(2) and not A(1) and not A(0)) after 5 ns;
    D_not(29) <=( A(4) and  A(3) and  A(2) and not A(1) and  A(0)) after 5 ns;
    D_not(30) <=( A(4) and  A(3) and  A(2) and  A(1) and not A(0)) after 5 ns;
    D_not(31) <=( A(4) and  A(3) and  A(2) and  A(1) and  A(0)) after 5 ns;
        
end Behavioral;