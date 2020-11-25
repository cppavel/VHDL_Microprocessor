----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/19/2020 12:59:47 AM
-- Design Name: 
-- Module Name: shifter - Behavioral
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

entity shifter is
    Port(A: in std_logic_vector(31 downto 0); sel: in std_logic_vector(1 downto 0);
            H: out std_logic_vector(31 downto 0));
end shifter;

architecture Behavioral of shifter is

    component mux_4
        Port(A:in std_logic;
            B:in std_logic;
            C:in std_logic;
            D:in std_logic;
            S:in std_logic_vector(1 downto 0);
            Z:out std_logic);
    end component;
    
    signal dummy: std_logic;
    signal zero: std_logic := '0';
    
begin
    
    mux0: mux_4 port map(
        A => A(0),
        B=>A(1),
        C=>zero,
        D=>dummy,
        S=>sel,
        Z=>H(0)
    );

      mux1: mux_4 port map(
        A => A(1),
        B=>A(2),
        C=>A(0),
        D=>dummy,
        S=>sel,
        Z=>H(1)
    );
    
     mux2: mux_4 port map(
        A => A(2),
        B=>A(3),
        C=>A(1),
        D=>dummy,
        S=>sel,
        Z=>H(2)
    );


    mux3: mux_4 port map(
        A => A(3),
        B=>A(4),
        C=>A(2),
        D=>dummy,
        S=>sel,
        Z=>H(3)
    );


     mux4: mux_4 port map(
        A => A(4),
        B=>A(5),
        C=>A(3),
        D=>dummy,
        S=>sel,
        Z=>H(4)
    );


    mux5: mux_4 port map(
        A => A(5),
        B=>A(6),
        C=>A(4),
        D=>dummy,
        S=>sel,
        Z=>H(5)
    );


    mux6: mux_4 port map(
        A => A(6),
        B=>A(7),
        C=>A(5),
        D=>dummy,
        S=>sel,
        Z=>H(6)
    );


     mux7: mux_4 port map(
        A => A(7),
        B=>A(8),
        C=>A(6),
        D=>dummy,
        S=>sel,
        Z=>H(7)
    );


    mux8: mux_4 port map(
        A => A(8),
        B=>A(9),
        C=>A(7),
        D=>dummy,
        S=>sel,
        Z=>H(8)
    );


    mux9: mux_4 port map(
        A => A(9),
        B=>A(10),
        C=>A(8),
        D=>dummy,
        S=>sel,
        Z=>H(9)
    );


    mux10: mux_4 port map(
        A => A(10),
        B=>A(11),
        C=>A(9),
        D=>dummy,
        S=>sel,
        Z=>H(10)
    );


    mux11: mux_4 port map(
        A => A(11),
        B=>A(12),
        C=>A(10),
        D=>dummy,
        S=>sel,
        Z=>H(11)
    );


    mux12: mux_4 port map(
        A => A(12),
        B=>A(13),
        C=>A(11),
        D=>dummy,
        S=>sel,
        Z=>H(12)
    );


    mux13: mux_4 port map(
        A => A(13),
        B=>A(14),
        C=>A(12),
        D=>dummy,
        S=>sel,
        Z=>H(13)
    );


    mux14: mux_4 port map(
        A => A(14),
        B=>A(15),
        C=>A(13),
        D=>dummy,
        S=>sel,
        Z=>H(14)
    );


    mux15: mux_4 port map(
        A => A(15),
        B=>A(16),
        C=>A(14),
        D=>dummy,
        S=>sel,
        Z=>H(15)
    );


    mux16: mux_4 port map(
        A => A(16),
        B=>A(17),
        C=>A(15),
        D=>dummy,
        S=>sel,
        Z=>H(16)
    );


    mux17: mux_4 port map(
        A => A(17),
        B=>A(18),
        C=>A(16),
        D=>dummy,
        S=>sel,
        Z=>H(17)
    );


    mux18: mux_4 port map(
        A => A(18),
        B=>A(19),
        C=>A(17),
        D=>dummy,
        S=>sel,
        Z=>H(18)
    );


    mux19: mux_4 port map(
        A => A(19),
        B=>A(20),
        C=>A(18),
        D=>dummy,
        S=>sel,
        Z=>H(19)
    );


    mux20: mux_4 port map(
        A => A(20),
        B=>A(21),
        C=>A(19),
        D=>dummy,
        S=>sel,
        Z=>H(20)
    );


    mux21: mux_4 port map(
        A => A(21),
        B=>A(22),
        C=>A(20),
        D=>dummy,
        S=>sel,
        Z=>H(21)
    );


    mux22: mux_4 port map(
        A => A(22),
        B=>A(23),
        C=>A(21),
        D=>dummy,
        S=>sel,
        Z=>H(22)
    );


    mux23: mux_4 port map(
        A => A(23),
        B=>A(24),
        C=>A(22),
        D=>dummy,
        S=>sel,
        Z=>H(23)
    );


     mux24: mux_4 port map(
        A => A(24),
        B=>A(25),
        C=>A(23),
        D=>dummy,
        S=>sel,
        Z=>H(24)
    );


    mux25: mux_4 port map(
        A => A(25),
        B=>A(26),
        C=>A(24),
        D=>dummy,
        S=>sel,
        Z=>H(25)
    );


    mux26: mux_4 port map(
        A => A(26),
        B=>A(27),
        C=>A(25),
        D=>dummy,
        S=>sel,
        Z=>H(26)
    );


    mux27: mux_4 port map(
        A => A(27),
        B=>A(28),
        C=>A(26),
        D=>dummy,
        S=>sel,
        Z=>H(27)
    );


    mux28: mux_4 port map(
        A => A(28),
        B=>A(29),
        C=>A(27),
        D=>dummy,
        S=>sel,
        Z=>H(28)
    );


    mux29: mux_4 port map(
        A => A(29),
        B=>A(30),
        C=>A(28),
        D=>dummy,
        S=>sel,
        Z=>H(29)
    );


    mux30: mux_4 port map(
        A => A(30),
        B=>A(31),
        C=>A(29),
        D=>dummy,
        S=>sel,
        Z=>H(30)
    );


    mux31: mux_4 port map(
        A => A(31),
        B=>zero,
        C=>A(30),
        D=>dummy,
        S=>sel,
        Z=>H(31)
    );

end Behavioral;
