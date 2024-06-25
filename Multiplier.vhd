
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Multiplier is
	 GENERIC ( N : Integer := 5 );
    port (
        A, B : in std_logic_vector(N-1 downto 0);
        Result : out std_logic_vector(N-1 downto 0) 
    );
end entity Multiplier;

architecture Behavioral of Multiplier is
begin
    process(A, B)
        variable A_dec, B_dec : integer range 0 to 31;  -- 2^5 - 1
        variable product_dec : integer range 0 to 1023;  -- 2^10 - 1
    begin
        A_dec := to_integer(unsigned(A));
        B_dec := to_integer(unsigned(B));
        product_dec := A_dec * B_dec;
        Result <= std_logic_vector(to_unsigned(product_dec, N));
    end process;
end architecture Behavioral;