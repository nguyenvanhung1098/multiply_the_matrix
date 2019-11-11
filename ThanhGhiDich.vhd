library IEEE;
use IEEE.STD_LOGIC_1164.all;		
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;



entity ThanhGhiDich is
	port (
		CLR : in std_logic; --! Xóa byte nhớ, không đồng bộ
		CE : in std_logic; --! Cho phép Write
		CLK : in std_logic; --! Tín hiệu đồng hồ, tích cực sườn lên
		D : in STD_LOGIC_VECTOR(7 downto 0); --! Byte dữ liệu vào
		q00 : out STD_LOGIC_VECTOR(7 downto 0); --! Byte dữ liệu đầu ra
		q01 : out STD_LOGIC_VECTOR(7 downto 0); --! Byte dữ liệu đầu ra
		q02 : out STD_LOGIC_VECTOR(7 downto 0); --! Byte dữ liệu đầu ra
		q10 : out STD_LOGIC_VECTOR(7 downto 0); --! Byte dữ liệu đầu ra
		q11 : out STD_LOGIC_VECTOR(7 downto 0); --! Byte dữ liệu đầu ra
		q12 : out STD_LOGIC_VECTOR(7 downto 0); --! Byte dữ liệu đầu ra
		q20 : out STD_LOGIC_VECTOR(7 downto 0); --! Byte dữ liệu đầu ra
		q21 : out STD_LOGIC_VECTOR(7 downto 0); --! Byte dữ liệu đầu ra
		q22 : out STD_LOGIC_VECTOR(7 downto 0) --! Byte dữ liệu đầu ra
		
		
	);
end entity;
architecture behavior of ThanhGhiDich is
	begin
		process (CE, CLR) -- Process chỉ thực thi, khi có thay đổi trên CLK, CLR
			variable a00, a01, a02, a10, a11, a12, a20, a21, a22: STD_LOGIC_VECTOR(7 downto 0);
			begin
				if CLR = '1' then -- Nếu tín hiệu xóa CLR=1, thì xóa đầu ra Q về 0
					q00 <= (others => '0');
					q01 <= (others => '0');
					q02 <= (others => '0');
					q10 <= (others => '0');
					q11 <= (others => '0');
					q12 <= (others => '0');
					q20 <= (others => '0');
					q21 <= (others => '0');
					q22 <= (others => '0');
					
				elsif rising_edge(CE) then -- Nếu CLR =0, và tại sườn lên của tín hiệu CLK
					if CE = '1' then -- Nếu có tín hiệu cho phép Write, thì chốt lại
						a00 := D;
						a01 := a00;
						a02 := a01;
						a10 := a02;
						a11 := a10;
						a12 := a11;
						a20 := a12;
						a21 := a20;
						a22 := a21;
						
						q00 <= D;
						q01 <= a00;
						q02 <= a01;
						q10 <= a02;
						q11 <= a10;
						q12 <= a11;
						q20 <= a12;
						q21 <= a20;
						q22 <= a21;
						
					end if; -- Các trường hợp còn lại, đầu ra Q không đổi, tức là nhớ.
				end if;
		end process;
	end behavior;