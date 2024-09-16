----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:30:09 08/27/2024 
-- Design Name: 
-- Module Name:    FOURbitADD - Behavioral 
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

entity SUM_2_Vectors_4_Bits is
port (VECTOR_A, VECTOR_B: in std_logic_vector(3 downto 0);
	Cin : in std_logic;
	SUM_RESULT: out std_logic_vector (3 downto 0);
	Cout, V: out std_logic);
end SUM_2_Vectors_4_Bits;

architecture fouradder_structure of SUM_2_Vectors_4_Bits is
	signal COUT_FA0, COUT_FA1, COUT_FA2, COUT_FA3: std_logic;
	component Full_Adder
		port(INPUT_A, INPUT_B, CARRY_IN: in std_logic;
			SUM, CARRY_OUT: out std_logic);
	end component;
	
	begin
	FA0: Full_Adder port map (VECTOR_A(0), VECTOR_B(0), '0', SUM_RESULT(0), COUT_FA0);
	FA1: Full_Adder port map (VECTOR_A(1), VECTOR_B(1), COUT_FA0, SUM_RESULT(1), COUT_FA1);
	FA2: Full_Adder port map (VECTOR_A(2), VECTOR_B(2), COUT_FA1, SUM_RESULT(2), COUT_FA2);
	FA3: Full_Adder port map (VECTOR_A(3), VECTOR_B(3), COUT_FA2, SUM_RESULT(3), COUT_FA3);
	V <= COUT_FA2 xor COUT_FA3;
	Cout <= COUT_FA3;
end fouradder_structure;







