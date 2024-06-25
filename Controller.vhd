


LIBRARY IEEE;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY Controller IS
    PORT (
	RST, CLK : IN STD_LOGIC;
	Start_i : IN STD_LOGIC;	
	RE_A,RE_B, WE_C, RE_C : OUT STD_LOGIC;
	En_i, En_j : OUT STD_LOGIC;
	Load_i, Load_j: OUT STD_LOGIC;
	Zi, Zj: IN STD_LOGIC;
	Done_o : OUT STD_LOGIC
    );
END Controller;

ARCHITECTURE RTL OF Controller IS

Type State_type IS (S0,S1,S2,S3,S4,S5,S6,S7,S8,S9,S10,S11);
Signal state : State_type;
BEGIN
-- State Register
FSM: PROCESS (RST, CLK)
BEGIN
	IF (RST = '1') THEN 
	  state <= S0;
	ELSIF (CLK'EVENT and CLK = '1') THEN
	 CASE state IS
		WHEN S0 =>
		 state <=S1;
		WHEN S1 =>
		 IF (START_i = '1') THEN
		   state <= S2;
		 ELSE
		   state <= S1;
		 END IF;
		WHEN S2 =>
		  IF (Zi = '1') THEN
		   state <= S3;
		 ELSE
		   state <= S10;
		 END IF;
		WHEN S3 =>
		  IF (Zj = '1') THEN
		   state <= S4;
		  ELSE
		   state <= S8;
		  END IF;
		WHEN S4 =>
		 state <=S5;
		WHEN S5 =>
		 state <=S6;
		WHEN S6 =>
		 state <=S7;
		WHEN S7 =>
		 state <=S3;
		WHEN S8 =>
		 state <=S9;
		WHEN S9 =>
		 state <=S2;
		WHEN S10 =>
		 state <=S11;
		WHEN S11 =>
		 IF (START_i = '0') THEN
		   state <= S0;
		 ELSE
		   state <= S10;
		 END IF;
		WHEN OTHERS => State <=S0;
	 END CASE;
	END IF;

END PROCESS;

RE_A <= '1' WHEN State = S4 ELSE  '0';
RE_B <= '1' WHEN State = S4 ELSE  '0';
WE_C <= '1' WHEN State = S5 ELSE  '0';
RE_C <= '1' WHEN (State = S6 or State = S9 or State = S4 ) ELSE  '0';
En_j <= '1' WHEN State = S7 ELSE  '0';
En_i <= '1' WHEN State = S8 ELSE  '0';
Load_j <= '1' WHEN (State = S0 or State = S8) ELSE  '0';
Load_i <= '1' WHEN State = S0 ELSE  '0';
Done_o <= '1' WHEN (State = S10 or State = S11) ELSE  '0';

END RTL;