----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/29/2020 08:22:24 AM
-- Design Name: 
-- Module Name: zero_fill_tb - Behavioral
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

entity zero_fill_tb is
end zero_fill_tb;

architecture Behavioral of zero_fill_tb is

    component zero_fill is
    Port(input: in std_logic_vector(4 downto 0);
            output: out std_logic_vector(31 downto 0));
    end component;
    
    signal input: std_logic_vector(4 downto 0);
    signal output: std_logic_vector(31 downto 0);

begin
    
    uut: zero_fill port map(
        input=>input,
        output=>output
    );
    
    stim_proc: process begin
    
    input<="10101";
    
    wait for 10 ns;
    
    input<="11011";
    
    wait for 10 ns;
    
    end process;


end Behavioral;
