library ieee;
use ieee.std_logic_1164.ALL;

entity NZCV_tb is
end NZCV_tb;

architecture behavior of NZCV_tb is

    component NZCV
    port(Clk, load: in std_logic;
                D:in std_logic_vector(3 downto 0);
                reset:in std_logic_vector(3 downto 0);
                Q: out std_logic_vector(3 downto 0));
    end component;
    
    --inputs
    signal Clk: std_logic:='0';
    signal load: std_logic;
    signal D: std_logic_vector(3 downto 0);
    signal reset: std_logic_vector(3 downto 0);
    --outputs
    signal Q: std_logic_vector(3 downto 0);
    
begin

    uut:NZCV port map(
        Clk => Clk,
        load => load,
        D => D,
        reset=>reset,
        Q=>Q
    );
    
    Clk <= not Clk after 5 ns;
    
    stim_proc:process
    begin
    
    D<="1000";
    load<='1';
    
    wait for 10 ns;
    
    D<="0001";
    load<='0';
    
    wait for 10 ns;
    
    load<='1';
    
    wait for 10 ns;
    
    load<='0';
    reset<="0001";
    
    wait for 10 ns;
        
    
   
    end process;
end;