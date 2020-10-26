library ieee;
use ieee.std_logic_1164.ALL;

entity decoder_2_4_tb is
end decoder_2_4_tb;

architecture behavior of decoder_2_4_tb is

    component decoder_2_4
    port(A:in std_logic_vector(1 downto 0);
            E_not:in std_logic;
            D_not:out std_logic_vector(3 downto 0));
    end component;
    
    --inputs
    signal A: std_logic_vector(1 downto 0);
    signal E_not: std_logic;
    --outputs
    signal D_not: std_logic_vector(3 downto 0);
    
begin

    uut: decoder_2_4 port map(
        A => A,
        E_not => E_not,
        D_not => D_not
    );
    
    stim_proc:process
    begin
        
        E_not <= '0';
        A<="00";
    
        wait for 10 ns;
    
        A<="01";
    
        wait for 10 ns;
    
        A<="10";
    
        wait for 10 ns;
    
        A<="11";
        
        wait for 10 ns;
        
        E_not <= '1';
        
        wait for 10 ns;
   
     end process;
end;