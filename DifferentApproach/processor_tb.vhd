library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity processor_tb is
end processor_tb;

architecture Behavioral of processor_tb is

    component processor is
        port (Clk : in std_logic;
            reset_global : in std_logic);
    end component;
    
    signal Clk: std_logic:='0';
    signal reset: std_logic;
begin
    
   uut: processor port map(
        Clk=>Clk,
        reset_global=>reset
    );
   
   Clk <= not Clk after 125 ns; 
   
   stim_proc: process begin
   
   reset<='1';
   
   wait for 130 ns;
   
   reset<='0';
   
   wait;
   
   end process;

end Behavioral;
