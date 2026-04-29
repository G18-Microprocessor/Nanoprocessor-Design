----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/29/2026 06:17:46 PM
-- Design Name: 
-- Module Name: TB_Comparator - Behavioral
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

entity TB_Comparator is
end TB_Comparator;

architecture Behavioral of TB_Comparator is

    component Comparator
        Port (
            A        : in STD_LOGIC_VECTOR(3 downto 0);
            B        : in STD_LOGIC_VECTOR(3 downto 0);
            EN       : in STD_LOGIC;
            Equal    : out STD_LOGIC;
            Greater  : out STD_LOGIC;
            Less     : out STD_LOGIC
        );
    end component;

    signal A, B : STD_LOGIC_VECTOR(3 downto 0);
    signal Equal, Greater, Less, EN : STD_LOGIC;

begin

    UUT : Comparator
        port map (
            A        => A,
            B        => B,
            EN       => EN,
            Equal    => Equal,
            Greater  => Greater,
            Less     => Less
        );

    process
    begin
        EN <= '0';
        A <= "1111";
        B <= "0000";
        wait for 200 ns;

        EN <= '1';
        wait for 200 ns;

        A <= "0011";
        B <= "1011";
        wait for 200 ns;

        A <= "1010";
        B <= "1010";
        wait for 200 ns;

        wait;
    end process;

end Behavioral;
