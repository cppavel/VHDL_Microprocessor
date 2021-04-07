----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/19/2020 01:45:39 AM
-- Design Name: 
-- Module Name: zero_detect_tb - Behavioral
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


entity zero_detect_tb is
--  Port ( );
end zero_detect_tb;

architecture Behavioral of zero_detect_tb is
    component zero_detect is
        Port(A:in std_logic_vector(31 downto 0);Z: out std_logic);
    end component;
    
    signal A: std_logic_vector(31 downto 0);
    signal Z: std_logic;
begin

    uut: zero_detect port map(
        A => A,
        Z => Z
    );
    
    stim_proc:process
    begin
        A<=X"00000000";
        wait for 10 ns;
        
        A<=X"00F00000";
        wait for 10 ns;
    end process;


end Behavioral;
