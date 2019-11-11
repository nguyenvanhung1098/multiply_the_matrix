library IEEE;
use IEEE.STD_LOGIC_1164.all;		
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;



entity Control is
	port (
		EnW : in std_logic; --! Xóa byte nhớ, không đồng bộ
		SelF: in std_logic; --! Cho phép Write
		A : out std_logic; --! cho A ghi
		B : out std_logic --! cho B ghi		
	);
end entity;
architecture behavior of Control is
	begin
		process (EnW, SelF) -- Process chỉ thực thi, khi có thay đổi trên SelF, EnW
			begin
				if EnW = '1' then -- neu tin hieu cho phep ghi bang 1 thi
					if SelF = '1' then -- chon A
						A <= '1';
						B <= '0';
					elsif SelF = '0' then
						A <= '0';
						B <= '1';
					end if;
				elsif EnW = '0' then 
					A <= '0';
					B <= '0';
				end if;	
		end process;
end behavior;