library IEEE;
use IEEE.STD_LOGIC_1164.all;		
use IEEE.std_logic_signed.all;
use IEEE.std_logic_arith.all;

entity NhanMaTran is
	 port(
---------------------------------------------
 -- ma tran a
---------------------------------------------
		 a00 : in STD_LOGIC_VECTOR(7 downto 0);
		 a01 : in STD_LOGIC_VECTOR(7 downto 0);
		 a02 : in STD_LOGIC_VECTOR(7 downto 0);
		 a10 : in STD_LOGIC_VECTOR(7 downto 0);
		 a11 : in STD_LOGIC_VECTOR(7 downto 0);
		 a12 : in STD_LOGIC_VECTOR(7 downto 0);
		 a20 : in STD_LOGIC_VECTOR(7 downto 0);
		 a21 : in STD_LOGIC_VECTOR(7 downto 0);
		 a22 : in STD_LOGIC_VECTOR(7 downto 0);
		 
---------------------------------------------
 -- ma tran b
---------------------------------------------		 
		 b00 : in STD_LOGIC_VECTOR(7 downto 0);
		 b01 : in STD_LOGIC_VECTOR(7 downto 0);
		 b02 : in STD_LOGIC_VECTOR(7 downto 0);
		 b10 : in STD_LOGIC_VECTOR(7 downto 0);
		 b11 : in STD_LOGIC_VECTOR(7 downto 0);
		 b12 : in STD_LOGIC_VECTOR(7 downto 0);
		 b20 : in STD_LOGIC_VECTOR(7 downto 0);
		 b21 : in STD_LOGIC_VECTOR(7 downto 0);
		 b22 : in STD_LOGIC_VECTOR(7 downto 0);
		
---------------------------------------------
 -- ma tran ra
---------------------------------------------
		 c00 : out STD_LOGIC_VECTOR(7 downto 0);
		 c01 : out STD_LOGIC_VECTOR(7 downto 0);
		 c02 : out STD_LOGIC_VECTOR(7 downto 0);
		 c10 : out STD_LOGIC_VECTOR(7 downto 0);
		 c11 : out STD_LOGIC_VECTOR(7 downto 0);
		 c12 : out STD_LOGIC_VECTOR(7 downto 0);
		 c20 : out STD_LOGIC_VECTOR(7 downto 0);
		 c21 : out STD_LOGIC_VECTOR(7 downto 0);
		 c22 : out STD_LOGIC_VECTOR(7 downto 0)	
	    );
end NhanMaTran;

architecture behavior of NhanMaTran is	   
begin  
	decode:process (a00,a01,a02,a10,a11,a12,a20,a21,a22,b00,b01,b02,b10,b11,b12,b20,b21,b22)
	variable X00, X01, X02, X10, X11, X12, X20, X21, X22 : STD_LOGIC_VECTOR(15 downto 0);
	begin		
			X00 := a00*b00 + a01*b10 + a02*b20;
			X01 := a00*b01 + a01*b11 + a02*b21;
			X02 := a00*b02 + a01*b12 + a02*b22;
			
			X10 := a10*b00 + a11*b10 + a12*b20;
			X11 := a10*b01 + a11*b11 + a12*b21;
			X12 := a10*b02 + a11*b12 + a12*b22;
			
			X20 := a20*b00 + a21*b10 + a22*b20;
			X21 := a20*b01 + a21*b11 + a22*b21;
			X22 := a20*b02 + a21*b12 + a22*b22;
			
			c00 <= X00(7 downto 0);
			c01 <= X01(7 downto 0);
			c02 <= X01(7 downto 0);
			
			c10 <= X10(7 downto 0);
			c11 <= X11(7 downto 0);
			c12 <= X12(7 downto 0);
			
			c20 <= X20(7 downto 0);
			c21 <= X21(7 downto 0);
			c22 <= X22(7 downto 0);
	end process decode;	
end behavior;


