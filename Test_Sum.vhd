----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:28:58 09/03/2024 
-- Design Name: 
-- Module Name:    Test_Sum - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Test_Sum is
end Test_Sum;

architecture Behavioral of Test_Sum is

	COMPONENT SUM_2_Vectors_4_Bits
    PORT(
         VECTOR_A : IN  std_logic_vector(3 downto 0);
         VECTOR_B : IN  std_logic_vector(3 downto 0);
         Cin : IN  std_logic;
         SUM_RESULT : OUT  std_logic_vector(3 downto 0);
         Cout : OUT  std_logic;
         V : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   -- signal a : std_logic_vector(3 downto 0) := (others => '0');
   -- signal b : std_logic_vector(3 downto 0) := (others => '0');
	signal a : std_logic_vector(3 downto 0) := "1111";
	signal b : std_logic_vector(3 downto 0) := "1111";
   signal Cin : std_logic := '0';
	-- signal clock : std_logic;

 	--Outputs
   signal SUM_RESULT : std_logic_vector(3 downto 0);
   signal Cout : std_logic;
   signal V : std_logic;
   -- No clocks detected in port list. Replace clock below with 
   -- appropriate port name 
 
   --constant clock_period : time := 10 ns;

begin
   test: SUM_2_Vectors_4_Bits PORT MAP (
          VECTOR_A => a,
          VECTOR_B => b,
          Cin => Cin,
          SUM_RESULT => SUM_RESULT,
          Cout => Cout,
          V => V
        );
end;

