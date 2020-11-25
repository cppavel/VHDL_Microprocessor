library ieee;
use ieee.std_logic_1164.ALL;
use work.mypackage.all;

entity register_file_tb is
end register_file_tb;

architecture behavior of register_file_tb is

  component register_file is
       Port (  srcA: in std_logic_vector(4 downto 0);
        srcB: in std_logic_vector(4 downto 0);
        dst: in std_logic_vector(4 downto 0);
        data: in std_logic_vector(31 downto 0);
        enable:in std_logic;
        Clk : in std_logic;
        A: out std_logic_vector(31 downto 0);
        B: out std_logic_vector(31 downto 0));
     end component;
    
    --inputs
    signal srcA: std_logic_vector(4 downto 0);
    signal srcB: std_logic_vector(4 downto 0);
    signal dst: std_logic_vector(4 downto 0);
    signal enable: std_logic;
    signal Clk: std_logic:='0';
    signal data: std_logic_vector(31 downto 0);

    --outputs
    signal A:  std_logic_vector(31 downto 0);
    signal B:  std_logic_vector(31 downto 0);
    
begin

    uut: register_file port map(
        srcA=>srcA,
        srcB=>srcB,
        dst=>dst,
        data=>data,
        enable=>enable,
        Clk=>Clk,
        A=>A,
        B=>B
    );
    
    Clk <= not Clk after 10 ns;
    
    stim_proc:process
    begin
        -- 0126EE70  (hex) = 19328624 (decimal)
        -- 0126EE70  (hex) = 19328624 (decimal)
        srcA<="00000";
        srcB<="00011";
        enable<='1';
        data<=X"0126EE70";
        dst<="00000";
    
        wait for 20 ns;
    
        enable<='0';
        data<=X"0126EE6F";
        dst<="00001";
    
        wait for 20 ns;
    
        data<=X"0126EE6E";
        dst<="00010";
    
        wait for 20 ns;
        enable<='1';
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
        
        srcA<="00000";
        srcB<="11111";
        
        wait for 20 ns;
        
        srcA<="10010";
        srcB<="00000";
        
        wait for 20 ns;
        
        srcA<="00010";
        srcB<="00001";
        
        wait for 20 ns;
  
    end process;
end;