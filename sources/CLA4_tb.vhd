
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity CLA4_tb is
end CLA4_tb;

architecture Behavioral of CLA4_tb is

    component CLA4 is
        Port(x:in std_logic_vector(3 downto 0); y: in std_logic_vector(3 downto 0); cin: in std_logic;
        sel: in std_logic_vector(1 downto 0);s:out std_logic_vector(3 downto 0); 
             GG:out std_logic; PP:out std_logic);
     end component;
     
     signal x: std_logic_vector(3 downto 0);
     signal y: std_logic_vector(3 downto 0);
     signal s: std_logic_vector(3 downto 0);
     signal cin: std_logic;
     signal sel: std_logic_vector(1 downto 0);
     signal gg: std_logic;
     signal pp: std_logic;

begin

     uut: CLA4 port map(
        x=>x,
        y=>y,
        cin=>cin,
        sel=>sel,
        s=>s,
        gg=>gg,
        pp=>pp
    );
    
    stim_proc: process begin
    
    x<="0011";
    y<="0110";
    cin<='0';
    sel<="00";
    
    wait for 30 ns;
    
    x<="0011";
    y<="0110";
    cin<='0';
    sel<="01";
    
    wait for 30 ns;
    
    
    x<="0011";
    y<="0110";
    cin<='0';
    sel<="10";
    
    wait for 30 ns;
    
    
    x<="0011";
    y<="0110";
    cin<='0';
    sel<="11";
    
    wait for 30 ns;
    
    x<="0011";
    y<="0110";
    cin<='1';
    sel<="00";
    
    wait for 30 ns;
    
    x<="0011";
    y<="0110";
    cin<='1';
    sel<="01";
    
    wait for 30 ns;
    
    
    x<="0011";
    y<="0110";
    cin<='1';
    sel<="10";
    
    wait for 30 ns;
    
    
    x<="0011";
    y<="0110";
    cin<='1';
    sel<="11";
    
    wait for 30 ns;
    
    
    
    end process;
end Behavioral;
