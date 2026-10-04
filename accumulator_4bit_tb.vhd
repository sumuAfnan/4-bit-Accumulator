library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity accumulator_4bit_tb is
end accumulator_4bit_tb;

architecture Behavioral of accumulator_4bit_tb is

    component accumulator_4bit
        Port (
            A     : in  STD_LOGIC_VECTOR (3 downto 0);
            B     : in  STD_LOGIC_VECTOR (3 downto 0);
            CLK   : in  STD_LOGIC;
            RESET : in  STD_LOGIC;
            Q     : out STD_LOGIC_VECTOR (3 downto 0)
        );
    end component;

    signal A     : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    signal B     : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    signal CLK   : STD_LOGIC := '0';
    signal RESET : STD_LOGIC := '0';
    signal Q     : STD_LOGIC_VECTOR (3 downto 0);

begin

    UUT: accumulator_4bit
        port map (
            A     => A,
            B     => B,
            CLK   => CLK,
            RESET => RESET,
            Q     => Q
        );

    -- Clock generation
    CLK <= not CLK after 5 ns;

    process
    begin

        -- Test 1: RESET
        RESET <= '1';
        A <= "0000";
        B <= "0000";
        wait for 10 ns;

        -- Test 2: 3 + 5 = 8
        RESET <= '0';
        A <= "0011";
        B <= "0101";
        wait for 10 ns;

        -- Test 3: 2 + 1 = 3
        A <= "0010";
        B <= "0001";
        wait for 10 ns;

        -- Test 4: 15 + 1 = 16
        -- 4-bit result = 0000
        A <= "1111";
        B <= "0001";
        wait for 10 ns;

        -- Test 5: 10 + 5 = 15
        A <= "1010";
        B <= "0101";
        wait for 10 ns;

        wait;

    end process;

end Behavioral;