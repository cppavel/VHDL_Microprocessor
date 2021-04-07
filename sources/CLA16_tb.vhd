
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity CLA16_tb is
end CLA16_tb;

architecture Behavioral of CLA16_tb is

component CLA16 is
        Port(x:in std_logic_vector(15 downto 0); y: in std_logic_vector(15 downto 0); cin: in std_logic;
        sel: in std_logic_vector(1 downto 0);s:out std_logic_vector(15 downto 0); GG:out std_logic;
             PP:out std_logic);
end component;

     signal x: std_logic_vector(15 downto 0);
     signal y: std_logic_vector(15 downto 0);
     signal s: std_logic_vector(15 downto 0);
     signal cin: std_logic;
     signal sel: std_logic_vector(1 downto 0);
     signal gg: std_logic;
     signal pp: std_logic;

begin
    
    uut: CLA16 port map(
        x=>x,
        y=>y,
        cin=>cin,
        sel=>sel,
        s=>s,
        gg=>gg,
        pp=>pp
    );
    
    stim_proc: process begin
    
    x<="0000000000000011";
    y<="0000000000000110";
    cin<='0';
    sel<="00";
    
    wait for 120 ns;
    
    x<="0000000000000011";
    y<="0000000000000110";
    cin<='0';
    sel<="01";
    
    wait for 120 ns;
    
    
    x<="0000000000000011";
    y<="0000000000000110";
    cin<='0';
    sel<="10";
    
    wait for 120 ns;
    
    
    x<="0000000000000011";
    y<="0000000000000110";
    cin<='0';
    sel<="11";
    
    wait for 120 ns;
    
    x<="0000000000000011";
    y<="0000000000000110";
    cin<='1';
    sel<="00";
    
    wait for 120 ns;
    
    x<="0000000000000011";
    y<="0000000000000110";
    cin<='1';
    sel<="01";
    
    wait for 120 ns;
    
    
    x<="0000000000000011";
    y<="0000000000000110";
    cin<='1';
    sel<="10";
    
    wait for 120 ns;
    
    
    x<="0000000000000011";
    y<="0000000000000110";
    cin<='1';
    sel<="11";
    
    wait for 120 ns;
    
    
    
    end process;

end Behavioral;
