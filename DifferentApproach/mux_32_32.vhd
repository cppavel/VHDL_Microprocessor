library IEEE; 
use IEEE.STD_LOGIC_1164.all; 

package mypackage is 

   type std_logic_matrix is array (31 downto 0) of std_logic_vector(31 downto 0);

end mypackage; 

package body mypackage is 

end mypackage; 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.mypackage.all;

entity mux_32_32 is
    Port(A:in std_logic_matrix;
            S:in std_logic_vector(4 downto 0);
            Z:out std_logic_vector(31 downto 0));
end mux_32_32;   

architecture Behavioral of mux_32_32  is
    begin
        with S select
            Z<=A(0) after 5 ns when "00000",
                A(1) after 5 ns when "00001",
                A(2) after 5 ns when "00010",
                A(3) after 5 ns when "00011",
                A(4) after 5 ns when "00100",
                A(5) after 5 ns when "00101",
                A(6) after 5 ns when "00110",
                A(7) after 5 ns when "00111",
                A(8) after 5 ns when "01000",
                A(9) after 5 ns when "01001",
                A(10) after 5 ns when "01010",
                A(11) after 5 ns when "01011",
                A(12) after 5 ns when "01100",
                A(13) after 5 ns when "01101",
                A(14) after 5 ns when "01110",
                A(15) after 5 ns when "01111",
                A(16) after 5 ns when "10000",
                A(17) after 5 ns when "10001",
                A(18) after 5 ns when "10010",
                A(19) after 5 ns when "10011",
                A(20) after 5 ns when "10100",
                A(21) after 5 ns when "10101",
                A(22) after 5 ns when "10110",
                A(23) after 5 ns when "10111",
                A(24) after 5 ns when "11000",
                A(25) after 5 ns when "11001",
                A(26) after 5 ns when "11010",
                A(27) after 5 ns when "11011",
                A(28) after 5 ns when "11100",
                A(29) after 5 ns when "11101",
                A(30) after 5 ns when "11110",
                A(31) after 5 ns when "11111",
                "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX" after 5ns when others;
end Behavioral;