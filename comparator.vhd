
-- File: comparator.vhd
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity comparator is
GENERIC ( N : Integer := 5 );
    Port (
        A, B : in  std_logic_vector(N-1 downto 0);  
        result : out std_logic                 
    );
end comparator;

architecture Behavioral of comparator is
begin
    process(A, B)
    begin
        if A < B then
            result <= '1';  -- N?u A < B thì ??t result = '1'
        else
            result <= '0';  -- Ng??c l?i, A >= B thì ??t result = '0'
        end if;
    end process;
end Behavioral;