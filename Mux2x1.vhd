library IEEE;
use IEEE.STD_LOGIC_1164.all;		
use IEEE.std_logic_signed.all;
use IEEE.std_logic_arith.all;



entity Mux2x1 is
	port (
		EnW : in std_logic; --! Xóa byte nhớ, không đồng bộ
		SelF: in std_logic; --! Cho phép Write
		A : in STD_LOGIC_VECTOR(7 downto 0); --! Byte dữ liệu vào
		B : in STD_LOGIC_VECTOR(7 downto 0); --! Byte dữ liệu vào
		Q : out STD_LOGIC_VECTOR(7 downto 0) --! Byte dữ liệu vào	
	);
end entity;
architecture behavior of Mux2x1 is
	begin
		process (A,B) -- Process chỉ thực thi, khi có thay đổi trên SelF, EnW
			begin
					if EnW = '1' then -- neu tin hieu cho phep ghi bang 1 thi
						if SelF = '1' then -- chon A
							Q <= A;
						elsif SelF = '0' then
							Q <= B;
						end if;
					end if;		
		end process;
end behavior;
