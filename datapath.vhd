
library ieee;
USE ieee.std_logic_1164.all ;
use ieee.numeric_std.all;
USE work.Mylib.all;
entity datapath is
    generic (
        DATA_WIDTH : integer := 5;       -- ?? r?ng dá
        N : integer :=5;
        ADDR_WIDTH : integer := 5        -- ?? r?ng ??a ch?
    );
    Port ( reset, clk,start_i, En_i, load_i, En_j, load_j : in STD_LOGIC;
           WE_A, RE_A, WE_B, RE_B, WE_C, RE_C : in STD_LOGIC;   
           Data_A, Data_B, Addr_in : in STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
           Zi, Zj : out STD_LOGIC;
           Data_out : out STD_LOGIC_VECTOR(N - 1 downto 0));
end datapath;

architecture RTL of datapath is
    -- Các tín hi?u cho các b? ??m
    signal Regn_out_j, Regn_out_i : std_logic_vector(N-1 downto 0);  -- ?i?u ch?nh ph?m vi tùy thu?c vào kích th??c ma tr?n
   
    
    -- Các tín hi?u cho phép nhân và c?ng
    signal i_mul_cB : std_logic_vector(N-1 downto 0);
   
	 signal Addr_data : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
    -- Các tín hi?u cho các b? nh?
    signal Dout_A, Dout_B, Dout_C: STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
    
    -- Tín hi?u cho k?t qu? t?m th?i c?a phép tr?
    signal A_Sub_B : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
    signal cB : std_logic_vector(N-1 downto 0) := "00011";
    signal rA : std_logic_vector(4 downto 0) := "00011";

    signal Din_i : std_logic_vector(4 downto 0) := "00000";
    signal Din_j : std_logic_vector(4 downto 0) := "00000";
    signal Addr_data_C: std_logic_vector(4 downto 0) := "00000";
    signal Adder_out : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
	 signal Adder_to_dpmem : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
    
begin

 Data_out <= Dout_C;

    --comparator i
COMPARATORI : comparator
	 GENERIC MAP( N )
    PORT MAP(
         A =>Regn_out_i, 
	 B => rA, 
        result => Zi
    );
    --comparator j
COMPARATORJ : comparator
	 GENERIC MAP( N )
    PORT MAP(
         A =>Regn_out_j, 
	 B => cB, 
        result => Zj
    );
--Multiplier
MULTIPLIERi : Multiplier
	 GENERIC MAP( N )
    PORT MAP(
         A => cB, 
	 B => Regn_out_i, 
        result => i_mul_cB
    );
	  --mux 2-1
MUX : mux2to1 
GENERIC MAP ( N )
    PORT MAP (
        Start =>start_i,
        Addr_in  =>Addr_in,
        Addr_data =>   Addr_data,
        Adder_to_dpmem =>Adder_to_dpmem
    );

--Adder xác dinh dia chi
ADDER1: Adder
 GENERIC MAP( N )
    PORT MAP(
         A => i_mul_cB, 
	 B => Regn_out_j, 
        Sum => Addr_data
    );
--Adder xac dinh gia tri
ADDER2: Adder
 GENERIC MAP( N )
    PORT MAP(
         A => Dout_C, 
	 B => A_Sub_B, 
        Sum => Adder_out
    );
--Sub
ABSSUB: AbsSubtractor 
GENERIC MAP( N )
    Port MAP (
        A =>Dout_A,
        B => Dout_B,
        Abs_Result => A_Sub_B
    );

     -- Counter i
COUNTERI: counter
    GENERIC MAP( N )
    PORT MAP(
        nReset => reset, 
	Clock => CLK,
        En => En_i,
	Load => load_i,
	Din => Din_i,
	Dout => Regn_out_i
    );
     -- Counter j
COUNTERJ: counter
    GENERIC MAP( N )
    PORT MAP(
        nReset => reset, 
	Clock => CLK,
        En => En_j,
	Load => load_j,
	Din => Din_j,
	Dout => Regn_out_j
    );
     -- dpmemory A
DPMEMA: dpmem
    GENERIC MAP( DATA_WIDTH,
        ADDR_WIDTH )
    PORT MAP(
        Clk => CLK,
        We   => WE_A,
        Re   => RE_A,
        Din  => Data_A,
        ADDR => Adder_to_dpmem,
        Dout => Dout_A
    );
     -- dpmemory B
DPMEMB: dpmem
    GENERIC MAP( DATA_WIDTH,
        ADDR_WIDTH )
    PORT MAP(
        Clk => CLK,
        We   => WE_B,
        Re   => RE_B,
        Din  => Data_B,
        ADDR => Adder_to_dpmem,
        Dout => Dout_B
    );
     -- dpmemory C

DPMEMC: dpmem
    GENERIC MAP( DATA_WIDTH,
        ADDR_WIDTH )
    PORT MAP(
        Clk => CLK,
        We   => WE_C,
        Re   => RE_C,
        Din  => Adder_out,
        ADDR => Addr_data_C,
        Dout => Dout_C
    );  
end RTL;