


--counter.vhd
library ieee ;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
ENTITY counter IS 
    GENERIC (N : Integer := 5);
		PORT (Clock:  IN std_logic;
			  nReset: IN std_logic;
			  En: IN std_logic;
			  Load : IN std_logic;
			  Din  : IN std_logic_vector(N-1 downto 0);
			  Dout:  OUT std_logic_vector(N-1 downto 0));
END counter;
ARCHITECTURE behav OF counter IS
  SIGNAL pre_count: std_logic_vector(N-1 downto 0);  BEGIN
    PROCESS(Clock, En, nReset)
		    BEGIN
		      IF nReset = '1' THEN
		        pre_count <= (OTHERS =>'0');
		      ELSIF (Clock='1' and Clock'event) THEN
		        IF Load = '1' THEN
		            pre_count <= Din;
		        ELSIF En = '1' THEN
			          pre_count <= pre_count + "1"; 
			          
			       END IF;
		 	  END IF;
    END PROCESS;
    Dout <= pre_count;
END behav;