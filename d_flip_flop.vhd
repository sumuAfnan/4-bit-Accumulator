----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
--
-- Create Date:    05:22:44 10/03/2026
-- Design Name: 
-- Module Name:    d_flip_flop - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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

entity d_flip_flop is
    Port (
        D   : in  STD_LOGIC;
        CLK : in  STD_LOGIC;
        Q   : out STD_LOGIC
    );
end d_flip_flop;

architecture Behavioral of d_flip_flop is

begin

    process(CLK)
    begin
        if rising_edge(CLK) then
            Q <= D;
        end if;
    end process;

end Behavioral;