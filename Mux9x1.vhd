library IEEE;
use IEEE.STD_LOGIC_1164.all;		
use IEEE.std_logic_signed.all;
use IEEE.std_logic_arith.all;

entity Mux9x1 is
	port (
		
		a : in STD_LOGIC_VECTOR(3 downto 0); --tin hieu chon	
		Q : out STD_LOGIC_VECTOR(7 downto 0);
		
		d00 : in STD_LOGIC_VECTOR(7 downto 0); --! Byte dữ liệu đầu ra
		d01 : in STD_LOGIC_VECTOR(7 downto 0); --! Byte dữ liệu đầu ra
		d02 : in STD_LOGIC_VECTOR(7 downto 0); --! Byte dữ liệu đầu ra
		d10 : in STD_LOGIC_VECTOR(7 downto 0); --! Byte dữ liệu đầu ra
		d11 : in STD_LOGIC_VECTOR(7 downto 0); --! Byte dữ liệu đầu ra
		d12 : in STD_LOGIC_VECTOR(7 downto 0); --! Byte dữ liệu đầu ra
		d20 : in STD_LOGIC_VECTOR(7 downto 0); --! Byte dữ liệu đầu ra
		d21 : in STD_LOGIC_VECTOR(7 downto 0); --! Byte dữ liệu đầu ra
		d22 : in STD_LOGIC_VECTOR(7 downto 0) --! Byte dữ liệu đầu ra
		
		
	);
end entity;
architecture behavior of Mux9x1 is
	begin
		process (a) -- Process chỉ thực thi, khi có thay đổi trên a
			begin
					case a is
						when "0000" => Q <= d00;
						when "0001" => Q <= d01;
						when "0010" => Q <= d02;
						when "0011" => Q <= d10;
						when "0100" => Q <= d11;
						when "0101" => Q <= d12;
						when "0110" => Q <= d20;
						when "0111" => Q <= d21;
						when "1000" => Q <= d22;
						when others => Q <= d00;
					end case;
		end process;
	end behavior;