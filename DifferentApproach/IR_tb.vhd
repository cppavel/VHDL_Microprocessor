library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity IR_tb is
end IR_tb;

architecture Behavioral of IR_tb is

      component IR is
        port(Clk, IL: in std_logic;
                D:in std_logic_vector(31 downto 0);           
                opcode: out std_logic_vector(16 downto 0);
                DR: out std_logic_vector(4 downto 0);
                SA: out std_logic_vector(4 downto 0);
                SB: out std_logic_vector(4 downto 0));
    end component;
    
    signal Clk: std_logic:='0';
    signal IL: std_logic;
    signal D: std_logic_vector(31 downto 0);
    signal opcode: std_logic_vector(16 downto 0);
    signal DR: std_logic_vector(4 downto 0);
    signal SA: std_logic_vector(4 downto 0);
    signal SB: std_logic_vector(4 downto 0);
begin

     uut: IR port map(
        Clk=>Clk,
        IL=>IL,
        D=>D,
        opcode=>opcode,
        DR=>DR,
        SA=>SA,
        SB=>SB);
        
      Clk<= not Clk after 10 ns;
      
      stim_proc:process begin
      
      IL<='1';
      D<=X"FFFF0000";
     
      wait for 20 ns;
      
      IL<='0';
      D<=X"00000000";
      
      wait for 20 ns;
      
      end process;

end Behavioral;
