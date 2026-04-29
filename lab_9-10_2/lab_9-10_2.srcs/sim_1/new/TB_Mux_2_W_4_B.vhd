----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.04.2026 17:58:27
-- Design Name: 
-- Module Name: TB_Mux_2_W_4_B - Behavioral
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

entity TB_Mux_2_W_4_B is
    --  Port ( );
end TB_Mux_2_W_4_B;

architecture Behavioral of TB_Mux_2_W_4_B is

    component Mux_2_W_4_B
        Port (
            S_in  : in  STD_LOGIC;
            A_in  : in  STD_LOGIC_VECTOR (3 downto 0);
            B_in  : in  STD_LOGIC_VECTOR (3 downto 0);
            C_out : out STD_LOGIC_VECTOR (3 downto 0)
        );
    end component;

    SIGNAL A_in, B_in, C_out : STD_LOGIC_VECTOR(3 downto 0);
    SIGNAL S_in : STD_LOGIC;

BEGIN

    UUT: Mux_2_W_4_B
        PORT MAP(
            A_in  => A_in,
            B_in  => B_in,
            S_in  => S_in,
            C_out => C_out
        );

    process
    begin
        A_in <= "0101";
        B_in <= "0011";
        S_in <= '0';

        wait for 200 ns;

        S_in <= '1';
        wait for 200 ns;

        S_in <= '0';
        wait;
    end process;

end Behavioral;
