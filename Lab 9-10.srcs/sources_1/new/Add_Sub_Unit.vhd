----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/29/2026 06:09:20 PM
-- Design Name: 
-- Module Name: Add_Sub_Unit - Behavioral
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

entity Add_Sub_Unit is
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
end Add_Sub_Unit;

architecture Behavioral of Add_Sub_Unit is

    component FA
        Port (
            A     : in STD_LOGIC;
            B     : in STD_LOGIC;
            C_in  : in STD_LOGIC;
            S     : out STD_LOGIC;
            C_out : out STD_LOGIC
        );
    end component;

    signal FA0_C, FA1_C, FA2_C : STD_LOGIC;
    signal SO : STD_LOGIC_VECTOR(3 downto 0);
    signal carry : STD_LOGIC;
    signal B00, B11, B22, B33 : STD_LOGIC;

begin

    B00 <= B(0) XOR K;
    B11 <= B(1) XOR K;
    B22 <= B(2) XOR K;
    B33 <= B(3) XOR K;

    FA_0 : FA
        port map (
            A     => A(0),
            B     => B00,
            C_in  => K,
            S     => SO(0),
            C_out => FA0_C
        );

    FA_1 : FA
        port map (
            A     => A(1),
            B     => B11,
            C_in  => FA0_C,
            S     => SO(1),
            C_out => FA1_C
        );

    FA_2 : FA
        port map (
            A     => A(2),
            B     => B22,
            C_in  => FA1_C,
            S     => SO(2),
            C_out => FA2_C
        );

    FA_3 : FA
        port map (
            A     => A(3),
            B     => B33,
            C_in  => FA2_C,
            S     => SO(3),
            C_out => carry
        );

    overFlow <= carry XOR FA2_C;
    C_outT <= carry;
    S <= SO;

    zero <= (not SO(0)) and (not SO(1)) and (not SO(2)) and (not SO(3));

end Behavioral;