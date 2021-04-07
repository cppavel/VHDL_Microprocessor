----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/19/2020 01:13:48 AM
-- Design Name: 
-- Module Name: shifter_tb - Behavioral
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

entity shifter_tb is
--  Port ( );
end shifter_tb;

architecture Behavioral of shifter_tb is

    component shifter is
    Port(A: in std_logic_vector(31 downto 0); sel: in std_logic_vector(1 downto 0);
            H: out std_logic_vector(31 downto 0));
    end component;
    
    signal A: std_logic_vector(31 downto 0);
    signal sel: std_logic_vector(1 downto 0);
    signal H: std_logic_vector(31 downto 0);

begin

     uut: shifter port map(
        A => A,
        sel=>sel,
        H=>H
    );
    
    stim_proc:process
    begin
        
        A <=X"71110001";
        sel<="00";
        
        wait for 10 ns;
        
        sel<="01";
        
        wait for 10 ns;
        
        sel<="10";
        
        wait for 10 ns;
  
    end process;


end Behavioral;
