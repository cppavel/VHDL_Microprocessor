----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/17/2020 10:35:34 PM
-- Design Name: 
-- Module Name: full_adder - Behavioral
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

entity full_adder is
    Port(x: in std_logic; y: in std_logic;
        cin: in std_logic; sel: in std_logic_vector(1 downto 0);
            s: out std_logic; cout: out std_logic);
end full_adder;

architecture Behavioral of full_adder is

    begin
        S<= x xor ((sel(0)and y )or (sel(1) and not y)) xor cin after 5 ns;
        cout<= (x and ((sel(0)and y )or (sel(1) and not y))) xor (x and cin) 
            xor (((sel(0)and y )or (sel(1) and not y)) and cin) after 5 ns;
end Behavioral;
