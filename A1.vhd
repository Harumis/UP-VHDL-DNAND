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
component NAND4 is 
	Port ( a,b,c,d : in STD_LOGIC := '1';
			 z : out STD_LOGIC);
end component NAND4;
component FFD is
	Port ( D, C, R : in STD_LOGIC;
			 Q, nQ : out STD_LOGIC);
end component FFD;
signal Clk_div,C,nx,Q1,Q2,nQ1,nQ2,v1,v2,v3,v4,D1,D2 : STD_LOGIC;
begin


end Behavioral;

