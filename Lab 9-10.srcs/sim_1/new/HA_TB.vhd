----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/29/2026 04:54:21 PM
-- Design Name: 
-- Module Name: HA_TB - Behavioral
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

entity TB_HA is
end TB_HA;

architecture Behavioral of TB_HA is

    -- Component declaration
    COMPONENT HA
        PORT(
            A, B : IN  STD_LOGIC;
            S, C : OUT STD_LOGIC
        );
    END COMPONENT;

    -- Signals
    SIGNAL a, b : STD_LOGIC := '0';
    SIGNAL s, c : STD_LOGIC;

begin

    -- Instantiate Unit Under Test
    UUT: HA PORT MAP(
        A => a,
        B => b,
        S => s,
        C => c
    );

    -- Stimulus process
    process
    begin
        a <= '0';
        b <= '0';
        WAIT FOR 100 ns;

        b <= '1';
        WAIT FOR 100 ns;

        a <= '1';
        b <= '0';
        WAIT FOR 100 ns;

        b <= '1';
        WAIT FOR 100 ns;

        WAIT;
    end process;

end Behavioral;
