-------------------------------------------------------------------------------
--
-- Title       : decoder7seg
-- Design      : Runtime
-- Author      : Nguyen Duc Tien
-- Company     : Home
--
-------------------------------------------------------------------------------
--
-- File        : 7seg-decoder.vhd
-- Generated   : Thu Sep 10 15:33:00 2015
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.20
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------

--{{ Section below this comment is automatically maintained
--   and may be overwritten
--{entity {decoder7seg} architecture {decoder7seg}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;		
use IEEE.STD_LOGIC_UNSIGNED.all;

------------------------------------------------------------------
-- Bo giai ma cho led 7 doan loai chung Anode(+) hay la chung Cathode(-)
-- Neu muon bo giai ma co them tin hieu dieu khien, cho phep chon 
-- hoac Anode, hoac Cathode thi lam the nao
------------------------------------------------------------------
entity decoder7seg is
	 port(
		 I : in STD_LOGIC_VECTOR(3 downto 0);
		 a : out STD_LOGIC;
		 b : out STD_LOGIC;
		 c : out STD_LOGIC;
		 d : out STD_LOGIC;
		 e : out STD_LOGIC;
		 f : out STD_LOGIC;
		 g : out STD_LOGIC 
	     );
end decoder7seg;

------------------------------------------------------
-- Thiet ke theo kieu su dung cau truc ROM
------------------------------------------------------
architecture behavior of decoder7seg is	   
	signal tmp: STD_LOGIC_VECTOR(6 downto 0);
begin  
	------------------------------------------------------
	-- Giai ma da tin hieu dau vao --> da tin hieu 7 doan
	------------------------------------------------------
	decode:process (I)
	begin	
		case I is 
			when "0000"	=> tmp <= "1000000";	   
			when "0001"	=> tmp <= "1111001";	  
			when "0010"	=> tmp <= "0100100";	  
			when "0011"	=> tmp <= "0110000";
			when "0100"	=> tmp <= "0011001";
			when "0101"	=> tmp <= "0010010";	  
			when "0110"	=> tmp <= "0000010";	  
			when "0111"	=> tmp <= "1111000";	 
			when "1000"	=> tmp <= "0000000";	   
			when "1001"	=> tmp <= "0010000";	  
			when "1010"	=> tmp <= "0001000";
			when "1011"	=> tmp <= "0000011";
			when "1100"	=> tmp <= "0100111";
			when "1101"	=> tmp <= "0100001";
			when "1110"	=> tmp <= "0000110";	  
			when "1111"	=> tmp <= "0001110";	
			when others	=> tmp <=(others => 'Z');
		end case;
		a <= tmp(0);
		b <= tmp(1);
		c <= tmp(2);
		d <= tmp(3);
		e <= tmp(4);
		f <= tmp(5);
		g <= tmp(6);
	end process decode;	
	------------------------------------------------------
	-- Phan tach  da tin hieu 7 doan thanh cac chan pin rieng re
	------------------------------------------------------
	
end behavior;	  	
