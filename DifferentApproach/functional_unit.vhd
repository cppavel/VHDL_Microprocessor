----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/19/2020 01:56:16 AM
-- Design Name: 
-- Module Name: functional_unit - Behavioral
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

entity functional_unit is
    Port(A: in std_logic_vector(31 downto 0); B: in std_logic_vector(31 downto 0);
            FS: in std_logic_vector(4 downto 0); F: out std_logic_vector(31 downto 0);
                N: out std_logic; Z: out std_logic; C: out std_logic; V: out std_logic);
end functional_unit;

architecture Behavioral of functional_unit is

    component ALU is
    Port(A:in std_logic_vector(31 downto 0); B: in std_logic_vector(31 downto 0);
            G_sel: in std_logic_vector(3 downto 0);
            G: out std_logic_vector(31 downto 0); cout: out std_logic; 
            v:out std_logic);
    end component;
    
    component shifter is
    Port(A: in std_logic_vector(31 downto 0); sel: in std_logic_vector(1 downto 0);
            H: out std_logic_vector(31 downto 0));
    end component;
    
    component zero_detect is
        Port(A:in std_logic_vector(31 downto 0);Z: out std_logic);
    end component;
    
    component mux_2_32
    port(A:in std_logic_vector(31 downto 0);
            B:in std_logic_vector(31 downto 0);
            S0:in std_logic;
            Z:out std_logic_vector(31 downto 0));
    end component;
    
    signal add: std_logic_vector(31 downto 0);
    signal shift: std_logic_vector(31 downto 0);

begin
    alu0: ALU port map(
        A=>A,
        B=>B,
        G_sel=>FS(3 downto 0),
        G=>add,
        cout=>C,
        v=>V
    );
    
    shifter0: shifter port map(
        A=>B,
        sel=>FS(3 downto 2),
        H=>shift
    );
    
    zero_detect0: zero_detect port map(
        A => add,
        Z => Z
    );
    
    mux: mux_2_32 port map(
        A =>add,
        B=>shift,
        S0=>FS(4),
        Z=>F
    );
    
    N<=add(31);
    
end Behavioral;
