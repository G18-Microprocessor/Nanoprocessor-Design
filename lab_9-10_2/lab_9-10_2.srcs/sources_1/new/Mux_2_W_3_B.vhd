----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.04.2026 17:39:44
-- Design Name: 
-- Module Name: Mux_2_W_3_B - Behavioral
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

entity Mux_2_W_3_B is
    Port (
        A_in  : in  STD_LOGIC_VECTOR (2 downto 0);
        B_in  : in  STD_LOGIC_VECTOR (2 downto 0);
        S_in  : in  STD_LOGIC;
        C_out : out STD_LOGIC_VECTOR (2 downto 0)
    );
end Mux_2_W_3_B;

architecture Behavioral of Mux_2_W_3_B is

    component Tri_State_Buffer_3_B is
        Port (
            data_in  : in  STD_LOGIC_VECTOR (2 downto 0);
            enable   : in  STD_LOGIC;
            data_out : out STD_LOGIC_VECTOR (2 downto 0)
        );
    end component;

    signal s, s_not : STD_LOGIC;

begin

    s <= s_in;
    s_not <= NOT s_in;

    buff_0 : Tri_State_Buffer_3_B
        port map (
            data_in  => A_in,
            enable   => s_not,
            data_out => c_out
        );

    buff_1 : Tri_State_Buffer_3_B
        port map (
            data_in  => B_in,
            enable   => s,
            data_out => c_out
        );

end Behavioral;
