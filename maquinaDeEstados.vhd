----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:26:53 09/10/2024 
-- Design Name: 
-- Module Name:    maquinaDeEstados - Behavioral 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;


entity maquinaDeEstados is
    Port ( Vetores : in  STD_LOGIC_VECTOR (3 downto 0);
        	CLK : in  STD_LOGIC;
        	ButtonN : in  STD_LOGIC; -- Armazena o A
        	ButtonE : in  STD_LOGIC; -- Armazena o B
			ButtonS : in  STD_LOGIC; -- Armazena a primeira operacao
			rst : in STD_LOGIC;
        	Outesquerda : out  STD_LOGIC_VECTOR (3 downto 0);
			OutDireita : out  STD_LOGIC_VECTOR (3 downto 0));
end maquinaDeEstados;

architecture Behavioral of maquinaDeEstados is

component AND_2_Vectors_4_Bits 
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           C : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

component SUM_2_Vectors_4_Bits 
port (VECTOR_A, VECTOR_B: in std_logic_vector(3 downto 0);
	Cin : in std_logic;
	SUM_RESULT: out std_logic_vector (3 downto 0);
	Cout, V: out std_logic);
end component;


--> Componentes da máquina de estados
signal verifica: integer range 0 to 2 := 0;
signal Selecionador_Fases : integer range 0 to 3 := 0;----- fase inicial da selecao de dados 
signal Contador : integer range 0 to 100000000  :=0; ------ contar 2s
signal continuar : integer range 0 to 9 := 9;
signal A : std_logic_vector (3 downto 0); ----- valor do primeiro numero
signal B : std_logic_vector (3 downto 0); ----- valor do segundo numero
signal C : std_logic_vector (3 downto 0); ----- valor do estado inicial

-- Somador
signal SOMA : std_logic_vector (3 downto 0); -------- resultado da soma
signal cout_Soma : std_logic;
signal flag_soma : std_logic;

-- AND dos 2 vetores
signal ANDE : std_logic_vector (3 downto 0);------resultado and de A e B

begin 
AND_2 : AND_2_Vectors_4_Bits port map(A,B,ANDE);
SUM : SUM_2_Vectors_4_Bits port map(A, B,'0',SOMA, cout_Soma, flag_soma);

process(Clk,rst)
begin
if rising_edge(CLK) then
	if (buttonN = '1' and  Selecionador_Fases = 0) then
			A <= vetores;
			Selecionador_Fases <= 1;
	end if;

	if (buttonE = '1' and Selecionador_Fases = 1) then
		B <= vetores;
		Selecionador_Fases <= 2;
	end if;
		
	if (buttonS = '1' and Selecionador_Fases = 2) then
		c<= vetores;
		Selecionador_Fases <= 3;
	end if;
	
	if c = "0000" or continuar = 8 then
		c<="1111";
		if verifica = 0 then
			if Contador < 100000000 then
				Contador <= Contador + 1;
				OutDireita <= SOMA;    
				OutEsquerda(3)<= '0';
				OutEsquerda(2)<= '0';
				OutEsquerda(1)<= cout_Soma;
				OutEsquerda(0)<= flag_soma;
			else
				verifica <= 1;
				Contador <= 0;
			end if;
		end if;
		
		if verifica = 1 then
			if Contador < 100000000 then
				Contador <= Contador + 1;
				OutDireita<= B;
				OutEsquerda<= "0000";
			else
				verifica <= 2;
				Contador <= 0;
			end if;
		end if;
		
		if verifica = 2 then
			if Contador < 100000000 then
				Contador <= Contador + 1;
				OutDireita<= SOMA;               ---SAIDA
				OutEsquerda<= "0000";
				continuar<= 1;
			else
				verifica <= 0;
				Contador <= 0;
			end if;
		end if;
	end if;
	
	if c = "0011" or continuar=3 then
		c<="1111";
		if verifica = 0 then
			if Contador < 100000000 then
				Contador <= Contador + 1;
				OutDireita<= ANDE;
				OutEsquerda<= "0011";
			else
				verifica <= 1;
				Contador <= 0;
			end if;
		end if;
		
		if verifica = 1 then
			if Contador < 100000000 then
				Contador <= Contador + 1;
				OutDireita<= B;
				OutEsquerda<= "0001";
			else
				verifica <= 2;
				Contador <= 0;
			end if;
		end if;	
			
		if verifica = 2 then
			if Contador < 100000000 then
				Contador <= Contador + 1;
				OutDireita<= ANDE;					---SAIDA
				OutEsquerda<= "0001";
				continuar<= 4;
			else
				verifica <= 0;
				Contador <= 0;
			end if;
		end if;
	end if;
	
	if (rst = '1') then
		-- FAZER BOTAO RESET 
		Selecionador_Fases <= 0;
		OutEsquerda<="0000";
		OutDireita<="0000";
		continuar <= 9;
	end if;
end if;
end process;
end Behavioral;
