----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/29/2026 05:48:47 PM
-- Design Name: 
-- Module Name: Program_Counter - Behavioral
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

library IEEE; 
use IEEE.STD_LOGIC_1164.ALL; 
 
entity Program_Counter is 
   Port ( Counter_IN : in STD_LOGIC_VECTOR (2 downto 0); 
          Reset : in STD_LOGIC; 
          Clk : in STD_LOGIC; 
          Counter_Out : out STD_LOGIC_VECTOR (2 downto 0)); 
end Program_Counter; 
 
architecture Behavioral of Program_Counter is 
 
component Reg_3_B 
 Port ( D : in STD_LOGIC_VECTOR (2 downto 0); 
        En : in STD_LOGIC; 
        Clk : in STD_LOGIC; 
        Reset : in STD_LOGIC; 
        Q : out STD_LOGIC_VECTOR (2 downto 0)); 
 end component; 
 
begin 
    Reg_0 : Reg_3_B   
        Port map (  
            D => Counter_IN, 
            EN => '1', 
            Reset => Reset, 
            Clk => Clk, 
            Q => Counter_Out);     
 
end Behavioral; 
