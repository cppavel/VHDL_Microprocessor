library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decoder_5_32 is
    Port(A:in std_logic_vector(4 downto 0);
            E_not:in std_logic;
            D_not:out std_logic_vector(31 downto 0));
end decoder_5_32;   

architecture Behavioral of decoder_5_32  is
    component decoder_3_8
        port(A:in std_logic_vector(2 downto 0);
            E_not:in std_logic;
            D_not:out std_logic_vector(7 downto 0));
    end component;
    
    component decoder_2_4
        port(A:in std_logic_vector(1 downto 0);
            E_not:in std_logic;
            D_not:out std_logic_vector(3 downto 0));
    end component;
    signal enable: std_logic_vector(3 downto 0);
    begin
    
    decoder_2_4_1: decoder_2_4 port map(A=>A(4 downto 3),E_not=>E_not,D_not=>enable);
    decoder_3_8_1: decoder_3_8 port map(A=>A(2 downto 0), E_not=>enable(0),D_not=>D_not(7 downto 0));
    decoder_3_8_2: decoder_3_8 port map(A=>A(2 downto 0), E_not=>enable(1),D_not=>D_not(15 downto 8));
    decoder_3_8_3: decoder_3_8 port map(A=>A(2 downto 0), E_not=>enable(2),D_not=>D_not(23 downto 16));
    decoder_3_8_4: decoder_3_8 port map(A=>A(2 downto 0), E_not=>enable(3),D_not=>D_not(31 downto 24));     
end Behavioral;