----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/23/2020 08:23:59 PM
-- Design Name: 
-- Module Name: datapath_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity datapath_tb is
--  Port ( );
end datapath_tb;

architecture Behavioral of datapath_tb is

component datapath is
    Port(write: in std_logic; Aaddress: in std_logic_vector(5 downto 0);
        Baddress: in std_logic_vector(5 downto 0); Daddress: in std_logic_vector(5 downto 0);
            ConstantIn: in std_logic_vector(31 downto 0); MB: in std_logic;
                FS: in std_logic_vector(4 downto 0); MD: in std_logic; DataIn: in
                    std_logic_vector(31 downto 0); Clk:in std_logic; AddressOut: out std_logic_vector(31 downto 0);
                        DataOut: out std_logic_vector(31 downto 0); V: out std_logic; C: out std_logic;
                            N: out std_logic; Z: out std_logic);
        
end component;

--inputs

signal write: std_logic;
signal Aaddress: std_logic_vector(5 downto 0);
signal Baddress: std_logic_vector(5 downto 0);
signal Daddress: std_logic_vector(5 downto 0);
signal ConstantIn: std_logic_vector(31 downto 0);
signal MB: std_logic;
signal FS: std_logic_vector(4 downto 0);
signal MD: std_logic;
signal DataIn: std_logic_vector(31 downto 0);

--outputs

signal AddressOut: std_logic_vector(31 downto 0); 
signal DataOut: std_logic_vector(31 downto 0);
signal V: std_logic; 
signal C: std_logic; 
signal N: std_logic; 
signal Z: std_logic;
signal Clk: std_logic := '1'; 

begin
    Clk <= not Clk after 97.5 ns; 
    
    uut: datapath port map(
        write => write,
        Aaddress=>Aaddress,
        Baddress=>Baddress,
        Daddress=>Daddress,
        ConstantIn=>ConstantIn,
        MB=>MB,
        FS=>FS,
        MD=>MD,
        DataIn=>DataIn,
        Clk=>Clk,
        AddressOut=>AddressOut,
        DataOut=>DataOut,
        V => V,
        C => C,
        N => N,
        Z => Z
    );
    
    stim_proc:process
    begin
    
      write<='1';
      
      Daddress<="000000";
      MD<='1';
      DataIn<=X"FB0ABCDE";
      
      wait for 195 ns;
      
      Daddress<="100000";
      DataIn<=X"11111111";
      
      wait for 195 ns;
      
      Daddress<="000001";
      DataIn<=X"FFFFAAF9";
      
      wait for 195 ns;
      
      MD<='0';
      MB<='0';
      Aaddress<="000000";
      Baddress<="000001";
      Daddress<="000010";
      FS<="00000";
      
      wait for 195 ns;
      
      Daddress<="000011";
      FS<="00001";
      
      wait for 195 ns;
      
      Daddress<="000100";
      FS<="00010";
      
      wait for 195 ns;
      
      Daddress<="000101";
      FS<="00011";   
      
      wait for 195 ns;
      
      Aaddress<="000101";
      Daddress<="000101";
      FS<="00101";
                       
      wait for 195 ns;
      Aaddress<="000000";
      Daddress<="000110";
      FS<="00100";    
                       
      wait for 195 ns;
      
      Daddress<="000111";
      FS<="00101";    
                       
      wait for 195 ns;
      
      Daddress<="001000";
      FS<="00110";    
                       
      wait for 195 ns;
      
      Daddress<="001001";
      FS<="00111";    
                       
      wait for 195 ns;
      
      Daddress<="001010";
      FS<="01000";    
                       
      wait for 195 ns;
      
         
      Daddress<="001011";
      FS<="01010";    
                       
      wait for 195 ns;
      
      Daddress<="001100";
      FS<="01100";    
                       
      wait for 195 ns;
      
      Daddress<="001101";
      FS<="01110";    
                       
      wait for 195 ns;
      
      Daddress<="001110";
      FS<="10000";    
                       
      wait for 195 ns;
      
      Daddress<="001111";
      FS<="10100";    
                       
      wait for 195 ns;
      
      Daddress<="010000";
      FS<="11000";    
                       
      wait for 195 ns;
      
      MB<='1';
      ConstantIn<=X"8010ABCD";  -- v flag
      FS<="00010";
      Daddress<="010001";
      
      wait for 195 ns;
      
      MB<='1';
      ConstantIn<=X"04f54322"; -- z flag
      FS<="00010";
      Daddress<="010010";
      
      wait for 195 ns;
      
      
    end process;


end Behavioral;
