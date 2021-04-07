library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CLA32 is
        Port(x:in std_logic_vector(31 downto 0); y: in std_logic_vector(31 downto 0); cin: in std_logic;
        sel: in std_logic_vector(1 downto 0);s:inout std_logic_vector(31 downto 0); cout: inout std_logic; vout: out std_logic);
end CLA32;

architecture Behavioral of CLA32 is

component CLA16 is
        Port(x:in std_logic_vector(15 downto 0); y: in std_logic_vector(15 downto 0); cin: in std_logic;
        sel: in std_logic_vector(1 downto 0);s:out std_logic_vector(15 downto 0); GG:out std_logic;
             PP:out std_logic);
end component;

    signal C16: std_logic;
    signal gg0, pp0: std_logic;
    signal gg1, pp1: std_logic;
    signal y_inner_31: std_logic;
begin

     cla160: CLA16 port map(
        x=>x(15 downto 0),
        y=>y(15 downto 0),
        cin=>cin,
        sel=>sel,
        s=>s(15 downto 0),
        gg=>gg0,
        pp=>pp0
    );
    
     cla161: CLA16 port map(
        x=>x(31 downto 16),
        y=>y(31 downto 16),
        cin=>C16,
        sel=>sel,
        s=>s(31 downto 16),
        gg=>gg1,
        pp=>pp1
    );
    
    y_inner_31<=(sel(0) and y(31)) or (sel(1) and (not y(31)));
    C16 <= gg0 or (cin and pp0) after 5 ns;
    cout <= gg1 or (pp1 and gg0) or (pp0 and pp1 and cin) after 5 ns;
    vout<= (cout xor not(((x(31) xor y_inner_31) and s(31)) or (not(x(31) xor y_inner_31) and not s(31))) ) after 5 ns;


end Behavioral;
