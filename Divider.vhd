----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:06:30 12/13/2018 
-- Design Name: 
-- Module Name:    Divider - Behavioral 
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

entity Divider is
generic (NBit : natural := 24;
			Div : natural := 10000000);
    Port ( Clk : in  STD_LOGIC;
           Clk_div : inout  STD_LOGIC := '0');
end Divider;

architecture Behavioral of Divider is

signal Cnt: STD_LOGIC_VECTOR(NBit-1 downto 0)
										:= (others => '0');
begin
	process(Clk)
	begin
		if (Clk'event and Clk = '1') then
			if Cnt < Div then Cnt <= Cnt + 1;
			else Cnt <= (others => '0');
					Clk_div <= not Clk_div; end if;
		end if;
	end process;

end Behavioral;

