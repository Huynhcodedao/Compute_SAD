
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package Mylib is


COMPONENT Controller IS
    PORT (
         RST, CLK : IN STD_LOGIC;
        Start_i : IN STD_LOGIC;	
	RE_A,RE_B, WE_C, RE_C : OUT STD_LOGIC;
        En_i, En_j : OUT STD_LOGIC;
	Load_i, Load_j: OUT STD_LOGIC;
	Zi, Zj: IN STD_LOGIC;
        Done_o : OUT STD_LOGIC
    );
END COMPONENT;


COMPONENT SAD IS
    GENERIC ( DATA_WIDTH : Integer := 5 );
    PORT (
         Clock, nReset, Start: IN STD_LOGIC ;
          addr_A_in, addr_B_in : IN STD_LOGIC_VECTOR (DATA_WIDTH - 1 downto 0);
          in_WE_A: IN STD_LOGIC;
	  in_WE_B: IN STD_LOGIC;
	   Data_A, Data_B : in STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
	  SAD_out: OUT STD_LOGIC_VECTOR (DATA_WIDTH - 1 downto 0);
	  Done_o: OUT STD_LOGIC
    );
END COMPONENT;


    -- Register counter
COMPONENT counter IS
    GENERIC (N : Integer := 5 );
    PORT (
        Clock:  IN std_logic;
	nReset: IN std_logic;
	En: IN std_logic;
	Load : IN std_logic;
	Din  : IN std_logic_vector(N-1 downto 0);
	Dout:  OUT std_logic_vector(N-1 downto 0)
    );
END COMPONENT;
--datapath
COMPONENT Datapath IS
    GENERIC ( DATA_WIDTH : Integer := 5 );
    PORT (
       reset, clk, En_i, load_i, En_j, load_j,start_i : in STD_LOGIC;
           WE_A, RE_A, WE_B, RE_B, WE_C, RE_C : in STD_LOGIC;   
           Data_A, Data_B, Addr_in : in STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
           Zi, Zj : out STD_LOGIC;
           Data_out : out STD_LOGIC_VECTOR( DATA_WIDTH - 1 downto 0)

    );
END COMPONENT;
    -- dpmem
    component dpmem is
     generic (
        DATA_WIDTH : integer := 5;       -- ?? r?ng d? li?u
        ADDR_WIDTH : integer := 5        -- ?? r?ng ??a ch?
     );
        port (
            Clk   : in  std_logic;                     -- Tín hi?u xung ??ng h?
        We    : in  std_logic;                     -- Tín hi?u ghi (Write Enable)
        Re    : in  std_logic;                     -- Tín hi?u ??c (Read Enable)
        Din   : in  std_logic_vector(DATA_WIDTH - 1 downto 0);  -- D? li?u ??u vào
        ADDR  : in  std_logic_vector(ADDR_WIDTH - 1 downto 0);  -- ??a ch?
        Dout  : out std_logic_vector(DATA_WIDTH - 1 downto 0)   -- D? li?u ??u ra
        );
    end component dpmem;
--multiplier
COMPONENT Multiplier IS
    GENERIC ( N : Integer := 5 );
    PORT (
        A, B : in std_logic_vector(N-1 downto 0);
        Result : out std_logic_vector(N-1 downto 0) 

    );
-- comparator
END COMPONENT;
COMPONENT comparator IS
    GENERIC ( N : Integer := 5 );
    PORT (
        A, B : in  std_logic_vector(N-1 downto 0);  
        result : out std_logic 

    );
END COMPONENT;
--Addder
COMPONENT Adder IS
    GENERIC ( N : Integer := 5 );
    PORT (
          A, B : in std_logic_vector(N-1 downto 0);
        Sum : out std_logic_vector(N-1 downto 0)

    );
END COMPONENT;
--AbsSubtractor
COMPONENT AbsSubtractor IS
    GENERIC ( N : Integer := 5 );
    PORT (
          A : in STD_LOGIC_VECTOR(N-1 downto 0);
       B : in STD_LOGIC_VECTOR(N-1 downto 0);
        Abs_Result : out STD_LOGIC_VECTOR(N-1 downto 0)

    );
END COMPONENT;
--mux2-1
COMPONENT mux2to1 IS
GENERIC ( N : Integer := 5 );
    PORT (
        Start   : IN  std_logic;  -- Select line
        Addr_in  : in STD_LOGIC_VECTOR(N-1 downto 0);
        Addr_data  : in STD_LOGIC_VECTOR(N-1 downto 0);
        Adder_to_dpmem  : OUT STD_LOGIC_VECTOR(N-1 downto 0)
    );
END COMPONENT;
end package Mylib;