----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/30/2026 11:12:08 AM
-- Design Name: 
-- Module Name: LUT_16_7_TB - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity LUT_16_7_TB is
--  Port ( );
end LUT_16_7_TB;

architecture Behavioral of LUT_16_7_TB is

component LUT_16_7 is 
    Port ( address : in STD_LOGIC_VECTOR (3 downto 0); 
           data : out STD_LOGIC_VECTOR (6 downto 0)); 
end component; 
 
signal address : std_logic_vector(3 downto 0); 
signal data : std_logic_vector (6 downto 0); 
 
begin 
UUT : LUT_16_7 port map ( 
    address => address, 
    data => data); 
 
 
process  
    begin 
        address <= "0111"; 
        wait for 250 ns; 
         
        address <= "1111"; 
        wait for 250 ns; 
         
        address <= "0011"; 
        wait for 250 ns; 
         
        address <= "0101"; 
        wait; 
    end process; 




end Behavioral;
