

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity CLA4 is
        Port(x:in std_logic_vector(3 downto 0); y: in std_logic_vector(3 downto 0); cin: in std_logic;
        sel: in std_logic_vector(1 downto 0);s:out std_logic_vector(3 downto 0); GG:out std_logic;
             PP:out std_logic);
end CLA4;

architecture Behavioral of CLA4 is

    signal p: std_logic_vector(3 downto 0);
    signal g: std_logic_vector(3 downto 0);
    signal c: std_logic_vector(3 downto 0);
    signal y_inner: std_logic_vector(3 downto 0);
begin
    y_inner(0) <= (sel(0) and y(0)) or (sel(1) and (not y(0))) after 5 ns;
    y_inner(1) <= (sel(0) and y(1)) or (sel(1) and (not y(1))) after 5 ns;
    y_inner(2) <= (sel(0) and y(2)) or (sel(1) and (not y(2))) after 5 ns;
    y_inner(3) <= (sel(0) and y(3)) or (sel(1) and (not y(3))) after 5 ns;
    
    p(0)<=x(0) or y_inner(0) after 5 ns;
    p(1)<=x(1) or y_inner(1) after 5 ns;
    p(2)<=x(2) or y_inner(2) after 5 ns;
    p(3)<=x(3) or y_inner(3) after 5 ns;
    
    g(0)<=x(0) and y_inner(0) after 5 ns;
    g(1)<=x(1) and y_inner(1) after 5 ns;
    g(2)<=x(2) and y_inner(2) after 5 ns;
    g(3)<=x(3) and y_inner(3) after 5 ns;
    
    
    c(0)<=g(0) or (cin and p(0)) after 5 ns;
    c(1) <= g(1) or (p(1) and g(0)) or (p(0) and p(1) and cin) after 5 ns;
    c(2) <= g(2) or (p(2) and g(1)) or (p(1) and p(2) and g(0)) or( p(0) and p(1) and p(2) and cin) after 5 ns;
    c(3) <= g(3) or (p(3) and g(2)) or (p(2) and p(3) and g(1)) or (p(1) and p(2) and p(3) and g(0)) 
        or (p(0) and p(1) and p(2) and p(3) and cin) after 5 ns;
        
    s(0) <= x(0) xor y_inner(0) xor cin after 5 ns;
    s(1) <= x(1) xor y_inner(1) xor c(0) after 5 ns;
    s(2) <= x(2) xor y_inner(2) xor c(1) after 5 ns;
    s(3) <= x(3) xor y_inner(3) xor c(2) after 5 ns;
    
    GG <= g(3) or (p(3) and g(2)) or (p(2) and p(3) and g(1)) or (p(1) and p(2) and p(3) and g(0)) after 5 ns;
    PP<= p(0) and p(1) and p(2) and p(3) after 5 ns;
    


end Behavioral;
