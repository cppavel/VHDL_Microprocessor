library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CAR_tb is
end CAR_tb;

architecture Behavioral of CAR_tb is

    component CAR is
     Port(D:in std_logic_vector(16 downto 0); load: in std_logic; Clk: in std_logic;
           reset: in std_logic;
            Q:inout std_logic_vector(16 downto 0));
    end component;
     
    signal D: std_logic_vector(16 downto 0);
    signal load: std_logic;
    signal Clk: std_logic:='0';
    signal Q: std_logic_vector(16 downto 0);
    signal reset: std_logic;
     
begin

        uut: CAR port map(
        D=>D,
        load=>load,
        Clk=>Clk,
        reset=>reset,
        Q=>Q);
        
        Clk<= not Clk after 10 ns;
        
        stim_proc: process begin
        
        reset<='0';
        load<='1';
        D<="01010101010101010";
        
        wait for 20 ns;
        
        load<='0';
        
        wait for 20 ns;
        
        reset<='1';
        
        wait for 20 ns;
        
        end process;
      
end Behavioral;
