----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/18/2020 01:42:41 PM
-- Design Name: 
-- Module Name: logic_circuit_slice_tb - Behavioral
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

entity logic_circuit_slice_tb is
--  Port ( );
end logic_circuit_slice_tb;

architecture Behavioral of logic_circuit_slice_tb is
    component logic_circuit_slice
    Port (A:in std_logic; B: in std_logic; sel: in std_logic_vector (1 downto 0);
            G: out std_logic);
end component;
    
    --input
    signal A: std_logic;
    signal B: std_logic;
    signal sel: std_logic_vector(1 downto 0);
    
    --output
    signal G: std_logic;
begin
  uut: logic_circuit_slice port map(
        A => A,
        B=>B,
        sel=>sel,
        G=>G
    );
    
    stim_proc:process
    begin
        A <= '1';
        B <= '0';
        sel<="00";
        
        wait for 15 ns;
        
        A <= '1';
        B <= '0';
        sel<="01";
        
        wait for 15 ns;
        
        A <= '1';
        B <= '0';
        sel<="10";
        
        wait for 15 ns;
        
        A <= '1';
        B <= '0';
        sel<="11";
        
        wait for 15 ns;
        
        A <= '1';
        B <= '1';
        sel<="00";
        
        wait for 15 ns;
        
        A <= '1';
        B <= '1';
        sel<="01";
        
        wait for 15 ns;
        
        A <= '1';
        B <= '1';
        sel<="10";
        
        wait for 15 ns;
        
        A <= '0';
        B <= '0';
        sel<="11";
        
        wait for 15 ns;
        
        
    end process;
    

end Behavioral;
