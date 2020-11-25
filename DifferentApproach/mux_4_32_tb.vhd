library ieee;
use ieee.std_logic_1164.ALL;

entity mux_4_32_tb is
end mux_4_32_tb;

architecture behavior of mux_4_32_tb is

    component mux_4_32
    port(A:in std_logic_vector(31 downto 0);
            B:in std_logic_vector(31 downto 0);
            C:in std_logic_vector(31 downto 0);
            D:in std_logic_vector(31 downto 0);
            S:in std_logic_vector(1 downto 0);
            Z:out std_logic_vector(31 downto 0));
    end component;
    
    --inputs
    signal A: std_logic_vector(31 downto 0);
    signal B: std_logic_vector(31 downto 0);
    signal C: std_logic_vector(31 downto 0);
    signal D: std_logic_vector(31 downto 0);
    signal S: std_logic_vector(1 downto 0);
    --outputs
    signal Z: std_logic_vector(31 downto 0);
    
begin

    uut: mux_4_32 port map(
        A => A,
        B=>B,
        C=>C,
        D=>D,
        S=>S,
        Z=>Z
    );
    
    stim_proc:process
    begin
        
        A <="11111111111111110000000000000000";
        B <="00000000000000001111111111111111";
        C <="11111111111111110000000011111111";
        D <="00000000000000001111111100000000";
        
        S<="00";
        
        wait for 10 ns;
        
        S<="01";
        
        wait for 10 ns;
        
        S<="10";
        
        wait for 10 ns;
        
        S<="11";
        
        wait for 10 ns;
        
        D<="11111111111111110000000000000000";
        
        wait for 10 ns;
        
        S<="10";
        
        C<="00000000000000001111111111111111";
        
        wait for 10 ns;
        
        S<="01";
        B<="00000000000000001111111100000000";
        
        wait for 10 ns;
        
        S<="00";
        A<="11111111111111110000000011111111";
        
        wait for 10 ns;
    end process;
end;