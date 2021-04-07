library ieee;
use ieee.std_logic_1164.ALL;

entity mux4tb is
end mux4tb;

architecture behavior of mux4tb is

    component mux_4
        Port(A:in std_logic;
            B:in std_logic;
            C:in std_logic;
            D:in std_logic;
            S:in std_logic_vector(1 downto 0);
            Z:out std_logic);
    end component;
    
    --inputs
    signal A: std_logic;
    signal B: std_logic;
    signal C: std_logic;
    signal D: std_logic;
    signal S: std_logic_vector(1 downto 0);
    --outputs
    signal Z: std_logic;
    
begin

    uut: mux_4 port map(
        A => A,
        B=>B,
        C=>C,
        D=>D,
        S=>S,
        Z=>Z
    );
    
    stim_proc:process
    begin
        
        A <='1';
        B <='0';
        C <='1';
        D <='0';
        
        S<="00";
        
        wait for 10 ns;
        
        S<="01";
        
        wait for 10 ns;
        
        S<="10";
        
        wait for 10 ns;
        
        S<="11";
        
        wait for 10 ns;
        
        D<='1';
        
        wait for 10 ns;
        
        S<="10";
        
        C<='0';
        
        wait for 10 ns;
        
        S<="01";
        B<='1';
        
        wait for 10 ns;
        
        S<="00";
        A<='0';
        
        wait for 10 ns;
    end process;
end;
