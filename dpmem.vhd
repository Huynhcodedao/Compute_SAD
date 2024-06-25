
library ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_SIGNED.all;

entity dpmem is
    generic (
        DATA_WIDTH : integer := 5;       -- ?? r?ng d? li?u
        ADDR_WIDTH : integer := 5        -- ?? r?ng ??a ch?
    );
    Port (
        Clk   : in  std_logic;                     -- Tín hi?u xung ??ng h?
        We    : in  std_logic;                     -- Tín hi?u ghi (Write Enable)
        Re    : in  std_logic;                     -- Tín hi?u ??c (Read Enable)
        Din   : in  std_logic_vector(DATA_WIDTH - 1 downto 0);  -- D? li?u ??u vào
        ADDR  : in  std_logic_vector(ADDR_WIDTH - 1 downto 0);  -- ??a ch?
        Dout  : out std_logic_vector(DATA_WIDTH - 1 downto 0)   -- D? li?u ??u ra
    );
end dpmem;

architecture dpmem_arch of dpmem is
    -- ??nh ngh?a ki?u d? li?u cho b? nh? (32 x 8 bits)
    type DATA_ARRAY is array (0 to (2**5) - 1) of std_logic_vector(DATA_WIDTH - 1 downto 0); 
    -- T?o tín hi?u b? nh? và kh?i t?o t?t c? giá tr? b?ng '0'
    signal M : DATA_ARRAY := (others => (others => '0'));
begin
    -- Quá trình x? lý ??c/ghi
    process (Clk)
    begin  
        -- Ki?m tra c?nh lên c?a xung ??ng h?
        if rising_edge(Clk) then
            -- N?u tín hi?u ghi (We) ???c kích ho?t
            if We = '1' then
                -- Ghi d? li?u vào b? nh? t?i ??a ch? ???c ch? ??nh
                M(conv_integer(ADDR)) <= Din;
            end if;
            -- N?u tín hi?u ??c (Re) ???c kích ho?t
            if Re = '1' then
                -- ??c d? li?u t? b? nh? t?i ??a ch? ???c ch? ??nh
                Dout <= M(conv_integer(ADDR));
            end if;
        end if;
    end process;
end dpmem_arch;