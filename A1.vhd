----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:26:52 12/13/2018 
-- Design Name: 
-- Module Name:    A1 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity A1 is
    Port ( Clk : in  STD_LOGIC;
           x : in  STD_LOGIC;
           T : in  STD_LOGIC;
           R : in  STD_LOGIC;
           z1 : out  STD_LOGIC;
           z2 : out  STD_LOGIC);
end A1;

architecture Behavioral of A1 is
component divider is
	Port ( Clk : in STD_LOGIC;
			 Clk_div : inout STD_LOGIC := '0');
end component divider;
component impuls is
	Port ( Clk_div, T : in STD_LOGIC;
			 C : buffer STD_LOGIC);
end component impuls;
component NAND3 is 
	Port ( a,b,c : in STD_LOGIC := '1';
			 z : out STD_LOGIC);
end component NAND3;
component NOT1 is 
	Port ( a : in STD_LOGIC := '1';
			 z : out STD_LOGIC);
end component NOT1;	
component NAND2 is 
	Port ( a,b : in STD_LOGIC := '1';
			 z : out STD_LOGIC);
end component NAND2;	
component FFD is
	Port ( D, C, R : in STD_LOGIC;
			 Q, nQ : out STD_LOGIC);
end component FFD;
signal Clk_div,C, nx, q1,q2,nq1,nq2, v1,v2,v3,v4,v5,v6,zn1,zn2 D1,D2: STD_LOGIC;
begin

c1: divider port map (Clk, Clk_div);
c2: impuls port map (Clk_div, T, C); 
b0: NAND4 port map (a => x, z => nx);
b1: NAND2 port map (nq1,nx,v1);
b2: NAND2 port map (nq1,nq2,v2);
b3: NAND3 port map (q1,q2,x,v3);
b4: NAND3 port map (v1,v2,v3,D1);
b5: NAND2 port map (nq1,q2,v4);
b6: NAND2 port map (nq1,x,v5);
b7: NAND3 port map (q1,nq2,nx,v6);
b8: NAND3 port map (v4,v5,v6,D2);
p1: FFD port map (D1, C, R, Q1, nQ1);
p2: FFD port map (D2, C, R, Q2, nQ2);
b9: NAND2 port map (q1,q2,zn1);
b10: NAND2 port map (nq1,q2,zn2);
a0: NOT1 port map (zn1,z1);
a1: NOT1 port map (zn2,z2);
end Behavioral; 

