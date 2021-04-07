library ieee;
use ieee.std_logic_1164.ALL;

entity reg32_tb is
end reg32_tb;

architecture behavior of reg32_tb is

    component reg32
    port(Clk, load: in std_logic;
                D:in std_logic_vector(31 downto 0);
                Q: out std_logic_vector(31 downto 0));
    end component;
    
    --inputs
    signal Clk: std_logic:='0';
    signal load: std_logic;
    signal D: std_logic_vector(31 downto 0);
    --outputs
    signal Q: std_logic_vector(31 downto 0);
    
begin

    uut:reg32 port map(
        Clk => Clk,
        load => load,
        D => D,
        Q=>Q
    );
    
    Clk <= not Clk after 5 ns;
    
    stim_proc:process
    begin
    
    D<=X"ffffffff";
    load<='1';
    
    wait for 10 ns;
    
    D<=X"00000000";
    load<='0';
    
    wait for 10 ns;
    
    load<='1';
    
    wait for 10 ns;
        
    
   
    end process;
end;