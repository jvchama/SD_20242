----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:20:33 08/27/2024 
-- Design Name: 
-- Module Name:    HALFADDER - Behavioral 
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

entity Half_Adder is
port (X, Y: in std_logic;
	HALF_SUM, C_OUT: out std_logic);
end Half_Adder;

architecture Half_Adder_Behav of Half_Adder is

begin
	HALF_SUM <= (X xor Y);
	C_OUT <= (X and Y);
end Half_Adder_Behav;
