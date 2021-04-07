----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/18/2020 01:56:11 PM
-- Design Name: 
-- Module Name: logic_circuit - Behavioral
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

entity logic_circuit is
    Port(A: in std_logic_vector(31 downto 0); B: in std_logic_vector(31 downto 0);
        sel: in std_logic_vector(1 downto 0); G: out std_logic_vector(31 downto 0));
end logic_circuit;

architecture Behavioral of logic_circuit is
    component logic_circuit_slice
    Port (A:in std_logic; B: in std_logic; sel: in std_logic_vector (1 downto 0);
            G: out std_logic);
    end component;
begin
     slice0: logic_circuit_slice port map(
        A => A(0),
        B=>B(0),
        sel=>sel,
        G=>G(0)
    );
    
    slice1: logic_circuit_slice port map(
        A => A(1),
        B=>B(1),
        sel=>sel,
        G=>G(1)
    );


    slice2: logic_circuit_slice port map(
        A => A(2),
        B=>B(2),
        sel=>sel,
        G=>G(2)
    );


    slice3: logic_circuit_slice port map(
        A => A(3),
        B=>B(3),
        sel=>sel,
        G=>G(3)
    );


    slice4: logic_circuit_slice port map(
        A => A(4),
        B=>B(4),
        sel=>sel,
        G=>G(4)
    );


    slice5: logic_circuit_slice port map(
        A => A(5),
        B=>B(5),
        sel=>sel,
        G=>G(5)
    );


    slice6: logic_circuit_slice port map(
        A => A(6),
        B=>B(6),
        sel=>sel,
        G=>G(6)
    );


    slice7: logic_circuit_slice port map(
        A => A(7),
        B=>B(7),
        sel=>sel,
        G=>G(7)
    );


    slice8: logic_circuit_slice port map(
        A => A(8),
        B=>B(8),
        sel=>sel,
        G=>G(8)
    );


    slice9: logic_circuit_slice port map(
        A => A(9),
        B=>B(9),
        sel=>sel,
        G=>G(9)
    );


    slice10: logic_circuit_slice port map(
        A => A(10),
        B=>B(10),
        sel=>sel,
        G=>G(10)
    );


    slice11: logic_circuit_slice port map(
        A => A(11),
        B=>B(11),
        sel=>sel,
        G=>G(11)
    );


    slice12: logic_circuit_slice port map(
        A => A(12),
        B=>B(12),
        sel=>sel,
        G=>G(12)
    );


    slice13: logic_circuit_slice port map(
        A => A(13),
        B=>B(13),
        sel=>sel,
        G=>G(13)
    );


    slice14: logic_circuit_slice port map(
        A => A(14),
        B=>B(14),
        sel=>sel,
        G=>G(14)
    );


    slice15: logic_circuit_slice port map(
        A => A(15),
        B=>B(15),
        sel=>sel,
        G=>G(15)
    );


    slice16: logic_circuit_slice port map(
        A => A(16),
        B=>B(16),
        sel=>sel,
        G=>G(16)
    );


    slice17: logic_circuit_slice port map(
        A => A(17),
        B=>B(17),
        sel=>sel,
        G=>G(17)
    );


    slice18: logic_circuit_slice port map(
        A => A(18),
        B=>B(18),
        sel=>sel,
        G=>G(18)
    );


    slice19: logic_circuit_slice port map(
        A => A(19),
        B=>B(19),
        sel=>sel,
        G=>G(19)
    );


    slice20: logic_circuit_slice port map(
        A => A(20),
        B=>B(20),
        sel=>sel,
        G=>G(20)
    );


    slice21: logic_circuit_slice port map(
        A => A(21),
        B=>B(21),
        sel=>sel,
        G=>G(21)
    );


    slice22: logic_circuit_slice port map(
        A => A(22),
        B=>B(22),
        sel=>sel,
        G=>G(22)
    );


    slice23: logic_circuit_slice port map(
        A => A(23),
        B=>B(23),
        sel=>sel,
        G=>G(23)
    );


    slice24: logic_circuit_slice port map(
        A => A(24),
        B=>B(24),
        sel=>sel,
        G=>G(24)
    );


    slice25: logic_circuit_slice port map(
        A => A(25),
        B=>B(25),
        sel=>sel,
        G=>G(25)
    );


    slice26: logic_circuit_slice port map(
        A => A(26),
        B=>B(26),
        sel=>sel,
        G=>G(26)
    );


    slice27: logic_circuit_slice port map(
        A => A(27),
        B=>B(27),
        sel=>sel,
        G=>G(27)
    );


    slice28: logic_circuit_slice port map(
        A => A(28),
        B=>B(28),
        sel=>sel,
        G=>G(28)
    );


    slice29: logic_circuit_slice port map(
        A => A(29),
        B=>B(29),
        sel=>sel,
        G=>G(29)
    );


    slice30: logic_circuit_slice port map(
        A => A(30),
        B=>B(30),
        sel=>sel,
        G=>G(30)
    );


 slice31: logic_circuit_slice port map(
        A => A(31),
        B=>B(31),
        sel=>sel,
        G=>G(31)
    );


end Behavioral;
