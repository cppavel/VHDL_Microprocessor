----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/18/2020 10:06:33 PM
-- Design Name: 
-- Module Name: ALU_tb - Behavioral
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

entity ALU_CLA_tb is
--  Port ( );
end ALU_CLA_tb;

architecture Behavioral of ALU_CLA_tb is
    component ALU_CLA is
    Port(A:in std_logic_vector(31 downto 0); B: in std_logic_vector(31 downto 0);
            G_sel: in std_logic_vector(3 downto 0);
            G: out std_logic_vector(31 downto 0); cout: inout std_logic; 
            v:out std_logic);
    end component;
    
    signal A : std_logic_vector(31 downto 0);
    signal B : std_logic_vector(31 downto 0);
    signal G_sel: std_logic_vector(3 downto 0);
    signal G : std_logic_vector(31 downto 0);
    signal cout: std_logic;
    signal v: std_logic;
    
begin
    
     uut: ALU_CLA port map(
        A=>A,
        B=>B,
        G_sel=>G_sel,
        G=>G,
        cout=>cout,
        v=>v
    );
    
    stim_proc:process
    begin
    -- 160 ns for ripple adder and 5 ns for mux, hence 165 ns.  
    A<=X"90BC75E4";
    B<=X"8FD0DE01";
    G_sel<="0000";
    
    wait for 170 ns;
    
    G_sel<="0001";
    
    wait for 170 ns;
    
    G_sel<="0010";
    
    wait for 170 ns;
    
    G_sel<="0011";
    
    wait for 170 ns;
    
    G_sel<="0100";
    
    wait for 170 ns;
    
    G_sel<="0101";
    
    wait for 170 ns;
    
    G_sel<="0110";
    
    wait for 170 ns;
    
    G_sel<="0111";
    
    wait for 170 ns;
    
    G_sel<="1000";
    
    wait for 170 ns;
    
    G_sel<="1010";
    
    wait for 170 ns;
    
    G_sel<="1100";
    
    wait for 170 ns;
    
    G_sel<="1110";
    
    wait for 170 ns;
    
    
        
    end process;


end Behavioral;
