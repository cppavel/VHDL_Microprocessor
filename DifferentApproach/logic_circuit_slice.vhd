----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/18/2020 01:24:49 PM
-- Design Name: 
-- Module Name: logic_circuit_slice - Behavioral
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

entity logic_circuit_slice is
    Port (A:in std_logic; B: in std_logic; sel: in std_logic_vector (1 downto 0);
            G: out std_logic);
end logic_circuit_slice;

architecture Behavioral of logic_circuit_slice is  
        component mux_4
        Port(A:in std_logic;
            B:in std_logic;
            C:in std_logic;
            D:in std_logic;
            S:in std_logic_vector(1 downto 0);
            Z:out std_logic);
    end component;
    
    signal andgate: std_logic;
    signal orgate: std_logic;
    signal xorgate: std_logic;
    signal notgate: std_logic;
    

begin
    andgate<= A and B after 5ns;
    orgate <= A or B after 5ns;
    xorgate <= A xor B after 5ns;
    notgate <= not A after 5ns;
    
    mux4: mux_4 port map(
        A => (andgate),
        B=> (orgate),
        C=> (xorgate),
        D=> (notgate),
        S=>sel,
        Z=>G
    );


end Behavioral;
