----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.04.2026 18:09:09
-- Design Name: 
-- Module Name: Decode_2_TO_4 - Behavioral
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

entity Decode_2_TO_4 is
    Port (
        I  : in  STD_LOGIC_VECTOR (1 downto 0);
        EN : in  STD_LOGIC;
        Y  : out STD_LOGIC_VECTOR (3 downto 0)
    );
end Decode_2_TO_4;

architecture Behavioral of Decode_2_TO_4 is

begin

    Y(0) <= (NOT I(0)) AND (NOT I(1)) AND EN;
    Y(1) <= I(0) AND (NOT I(1)) AND EN;
    Y(2) <= (NOT I(0)) AND I(1) AND EN;
    Y(3) <= I(0) AND I(1) AND EN;

end Behavioral;
