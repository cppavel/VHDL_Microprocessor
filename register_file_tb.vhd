library ieee;
use ieee.std_logic_1164.ALL;
use work.mypackage.all;

entity register_file_tb is
end register_file_tb;

architecture behavior of register_file_tb is

  component register_file is
       Port ( src: in std_logic_vector(4 downto 0);
        dst: in std_logic_vector(4 downto 0);
        Clk : in std_logic;
        data_src : in std_logic;
        data : in std_logic_vector(31 downto 0);
        registers: out std_logic_matrix);
     end component;
    
    --inputs
    signal src: std_logic_vector(4 downto 0);
    signal dst: std_logic_vector(4 downto 0);
    signal Clk: std_logic:='0';
    signal data_src: std_logic;
    signal data: std_logic_vector(31 downto 0);
    --outputs
    signal registers: std_logic_matrix;
    
begin

    uut: register_file port map(
        src=>src,
        dst=>dst,
        Clk=>Clk,
        data_src=>data_src,
        data=>data,
        registers=>registers
    );
    
    Clk <= not Clk after 20 ns;
    
    stim_proc:process
    begin
           
        src<="00001";
        data_src<='0';
        data<=X"f0f0f0f0";
        
        dst<="00000";
    
        wait for 40 ns;
    
        dst<="00001";
    
        wait for 40 ns;
    
        dst<="00010";
    
        wait for 40 ns;
    
        dst<="00011";
        
        wait for 40 ns;
        
        dst<="00100";
        
        wait for 40 ns;
        
        dst<="00101";
        
        wait for 40 ns;
        
        dst<="00110";
        
        wait for 40 ns;
                   
        dst<="00111";
        
        wait for 40 ns;
        
        dst<="01000";
        
        wait for 40 ns;
        
        dst<="01001";
        
        wait for 40 ns;
        
        dst<="01010";    
                        
        wait for 40 ns;
        
        dst<="01011"; 
                      
        wait for 40 ns;
        
        dst<="01100";  
        
        wait for 40 ns;
        
        dst<="01101";   
        
        wait for 40 ns;
        
        dst<="01110";
                        
        wait for 40 ns;
        
        dst<="01111";
                        
        wait for 40 ns;
        
        dst<="10000";
    
        wait for 40 ns;
    
        dst<="10001";
    
        wait for 40 ns;
    
        dst<="10010";
    
        wait for 40 ns;
    
        dst<="10011";
        
        wait for 40 ns;
        
        dst<="10100";
        
        wait for 40 ns;
        
        dst<="10101";
        
        wait for 40 ns;
        
        dst<="10110";
        
        wait for 40 ns;
                   
        dst<="10111";
        
        wait for 40 ns;
        
        dst<="11000";
        
        wait for 40 ns;
        
        dst<="11001";
        
        wait for 40 ns;
        
        dst<="11010";    
                        
        wait for 40 ns;
        
        dst<="11011";    
                        
        wait for 40 ns;
        
        dst<="11100";  
        
        wait for 40 ns;
        
        dst<="11101";   
        
        wait for 40 ns;
        
        dst<="11110";
                        
        wait for 40 ns;
        
        data<=X"00000000";
        dst<="11111";   
               
        wait for 40 ns;
        
        src<="11111";
        dst<="11110";
        data_src<='1';
        
        wait for 40 ns;
    end process;
end;