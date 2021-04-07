library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity processor is
  port (Clk : in std_logic;
        reset_global : in std_logic);
end processor;

architecture Behavioral of processor is 
    
component datapath is
    Port(write: in std_logic; Aaddress: in std_logic_vector(5 downto 0);
        Baddress: in std_logic_vector(5 downto 0); Daddress: in std_logic_vector(5 downto 0);
            ConstantIn: in std_logic_vector(31 downto 0); MB: in std_logic;
                FS: in std_logic_vector(4 downto 0); MD: in std_logic; DataIn: in
                    std_logic_vector(31 downto 0);Clk:in std_logic; AddressOut: out std_logic_vector(31 downto 0);
                        DataOut: out std_logic_vector(31 downto 0); V: out std_logic; C: out std_logic;
                            N: out std_logic; Z: out std_logic);
        
end component;

component mux_2_32
    port(A:in std_logic_vector(31 downto 0);
            B:in std_logic_vector(31 downto 0);
            S0:in std_logic;
            Z:out std_logic_vector(31 downto 0));
end component;

component memory is
         Port(address: unsigned(31 downto 0);
            write_data : in std_logic_vector(31 downto 0);
            MemWrite, Clk : in std_logic;
            read_data : out std_logic_vector(31 downto 0));
end component;

component zero_fill is
    Port(input: in std_logic_vector(4 downto 0);
            output: out std_logic_vector(31 downto 0));
end component;

component NZCV
    port(Clk, load: in std_logic;
                D:in std_logic_vector(3 downto 0);
                reset:in std_logic_vector(3 downto 0);
                Q: out std_logic_vector(3 downto 0));
end component;


component extend is
    Port(input: in std_logic_vector(9 downto 0);
            output: out std_logic_vector(31 downto 0));
end component;

component program_counter is
    Port(Clk, PL, PI, reset: in std_logic; 
        offset: in std_logic_vector(31 downto 0);
        PC: inout std_logic_vector(31 downto 0));
end component;

component IR is
        port(Clk, IL: in std_logic;
                D:in std_logic_vector(31 downto 0);           
                opcode: out std_logic_vector(16 downto 0);
                DR: out std_logic_vector(4 downto 0);
                SA: out std_logic_vector(4 downto 0);
                SB: out std_logic_vector(4 downto 0));
end component;

component mux_3_8 is
    Port(   A: std_logic_vector(7 downto 0);
            S:in std_logic_vector(2 downto 0);
            Z:out std_logic);
end component;

component mux_2_17
    port(A:in std_logic_vector(16 downto 0);
            B:in std_logic_vector(16 downto 0);
            S0:in std_logic;
            Z:out std_logic_vector(16 downto 0));
end component;

component CAR is
     Port(D:in std_logic_vector(16 downto 0); load: in std_logic; Clk: in std_logic;
            reset:in std_logic;
            Q:inout std_logic_vector(16 downto 0));
end component;

component control_memory is
    Port (FL : out std_logic; -- 0
            RZ : out std_logic; -- 1
            RN : out std_logic; -- 2
            RC : out std_logic; -- 3
            RV : out std_logic; -- 4
            MW : out std_logic; -- 5
            MM : out std_logic; -- 6
            RW : out std_logic; -- 7
            MD : out std_logic; -- 8
            FS : out std_logic_vector(4 downto 0); -- 9 to 13
            MB : out std_logic; -- 14
            TB : out std_logic; -- 15
            TA : out std_logic; -- 16
            TD : out std_logic; -- 17
            PL : out std_logic; -- 18
            PI : out std_logic; -- 19
            IL : out std_logic; -- 20
            MC : out std_logic; -- 21
            MS : out std_logic_vector(2 downto 0); -- 22 to 24
            NA : out std_logic_vector(16 downto 0); -- 25 to 41
            IN_CAR : in unsigned(16 downto 0));
    end component;
    
    --Clk
   
    
    --CAR
       signal CAR_out:std_logic_vector(16 downto 0);
       signal CAR_in: std_logic_vector(16 downto 0);
       signal CAR_load:std_logic;
    
    --Control memory
    
       signal FL : std_logic; -- 0
       signal RZ : std_logic; -- 1
       signal RN : std_logic; -- 2
       signal RC : std_logic; -- 3
       signal RV : std_logic; -- 4
       signal MW : std_logic; -- 5
       signal MM : std_logic; -- 6
       signal RW : std_logic; -- 7
       signal MD : std_logic; -- 8
       signal FS : std_logic_vector(4 downto 0); -- 9 to 13
       signal MB : std_logic; -- 14
       signal TB : std_logic; -- 15
       signal TA : std_logic; -- 16
       signal TD : std_logic; -- 17
       signal PL : std_logic; -- 18
       signal PI : std_logic; -- 19
       signal IL : std_logic; -- 20
       signal MC : std_logic; -- 21
       signal MS : std_logic_vector(2 downto 0); -- 22 to 24
       signal NA : std_logic_vector(16 downto 0); -- 25 to 41
       
    --MUX C
    
       signal IR_opcode: std_logic_vector(16 downto 0);
       
       
    --Instruction register
    
       signal DR: std_logic_vector(4 downto 0);
       signal SA: std_logic_vector(4 downto 0);
       signal SB: std_logic_vector(4 downto 0);
       signal Data_Instructions: std_logic_vector(31 downto 0);
       
     --Extend
       signal extend_in: std_logic_vector(9 downto 0);
     --PC
     
        signal PC_in: std_logic_vector(31 downto 0);
        signal PC_out: std_logic_vector(31 downto 0);
        
     --Zerofill
        signal Zero_fill_out:std_logic_vector(31 downto 0);
        
     --Datapath
        
        signal  TD_DR:std_logic_vector(5 downto 0);
        signal  TA_SA:std_logic_vector(5 downto 0);
        signal  TB_SB:std_logic_vector(5 downto 0);
        signal Data_Address: std_logic_vector(31 downto 0); 
        signal Data_In: std_logic_vector(31 downto 0);
        signal V: std_logic; 
        signal C: std_logic; 
        signal N: std_logic; 
        signal Z: std_logic; 
        
      --memory
      
        signal Address: std_logic_vector(31 downto 0);
        
      --NZCV
      
        signal flags_out: std_logic_vector(3 downto 0);
        signal flags_in : std_logic_vector(3 downto 0);
        signal reset_flags:std_logic_vector(3 downto 0);
        
      --Mux S
      
        signal s_choices:std_logic_vector(7 downto 0);

begin
    TD_DR<=TD&DR;
    TA_SA<=TA&SA;
    TB_SB<=TB&SB;
    extend_in <=DR&SB;
    reset_flags<=RV&RC&RN&RZ;
    flags_in<=V&C&N&Z;
    s_choices<=(not flags_out(0)) & (not flags_out(2)) & flags_out(1) & flags_out(0) & flags_out(3)&
        flags_out(2) & '1' & '0';
            
    control_address_reg: CAR port map(
        D=>CAR_in,
        load=>CAR_load,
        Clk=>Clk,
        reset=>reset_global,
        Q=>CAR_out);
        
    control_mem: control_memory port map(
            FL=>FL, 
            RZ=>RZ,
            RN=>RN,
            RC=>RC,
            RV=>RV, 
            MW=>MW, 
            MM=>MM, 
            RW=>RW, 
            MD=>MD, 
            FS=>FS, 
            MB=>MB, 
            TB=>TB, 
            TA=>TA, 
            TD=>TD, 
            PL=>PL, 
            PI=>PI, 
            IL=>IL, 
            MC=>MC, 
            MS=>MS, 
            NA=>NA, 
            IN_CAR=>unsigned(CAR_out));
            
       mux_c: mux_2_17 port map(
        A => NA,
        B=>IR_opcode,
        S0=>MC,
        Z=>CAR_in);
        
        Instruction_register: IR port map(
        Clk=>Clk,
        IL=>IL,
        D=>Data_Instructions,
        opcode=>IR_opcode,
        DR=>DR,
        SA=>SA,
        SB=>SB);
        
        extnd: extend port map(
        input=>extend_in,
        output=>PC_in);
        
        PC: program_counter port map(
           Clk=>Clk,
           PL=>PL,
           PI=>PI,
           reset=>reset_global,
           offset=>PC_in,
           PC=>PC_out);
           
        z_fill: zero_fill port map(
        input=>SB,
        output=>Zero_fill_out);
        
        dp: datapath port map(
        write => RW,
        Aaddress=>TA_SA,
        Baddress=>TB_SB,
        Daddress=>TD_DR,
        ConstantIn=>Zero_fill_out,
        MB=>MB,
        FS=>FS,
        MD=>MD,
        DataIn=>Data_Instructions,
        Clk=>Clk,
        AddressOut=>Data_Address,
        DataOut=>Data_In,
        V => V,
        C => C,
        N => N,
        Z => Z);
        
        mux_m: mux_2_32 port map(
        A => Data_Address,
        B=>PC_out,
        S0=>MM,
        Z=>Address
);
        
        mem: memory port map(
        address=>unsigned(Address),
        write_data=>Data_In,
        MemWrite=>MW,
        Clk=>Clk,
        read_data=>Data_Instructions);
        
        flags:NZCV port map(
        Clk => Clk,
        load => FL,
        D => flags_in,
        reset=>reset_flags,
        Q=>flags_out);
        
        mux_s: mux_3_8 port map(
        A=>s_choices,
        S=>MS,
        Z=>CAR_load);

end Behavioral;
