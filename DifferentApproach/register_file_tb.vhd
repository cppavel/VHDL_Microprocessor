library ieee;
use ieee.std_logic_1164.ALL;
use work.mypackage.all;

entity register_file_tb is
end register_file_tb;

architecture behavior of register_file_tb is

  component register_file is
       Port (  srcA: in std_logic_vector(5 downto 0);
        srcB: in std_logic_vector(5 downto 0);
        dst: in std_logic_vector(5 downto 0);
        data: in std_logic_vector(31 downto 0);
        enable:in std_logic;
        Clk : in std_logic;
        A: out std_logic_vector(31 downto 0);
        B: out std_logic_vector(31 downto 0));
     end component;
    
    --inputs
    signal srcA: std_logic_vector(5 downto 0);
    signal srcB: std_logic_vector(5 downto 0);
    signal dst: std_logic_vector(5 downto 0);
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
        srcA<="000000";
        srcB<="000011";
        enable<='1';
        data<=X"0126EE70";
        dst<="000000";
    
        wait for 20 ns;
    
        enable<='0';
        data<=X"0126EE6F";
        dst<="000001";
    
        wait for 20 ns;
    
        data<=X"0126EE6E";
        dst<="000010";
    
        wait for 20 ns;
        enable<='1';
        data<=X"0126EE6D";
        dst<="000011";
        
        wait for 20 ns;
        
        data<=X"0126EE6C";
        dst<="000100";
        
        wait for 20 ns;
        
        data<=X"0126EE6B";
        dst<="000101";
        
        wait for 20 ns;
        
        data<=X"0126EE6A";
        dst<="000110";
        
        wait for 20 ns;
                
        data<=X"0126EE69";   
        dst<="000111";
        
        wait for 20 ns;
        
        data<=X"0126EE68";
        dst<="001000";
        
        wait for 20 ns;
        
        data<=X"0126EE67";
        dst<="001001";
        
        wait for 20 ns;
        
        data<=X"0126EE66";
        dst<="001010";    
                        
        wait for 20 ns;
        
        data<=X"0126EE65";
        dst<="001011"; 
                      
        wait for 20 ns;
        
        data<=X"0126EE64";
        dst<="001100";  
        
        wait for 20 ns;
        
        data<=X"0126EE63";
        dst<="001101";   
        
        wait for 20 ns;
        
        data<=X"0126EE62";
        dst<="001110";
                        
        wait for 20 ns;
        
        data<=X"0126EE61";
        dst<="001111";
                        
        wait for 20 ns;
        
        data<=X"0126EE60";
        dst<="010000";
    
        wait for 20 ns;
    
        data<=X"0126EE5F";
        dst<="010001";
    
        wait for 20 ns;
    
        data<=X"0126EE5E";
        dst<="010010";
    
        wait for 20 ns;
    
        data<=X"0126EE5D";
        dst<="010011";
        
        wait for 20 ns;
        
        data<=X"0126EE5C";
        dst<="010100";
        
        wait for 20 ns;
        
        data<=X"0126EE5B";
        dst<="010101";
        
        wait for 20 ns;
        
        data<=X"0126EE5A";
        dst<="010110";
        
        wait for 20 ns;
        
        data<=X"0126EE59";    
        dst<="010111";
        
        wait for 20 ns;
        
        data<=X"0126EE58";
        dst<="011000";
        
        wait for 20 ns;
        
        data<=X"0126EE57";
        dst<="011001";
        
        wait for 20 ns;
        
        data<=X"0126EE56";
        dst<="011010";    
                        
        wait for 20 ns;
        
        data<=X"0126EE55";
        dst<="011011";    
                        
        wait for 20 ns;
        
        data<=X"0126EE54";
        dst<="011100";  
        
        wait for 20 ns;
        
        data<=X"0126EE53";
        dst<="011101";   
        
        wait for 20 ns;
        
        data<=X"0126EE52";
        dst<="011110";
                        
        wait for 20 ns;
        
        data<=X"0126EE51";
        dst<="011111";   
        
        wait for 20 ns;
        
        data<=X"0126EE52";
        dst<="100000";   
               
        wait for 20 ns;
        
        srcA<="000000";
        srcB<="011111";
        
        wait for 20 ns;
        
        srcA<="010010";
        srcB<="000000";
        
        wait for 20 ns;
        
        srcA<="000010";
        srcB<="000001";
        
        wait for 20 ns;
        
        srcA<="100000";
        srcB<="000001";
        
        wait for 20 ns;
  
    end process;
end;