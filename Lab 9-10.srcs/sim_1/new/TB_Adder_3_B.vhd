----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/29/2026 05:29:13 PM
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TB_Adder_3_B is
end TB_Adder_3_B;

architecture Behavioral of TB_Adder_3_B is

    component Adder_3_B
        Port (
            A     : in  STD_LOGIC_VECTOR (2 downto 0);
            C_in  : in  STD_LOGIC;
            S     : out STD_LOGIC_VECTOR (2 downto 0);
            C_out : out STD_LOGIC
        );
    end component;

    signal A     : STD_LOGIC_VECTOR(2 downto 0) := (others => '0');
    signal S     : STD_LOGIC_VECTOR(2 downto 0);
    signal C_in  : STD_LOGIC := '0';
    signal C_out : STD_LOGIC;

begin

    UUT: Adder_3_B
        port map(
            A => A,
            C_in => C_in,
            S => S,
            C_out => C_out
        );

    process
    begin
        A <= "000"; wait for 50 ns;
        A <= "101"; wait for 50 ns;
        A <= "111"; wait for 50 ns;
        A <= "110"; wait for 50 ns;
        A <= "001"; wait for 50 ns;

        wait;
    end process;

end Behavioral;
