library IEEE;
use IEEE.STD_LOGIC_1164.all;		
use IEEE.STD_LOGIC_UNSIGNED.all;
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
	
	variable varA00,varA01,varA02,varA10,varA11,varA12,varA20,varA21,varA22,
				varB00,varB01,varB02,varB10,varB11,varB12,varB20,varB21,varB22,
				varC00,varC01,varC02,varC10,varC11,varC12,varC20,varC21,varC22: integer;
	begin	
		varA00:= CONV_INTEGER(a00);
		varA01:= CONV_INTEGER(a01);
		varA02:= CONV_INTEGER(a02);
		varA10:= CONV_INTEGER(a10);
		varA11:= CONV_INTEGER(a11);
		varA12:= CONV_INTEGER(a12);
		varA20:= CONV_INTEGER(a20);
		varA21:= CONV_INTEGER(a21);
		varA22:= CONV_INTEGER(a22);
		
		varB00:= CONV_INTEGER(b00);
		varB01:= CONV_INTEGER(b01);
		varB02:= CONV_INTEGER(b02);
		varB10:= CONV_INTEGER(b10);
		varB11:= CONV_INTEGER(b11);
		varB12:= CONV_INTEGER(b12);
		varB20:= CONV_INTEGER(b20);
		varB21:= CONV_INTEGER(b21);
		varB22:= CONV_INTEGER(b22);
		
		varC00 := varA00*varB00 + varA01*varB10 + varA02*varB20;
		varC01 := varA00*varB01 + varA01*varB11 + varA02*varB21;
		varC02 := varA00*varB02 + varA01*varB12 + varA02*varB22;
		
		varC10 := varA10*varB00 + varA11*varB10 + varA12*varB20;
		varC11 := varA10*varB01 + varA11*varB11 + varA12*varB21;
		varC12 := varA10*varB02 + varA11*varB12 + varA12*varB22;
		
		varC20 := varA20*varB00 + varA21*varB10 + varA22*varB20;
		varC21 := varA20*varB01 + varA21*varB11 + varA22*varB21;
		varC22 := varA20*varB02 + varA21*varB12 + varA22*varB22;
		
		c00 <= CONV_STD_LOGIC_VECTOR(varC00,8);
		c01 <= CONV_STD_LOGIC_VECTOR(varC01,8);
		c02 <= CONV_STD_LOGIC_VECTOR(varC02,8);
		c10 <= CONV_STD_LOGIC_VECTOR(varC10,8);
		c11 <= CONV_STD_LOGIC_VECTOR(varC11,8);
		c12 <= CONV_STD_LOGIC_VECTOR(varC12,8);
		c20 <= CONV_STD_LOGIC_VECTOR(varC20,8);
		c21 <= CONV_STD_LOGIC_VECTOR(varC21,8);
		c22 <= CONV_STD_LOGIC_VECTOR(varC22,8);
		
	end process decode;	
end behavior;


