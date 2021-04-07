library IEEE; 
use IEEE.STD_LOGIC_1164.all; 

package mypackage is 

   type std_logic_matrix is array (32 downto 0) of std_logic_vector(31 downto 0);

end mypackage; 

package body mypackage is 

end mypackage; 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.mypackage.all;

entity mux_32_32 is
    Port(A:in std_logic_matrix;
            S:in std_logic_vector(5 downto 0);
            Z:out std_logic_vector(31 downto 0));
end mux_32_32;   

architecture Behavioral of mux_32_32  is
    begin
        with S select
            Z<=A(0) after 5 ns when "000000",
                A(1) after 5 ns when "000001",
                A(2) after 5 ns when "000010",
                A(3) after 5 ns when "000011",
                A(4) after 5 ns when "000100",
                A(5) after 5 ns when "000101",
                A(6) after 5 ns when "000110",
                A(7) after 5 ns when "000111",
                A(8) after 5 ns when "001000",
                A(9) after 5 ns when "001001",
                A(10) after 5 ns when "001010",
                A(11) after 5 ns when "001011",
                A(12) after 5 ns when "001100",
                A(13) after 5 ns when "001101",
                A(14) after 5 ns when "001110",
                A(15) after 5 ns when "001111",
                A(16) after 5 ns when "010000",
                A(17) after 5 ns when "010001",
                A(18) after 5 ns when "010010",
                A(19) after 5 ns when "010011",
                A(20) after 5 ns when "010100",
                A(21) after 5 ns when "010101",
                A(22) after 5 ns when "010110",
                A(23) after 5 ns when "010111",
                A(24) after 5 ns when "011000",
                A(25) after 5 ns when "011001",
                A(26) after 5 ns when "011010",
                A(27) after 5 ns when "011011",
                A(28) after 5 ns when "011100",
                A(29) after 5 ns when "011101",
                A(30) after 5 ns when "011110",
                A(31) after 5 ns when "011111",
                A(32) after 5 ns when others;
end Behavioral;