library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity CLA16 is
        Port(x:in std_logic_vector(15 downto 0); y: in std_logic_vector(15 downto 0); cin: in std_logic;
        sel: in std_logic_vector(1 downto 0);s:out std_logic_vector(15 downto 0); GG:out std_logic;
             PP:out std_logic);
end CLA16;

architecture Behavioral of CLA16 is

    component CLA4 is
        Port(x:in std_logic_vector(3 downto 0); y: in std_logic_vector(3 downto 0); cin: in std_logic;
        sel: in std_logic_vector(1 downto 0);s:out std_logic_vector(3 downto 0); 
             GG:out std_logic; PP:out std_logic);
     end component;

    signal c4: std_logic;
    signal c8: std_logic;
    signal c12: std_logic;
    signal gg0, pp0: std_logic;
    signal gg1, pp1: std_logic;
    signal gg2, pp2: std_logic;
    signal gg3, pp3: std_logic;
begin
     cla40: CLA4 port map(
        x=>x(3 downto 0),
        y=>y(3 downto 0),
        cin=>cin,
        sel=>sel,
        s=>s(3 downto 0),
        gg=>gg0,
        pp=>pp0
    );
    
     cla41: CLA4 port map(
        x=>x(7 downto 4),
        y=>y(7 downto 4),
        cin=>c4,
        sel=>sel,
        s=>s(7 downto 4),
        gg=>gg1,
        pp=>pp1
    );
    
     cla42: CLA4 port map(
        x=>x(11 downto 8),
        y=>y(11 downto 8),
        cin=>c8,
        sel=>sel,
        s=>s(11 downto 8),
        gg=>gg2,
        pp=>pp2
    );
    
     cla43: CLA4 port map(
        x=>x(15 downto 12),
        y=>y(15 downto 12),
        cin=>c12,
        sel=>sel,
        s=>s(15 downto 12),
        gg=>gg3,
        pp=>pp3
    );
    
    c4 <= gg0 or (cin and pp0) after 5 ns;
    c8<= gg1 or (pp1 and gg0) or (pp0 and pp1 and cin) after 5 ns;
    c12<= gg2 or (pp2 and gg1) or (pp1 and pp2 and gg0) 
        or (pp0 and pp1 and pp2 and cin) after 5 ns;
        
    GG <= gg3 or (pp3 and gg2) or (pp2 and pp3 and gg1) or (pp1 and pp2 and pp3 and gg0) after 5 ns;
    PP <= pp0 and pp1 and pp2 and pp3 after 5 ns;
    

end Behavioral;
