
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity memory_tb is
end memory_tb;

architecture Behavioral of memory_tb is
     component memory is
         Port(address: unsigned(31 downto 0);
            write_data : in std_logic_vector(31 downto 0);
            MemWrite, Clk : in std_logic;
            read_data : out std_logic_vector(31 downto 0));
    end component;
    
    --inputs
    signal address: unsigned(31 downto 0);
    signal write_data: std_logic_vector(31 downto 0);
    signal mem_write: std_logic;
    signal Clk: std_logic:='0';
    
    --outputs
    signal read_data: std_logic_vector(31 downto 0);
begin

       uut: memory port map(
        address=>address,
        write_data=>write_data,
        MemWrite=>mem_write,
        Clk=>Clk,
        read_data=>read_data);
        
        Clk <= not Clk after 5 ns;
        
       stim_proc:process
         begin
         
         address <= X"FFFFFFFF";
         write_data <=X"FFFF0000";
         mem_write<='1';
         
         wait for 10 ns;
         
         address <= X"00000002";
         write_data <=X"11110000";
         mem_write<='1';
         
         wait for 10 ns;
         
         address <= X"00000002";
         mem_write<='0';
         
         wait for 10 ns;
         
         address <= X"000001FF";
         mem_write<='0';
         
         wait for 10 ns;
         
         address <= X"00000002";
         mem_write<='0';
         
         wait for 10 ns;
       end process;
end Behavioral;
