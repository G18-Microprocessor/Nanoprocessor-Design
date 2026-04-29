----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.04.2026 17:54:31
-- Design Name: 
-- Module Name: TB_Mux_2_W_3_B - Behavioral
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

entity TB_Mux_2_W_3_B is
    --  Port ( );
end TB_Mux_2_W_3_B;

architecture Behavioral of TB_Mux_2_W_3_B is

    component Mux_2_W_3_B
        port (
            A_in  : in  STD_LOGIC_VECTOR (2 downto 0);
            B_in  : in  STD_LOGIC_VECTOR (2 downto 0);
            S_in  : in  STD_LOGIC;
            C_out : out STD_LOGIC_VECTOR (2 downto 0)
        );
    end component;

    signal A_in  : STD_LOGIC_VECTOR (2 downto 0);
    signal B_in  : STD_LOGIC_VECTOR (2 downto 0);
    signal S_in  : STD_LOGIC;
    signal C_out : STD_LOGIC_VECTOR (2 downto 0);

begin

    UUT: Mux_2_W_3_B
        PORT MAP(
            A_in  => A_in,
            B_in  => B_in,
            S_in  => S_in,
            C_out => C_out
        );


    process
    begin
        A_in <= "101";
        B_in <= "011";
        S_in <= '1';

        wait for 100 ns;

        S_in <= '0';
        wait for 100 ns;

        S_in <= '1';
        wait;
    end process;

end Behavioral;
