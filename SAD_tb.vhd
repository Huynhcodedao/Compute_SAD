
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
entity sad_tb is

end sad_tb;

architecture arch_tb of sad_tb is
constant data_width: integer :=5;
constant WIDTH : integer := 5;  -- Width of input vectors A and B
component sad is
generic( data_width: integer :=5);
port(
	Clock, nReset, Start: IN STD_LOGIC ;
	Addr_in : IN STD_LOGIC_VECTOR (DATA_WIDTH - 1 downto 0);
	in_WE_A: IN STD_LOGIC;
	in_WE_B: IN STD_LOGIC;
	Data_A, Data_B : in STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
	SAD_out: OUT STD_LOGIC_VECTOR (DATA_WIDTH - 1 downto 0);
	Done_o: OUT STD_LOGIC
);
end component;

signal Clock, nReset, Start: STD_LOGIC ;
signal Addr_in :  STD_LOGIC_VECTOR (DATA_WIDTH - 1 downto 0);
signal in_WE_A:  STD_LOGIC;
signal in_WE_B:  STD_LOGIC;
signal Data_A, Data_B :  STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
signal SAD_out : STD_LOGIC_VECTOR (DATA_WIDTH - 1 downto 0);
signal Done_o: STD_LOGIC;


begin

uut : sad generic  map(data_width)  
port map(
Clock, nReset, Start,
Addr_in,
in_WE_A,
in_WE_B,
Data_A, Data_B,
SAD_out,
Done_o

);

clock_process :process
begin
     Clock <= '1';
     wait for 5 ns;
     Clock <= '0';
     wait for 5 ns;
end process;

rst_process :process
begin
     	nReset <= '1'; wait for 10 ns;
	nReset<= '0'; wait ;
end process;

simulate_process :process
begin


Start<= '0';
in_WE_A <= '0';
in_WE_B <= '0';

 wait for 20 ns;


in_WE_A <= '1';wait for 10 ns;
-- write A 

addr_in <= "00000";
wait for 10 ns;
data_A <= std_logic_vector(to_signed(1, WIDTH));
wait for 10 ns;
addr_in <= "00001";
wait for 10 ns;
data_A <= std_logic_vector(to_signed(-2, WIDTH));
wait for 10 ns;
addr_in <= "00010";
wait for 10 ns;
data_A <= std_logic_vector(to_signed(0, WIDTH));
wait for 10 ns;
addr_in <= "00011";
wait for 10 ns;
data_A <= std_logic_vector(to_signed(0, WIDTH));



wait for 10 ns;
addr_in <= "00100";
wait for 10 ns;
data_A <= std_logic_vector(to_signed(0, WIDTH));

wait for 10 ns;
addr_in <= "00101";
wait for 10 ns;
data_A <= std_logic_vector(to_signed(0, WIDTH));


wait for 10 ns;
addr_in <= "00110";
wait for 10 ns;
data_A <= std_logic_vector(to_signed(0, WIDTH));

wait for 10 ns;
addr_in <= "00111";
wait for 10 ns;
data_A <= std_logic_vector(to_signed(-1, WIDTH));
wait for 10 ns;
addr_in <= "01000";
wait for 10 ns;
data_A <= std_logic_vector(to_signed(-3, WIDTH));


wait for 10 ns; in_WE_A <= '0';

wait for 10 ns; in_WE_B <= '1';wait for 10 ns;
-- write B
addr_in <= "00000";
wait for 10 ns;
data_B <= std_logic_vector(to_signed(-1, WIDTH));
wait for 10 ns;
addr_in <= "00001";
wait for 10 ns;
data_B <= std_logic_vector(to_signed(0, WIDTH));
wait for 10 ns;
addr_in <= "00010";
wait for 10 ns;
data_B <= std_logic_vector(to_signed(0, WIDTH));
wait for 10 ns;
addr_in <= "00011";
wait for 10 ns;
data_B <= std_logic_vector(to_signed(0, WIDTH));



wait for 10 ns;
addr_in <= "00100";
wait for 10 ns;
data_B <= std_logic_vector(to_signed(0, WIDTH));

wait for 10 ns;
addr_in <= "00101";
wait for 10 ns;
data_B <= std_logic_vector(to_signed(0, WIDTH));


wait for 10 ns;
addr_in <= "00110";
wait for 10 ns;
data_B <= std_logic_vector(to_signed(0, WIDTH));

wait for 10 ns;
addr_in <= "00111";
wait for 10 ns;
data_B <= std_logic_vector(to_signed(0, WIDTH));
wait for 10 ns;
addr_in <= "01000";
wait for 10 ns;
data_B <= std_logic_vector(to_signed(-2, WIDTH));



wait for 10 ns; in_WE_B <= '0';
	start<='1';
wait;
end process;
end arch_tb;