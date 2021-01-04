library ieee;
use ieee.std_logic_1164.ALL;

entity decoder_5_32_tb is
end decoder_5_32_tb;

architecture behavior of decoder_5_32_tb is

    component decoder_5_32
    port(A:in std_logic_vector(5 downto 0);
            D_not:out std_logic_vector(32 downto 0));
    end component;
    
    --inputs
    signal A: std_logic_vector(5 downto 0);
    signal D_not: std_logic_vector(32 downto 0);
    
begin

    uut: decoder_5_32 port map(
        A => A,
        D_not => D_not
    );
    
    stim_proc:process
    begin
        
        A<="000000";
    
        wait for 10 ns;
    
        A<="000001";
    
        wait for 10 ns;
    
        A<="000010";
    
        wait for 10 ns;
    
        A<="000011";
        
        wait for 10 ns;
        
        A<="000100";
        
        wait for 10 ns;
        
        A<="000101";
        
        wait for 10 ns;
        
        A<="000110";
        
        wait for 10 ns;
                   
        A<="000111";
        
        wait for 10 ns;
        
        A<="001000";
        
        wait for 10 ns;
        
        A<="001001";
        
        wait for 10 ns;
        
        A<="001010";    
                        
        wait for 10 ns;
        
        A<="001011"; 
                      
        wait for 10 ns;
        
        A<="001100";  
        
        wait for 10 ns;
        
        A<="001101";   
        
        wait for 10 ns;
        
        A<="001110";
                        
        wait for 10 ns;
        
        A<="001111";
                        
        wait for 10 ns;
        
        A<="010000";
    
        wait for 10 ns;
    
        A<="010001";
    
        wait for 10 ns;
    
        A<="010010";
    
        wait for 10 ns;
    
        A<="010011";
        
        wait for 10 ns;
        
        A<="010100";
        
        wait for 10 ns;
        
        A<="010101";
        
        wait for 10 ns;
        
        A<="010110";
        
        wait for 10 ns;
                   
        A<="010111";
        
        wait for 10 ns;
        
        A<="011000";
        
        wait for 10 ns;
        
        A<="011001";
        
        wait for 10 ns;
        
        A<="011010";    
                        
        wait for 10 ns;
        
        A<="011011";    
                        
        wait for 10 ns;
        
        A<="011100";  
        
        wait for 10 ns;
        
        A<="011101";   
        
        wait for 10 ns;
        
        A<="011110";
                        
        wait for 10 ns;
        
        A<="011111";
                        
        wait for 10 ns;
        
        A<="100000";
                        
        wait for 10 ns;
        
   
     end process;
end;