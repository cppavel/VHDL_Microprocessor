library ieee;
use ieee.std_logic_1164.ALL;

entity decoder_5_32_tb is
end decoder_5_32_tb;

architecture behavior of decoder_5_32_tb is

    component decoder_5_32
    port(A:in std_logic_vector(4 downto 0);
            D_not:out std_logic_vector(31 downto 0));
    end component;
    
    --inputs
    signal A: std_logic_vector(4 downto 0);
    signal D_not: std_logic_vector(31 downto 0);
    
begin

    uut: decoder_5_32 port map(
        A => A,
        D_not => D_not
    );
    
    stim_proc:process
    begin
        
        A<="00000";
    
        wait for 10 ns;
    
        A<="00001";
    
        wait for 10 ns;
    
        A<="00010";
    
        wait for 10 ns;
    
        A<="00011";
        
        wait for 10 ns;
        
        A<="00100";
        
        wait for 10 ns;
        
        A<="00101";
        
        wait for 10 ns;
        
        A<="00110";
        
        wait for 10 ns;
                   
        A<="00111";
        
        wait for 10 ns;
        
        A<="01000";
        
        wait for 10 ns;
        
        A<="01001";
        
        wait for 10 ns;
        
        A<="01010";    
                        
        wait for 10 ns;
        
        A<="01011"; 
                      
        wait for 10 ns;
        
        A<="01100";  
        
        wait for 10 ns;
        
        A<="01101";   
        
        wait for 10 ns;
        
        A<="01110";
                        
        wait for 10 ns;
        
        A<="01111";
                        
        wait for 10 ns;
        
        A<="10000";
    
        wait for 10 ns;
    
        A<="10001";
    
        wait for 10 ns;
    
        A<="10010";
    
        wait for 10 ns;
    
        A<="10011";
        
        wait for 10 ns;
        
        A<="10100";
        
        wait for 10 ns;
        
        A<="10101";
        
        wait for 10 ns;
        
        A<="10110";
        
        wait for 10 ns;
                   
        A<="10111";
        
        wait for 10 ns;
        
        A<="11000";
        
        wait for 10 ns;
        
        A<="11001";
        
        wait for 10 ns;
        
        A<="11010";    
                        
        wait for 10 ns;
        
        A<="11011";    
                        
        wait for 10 ns;
        
        A<="11100";  
        
        wait for 10 ns;
        
        A<="11101";   
        
        wait for 10 ns;
        
        A<="11110";
                        
        wait for 10 ns;
        
        A<="11111";
                        
        wait for 10 ns;
        
   
     end process;
end;