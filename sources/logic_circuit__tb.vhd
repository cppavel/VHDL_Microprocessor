----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/18/2020 04:16:44 PM
-- Design Name: 
-- Module Name: logic_circuit__tb - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity logic_circuit_tb is
--  Port ( );
end logic_circuit_tb;

architecture Behavioral of logic_circuit_tb is

    component logic_circuit is
        Port(A: in std_logic_vector(31 downto 0); B: in std_logic_vector(31 downto 0);
            sel: in std_logic_vector(1 downto 0); G: out std_logic_vector(31 downto 0));
    end  component;
--input
    signal A: std_logic_vector(31 downto 0);
    signal B: std_logic_vector(31 downto 0);
    signal sel: std_logic_vector(1 downto 0);
--output
    signal G: std_logic_vector(31 downto 0);
begin

    uut: logic_circuit port map(
        A => A,
        B=>B,
        sel=>sel,
        G=>G
    );
    
    stim_proc:process
    begin
        A <= X"F0F0F0F0";
        B <= X"FFFFFFFF";
        sel<="00";
        
        wait for 15 ns;
        
        A <= X"F0F0F0F0";
        B <= X"0F0F0F0F";
        sel<="01";
        
        wait for 15 ns;
        
        A <= X"BCDE0000";
        B <= X"FFFF0000";
        sel<="10";
        
        wait for 15 ns;
        
        A <= X"0000FFFF";
        B <= X"00000000";
        sel<="11";
        
        wait for 15 ns;
        
    end process;


end Behavioral;
