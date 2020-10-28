library ieee;
use ieee.std_logic_1164.ALL;

entity mux_2_32_tb is
end mux_2_32_tb;

architecture behavior of mux_2_32_tb is

    component mux_2_32
    port(A:in std_logic_vector(31 downto 0);
            B:in std_logic_vector(31 downto 0);
            S0:in std_logic;
            Z:out std_logic_vector(31 downto 0));
    end component;
    
    --inputs
    signal A: std_logic_vector(31 downto 0);
    signal B: std_logic_vector(31 downto 0);
    signal S0: std_logic;
    --outputs
    signal Z: std_logic_vector(31 downto 0);
    
begin

    uut: mux_2_32 port map(
        A => A,
        B=>B,
        S0=>S0,
        Z=>Z
    );
    
    stim_proc:process
    begin
        
        A <="11111111111111110000000000000000";
        B <="00000000000000001111111111111111";
        
        S0<='0';
        
        wait for 10 ns;
        
        S0<='1';
        
        wait for 10 ns;
        
        B <="11111111111111111111111111111111";
        
        wait for 10 ns;
        
        S0<='0';
        
        wait for 10 ns;
        
        A<="00000000000000000000000000000000";
        
        wait for 10 ns;
    end process;
end;