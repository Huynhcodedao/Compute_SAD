LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY mux2to1 IS
GENERIC ( N : Integer := 5 );
    PORT (
        Start   : IN  std_logic;  -- Select line
        Addr_in  : in STD_LOGIC_VECTOR(N-1 downto 0);
        Addr_data  : in STD_LOGIC_VECTOR(N-1 downto 0);
        Adder_to_dpmem  : OUT STD_LOGIC_VECTOR(N-1 downto 0)
    );
END ENTITY mux2to1;

ARCHITECTURE behavior OF mux2to1 IS
BEGIN
     PROCESS (Start, Addr_in, Addr_data)
    BEGIN
        IF (Start = '0') THEN
            Adder_to_dpmem <= Addr_in;
        ELSE
            Adder_to_dpmem <= Addr_data;
        END IF;
    END PROCESS;
END ARCHITECTURE behavior;
