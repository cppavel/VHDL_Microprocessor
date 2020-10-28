library ieee;
use ieee.std_logic_1164.ALL;
use work.mypackage.all;

entity mux_32_32_tb is
end mux_32_32_tb;

architecture behavior of mux_32_32_tb is

    component mux_32_32
    Port(A:in std_logic_matrix;
            S:in std_logic_vector(4 downto 0);
            Z:out std_logic_vector(31 downto 0));
    end component;
    
    --inputs
    signal A: std_logic_matrix;
    signal S: std_logic_vector(4 downto 0);
    --outputs
    signal Z: std_logic_vector(31 downto 0);
    
begin

    uut: mux_32_32 port map(
        A => A,
        S=>S,
        Z=>Z
    );
    
    stim_proc:process
    begin
        
        A(0)<=X"00000000";
        A(1)<=X"00000001";
        A(2)<=X"00000002";
        A(3)<=X"00000003";
        A(4)<=X"00000004";
        A(5)<=X"00000005";
        A(6)<=X"00000006";
        A(7)<=X"00000007";
        A(8)<=X"00000008";
        A(9)<=X"00000009";
        A(10)<=X"0000000A";
        A(11)<=X"0000000B";
        A(12)<=X"0000000C";
        A(13)<=X"0000000D";
        A(14)<=X"0000000E";
        A(15)<=X"0000000F";
        A(16)<=X"F0000000";
        A(17)<=X"F0000001";
        A(18)<=X"F0000002";
        A(19)<=X"F0000003";
        A(20)<=X"F0000004";
        A(21)<=X"F0000005";
        A(22)<=X"F0000006";
        A(23)<=X"F0000007";
        A(24)<=X"F0000008";
        A(25)<=X"F0000009";
        A(26)<=X"F000000A";
        A(27)<=X"F000000B";
        A(28)<=X"F000000C";
        A(29)<=X"F000000D";
        A(30)<=X"F000000E";
        A(31)<=X"F000000F";
        
        
        S<="00000";
    
        wait for 10 ns;
    
        S<="00001";
    
        wait for 10 ns;
    
        S<="00010";
    
        wait for 10 ns;
    
        S<="00011";
        
        wait for 10 ns;
        
        S<="00100";
        
        wait for 10 ns;
        
        S<="00101";
        
        wait for 10 ns;
        
        S<="00110";
        
        wait for 10 ns;
                   
        S<="00111";
        
        wait for 10 ns;
        
        S<="01000";
        
        wait for 10 ns;
        
        S<="01001";
        
        wait for 10 ns;
        
        S<="01010";    
                        
        wait for 10 ns;
        
        S<="01011"; 
                      
        wait for 10 ns;
        
        S<="01100";  
        
        wait for 10 ns;
        
        S<="01101";   
        
        wait for 10 ns;
        
        S<="01110";
                        
        wait for 10 ns;
        
        S<="01111";
                        
        wait for 10 ns;
        
        S<="10000";
    
        wait for 10 ns;
    
        S<="10001";
    
        wait for 10 ns;
    
        S<="10010";
    
        wait for 10 ns;
    
        S<="10011";
        
        wait for 10 ns;
        
        S<="10100";
        
        wait for 10 ns;
        
        S<="10101";
        
        wait for 10 ns;
        
        S<="10110";
        
        wait for 10 ns;
                   
        S<="10111";
        
        wait for 10 ns;
        
        S<="11000";
        
        wait for 10 ns;
        
        S<="11001";
        
        wait for 10 ns;
        
        S<="11010";    
                        
        wait for 10 ns;
        
        S<="11011";    
                        
        wait for 10 ns;
        
        S<="11100";  
        
        wait for 10 ns;
        
        S<="11101";   
        
        wait for 10 ns;
        
        S<="11110";
                        
        wait for 10 ns;
        
        S<="11111";
                        
        wait for 10 ns;
    end process;
end;