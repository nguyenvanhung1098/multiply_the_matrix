library IEEE;
use IEEE.STD_LOGIC_1164.all;		
use IEEE.std_logic_signed.all;
use IEEE.std_logic_arith.all;

entity HienThi is
	 port(
	 
		 d : in STD_LOGIC_VECTOR(7 downto 0);
		
		 q0 : out STD_LOGIC_VECTOR(3 downto 0); --! hang chuc
		 q1 : out STD_LOGIC_VECTOR(3 downto 0) --!hang don vi
		 
	    );
end HienThi;

architecture behavior of HienThi is
	begin
		process (d) -- Process chỉ thực thi, khi có thay đổi trên d
			variable a,b,c:integer;
			begin
					a := conv_integer(d);
					b := a MOD 10;
					c := a REM 10;
					q0 <= CONV_STD_LOGIC_VECTOR(b,4);
					q1 <= CONV_STD_LOGIC_VECTOR(c,4);	
		end process;
end behavior;