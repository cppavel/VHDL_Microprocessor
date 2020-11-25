----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/17/2020 10:54:42 PM
-- Design Name: 
-- Module Name: ripple_adder_32 - Behavioral
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

entity ripple_adder_32 is
    Port(x: in std_logic_vector(31 downto 0);
            y: in std_logic_vector(31 downto 0);
            cin: in std_logic;sel:in std_logic_vector(1 downto 0);
             g: out std_logic_vector(31 downto 0);cout: out std_logic; v: out std_logic);         
end ripple_adder_32;

architecture Behavioral of ripple_adder_32 is

    component full_adder
    port(x:in std_logic; y:in std_logic;
            cin:in std_logic;sel: in std_logic_vector(1 downto 0); 
            s: out std_logic;cout:out std_logic);
    end component;
    
    signal carries: std_logic_vector(31 downto 0);
begin

    v <= carries(30) xor carries(31);
    cout <= carries(31);
    adder0: full_adder port map(
        x => x(0),
        y=>y(0),
        cin=>cin,
        sel=>sel,
        s=>g(0),
        cout=>carries(0)
    );
    
    adder1: full_adder port map(
        x => x(1),
        y=>y(1),
        cin=>carries(0),
        sel=>sel,
        s=>g(1),
        cout=>carries(1)
    );


   adder2: full_adder port map(
        x => x(2),
        y=>y(2),
        cin=>carries(1),
        sel=>sel,
        s=>g(2),
        cout=>carries(2)
    );


   adder3: full_adder port map(
        x => x(3),
        y=>y(3),
        cin=>carries(2),
        sel=>sel,
        s=>g(3),
        cout=>carries(3)
    );


   adder4: full_adder port map(
        x => x(4),
        y=>y(4),
        cin=>carries(3),
        sel=>sel,
        s=>g(4),
        cout=>carries(4)
    );


   adder5: full_adder port map(
        x => x(5),
        y=>y(5),
        cin=>carries(4),
        sel=>sel,
        s=>g(5),
        cout=>carries(5)
    );


   adder6: full_adder port map(
        x => x(6),
        y=>y(6),
        cin=>carries(5),
        sel=>sel,
        s=>g(6),
        cout=>carries(6)
    );


   adder7: full_adder port map(
        x => x(7),
        y=>y(7),
        cin=>carries(6),
        sel=>sel,
        s=>g(7),
        cout=>carries(7)
    );


   adder8: full_adder port map(
        x => x(8),
        y=>y(8),
        cin=>carries(7),
        sel=>sel,
        s=>g(8),
        cout=>carries(8)
    );


   adder9: full_adder port map(
        x => x(9),
        y=>y(9),
        cin=>carries(8),
        sel=>sel,
        s=>g(9),
        cout=>carries(9)
    );


   adder10: full_adder port map(
        x => x(10),
        y=>y(10),
        cin=>carries(9),
        sel=>sel,
        s=>g(10),
        cout=>carries(10)
    );


   adder11: full_adder port map(
        x => x(11),
        y=>y(11),
        cin=>carries(10),
        sel=>sel,
        s=>g(11),
        cout=>carries(11)
    );


   adder12: full_adder port map(
        x => x(12),
        y=>y(12),
        cin=>carries(11),
        sel=>sel,
        s=>g(12),
        cout=>carries(12)
    );


   adder13: full_adder port map(
        x => x(13),
        y=>y(13),
        cin=>carries(12),
        sel=>sel,
        s=>g(13),
        cout=>carries(13)
    );


   adder14: full_adder port map(
        x => x(14),
        y=>y(14),
        cin=>carries(13),
        sel=>sel,
        s=>g(14),
        cout=>carries(14)
    );


   adder15: full_adder port map(
        x => x(15),
        y=>y(15),
        cin=>carries(14),
        sel=>sel,
        s=>g(15),
        cout=>carries(15)
    );


   adder16: full_adder port map(
        x => x(16),
        y=>y(16),
        cin=>carries(15),
        sel=>sel,
        s=>g(16),
        cout=>carries(16)
    );


   adder17: full_adder port map(
        x => x(17),
        y=>y(17),
        cin=>carries(16),
        sel=>sel,
        s=>g(17),
        cout=>carries(17)
    );


   adder18: full_adder port map(
        x => x(18),
        y=>y(18),
        cin=>carries(17),
        sel=>sel,
        s=>g(18),
        cout=>carries(18)
    );


   adder19: full_adder port map(
        x => x(19),
        y=>y(19),
        cin=>carries(18),
        sel=>sel,
        s=>g(19),
        cout=>carries(19)
    );


   adder20: full_adder port map(
        x => x(20),
        y=>y(20),
        cin=>carries(19),
        sel=>sel,
        s=>g(20),
        cout=>carries(20)
    );


   adder21: full_adder port map(
        x => x(21),
        y=>y(21),
        cin=>carries(20),
        sel=>sel,
        s=>g(21),
        cout=>carries(21)
    );


   adder22: full_adder port map(
        x => x(22),
        y=>y(22),
        cin=>carries(21),
        sel=>sel,
        s=>g(22),
        cout=>carries(22)
    );


   adder23: full_adder port map(
        x => x(23),
        y=>y(23),
        cin=>carries(22),
        sel=>sel,
        s=>g(23),
        cout=>carries(23)
    );


   adder24: full_adder port map(
        x => x(24),
        y=>y(24),
        cin=>carries(23),
        sel=>sel,
        s=>g(24),
        cout=>carries(24)
    );


   adder25: full_adder port map(
        x => x(25),
        y=>y(25),
        cin=>carries(24),
        sel=>sel,
        s=>g(25),
        cout=>carries(25)
    );


   adder26: full_adder port map(
        x => x(26),
        y=>y(26),
        cin=>carries(25),
        sel=>sel,
        s=>g(26),
        cout=>carries(26)
    );


   adder27: full_adder port map(
        x => x(27),
        y=>y(27),
        cin=>carries(26),
        sel=>sel,
        s=>g(27),
        cout=>carries(27)
    );


   adder28: full_adder port map(
        x => x(28),
        y=>y(28),
        cin=>carries(27),
        sel=>sel,
        s=>g(28),
        cout=>carries(28)
    );


   adder29: full_adder port map(
        x => x(29),
        y=>y(29),
        cin=>carries(28),
        sel=>sel,
        s=>g(29),
        cout=>carries(29)
    );


   adder30: full_adder port map(
        x => x(30),
        y=>y(30),
        cin=>carries(29),
        sel=>sel,
        s=>g(30),
        cout=>carries(30)
    );


   adder31: full_adder port map(
        x => x(31),
        y=>y(31),
        cin=>carries(30),
        sel=>sel,
        s=>g(31),
        cout=>carries(31)
    );


end Behavioral;
