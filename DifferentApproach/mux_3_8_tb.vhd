library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_3_8_tb is
end mux_3_8_tb;

architecture Behavioral of mux_3_8_tb is

    component mux_3_8 is
    Port(   A: std_logic_vector(7 downto 0);
            S:in std_logic_vector(2 downto 0);
            Z:out std_logic);
    end component;
    
    signal A: std_logic_vector(7 downto 0);
    signal S: std_logic_vector(2 downto 0);
    signal Z: std_logic;

begin

       uut: mux_3_8 port map(
        A=>A,
        S=>S,
        Z=>z
    );
   
   stim_proc: process begin
    A<="10101110";
    S<="000";
    
    wait for 10 ns;
    
    S<="001";
    
    wait for 10 ns;
    
    S<="010";
    
    wait for 10 ns;
    
    S<="011";
    
    wait for 10 ns;
    
    S<="100";
    
    wait for 10 ns;
    
    S<="101";
    
    wait for 10 ns;
    
    S<="110";
    
    wait for 10 ns;
    
    S<="111";
    
    wait for 10 ns;

    end process;

end Behavioral;
