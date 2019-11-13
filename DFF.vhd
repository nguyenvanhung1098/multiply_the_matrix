library IEEE;
use IEEE.STD_LOGIC_1164.all;		
use IEEE.STD_LOGIC_UNSIGNED.all;
use IEEE.std_logic_arith.all;



entity DFF is
	port (
		CLR : in std_logic; --! Xóa bít nhớ, không đồng bộ
		CE : in std_logic; --! Cho phép Write
		CLK : in std_logic; --! Tín hiệu đồng hồ, tích cực sườn lên
		D : in std_logic; --! Bit dữ liệu vào
		Q : out std_logic --! Bit dữ liệu ra
	);
end entity;
architecture behavior of DFF is
	begin
		process (CLK, CLR) -- Process chỉ thực thi, khi có thay đổi trên CLK, CLR
			begin
				if CLR = '1' then -- Nếu tín hiệu xóa CLR=1, thì xóa đầu ra Q về 0
					Q <= '0';
				elsif (clk'event and clk = '1') then -- Nếu CLR =0, và tại sườn lên của tín hiệu CLK
					if CE = '1' then -- Nếu có tín hiệu cho phép Write, thì chốt lại
						Q <= D;
					end if; -- Các trường hợp còn lại, đầu ra Q không đổi, tức là nhớ.
				end if;
		end process;
	end behavior;