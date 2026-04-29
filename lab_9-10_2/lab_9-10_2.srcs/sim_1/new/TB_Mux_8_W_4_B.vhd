----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.04.2026 18:05:43
-- Design Name: 
-- Module Name: TB_Mux_8_W_4_B - Behavioral
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

entity TB_Mux_8_W_4_B is
    --  Port ( );
end TB_Mux_8_W_4_B;

architecture Behavioral of TB_Mux_8_W_4_B is

    component MUX_8_W_4_B
        Port (
            A0    : in  STD_LOGIC_VECTOR (3 downto 0);
            A1    : in  STD_LOGIC_VECTOR (3 downto 0);
            A2    : in  STD_LOGIC_VECTOR (3 downto 0);
            A3    : in  STD_LOGIC_VECTOR (3 downto 0);
            A4    : in  STD_LOGIC_VECTOR (3 downto 0);
            A5    : in  STD_LOGIC_VECTOR (3 downto 0);
            A6    : in  STD_LOGIC_VECTOR (3 downto 0);
            A7    : in  STD_LOGIC_VECTOR (3 downto 0);
            C_OUT : out STD_LOGIC_VECTOR (3 downto 0);
            S     : in  STD_LOGIC_VECTOR (2 downto 0)
        );
    end component;

    signal A0, A1, A2, A3, A4, A5, A6, A7 : STD_LOGIC_VECTOR(3 downto 0);
    signal C_OUT : STD_LOGIC_VECTOR(3 downto 0);
    signal S : STD_LOGIC_VECTOR(2 downto 0);

begin

    UUT : MUX_8_W_4_B
        Port map(
            A0    => A0,
            A1    => A1,
            A2    => A2,
            A3    => A3,
            A4    => A4,
            A5    => A5,
            A6    => A6,
            A7    => A7,
            C_OUT => C_OUT,
            S     => S
        );

    process
    begin

        A0 <= "0011"; --3
        A1 <= "0000"; --0
        A2 <= "1000"; --8
        A3 <= "1111"; --F
        A4 <= "0101"; --5
        A5 <= "1101"; --D
        A6 <= "0111"; --7
        A7 <= "1100"; --C

        S <= "000";
        WAIT FOR 100 ns;

        S <= "001";
        WAIT FOR 100 ns;

        S <= "010";
        WAIT FOR 100 ns;

        S <= "011";
        WAIT FOR 100 ns;

        S <= "100";
        WAIT FOR 100 ns;

        S <= "101";
        WAIT FOR 100 ns;

        S <= "110";
        WAIT FOR 100 ns;

        S <= "111";
        WAIT;

    end process;

end Behavioral;
