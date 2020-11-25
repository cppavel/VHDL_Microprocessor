----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/19/2020 03:47:50 PM
-- Design Name: 
-- Module Name: datapath - Behavioral
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
use work.mypackage.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity datapath is
    Port(write: in std_logic; Aaddress: in std_logic_vector(4 downto 0);
        Baddress: in std_logic_vector(4 downto 0); Daddress: in std_logic_vector(4 downto 0);
            ConstantIn: in std_logic_vector(31 downto 0); MB: in std_logic;
                FS: in std_logic_vector(4 downto 0); MD: in std_logic; DataIn: in
                    std_logic_vector(31 downto 0); AddressOut: out std_logic_vector(31 downto 0);
                        DataOut: out std_logic_vector(31 downto 0); V: out std_logic; C: out std_logic;
                            N: out std_logic; Z: out std_logic);
        
end datapath;

architecture Behavioral of datapath is
    component register_file is
    Port (srcA: in std_logic_vector(4 downto 0);
        srcB: in std_logic_vector(4 downto 0);
        dst: in std_logic_vector(4 downto 0);
        data: in std_logic_vector(31 downto 0);
        enable:in std_logic;
        Clk : in std_logic;
        A: out std_logic_vector(31 downto 0);
        B: out std_logic_vector(31 downto 0));
    end component;
    
    component functional_unit is
    Port(A: in std_logic_vector(31 downto 0); B: in std_logic_vector(31 downto 0);
            FS: in std_logic_vector(4 downto 0); F: out std_logic_vector(31 downto 0);
                N: out std_logic; Z: out std_logic; C: out std_logic; V: out std_logic);
    end component;
    
    component mux_2_32 is
    Port(A:in std_logic_vector(31 downto 0);
            B:in std_logic_vector(31 downto 0);
            S0:in std_logic;
            Z:out std_logic_vector(31 downto 0));
    end component;
    
    signal data: std_logic_vector(31 downto 0);
    signal functional_result: std_logic_vector(31 downto 0);
    signal Clk: std_logic := '1';
    signal A: std_logic_vector(31 downto 0);
    signal B: std_logic_vector(31 downto 0);
    signal Breg: std_logic_vector(31 downto 0);
begin
    
     Clk <= not Clk after 97.5 ns; -- worst-case propagation is 190 ns so we set period to 195 ns, could do 190 as it is the minimal possible period
     AddressOut<=A;
     DataOut<=B;
     
     register_file0: register_file port map(
        srcA=>Aaddress,
        srcB=>Baddress,
        dst=>Daddress,
        data=>data,
        enable=>write,
        Clk=>Clk,
        A=>A,
        B=>Breg
    );
    
   fu: functional_unit port map(
           A=>A,
           B=>B,
           FS=>FS,
           F=>functional_result,
           N=>N,
           Z=>Z,
           C=>C,
           V=>V
     );
    
    muxd: mux_2_32 port map(
        A => functional_result,
        B=>DataIn,
        S0=>MD,
        Z=>data
    );
    
     muxb: mux_2_32 port map(
        A => Breg,
        B=>ConstantIn,
        S0=>MB,
        Z=>B
    );


end Behavioral;
