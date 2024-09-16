
-- VHDL Instantiation Created from source file maquinaDeEstados.vhd -- 14:19:12 09/10/2024
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT maquinaDeEstados
	PORT(
		Vetores : IN std_logic_vector(3 downto 0);
		CLK : IN std_logic;
		ButtonN : IN std_logic;
		ButtonE : IN std_logic;
		ButtonS : IN std_logic;
		rst : IN std_logic;          
		Outesquerda : OUT std_logic_vector(3 downto 0);
		OutDireita : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	Inst_maquinaDeEstados: maquinaDeEstados PORT MAP(
		Vetores => ,
		CLK => ,
		ButtonN => ,
		ButtonE => ,
		ButtonS => ,
		rst => ,
		Outesquerda => ,
		OutDireita => 
	);


