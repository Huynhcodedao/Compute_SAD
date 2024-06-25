

LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
use work.Mylib.all;
USE ieee.std_logic_unsigned.all;
ENTITY SAD IS
   GENERIC (
            CTRL_WIDTH		: integer := 5; 	-- Control bus width
	    DATA_WIDTH        :     integer   := 5;     -- Word bus Width
            ADDR_WIDTH        :     integer   := 5      -- Address bus width
    );
   PORT ( Clock, nReset, Start: IN STD_LOGIC ;
          Addr_in : IN STD_LOGIC_VECTOR (DATA_WIDTH - 1 downto 0);
          in_WE_A: IN STD_LOGIC;
	  in_WE_B: IN STD_LOGIC;
	   Data_A, Data_B : in STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
	  SAD_out: OUT STD_LOGIC_VECTOR (DATA_WIDTH - 1 downto 0);
	  Done_o: OUT STD_LOGIC
  );
   END SAD;
ARCHITECTURE RTL OF SAD IS

SIGNAL  RE_C, RE_A, RE_B, WE_C,En_i, En_j, Load_i, Load_j, Zi, Zj: STD_LOGIC;


BEGIN

CTRL_UNIT: Controller 
    PORT MAP(
	nReset, Clock,
	Start,	
	RE_A, RE_B, WE_C, RE_C,
	En_i, En_j,
	Load_i, Load_j,
	Zi, Zj,
	Done_o 
    );
DATAPATH_UNIT: datapath
     PORT MAP(
	  start_i=> Start,
	Addr_in => Addr_in,
	reset =>nReset, 
	clk => Clock,
	En_i =>En_i ,
	load_i => load_i, 
	En_j =>En_j,
	load_j =>load_j, 
	WE_A =>in_WE_A,
	RE_A =>RE_A,
	WE_B => in_WE_B,
	RE_B =>RE_B ,
	WE_C => WE_C,
	RE_C  =>RE_C ,
	Data_A =>Data_A , 
	Data_B => Data_B,  
	Zi => Zi, 
	Zj => Zj,
	Data_out =>SAD_out
    );
END RTL;  