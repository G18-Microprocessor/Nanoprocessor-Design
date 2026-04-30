----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/29/2026 06:39:43 PM
-- Design Name: 
-- Module Name: Program_Rom - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Program_Rom is
    Port ( Memo_Sel     : in STD_LOGIC_VECTOR (2 downto 0);
           Instruct_Bus : out STD_LOGIC_VECTOR (12 downto 0)); -- Fixed typo: added the missing 's'
end Program_Rom;

architecture Behavioral of Program_Rom is

-- Fixed size: Changed (11 downto 0) to (12 downto 0) to match your 13-bit binary strings
type rom_type is array (0 to 7) of std_logic_vector(12 downto 0); 

signal program_ROM : rom_type := (
    "0100010000110",
    "0100100001010",
    "0100110000011",
    "1000010100000",
    "1010000010001",
    "1010100000011",
    "1100110000001",
    "0000000000000"
);

begin
    Instruct_Bus <= program_ROM(to_integer(unsigned(Memo_Sel)));
end Behavioral;