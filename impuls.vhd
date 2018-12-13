----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:13:45 12/13/2018 
-- Design Name: 
-- Module Name:    impuls - Behavioral 
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

entity impuls is
    Port ( Clk_div : in  STD_LOGIC;
           T : in  STD_LOGIC;
			  C : buffer STD_LOGIC := '0');
end impuls;

architecture Behavioral of impuls is
signal Q : STD_LOGIC_VECTOR(2 downto 0) := "000";
begin
	process(Clk_div) is
	begin
		if (Clk_div'event and Clk_div = '1') then
					Q <= Q(1 downto 0) & T;
		end if;
	end process;
	C <= Q(0) and Q(1) and (not Q(2));

end Behavioral;

