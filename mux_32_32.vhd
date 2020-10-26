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
    component mux_2_32
        port(A:in std_logic_vector(31 downto 0);
            B:in std_logic_vector(31 downto 0);
            S0:in std_logic;
            Z:out std_logic_vector(31 downto 0));
    end component;
    
    component mux_4_32
        port(A:in std_logic_vector(31 downto 0);
            B:in std_logic_vector(31 downto 0);
            C:in std_logic_vector(31 downto 0);
            D:in std_logic_vector(31 downto 0);
            S:in std_logic_vector(1 downto 0);
            Z:out std_logic_vector(31 downto 0));
    end component;
    
    signal out1: std_logic_vector(31 downto 0);
    signal out2: std_logic_vector(31 downto 0);
    signal out3: std_logic_vector(31 downto 0);
    signal out4: std_logic_vector(31 downto 0);
    signal out5: std_logic_vector(31 downto 0);
    signal out6: std_logic_vector(31 downto 0);
    signal out7: std_logic_vector(31 downto 0);
    signal out8: std_logic_vector(31 downto 0);
    signal out9: std_logic_vector(31 downto 0);
    signal out10: std_logic_vector(31 downto 0);
    begin
    
    mux_4_32_1: mux_4_32 port map(A=>A(0),B=>A(1),C=>A(2),D=>A(3), S=>S(1 downto 0),Z=>out1);
    mux_4_32_2: mux_4_32 port map(A=>A(4),B=>A(5),C=>A(6),D=>A(7), S=>S(1 downto 0),Z=>out2);
    mux_4_32_3: mux_4_32 port map(A=>A(8),B=>A(9),C=>A(10),D=>A(11), S=>S(1 downto 0),Z=>out3);
    mux_4_32_4: mux_4_32 port map(A=>A(12),B=>A(13),C=>A(14),D=>A(15), S=>S(1 downto 0),Z=>out4);
    mux_4_32_5: mux_4_32 port map(A=>A(16),B=>A(17),C=>A(18),D=>A(19), S=>S(1 downto 0),Z=>out5);
    mux_4_32_6: mux_4_32 port map(A=>A(20),B=>A(21),C=>A(22),D=>A(23), S=>S(1 downto 0),Z=>out6);
    mux_4_32_7: mux_4_32 port map(A=>A(24),B=>A(25),C=>A(26),D=>A(27), S=>S(1 downto 0),Z=>out7);
    mux_4_32_8: mux_4_32 port map(A=>A(28),B=>A(29),C=>A(30),D=>A(31), S=>S(1 downto 0),Z=>out8);
    
    mux_4_32_9: mux_4_32 port map(A=>out1,B=>out2,C=>out3,D=>out4, S=>S(3 downto 2),Z=>out9);
    mux_4_32_10: mux_4_32 port map(A=>out5,B=>out6,C=>out7,D=>out8, S=>S(3 downto 2),Z=>out10);
    
    mux_2_32_1: mux_2_32 port map(A=>out9, B=>out10, S0=>S(4),Z=>Z);
       
end Behavioral;