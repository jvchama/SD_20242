----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:00:43 08/27/2024 
-- Design Name: 
-- Module Name:    FullAdder - Behavioral 
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

entity Full_Adder is
	port (INPUT_A, INPUT_B, CARRY_IN: in std_logic;
	SUM,CARRY_OUT: out std_logic);
end Full_Adder;

architecture fulladder_behav of Full_Adder is
signal halfSum, HALF_COUT, HALF_CARRY: std_logic;

	component Half_Adder
	port (X, Y: in std_logic;
		HALF_SUM, C_OUT: out std_logic);
	end component;

		
begin
	HA0: Half_Adder port map (INPUT_A, INPUT_B, HALFSUM, HALF_CARRY);
	HA1: Half_Adder port map (HALFSUM, CARRY_IN, SUM, HALF_COUT);
	CARRY_OUT<= (HALF_COUT or HALF_CARRY);
end fulladder_behav;

