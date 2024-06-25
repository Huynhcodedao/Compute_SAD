

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Adder is
GENERIC ( N : Integer := 5 );
    port (
        A, B : in std_logic_vector(N-1 downto 0);
        Sum : out std_logic_vector(N-1 downto 0)
    );
end entity Adder;

architecture Behavioral of Adder is
begin
    process (A, B)
        variable temp_sum : unsigned(N-1 downto 0);
    begin
        temp_sum := unsigned(A) + unsigned(B);
        Sum <= std_logic_vector(temp_sum);
    end process;
end architecture Behavioral;