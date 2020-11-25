----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/19/2020 02:51:24 AM
-- Design Name: 
-- Module Name: functional_unit__tb - Behavioral
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

entity functional_unit_tb is
--  Port ( );
end functional_unit_tb;

architecture Behavioral of functional_unit_tb is
    component functional_unit is
    Port(A: in std_logic_vector(31 downto 0); B: in std_logic_vector(31 downto 0);
            FS: in std_logic_vector(4 downto 0); F: out std_logic_vector(31 downto 0);
                N: out std_logic; Z: out std_logic; C: out std_logic; V: out std_logic);
    end component;
    
    signal A:  std_logic_vector(31 downto 0); 
    signal B:  std_logic_vector(31 downto 0); 
    signal FS:  std_logic_vector(4 downto 0); 
    
    signal F:  std_logic_vector(31 downto 0); 
    signal N: std_logic;
    signal Z: std_logic;
    signal C: std_logic;
    signal V: std_logic;
    
begin
    uut: functional_unit port map(
           A=>A,
           B=>B,
           FS=>FS,
           F=>F,
           N=>N,
           Z=>Z,
           C=>C,
           V=>V
     );

        stim_proc:process
        begin
        
        A<=X"101FBACE";
        B<=X"BABEFACE";
        
        FS<="00000";
        
        wait for 175 ns;
        
        FS<="00001";
        
        wait for 175 ns;
        
        FS<="00010";    
                               
        wait for 175 ns;
        
        FS<="00011";    
                   
        wait for 175 ns;
        
        FS<="00100";    
                   
        wait for 175 ns;
        
        FS<="00101"; 
                          
        wait for 175 ns;
        
        FS<="00110";    
                   
        wait for 175 ns; 
        
        FS<="00111";    
                   
        wait for 175 ns;
        
        FS<="01000";    
                   
        wait for 175 ns;
        
        FS<="01010";    
                   
        wait for 175 ns;
        
        FS<="01100";    
                   
        wait for 175 ns;
        
        FS<="01110";    
                   
        wait for 175 ns;
        
        FS<="10000";    
                   
        wait for 175 ns;
        
        FS<="10100";    
                   
        wait for 175 ns;
        
        FS<="11000";    
                   
        wait for 175 ns;
      end process;
end Behavioral;
