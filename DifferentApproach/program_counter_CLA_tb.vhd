----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/29/2020 06:43:14 AM
-- Design Name: 
-- Module Name: program_counter_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity program_counter_CLA_tb is
end program_counter_CLA_tb;

architecture Behavioral of program_counter_CLA_tb is

component program_counter_CLA is
    Port(Clk, PL, PI, reset: in std_logic; 
        offset: in std_logic_vector(31 downto 0);
        PC: inout std_logic_vector(31 downto 0));
end component;

    signal Clk: std_logic:='0';
    signal PL: std_logic;
    signal PI: std_logic;
    signal reset: std_logic;
    signal offset: std_logic_vector(31 downto 0);
    
    signal PC: std_logic_vector(31 downto 0);

begin

    uut: program_counter_CLA port map(
           Clk=>Clk,
           PL=>PL,
           PI=>PI,
           reset=>reset,
           offset=>offset,
           PC=>PC);
           
    Clk <= not Clk after 165 ns;
    
    stim_proc:process
    
    begin
    
    reset<='1';
    wait for 330 ns;
    
    reset<='0';
    offset<=X"0000000F";
    PI<='1';
    PL<='0';
    
    wait for 330 ns;
    
    PL<='1';
    PI<='0';
    
    wait for 330 ns;
    
    offset<=X"FFFFFFFF";
    
    wait for 330 ns;
    
    end process;

end Behavioral;
