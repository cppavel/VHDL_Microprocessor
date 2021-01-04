----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/29/2020 08:10:36 AM
-- Design Name: 
-- Module Name: extend - Behavioral
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

entity extend is
    Port(input: in std_logic_vector(9 downto 0);
            output: out std_logic_vector(31 downto 0));
end extend;

architecture Behavioral of extend is

begin
    
    process(input) begin
    
        if(input(9)='1') then
            output<= "1111111111111111111111" & input after 5 ns;
        else
            output<= "0000000000000000000000" & input after 5 ns;
        end if;
    
    end process;

end Behavioral;
