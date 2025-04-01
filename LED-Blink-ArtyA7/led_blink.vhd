library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity led_blink is
    Port ( clk : in STD_LOGIC;
           led : out STD_LOGIC);
end led_blink;

architecture Behavioral of led_blink is
    signal counter : STD_LOGIC_VECTOR(24 downto 0) := (others => '0');
begin
    process(clk)
    begin
        if rising_edge(clk) then
            counter <= counter + 1;
        end if;
    end process;

    led <= counter(24);  -- Slow blinking by tapping MSB of counter
end Behavioral;

