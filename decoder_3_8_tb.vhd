library ieee;
use ieee.std_logic_1164.ALL;

entity decoder_3_8_tb is
end decoder_3_8_tb;

architecture behavior of decoder_3_8_tb is

    component decoder_3_8
    port(A:in std_logic_vector(2 downto 0);
            E_not:in std_logic;
            D_not:out std_logic_vector(7 downto 0));
    end component;
    
    --inputs
    signal A: std_logic_vector(2 downto 0);
    signal E_not: std_logic;
    --outputs
    signal D_not: std_logic_vector(7 downto 0);
    
begin

    uut: decoder_3_8 port map(
        A => A,
        E_not => E_not,
        D_not => D_not
    );
    
    stim_proc:process
    begin
        
        E_not <= '0';
        A<="000";
    
        wait for 10 ns;
    
        A<="001";
    
        wait for 10 ns;
    
        A<="010";
    
        wait for 10 ns;
    
        A<="011";
        
        wait for 10 ns;
        
        A<="100";
        
        wait for 10 ns;
        
        A<="101";
        
        wait for 10 ns;
        
        A<="110";
        
        wait for 10 ns;
                   
        A<="111";
        
        wait for 10 ns;
        
        E_not <= '1';
        
        wait for 10 ns;
   
     end process;
end;