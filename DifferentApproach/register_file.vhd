library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.mypackage.all;

entity register_file is
Port (  srcA: in std_logic_vector(4 downto 0);
        srcB: in std_logic_vector(4 downto 0);
        dst: in std_logic_vector(4 downto 0);
        data: in std_logic_vector(31 downto 0);
        enable:in std_logic;
        Clk : in std_logic;
        A: out std_logic_vector(31 downto 0);
        B: out std_logic_vector(31 downto 0));
end register_file;

architecture Behavioral of register_file is

    component reg32
        port(Clk, load: in std_logic;
                D:in std_logic_vector(31 downto 0);
                Q: out std_logic_vector(31 downto 0));
    end component;
    
    component decoder_5_32 is
    Port(A:in std_logic_vector(4 downto 0);
            D_not:out std_logic_vector(31 downto 0));
    end component;  
    
    component mux_2_32 is
    Port(A:in std_logic_vector(31 downto 0);
            B:in std_logic_vector(31 downto 0);
            S0:in std_logic;
            Z:out std_logic_vector(31 downto 0));
    end component;
    
    component mux_32_32 is
    Port(A:in std_logic_matrix;
            S:in std_logic_vector(4 downto 0);
            Z:out std_logic_vector(31 downto 0));
    end component; 
    
    signal load_registers: std_logic_vector(31 downto 0);
    signal load: std_logic_vector(31 downto 0);
    signal register_q_s: std_logic_matrix;
    
    begin
    
    load_registers(0) <= enable and load(0) after 5 ns;     
    load_registers(1) <= enable and load(1) after 5 ns;
    load_registers(2) <= enable and load(2) after 5 ns;
    load_registers(3) <= enable and load(3) after 5 ns;
    load_registers(4) <= enable and load(4) after 5 ns;
    load_registers(5) <= enable and load(5) after 5 ns;
    load_registers(6) <= enable and load(6) after 5 ns;
    load_registers(7) <= enable and load(7) after 5 ns;
    load_registers(8) <= enable and load(8) after 5 ns;
    load_registers(9) <= enable and load(9) after 5 ns;
    load_registers(10) <= enable and load(10) after 5 ns;
    load_registers(11) <= enable and load(11) after 5 ns;
    load_registers(12) <= enable and load(12) after 5 ns;
    load_registers(13) <= enable and load(13) after 5 ns;
    load_registers(14) <= enable and load(14) after 5 ns;
    load_registers(15) <= enable and load(15) after 5 ns;
    load_registers(16) <= enable and load(16) after 5 ns;
    load_registers(17) <= enable and load(17) after 5 ns;
    load_registers(18) <= enable and load(18) after 5 ns;
    load_registers(19) <= enable and load(19) after 5 ns;
    load_registers(20) <= enable and load(20) after 5 ns;
    load_registers(21) <= enable and load(21) after 5 ns;
    load_registers(22) <= enable and load(22) after 5 ns;
    load_registers(23) <= enable and load(23) after 5 ns;
    load_registers(24) <= enable and load(24) after 5 ns;
    load_registers(25) <= enable and load(25) after 5 ns;
    load_registers(26) <= enable and load(26) after 5 ns;
    load_registers(27) <= enable and load(27) after 5 ns;
    load_registers(28) <= enable and load(28) after 5 ns;
    load_registers(29) <= enable and load(29) after 5 ns;
    load_registers(30) <= enable and load(30) after 5 ns;
    load_registers(31) <= enable and load(31) after 5 ns;
    
    reg00: reg32 port map(
        D => data,
        load => load_registers(0),
        Clk => Clk,
        Q => register_q_s(0));
        
    reg01: reg32 port map(
        D => data,
        load => load_registers(1),
        Clk => Clk,
        Q => register_q_s(1));
        
    reg02: reg32 port map(
        D => data,
        load => load_registers(2),
        Clk => Clk,
        Q => register_q_s(2));
        
        
    reg03: reg32 port map(
        D => data,
        load => load_registers(3),
        Clk => Clk,
        Q => register_q_s(3));
        
        
    reg04: reg32 port map(
        D => data,
        load => load_registers(4),
        Clk => Clk,
        Q => register_q_s(4));
        
    reg05: reg32 port map(
        D => data,
        load => load_registers(5),
        Clk => Clk,
        Q => register_q_s(5));
        
    reg06: reg32 port map(
        D => data,
        load => load_registers(6),
        Clk => Clk,
        Q => register_q_s(6));
        
        
    reg07: reg32 port map(
        D => data,
        load => load_registers(7),
        Clk => Clk,
        Q => register_q_s(7));
        
    reg08: reg32 port map(
        D => data,
        load => load_registers(8),
        Clk => Clk,
        Q => register_q_s(8));
        
    reg09: reg32 port map(
        D => data,
        load => load_registers(9),
        Clk => Clk,
        Q => register_q_s(9));
        
    reg10: reg32 port map(
        D => data,
        load => load_registers(10),
        Clk => Clk,
        Q => register_q_s(10));
        
        
    reg11: reg32 port map(
        D => data,
        load => load_registers(11),
        Clk => Clk,
        Q => register_q_s(11));
        
        
    reg12: reg32 port map(
        D => data,
        load => load_registers(12),
        Clk => Clk,
        Q => register_q_s(12));
        
    reg13: reg32 port map(
        D => data,
        load => load_registers(13),
        Clk => Clk,
        Q => register_q_s(13));
        
    reg14: reg32 port map(
        D => data,
        load => load_registers(14),
        Clk => Clk,
        Q => register_q_s(14));
        
        
    reg15: reg32 port map(
        D => data,
        load => load_registers(15),
        Clk => Clk,
        Q => register_q_s(15));
        
    reg16: reg32 port map(
        D => data,
        load => load_registers(16),
        Clk => Clk,
        Q => register_q_s(16));
        
    reg17: reg32 port map(
        D => data,
        load => load_registers(17),
        Clk => Clk,
        Q => register_q_s(17));
        
    reg18: reg32 port map(
        D => data,
        load => load_registers(18),
        Clk => Clk,
        Q => register_q_s(18));
        
        
    reg19: reg32 port map(
        D => data,
        load => load_registers(19),
        Clk => Clk,
        Q => register_q_s(19));
        
        
    reg20: reg32 port map(
        D => data,
        load => load_registers(20),
        Clk => Clk,
        Q => register_q_s(20));
        
    reg21: reg32 port map(
        D => data,
        load => load_registers(21),
        Clk => Clk,
        Q => register_q_s(21));
        
    reg22: reg32 port map(
        D => data,
        load => load_registers(22),
        Clk => Clk,
        Q => register_q_s(22));
        
        
    reg23: reg32 port map(
        D => data,
        load => load_registers(23),
        Clk => Clk,
        Q => register_q_s(23));
        
    reg24: reg32 port map(
        D => data,
        load => load_registers(24),
        Clk => Clk,
        Q => register_q_s(24));
        
    reg25: reg32 port map(
        D => data,
        load => load_registers(25),
        Clk => Clk,
        Q => register_q_s(25));
        
    reg26: reg32 port map(
        D => data,
        load => load_registers(26),
        Clk => Clk,
        Q => register_q_s(26));
        
        
    reg27: reg32 port map(
        D => data,
        load => load_registers(27),
        Clk => Clk,
        Q => register_q_s(27));
        
        
    reg28: reg32 port map(
        D => data,
        load => load_registers(28),
        Clk => Clk,
        Q => register_q_s(28));
        
    reg29: reg32 port map(
        D => data,
        load => load_registers(29),
        Clk => Clk,
        Q => register_q_s(29));
        
    reg30: reg32 port map(
        D => data,
        load => load_registers(30),
        Clk => Clk,
        Q => register_q_s(30));
        
        
    reg31: reg32 port map(
        D => data,
        load => load_registers(31),
        Clk => Clk,
        Q => register_q_s(31));
        
    des_decoder_5to32: decoder_5_32 
        port map(A=>dst,
            D_not=>load);
                  
    data_src_mux32_32bitA: mux_32_32 
        port map(A=>register_q_s,
                    S=>srcA,
                    Z=>A);
    data_src_mux32_32bitB: mux_32_32 
        port map(A=>register_q_s,
                    S=>srcB,
                    Z=>B);
                    
end Behavioral;