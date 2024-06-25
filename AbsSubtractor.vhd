
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity AbsSubtractor is
GENERIC ( N : Integer := 5 );
    Port (
        A : in STD_LOGIC_VECTOR(N-1 downto 0);
        B : in STD_LOGIC_VECTOR(N-1 downto 0);
        Abs_Result : out STD_LOGIC_VECTOR(N-1 downto 0)
    );
end AbsSubtractor;

architecture Behavioral of AbsSubtractor is
begin
    process(A, B)
        -- Khai báo các bi?n ký t? ?? ch?a giá tr? c?a Data_A và Data_B d??i d?ng s? h?c d?u
        variable A_signed, B_signed : signed(N-1 downto 0);
        -- Khai báo bi?n ký t? ?? ch?a k?t qu? phép tr?, s? d?ng 9 bit ?? tránh tràn s?
        variable Sub_Result : signed(N-1 downto 0); -- 9-bit ?? ch?a k?t qu? phép tr?
        -- Khai báo bi?n ký t? ?? ch?a giá tr? tuy?t ??i c?a k?t qu? phép tr?
        variable Abs_Sub_Result : signed(N-1 downto 0);
    begin
        -- Chuy?n ??i STD_LOGIC_VECTOR sang ki?u signed
        A_signed := signed(A);
        B_signed := signed(B);

        -- Th?c hi?n phép tr?, resize các bi?n sang 9 bit ?? ??m b?o chính xác
        Sub_Result := resize(A_signed, N) - resize(B_signed, N);

        -- Tính giá tr? tuy?t ??i c?a k?t qu? phép tr?
        if Sub_Result < 0 then
            Abs_Sub_Result := -Sub_Result(N-1 downto 0); -- L?y 8 bit th?p c?a k?t qu? và l?y giá tr? âm
        else
            Abs_Sub_Result := Sub_Result(N-1 downto 0); -- L?y 8 bit th?p c?a k?t qu?
        end if;

        -- Chuy?n ??i k?t qu? tr? l?i ki?u STD_LOGIC_VECTOR
        Abs_Result <= std_logic_vector(Abs_Sub_Result);
    end process;
end Behavioral;