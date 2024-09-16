--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:00:20 09/03/2024
-- Design Name:   
-- Module Name:   /home/sd/Trabalho_1_2024/Test_Half_Adder.vhd
-- Project Name:  Trabalho_1_2024
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Half_Adder
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Test_Half_Adder IS
END Test_Half_Adder;
 
ARCHITECTURE behavior OF Test_Half_Adder IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Half_Adder
    PORT(
         X : IN  std_logic;
         Y : IN  std_logic;
         HALF_SUM : OUT  std_logic;
         C_OUT : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal X : std_logic := '0';
   signal Y : std_logic := '0';
	signal clock : std_logic;

 	--Outputs
   signal HALF_SUM : std_logic;
   signal C_OUT : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Half_Adder PORT MAP (
          X => X,
          Y => Y,
          HALF_SUM => HALF_SUM,
          C_OUT => C_OUT
        );

   -- Clock process definitions
   clock_process :process
   begin
		clock <= '0';
		wait for clock_period/2;
		clock <= '1';
		wait for clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      X <= '0';
		Y <= '1';
		
		wait for 100 ns;	
		X <= '1';
		Y <= '1';
		
      wait for clock_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
