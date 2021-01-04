library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity extend_tb is
end extend_tb;

architecture Behavioral of extend_tb is
    component extend is
    Port(input: in std_logic_vector(9 downto 0);
            output: out std_logic_vector(31 downto 0));
    end component;
    
    signal input: std_logic_vector(9 downto 0);
    signal output: std_logic_vector(31 downto 0);
begin

     uut: extend port map(
        input=>input,
        output=>output
    );
    
    stim_proc: process begin
    
    input<="1001000000";
    
    wait for 10 ns;
    
    input<="0000011111";
    
    wait for 10 ns;
    
    end process;

end Behavioral;
