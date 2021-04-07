----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/18/2020 04:27:20 PM
-- Design Name: 
-- Module Name: ALU - Behaviorals
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

entity ALU is
    Port(A:in std_logic_vector(31 downto 0); B: in std_logic_vector(31 downto 0);
            G_sel: in std_logic_vector(3 downto 0);
            G: out std_logic_vector(31 downto 0); cout: out std_logic; 
            v:out std_logic);
end ALU;

architecture Behavioral of ALU is

    component mux_2_32
    port(A:in std_logic_vector(31 downto 0);
            B:in std_logic_vector(31 downto 0);
            S0:in std_logic;
            Z:out std_logic_vector(31 downto 0));
    end component;
    
    component ripple_adder_32
    Port(x: in std_logic_vector(31 downto 0);
            y: in std_logic_vector(31 downto 0);
            cin: in std_logic; sel:in std_logic_vector(1 downto 0);
            g: out std_logic_vector(31 downto 0);cout: out std_logic; v:out std_logic);
    end component;
    
    component logic_circuit is
        Port(A: in std_logic_vector(31 downto 0); B: in std_logic_vector(31 downto 0);
            sel: in std_logic_vector(1 downto 0); G: out std_logic_vector(31 downto 0));
    end  component;

    signal g_adder: std_logic_vector(31 downto 0);
    signal g_logic: std_logic_vector(31 downto 0);
begin
    
    adder: ripple_adder_32 port map(
        x=>A,
        y=>B,
        cin=>G_sel(0),
        sel=>G_sel(2 downto 1),
        g=>g_adder,
        cout=>cout,
        v=>v
    );
    
     logic: logic_circuit port map(
        A => A,
        B=>B,
        sel=>G_sel(2 downto 1),
        G=>g_logic
    );
    
      mux2: mux_2_32 port map(
        A => g_adder,
        B=> g_logic,
        S0=>G_sel(3),
        Z=>G
    );

end Behavioral;
