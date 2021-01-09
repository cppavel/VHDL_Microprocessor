library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity processor_CLA_tb is
end processor_CLA_tb;

architecture Behavioral of processor_CLA_tb is

    component processor_CLA is
        port (Clk : in std_logic;
            reset_global : in std_logic);
    end component;
    
    signal Clk: std_logic:='0';
    signal reset: std_logic;
begin
    
   uut: processor_CLA port map(
        Clk=>Clk,
        reset_global=>reset
    );
   
   Clk <= not Clk after 60 ns; 
   
   stim_proc: process begin
   
   reset<='1';
   
   wait for 130 ns;
   
   reset<='0';
   
   wait;
   
   end process;

end Behavioral;
