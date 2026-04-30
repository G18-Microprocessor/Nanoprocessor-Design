----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/29/2026 05:55:11 PM
-- Design Name: 
-- Module Name: TB_Slow_Clk - Behavioral
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

entity TB_Slow_Clk is
end TB_Slow_Clk;

architecture Behavioral of TB_Slow_Clk is

    component Slow_Clk
        Port (
            Clk_in  : in STD_LOGIC;
            Clk_out : out STD_LOGIC
        );
    end component;

    signal c_in, c_out : STD_LOGIC;

begin

    UTT : Slow_Clk
        port map (
            Clk_in  => c_in,
            Clk_out => c_out
        );

    process
    begin
        c_in <= '1';
        wait for 10 ns;

        c_in <= '0';
        wait for 10 ns;
    end process;

end Behavioral;
