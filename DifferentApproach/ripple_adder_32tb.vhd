----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/17/2020 11:19:29 PM
-- Design Name: 
-- Module Name: ripple_adder_32tb - Behavioral
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

entity ripple_adder_32tb is
--  Port ( );
end ripple_adder_32tb;

architecture Behavioral of ripple_adder_32tb is

    component ripple_adder_32
    Port(x: in std_logic_vector(31 downto 0);
            y: in std_logic_vector(31 downto 0);
            cin: in std_logic; sel:in std_logic_vector(1 downto 0);
            g: out std_logic_vector(31 downto 0);cout: out std_logic; v:out std_logic);
    end component;
    
    --inputs
    signal x: std_logic_vector (31 downto 0);
    signal y: std_logic_vector (31 downto 0);
    signal cin: std_logic;
    signal sel:std_logic_vector(1 downto 0);
    --outputs
    signal g: std_logic_vector (31 downto 0);
    signal cout: std_logic;
    signal v: std_logic;
    
begin

    uut: ripple_adder_32 port map(
        x=>x,
        y=>y,
        cin=>cin,
        sel=>sel,
        g=>g,
        cout=>cout,
        v=>v
    );
    
    stim_proc:process
    begin
        sel<="01";
        x<=X"00000000";
        Y<=X"00000001";
        cin<='0';
        
        wait for 165 ns; --32*5 = 160 and 5 additional nanoseconds to observe the input
        
        x<= X"10000000";
        Y<=X"10000001";
        cin<='0';
        
        wait for 165 ns;
        
        x<= X"FFFFFFFF";
        Y<=X"00000001";
        cin<='0';
        
        wait for 165 ns;
        
        x<=X"FFFFFFFF";
        Y<=X"00000000";
        cin<='1';
        
        wait for 165 ns;
        
        x<=X"00000000";
        Y<=X"00001111";
        cin<='1';
        
        wait for 165 ns;
        
        x<=X"0F80A090";
        Y<=X"00B111DE";
        cin<='1';
        
        wait for 165 ns;
        
        sel<="10";
        x<=X"00000000";
        Y<=X"00000001";
        cin<='0';
        
        wait for 165 ns; --32*5 = 160 and 5 additional nanoseconds to observe the input
        
        x<= X"10000000";
        Y<=X"10000001";
        cin<='0';
        
        wait for 165 ns;
        
        x<= X"FFFFFFFF";
        Y<=X"00000001";
        cin<='0';
        
        wait for 165 ns;
        
        x<=X"FFFFFFFF";
        Y<=X"00000000";
        cin<='1';
        
        wait for 165 ns;
        
        x<=X"00000000";
        Y<=X"00001111";
        cin<='1';
        
        wait for 165 ns;
        
        x<=X"0F80A090";
        Y<=X"00B111DE";
        cin<='1';
        
        wait for 165 ns;
        
        sel<="00";
        x<=X"00000000";
        Y<=X"00000001";
        cin<='0';
        
        wait for 165 ns; --32*5 = 160 and 5 additional nanoseconds to observe the input
        
        x<= X"10000000";
        Y<=X"10000001";
        cin<='0';
        
        wait for 165 ns;
        
        x<= X"FFFFFFFF";
        Y<=X"00000001";
        cin<='0';
        
        wait for 165 ns;
        
        x<=X"FFFFFFFF";
        Y<=X"00000000";
        cin<='1';
        
        wait for 165 ns;
        
        x<=X"00000000";
        Y<=X"00001111";
        cin<='1';
        
        wait for 165 ns;
        
        x<=X"0F80A090";
        Y<=X"00B111DE";
        cin<='1';
        
        wait for 165 ns;
        
        sel<="11";
        x<=X"00000000";
        Y<=X"00000001";
        cin<='0';
        
        wait for 165 ns; --32*5 = 160 and 5 additional nanoseconds to observe the input
        
        x<= X"10000000";
        Y<=X"10000001";
        cin<='0';
        
        wait for 165 ns;
        
        x<= X"FFFFFFFF";
        Y<=X"00000001";
        cin<='0';
        
        wait for 165 ns;
        
        x<=X"FFFFFFFF";
        Y<=X"00000000";
        cin<='1';
        
        wait for 165 ns;
        
        x<=X"00000000";
        Y<=X"00001111";
        cin<='1';
        
        wait for 165 ns;
        
        x<=X"0F80A090";
        Y<=X"00B111DE";
        cin<='1';
        
        wait for 165 ns;
    end process;

end Behavioral;
