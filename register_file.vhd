library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.mypackage.all;

entity register_file is
Port ( src: in std_logic_vector(4 downto 0);
        dst: in std_logic_vector(4 downto 0);
        Clk : in std_logic;
        data_src : in std_logic;
        data : in std_logic_vector(31 downto 0);
        registers: out std_logic_matrix);
end register_file;

architecture Behavioral of register_file is

    component reg32
        port(Clk, load: in std_logic;
                D:in std_logic_vector(31 downto 0);
                Q: out std_logic_vector(31 downto 0));
    end component;
    
    component decoder_5_32 is
    Port(A:in std_logic_vector(4 downto 0);
            E_not:in std_logic;
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
    signal register_q_s: std_logic_matrix;
    signal data_src_mux_out, src_reg:std_logic_vector(31 downto 0);
    signal dst_E_not:std_logic:='0';
    
    begin
    
    reg00: reg32 port map(
        D => data_src_mux_out,
        load => load_registers(0),
        Clk => Clk,
        Q => register_q_s(0));
        
    reg01: reg32 port map(
        D => data_src_mux_out,
        load => load_registers(1),
        Clk => Clk,
        Q => register_q_s(1));
        
    reg02: reg32 port map(
        D => data_src_mux_out,
        load => load_registers(2),
        Clk => Clk,
        Q => register_q_s(2));
        
        
    reg03: reg32 port map(
        D => data_src_mux_out,
        load => load_registers(3),
        Clk => Clk,
        Q => register_q_s(3));
        
        
    reg04: reg32 port map(
        D => data_src_mux_out,
        load => load_registers(4),
        Clk => Clk,
        Q => register_q_s(4));
        
    reg05: reg32 port map(
        D => data_src_mux_out,
        load => load_registers(5),
        Clk => Clk,
        Q => register_q_s(5));
        
    reg06: reg32 port map(
        D => data_src_mux_out,
        load => load_registers(6),
        Clk => Clk,
        Q => register_q_s(6));
        
        
    reg07: reg32 port map(
        D => data_src_mux_out,
        load => load_registers(7),
        Clk => Clk,
        Q => register_q_s(7));
        
    reg08: reg32 port map(
        D => data_src_mux_out,
        load => load_registers(8),
        Clk => Clk,
        Q => register_q_s(8));
        
    reg09: reg32 port map(
        D => data_src_mux_out,
        load => load_registers(9),
        Clk => Clk,
        Q => register_q_s(9));
        
    reg10: reg32 port map(
        D => data_src_mux_out,
        load => load_registers(10),
        Clk => Clk,
        Q => register_q_s(10));
        
        
    reg11: reg32 port map(
        D => data_src_mux_out,
        load => load_registers(11),
        Clk => Clk,
        Q => register_q_s(11));
        
        
    reg12: reg32 port map(
        D => data_src_mux_out,
        load => load_registers(12),
        Clk => Clk,
        Q => register_q_s(12));
        
    reg13: reg32 port map(
        D => data_src_mux_out,
        load => load_registers(13),
        Clk => Clk,
        Q => register_q_s(13));
        
    reg14: reg32 port map(
        D => data_src_mux_out,
        load => load_registers(14),
        Clk => Clk,
        Q => register_q_s(14));
        
        
    reg15: reg32 port map(
        D => data_src_mux_out,
        load => load_registers(15),
        Clk => Clk,
        Q => register_q_s(15));
        
    reg16: reg32 port map(
        D => data_src_mux_out,
        load => load_registers(16),
        Clk => Clk,
        Q => register_q_s(16));
        
    reg17: reg32 port map(
        D => data_src_mux_out,
        load => load_registers(17),
        Clk => Clk,
        Q => register_q_s(17));
        
    reg18: reg32 port map(
        D => data_src_mux_out,
        load => load_registers(18),
        Clk => Clk,
        Q => register_q_s(18));
        
        
    reg19: reg32 port map(
        D => data_src_mux_out,
        load => load_registers(19),
        Clk => Clk,
        Q => register_q_s(19));
        
        
    reg20: reg32 port map(
        D => data_src_mux_out,
        load => load_registers(20),
        Clk => Clk,
        Q => register_q_s(20));
        
    reg21: reg32 port map(
        D => data_src_mux_out,
        load => load_registers(21),
        Clk => Clk,
        Q => register_q_s(21));
        
    reg22: reg32 port map(
        D => data_src_mux_out,
        load => load_registers(22),
        Clk => Clk,
        Q => register_q_s(22));
        
        
    reg23: reg32 port map(
        D => data_src_mux_out,
        load => load_registers(23),
        Clk => Clk,
        Q => register_q_s(23));
        
    reg24: reg32 port map(
        D => data_src_mux_out,
        load => load_registers(24),
        Clk => Clk,
        Q => register_q_s(24));
        
    reg25: reg32 port map(
        D => data_src_mux_out,
        load => load_registers(25),
        Clk => Clk,
        Q => register_q_s(25));
        
    reg26: reg32 port map(
        D => data_src_mux_out,
        load => load_registers(26),
        Clk => Clk,
        Q => register_q_s(26));
        
        
    reg27: reg32 port map(
        D => data_src_mux_out,
        load => load_registers(27),
        Clk => Clk,
        Q => register_q_s(27));
        
        
    reg28: reg32 port map(
        D => data_src_mux_out,
        load => load_registers(28),
        Clk => Clk,
        Q => register_q_s(28));
        
    reg29: reg32 port map(
        D => data_src_mux_out,
        load => load_registers(29),
        Clk => Clk,
        Q => register_q_s(29));
        
    reg30: reg32 port map(
        D => data_src_mux_out,
        load => load_registers(30),
        Clk => Clk,
        Q => register_q_s(30));
        
        
    reg31: reg32 port map(
        D => data_src_mux_out,
        load => load_registers(31),
        Clk => Clk,
        Q => register_q_s(31));
        
    des_decoder_5to32: decoder_5_32 
        port map(A=>dst,
            E_not=>dst_E_not,
            D_not=>load_registers);
        
    data_src_mux2_32bit: mux_2_32
        port map (A=>data,
            B=>src_reg,
            S0=>data_src,
            Z=>data_src_mux_out);
            
    data_src_mux32_32bit: mux_32_32 
        port map(A=>register_q_s,
                    S=>src,
                    Z=>src_reg);
                    
    registers <=register_q_s;

end Behavioral;