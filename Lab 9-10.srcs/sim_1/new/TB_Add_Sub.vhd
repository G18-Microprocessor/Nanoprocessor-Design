----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/29/2026 06:10:38 PM
-- Design Name: 
-- Module Name: TB_Add_Sub - Behavioral
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

entity TB_Add_Sub is
end TB_Add_Sub;

architecture Behavioral of TB_Add_Sub is

    component Add_Sub_Unit
        Port (
            A         : in STD_LOGIC_VECTOR(3 downto 0);
            B         : in STD_LOGIC_VECTOR(3 downto 0);
            C_in      : in STD_LOGIC;
            S         : out STD_LOGIC_VECTOR(3 downto 0);
            C_outT    : out STD_LOGIC;
            overFlow  : out STD_LOGIC;
            zero      : out STD_LOGIC;
            K         : in STD_LOGIC
        );
    end component;

    signal A, B, S : STD_LOGIC_VECTOR(3 downto 0);
    signal K : STD_LOGIC;
    signal C_outT : STD_LOGIC;
    signal zero, C_in, overFlow : STD_LOGIC;

begin

    UUT : Add_Sub_Unit
        port map (
            A         => A,
            B         => B,
            C_in      => C_in,
            S         => S,
            C_outT    => C_outT,
            overFlow  => overFlow,
            zero      => zero,
            K         => K
        );

    process
    begin
        C_in <= '0';

        K <= '0';
        A <= "0011";
        B <= "0101";
        wait for 100 ns;

        K <= '1';
        A <= "1000";
        B <= "1111";
        wait for 100 ns;

        K <= '0';
        A <= "0000";
        B <= "0011";
        C_in <= '1';
        wait for 100 ns;

        K <= '1';
        A <= "1111";
        B <= "0111";
        wait;
    end process;

end Behavioral;
