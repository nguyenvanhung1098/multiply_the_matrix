library IEEE;
use IEEE.STD_LOGIC_1164.all;		
use IEEE.std_logic_signed.all;
use IEEE.std_logic_arith.all;

entity Mux8x1 is
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
architecture behavior of Mux8x1 is
	begin
		process (a) -- Process chỉ thực thi, khi có thay đổi trên a
			variable A : integer;
			begin
				A := CONV_INTEGER(a);
				case A is
					when 0 => Q <= d00;
					when 1 => Q <= d01;
					when 2 => Q <= d02;
					when 3 => Q <= d10;
					when 4 => Q <= d11;
					when 5 => Q <= d12;
					when 6 => Q <= d20;
					when 7 => Q <= d21;
					when 8 => Q <= d22;
					when others => Q <= d00;
				end case;
		end process;
	end behavior;