----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/29/2026 05:27:02 PM
-- Design Name: 
-- Module Name: TB_Adder_3_B - Behavioral
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

entity Adder_3_B is
    Port (
        A     : in  STD_LOGIC_VECTOR (2 downto 0);
        C_in  : in  STD_LOGIC;
        S     : out STD_LOGIC_VECTOR (2 downto 0);
        C_out : out STD_LOGIC
    );
end Adder_3_B;

architecture Behavioral of Adder_3_B is

    component FA
        Port (
            A     : in  STD_LOGIC;
            B     : in  STD_LOGIC;
            C_in  : in  STD_LOGIC;
            S     : out STD_LOGIC;
            C_out : out STD_LOGIC
        );
    end component;

    signal C : STD_LOGIC_VECTOR(2 downto 0);

begin

    FA_0: FA port map(
        A => A(0),
        B => '0',
        C_in => C_in,
        S => S(0),
        C_out => C(0)
    );

    FA_1: FA port map(
        A => A(1),
        B => '0',
        C_in => C(0),
        S => S(1),
        C_out => C(1)
    );

    FA_2: FA port map(
        A => A(2),
        B => '0',
        C_in => C(1),
        S => S(2),
        C_out => C_out
    );

end Behavioral;
