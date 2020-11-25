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
    Port(write: in std_logic; Aaddress: in std_logic_vector(4 downto 0);
        Baddress: in std_logic_vector(4 downto 0); Daddress: in std_logic_vector(4 downto 0);
            ConstantIn: in std_logic_vector(31 downto 0); MB: in std_logic;
                FS: in std_logic_vector(4 downto 0); MD: in std_logic; DataIn: in
                    std_logic_vector(31 downto 0); AddressOut: out std_logic_vector(31 downto 0);
                        DataOut: out std_logic_vector(31 downto 0); V: out std_logic; C: out std_logic;
                            N: out std_logic; Z: out std_logic);
        
end component;

--inputs

signal write: std_logic;
signal Aaddress: std_logic_vector(4 downto 0);
signal Baddress: std_logic_vector(4 downto 0);
signal Daddress: std_logic_vector(4 downto 0);
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

begin
    
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
      
      Daddress<="00000";
      MD<='1';
      DataIn<=X"FB0ABCDE";
      
      wait for 195 ns;
      
      Daddress<="00001";
      DataIn<=X"FFFFAAF9";
      
      wait for 195 ns;
      
      MD<='0';
      MB<='0';
      Aaddress<="00000";
      Baddress<="00001";
      Daddress<="00010";
      FS<="00000";
      
      wait for 195 ns;
      
      Daddress<="00011";
      FS<="00001";
      
      wait for 195 ns;
      
      Daddress<="00100";
      FS<="00010";
      
      wait for 195 ns;
      
      Daddress<="00101";
      FS<="00011";   
      
      wait for 195 ns;
      
      Aaddress<="00101";
      Daddress<="00101";
      FS<="00101";
                       
      wait for 195 ns;
      Aaddress<="00000";
      Daddress<="00110";
      FS<="00100";    
                       
      wait for 195 ns;
      
      Daddress<="00111";
      FS<="00101";    
                       
      wait for 195 ns;
      
      Daddress<="01000";
      FS<="00110";    
                       
      wait for 195 ns;
      
      Daddress<="01001";
      FS<="00111";    
                       
      wait for 195 ns;
      
      Daddress<="01010";
      FS<="01000";    
                       
      wait for 195 ns;
      
         
      Daddress<="01011";
      FS<="01010";    
                       
      wait for 195 ns;
      
      Daddress<="01100";
      FS<="01100";    
                       
      wait for 195 ns;
      
      Daddress<="01101";
      FS<="01110";    
                       
      wait for 195 ns;
      
      Daddress<="01110";
      FS<="10000";    
                       
      wait for 195 ns;
      
      Daddress<="01111";
      FS<="10100";    
                       
      wait for 195 ns;
      
      Daddress<="10000";
      FS<="11000";    
                       
      wait for 195 ns;
      
      MB<='1';
      ConstantIn<=X"8010ABCD";  -- v flag
      FS<="00010";
      Daddress<="10001";
      
      wait for 195 ns;
      
      MB<='1';
      ConstantIn<=X"04f54322"; -- z flag
      FS<="00010";
      Daddress<="10010";
      
      wait for 195 ns;
      
      
    end process;


end Behavioral;
