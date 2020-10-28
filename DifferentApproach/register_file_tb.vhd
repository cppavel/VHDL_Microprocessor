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
    
    Clk <= not Clk after 10 ns;
    
    stim_proc:process
    begin
        -- 0126EE70  (hex) = 19328624 (decimal)
        src<="00001";
        data_src<='0';
        
        data<=X"0126EE70";
        dst<="00000";
    
        wait for 20 ns;
    
        data<=X"0126EE6F";
        dst<="00001";
    
        wait for 20 ns;
    
        data<=X"0126EE6E";
        dst<="00010";
    
        wait for 20 ns;
    
        data<=X"0126EE6D";
        dst<="00011";
        
        wait for 20 ns;
        
        data<=X"0126EE6C";
        dst<="00100";
        
        wait for 20 ns;
        
        data<=X"0126EE6B";
        dst<="00101";
        
        wait for 20 ns;
        
        data<=X"0126EE6A";
        dst<="00110";
        
        wait for 20 ns;
                
        data<=X"0126EE69";   
        dst<="00111";
        
        wait for 20 ns;
        
        data<=X"0126EE68";
        dst<="01000";
        
        wait for 20 ns;
        
        data<=X"0126EE67";
        dst<="01001";
        
        wait for 20 ns;
        
        data<=X"0126EE66";
        dst<="01010";    
                        
        wait for 20 ns;
        
        data<=X"0126EE65";
        dst<="01011"; 
                      
        wait for 20 ns;
        
        data<=X"0126EE64";
        dst<="01100";  
        
        wait for 20 ns;
        
        data<=X"0126EE63";
        dst<="01101";   
        
        wait for 20 ns;
        
        data<=X"0126EE62";
        dst<="01110";
                        
        wait for 20 ns;
        
        data<=X"0126EE61";
        dst<="01111";
                        
        wait for 20 ns;
        
        data<=X"0126EE60";
        dst<="10000";
    
        wait for 20 ns;
    
        data<=X"0126EE5F";
        dst<="10001";
    
        wait for 20 ns;
    
        data<=X"0126EE5E";
        dst<="10010";
    
        wait for 20 ns;
    
        data<=X"0126EE5D";
        dst<="10011";
        
        wait for 20 ns;
        
        data<=X"0126EE5C";
        dst<="10100";
        
        wait for 20 ns;
        
        data<=X"0126EE5B";
        dst<="10101";
        
        wait for 20 ns;
        
        data<=X"0126EE5A";
        dst<="10110";
        
        wait for 20 ns;
        
        data<=X"0126EE59";    
        dst<="10111";
        
        wait for 20 ns;
        
        data<=X"0126EE58";
        dst<="11000";
        
        wait for 20 ns;
        
        data<=X"0126EE57";
        dst<="11001";
        
        wait for 20 ns;
        
        data<=X"0126EE56";
        dst<="11010";    
                        
        wait for 20 ns;
        
        data<=X"0126EE55";
        dst<="11011";    
                        
        wait for 20 ns;
        
        data<=X"0126EE54";
        dst<="11100";  
        
        wait for 20 ns;
        
        data<=X"0126EE53";
        dst<="11101";   
        
        wait for 20 ns;
        
        data<=X"0126EE52";
        dst<="11110";
                        
        wait for 20 ns;
        
        data<=X"0126EE51";
        dst<="11111";   
               
        wait for 20 ns;
        
        data_src<='1';
        
        src<="00000"; --0 transfer 1
        dst<="01010"; --10
       
        wait for 20 ns;
        
        src<="00001"; --1 transfer 2
        dst<="01011"; --11
        
        wait for 20 ns;   
                           
        src<="00010"; --2 transfer 3
        dst<="01100"; --12
        
        wait for 20 ns;   
                           
        src<="00011"; --3 transfer 4
        dst<="01101"; --13
        
        wait for 20 ns;
        
        src<="00100"; --4 transfer 5
        dst<="01110"; --14
        
        wait for 20 ns;   
                           
        src<="00101"; --5 transfer 6
        dst<="01111"; --15
        
        wait for 20 ns;   
                           
        src<="00110"; --6 transfer 7
        dst<="10000"; --16
        
        wait for 20 ns;
        
        src<="00111"; --7 transfer 8
        dst<="10001"; --17
        
        wait for 20 ns;   
                           
        src<="01000"; --8 transfer 9
        dst<="10010"; --18
        
        wait for 20 ns;   
                           
        src<="01001"; --9 transfer 10
        dst<="10011"; --19
        
        wait for 20 ns;
    end process;
end;