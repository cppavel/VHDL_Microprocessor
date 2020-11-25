----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/17/2020 10:41:00 PM
-- Design Name: 
-- Module Name: full_adder_tb - Behavioral
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

entity full_adder_tb is
--  Port ( );
end full_adder_tb;

architecture Behavioral of full_adder_tb is
    component full_adder
    port(x:in std_logic; y:in std_logic;
            cin:in std_logic; sel: in std_logic_vector(1 downto 0); 
            s: out std_logic; cout:out std_logic);
    end component;
    
    --inputs
    signal x: std_logic;
    signal y: std_logic;
    signal cin: std_logic;
    signal sel: std_logic_vector(1 downto 0);
    --outputs
    signal s: std_logic;
    signal cout: std_logic;
    
begin

    uut: full_adder port map(
        x => x,
        y=>y,
        cin=>cin,
        sel=>sel,
        s=>s,
        cout=>cout
    );
    
    stim_proc:process
    begin
        sel<="01";
        x <= '0';
        y <= '0';
        cin<= '0';
        
        wait for 10 ns;
        
        x <= '1';
        y <= '0';
        cin<= '0';
        
        wait for 10 ns;
        
        x <= '0';
        y <= '1';
        cin<= '0';
        
        wait for 10 ns;
        
        x <= '1';
        y <= '1';
        cin<= '0';
        
        wait for 10 ns;
        
        x <= '0';
        y <= '0';
        cin<= '1';
        
        wait for 10 ns;
        
        x <= '1';
        y <= '0';
        cin<= '1';
        
        wait for 10 ns;
        
        x <= '0';
        y <= '1';
        cin<= '1';
        
        wait for 10 ns;
        
        x <= '1';
        y <= '1';
        cin<= '1';
        
        wait for 10 ns;
        
        sel<="10";
        x <= '0';
        y <= '0';
        cin<= '0';
        
        wait for 10 ns;
        
        x <= '1';
        y <= '0';
        cin<= '0';
        
        wait for 10 ns;
        
        x <= '0';
        y <= '1';
        cin<= '0';
        
        wait for 10 ns;
        
        x <= '1';
        y <= '1';
        cin<= '0';
        
        wait for 10 ns;
        
        x <= '0';
        y <= '0';
        cin<= '1';
        
        wait for 10 ns;
        
        x <= '1';
        y <= '0';
        cin<= '1';
        
        wait for 10 ns;
        
        x <= '0';
        y <= '1';
        cin<= '1';
        
        wait for 10 ns;
        
        x <= '1';
        y <= '1';
        cin<= '1';
        
        wait for 10 ns;
        
        sel<="00";
        x <= '0';
        y <= '0';
        cin<= '0';
        
        wait for 10 ns;
        
        x <= '1';
        y <= '0';
        cin<= '0';
        
        wait for 10 ns;
        
        x <= '0';
        y <= '1';
        cin<= '0';
        
        wait for 10 ns;
        
        x <= '1';
        y <= '1';
        cin<= '0';
        
        wait for 10 ns;
        
        x <= '0';
        y <= '0';
        cin<= '1';
        
        wait for 10 ns;
        
        x <= '1';
        y <= '0';
        cin<= '1';
        
        wait for 10 ns;
        
        x <= '0';
        y <= '1';
        cin<= '1';
        
        wait for 10 ns;
        
        x <= '1';
        y <= '1';
        cin<= '1';
        
        wait for 10 ns;
        
        sel<="11";
        x <= '0';
        y <= '0';
        cin<= '0';
        
        wait for 10 ns;
        
        x <= '1';
        y <= '0';
        cin<= '0';
        
        wait for 10 ns;
        
        x <= '0';
        y <= '1';
        cin<= '0';
        
        wait for 10 ns;
        
        x <= '1';
        y <= '1';
        cin<= '0';
        
        wait for 10 ns;
        
        x <= '0';
        y <= '0';
        cin<= '1';
        
        wait for 10 ns;
        
        x <= '1';
        y <= '0';
        cin<= '1';
        
        wait for 10 ns;
        
        x <= '0';
        y <= '1';
        cin<= '1';
        
        wait for 10 ns;
        
        x <= '1';
        y <= '1';
        cin<= '1';
        
        wait for 10 ns;        
         
    end process;
end;
