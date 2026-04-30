----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/29/2026 06:52:27 PM
-- Design Name: 
-- Module Name: Instruction_Decoder - Behavioral
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

entity Instruction_Decoder is
    Port ( Instruction_Bus : in STD_LOGIC_VECTOR (12 downto 0);
           Check_For_Jump : in STD_LOGIC_VECTOR (3 downto 0);
           Register_Enable : out STD_LOGIC_VECTOR (2 downto 0);
           Load_Select : out STD_LOGIC;
           Immediate_Value : out STD_LOGIC_VECTOR (3 downto 0);
           Register_Select_0 : out STD_LOGIC_VECTOR (2 downto 0);
           Register_Select_1 : out STD_LOGIC_VECTOR (2 downto 0);
           A_S_Select : out STD_LOGIC;
           Jump_Flag : out STD_LOGIC;
           Jump_Address : out STD_LOGIC_VECTOR (2 downto 0);
           Comparator_En : out STD_LOGIC;
           Logical_unit_en : out STD_LOGIC;
           Logical_Operation_Select : out STD_LOGIC_VECTOR (1 downto 0);
           Bit_Shift_En : out STD_LOGIC;
           Bit_Shift_with_Dir : out STD_LOGIC_VECTOR (2 downto 0));
end Instruction_Decoder;

architecture Behavioral of Instruction_Decoder is

begin


end Behavioral;
