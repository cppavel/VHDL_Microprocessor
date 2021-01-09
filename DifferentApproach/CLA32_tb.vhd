library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CLA32_tb is
end CLA32_tb;

architecture Behavioral of CLA32_tb is

    component CLA32 is
        Port(x:in std_logic_vector(31 downto 0); y: in std_logic_vector(31 downto 0); cin: in std_logic;
        sel: in std_logic_vector(1 downto 0);s:inout std_logic_vector(31 downto 0); cout: inout std_logic; vout: out std_logic);
    end component;
    
     signal x: std_logic_vector(31 downto 0);
     signal y: std_logic_vector(31 downto 0);
     signal s: std_logic_vector(31 downto 0);
     signal cin: std_logic;
     signal sel: std_logic_vector(1 downto 0);
     signal cout: std_logic;
     signal vout: std_logic;

begin

    uut: CLA32 port map(
        x=>x,
        y=>y,
        cin=>cin,
        sel=>sel,
        s=>s,
        cout=>cout,
        vout=>vout
    );
    
    stim_proc: process begin
    
        sel<="01";
        
        x<=X"80000000";
        y<=X"80000000";
        
        wait for 50 ns;
        
        
        sel<="01";
        x<=x"70000000";
        y<=X"70000000";
        
        wait for 50 ns;
    
        sel<="01";
        x<=X"00000000";
        Y<=X"00000001";
        cin<='0';
        
        wait for 50 ns; 
        
        x<= X"10000000";
        Y<=X"10000001";
        cin<='0';
        
        wait for 50 ns;
        
        x<= X"FFFFFFFF";
        Y<=X"00000001";
        cin<='0';
        
        wait for 50 ns;
        
        x<=X"FFFFFFFF";
        Y<=X"00000000";
        cin<='1';
        
        wait for 50 ns;
        
        x<=X"00000000";
        Y<=X"00001111";
        cin<='1';
        
        wait for 50 ns;
        
        x<=X"0F80A090";
        Y<=X"00B111DE";
        cin<='1';
        
        wait for 50 ns;
        
        sel<="10";
        x<=X"00000000";
        Y<=X"00000001";
        cin<='0';
        
        wait for 50 ns; 
        
        x<= X"10000000";
        Y<=X"10000001";
        cin<='0';
        
        wait for 50 ns;
        
        x<= X"FFFFFFFF";
        Y<=X"00000001";
        cin<='0';
        
        wait for 50 ns;
        
        x<=X"FFFFFFFF";
        Y<=X"00000000";
        cin<='1';
        
        wait for 50 ns;
        
        x<=X"00000000";
        Y<=X"00001111";
        cin<='1';
        
        wait for 50 ns;
        
        x<=X"0F80A090";
        Y<=X"00B111DE";
        cin<='1';
        
        wait for 50 ns;
        
        sel<="00";
        x<=X"00000000";
        Y<=X"00000001";
        cin<='0';
        
        wait for 50 ns; --32*5 = 160 and 5 additional nanoseconds to observe the input
        
        x<= X"10000000";
        Y<=X"10000001";
        cin<='0';
        
        wait for 50 ns;
        
        x<= X"FFFFFFFF";
        Y<=X"00000001";
        cin<='0';
        
        wait for 50 ns;
        
        x<=X"FFFFFFFF";
        Y<=X"00000000";
        cin<='1';
        
        wait for 50 ns;
        
        x<=X"00000000";
        Y<=X"00001111";
        cin<='1';
        
        wait for 50 ns;
        
        x<=X"0F80A090";
        Y<=X"00B111DE";
        cin<='1';
        
        wait for 50 ns;
        
        sel<="11";
        x<=X"00000000";
        Y<=X"00000001";
        cin<='0';
        
        wait for 50 ns; 
        
        x<= X"10000000";
        Y<=X"10000001";
        cin<='0';
        
        wait for 50 ns;
        
        x<= X"FFFFFFFF";
        Y<=X"00000001";
        cin<='0';
        
        wait for 165 ns;
        
        x<=X"FFFFFFFF";
        Y<=X"00000000";
        cin<='1';
        
        wait for 50 ns;
        
        x<=X"00000000";
        Y<=X"00001111";
        cin<='1';
        
        wait for 50 ns;
        
        x<=X"0F80A090";
        Y<=X"00B111DE";
        cin<='1';
        
        wait for 50 ns;
    
    
    
    end process;


end Behavioral;
