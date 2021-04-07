library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity zero_fill is
    Port(input: in std_logic_vector(4 downto 0);
            output: out std_logic_vector(31 downto 0));
end zero_fill;

architecture Behavioral of zero_fill is
begin

    output<="000000000000000000000000000" & input after 5 ns;

end Behavioral;
