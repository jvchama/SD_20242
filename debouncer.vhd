library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Button_Debounce is
    port (
        clk       : in  std_logic;      -- Clock signal
        reset     : in  std_logic;      -- Reset signal
        button_in : in  std_logic;      -- Raw button input signal
        button_out: out std_logic       -- Debounced button output signal
    );
end Button_Debounce;

architecture behavior of Button_Debounce is
    signal button_sync_0  : std_logic;
    signal button_sync_1  : std_logic;
    signal counter        : unsigned(19 downto 0) := (others => '0');  -- 20-bit counter for debounce timing
    signal button_state   : std_logic := '0';    -- Debounced button state
    signal button_last    : std_logic := '0';    -- Last state of the button
    constant debounce_time: unsigned(19 downto 0) := X"FFFFF";         -- Adjust debounce time (20-bit max value)
begin

    -- Synchronize the button input to the clock to avoid metastability
    process(clk, reset)
    begin
        if reset = '1' then
            button_sync_0 <= '0';
            button_sync_1 <= '0';
        elsif rising_edge(clk) then
            button_sync_0 <= button_in;
            button_sync_1 <= button_sync_0;  -- Synchronized button signal
        end if;
    end process;

    -- Debouncing logic
    process(clk, reset)
    begin
        if reset = '1' then
            counter <= (others => '0');
            button_state <= '0';
        elsif rising_edge(clk) then
            -- Check if the current button state is different from the last stable state
            if button_sync_1 /= button_last then
                -- Reset the counter if the button state has changed
                counter <= (others => '0');
            else
                -- Increment the counter if the button state remains the same
                if counter < debounce_time then
                    counter <= counter + 1;
                else
                    -- When the counter reaches the debounce time, update the stable button state
                    button_state <= button_sync_1;
                end if;
            end if;
            button_last <= button_sync_1;  -- Update the last button state
        end if;
    end process;

    -- Output the debounced button state
    button_out <= button_state;

end behavior;
