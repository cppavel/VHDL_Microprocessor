library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity program_counter_CLA is
    Port(Clk, PL, PI, reset: in std_logic; 
        offset: in std_logic_vector(31 downto 0);
        PC: out std_logic_vector(31 downto 0));
end program_counter_CLA;

architecture Behavioral of program_counter_CLA is
    component ALU_CLA is
        Port(A:in std_logic_vector(31 downto 0); B: in std_logic_vector(31 downto 0);
            G_sel: in std_logic_vector(3 downto 0);
            G: out std_logic_vector(31 downto 0); cout: inout std_logic; 
            v:out std_logic);
    end component;
   
   
    signal cur: std_logic_vector(31 downto 0);
    signal PC_temp: std_logic_vector(31 downto 0);
    signal G_sel: std_logic_vector(3 downto 0):="0010";
    signal G : std_logic_vector(31 downto 0);
    signal cout: std_logic;
    signal v: std_logic;
    
    begin
        adder: ALU_CLA port map(
        A=>PC_temp,
        B=>offset,
        G_sel=>G_sel,
        G=>G,
        cout=>cout,
        v=>v
    );
        process(offset,reset, PL, PI) begin
            if reset = '1' then
                   PC_temp<=X"00000000" after 5 ns;   
                   G_sel<="0000" after 5 ns;    
            elsif PI ='1' then 
                   PC_temp<=cur after 5 ns;
                   G_sel<="0001" after 5 ns; 
            elsif PL ='1' then
                   PC_temp<=cur after 5 ns;
                   G_sel<="0010" after 5 ns;
            else
                   PC_temp<=cur after 5 ns;
                   G_sel<="0000" after 5 ns;
            end if;
        end process;  
        
        process(Clk)
            begin
                if (rising_edge(Clk)) then                    
                    PC<=G after 5 ns;
                    cur<=G after 5 ns;
                end if;                      
        end process;
end Behavioral;
