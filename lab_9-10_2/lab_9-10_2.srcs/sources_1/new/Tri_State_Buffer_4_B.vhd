----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.04.2026 18:21:50
-- Design Name: 
-- Module Name: Tri_State_Buffer_4_B - Behavioral
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

entity Tri_State_Buffer_4_B is
    Port (
        data_in  : in  STD_LOGIC_VECTOR (3 downto 0);
        enable   : in  STD_LOGIC;
        data_out : out STD_LOGIC_VECTOR (3 downto 0)
    );
end Tri_State_Buffer_4_B;

architecture Behavioral of Tri_State_Buffer_4_B is

begin

    data_out <= data_in WHEN(Enable='1') else "ZZZZ";

end Behavioral;
