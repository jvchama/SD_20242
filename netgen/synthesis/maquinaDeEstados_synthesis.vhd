--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: maquinaDeEstados_synthesis.vhd
-- /___/   /\     Timestamp: Tue Sep 10 14:47:50 2024
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm maquinaDeEstados -w -dir netgen/synthesis -ofmt vhdl -sim maquinaDeEstados.ngc maquinaDeEstados_synthesis.vhd 
-- Device	: xc3s700an-4-fgg484
-- Input file	: maquinaDeEstados.ngc
-- Output file	: /home/sd/Downloads/Trabalho/netgen/synthesis/maquinaDeEstados_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: maquinaDeEstados
-- Xilinx	: /opt/Xilinx/14.7/ISE_DS/ISE/
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity maquinaDeEstados is
  port (
    CLK : in STD_LOGIC := 'X'; 
    rst : in STD_LOGIC := 'X'; 
    ButtonE : in STD_LOGIC := 'X'; 
    ButtonN : in STD_LOGIC := 'X'; 
    ButtonS : in STD_LOGIC := 'X'; 
    Outesquerda : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    OutDireita : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    Vetores : in STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end maquinaDeEstados;

architecture Structure of maquinaDeEstados is
  signal A_and0000 : STD_LOGIC; 
  signal B_and0000 : STD_LOGIC; 
  signal ButtonE_IBUF_11 : STD_LOGIC; 
  signal ButtonN_IBUF_13 : STD_LOGIC; 
  signal ButtonS_IBUF_15 : STD_LOGIC; 
  signal CLK_BUFGP_17 : STD_LOGIC; 
  signal C_and0000 : STD_LOGIC; 
  signal C_or0000 : STD_LOGIC; 
  signal Madd_Contador_addsub0000_cy_10_rt_107 : STD_LOGIC; 
  signal Madd_Contador_addsub0000_cy_11_rt_109 : STD_LOGIC; 
  signal Madd_Contador_addsub0000_cy_12_rt_111 : STD_LOGIC; 
  signal Madd_Contador_addsub0000_cy_13_rt_113 : STD_LOGIC; 
  signal Madd_Contador_addsub0000_cy_14_rt_115 : STD_LOGIC; 
  signal Madd_Contador_addsub0000_cy_15_rt_117 : STD_LOGIC; 
  signal Madd_Contador_addsub0000_cy_16_rt_119 : STD_LOGIC; 
  signal Madd_Contador_addsub0000_cy_17_rt_121 : STD_LOGIC; 
  signal Madd_Contador_addsub0000_cy_18_rt_123 : STD_LOGIC; 
  signal Madd_Contador_addsub0000_cy_19_rt_125 : STD_LOGIC; 
  signal Madd_Contador_addsub0000_cy_1_rt_127 : STD_LOGIC; 
  signal Madd_Contador_addsub0000_cy_20_rt_129 : STD_LOGIC; 
  signal Madd_Contador_addsub0000_cy_21_rt_131 : STD_LOGIC; 
  signal Madd_Contador_addsub0000_cy_22_rt_133 : STD_LOGIC; 
  signal Madd_Contador_addsub0000_cy_23_rt_135 : STD_LOGIC; 
  signal Madd_Contador_addsub0000_cy_24_rt_137 : STD_LOGIC; 
  signal Madd_Contador_addsub0000_cy_25_rt_139 : STD_LOGIC; 
  signal Madd_Contador_addsub0000_cy_2_rt_141 : STD_LOGIC; 
  signal Madd_Contador_addsub0000_cy_3_rt_143 : STD_LOGIC; 
  signal Madd_Contador_addsub0000_cy_4_rt_145 : STD_LOGIC; 
  signal Madd_Contador_addsub0000_cy_5_rt_147 : STD_LOGIC; 
  signal Madd_Contador_addsub0000_cy_6_rt_149 : STD_LOGIC; 
  signal Madd_Contador_addsub0000_cy_7_rt_151 : STD_LOGIC; 
  signal Madd_Contador_addsub0000_cy_8_rt_153 : STD_LOGIC; 
  signal Madd_Contador_addsub0000_cy_9_rt_155 : STD_LOGIC; 
  signal Madd_Contador_addsub0000_xor_26_rt_157 : STD_LOGIC; 
  signal Mcompar_continuar_cmp_lt0000_cy_0_rt_159 : STD_LOGIC; 
  signal Mcompar_continuar_cmp_lt0000_cy_4_rt_164 : STD_LOGIC; 
  signal Mcompar_continuar_cmp_lt0000_cy_7_rt_168 : STD_LOGIC; 
  signal Mcompar_continuar_cmp_lt0000_cy_9_rt_171 : STD_LOGIC; 
  signal Mcompar_continuar_cmp_lt0000_lut_1_Q_172 : STD_LOGIC; 
  signal Mcompar_continuar_cmp_lt0000_lut_2_Q_173 : STD_LOGIC; 
  signal Mcompar_continuar_cmp_lt0000_lut_3_Q : STD_LOGIC; 
  signal Mcompar_continuar_cmp_lt0000_lut_5_Q : STD_LOGIC; 
  signal Mcompar_continuar_cmp_lt0000_lut_6_Q_176 : STD_LOGIC; 
  signal Mcompar_continuar_cmp_lt0000_lut_8_Q : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N101 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal N15 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal OutDireita_0_195 : STD_LOGIC; 
  signal OutDireita_1_196 : STD_LOGIC; 
  signal OutDireita_2_197 : STD_LOGIC; 
  signal OutDireita_3_198 : STD_LOGIC; 
  signal OutDireita_mux0000_0_18_200 : STD_LOGIC; 
  signal OutDireita_mux0000_0_32_201 : STD_LOGIC; 
  signal OutDireita_mux0000_1_21_203 : STD_LOGIC; 
  signal OutDireita_mux0000_1_79_204 : STD_LOGIC; 
  signal OutDireita_mux0000_2_108_206 : STD_LOGIC; 
  signal OutDireita_mux0000_2_25_207 : STD_LOGIC; 
  signal OutDireita_mux0000_2_37_208 : STD_LOGIC; 
  signal OutDireita_mux0000_2_83_209 : STD_LOGIC; 
  signal OutDireita_mux0000_3_24_211 : STD_LOGIC; 
  signal OutDireita_mux0000_3_51_212 : STD_LOGIC; 
  signal OutDireita_mux0000_3_78_213 : STD_LOGIC; 
  signal Outesquerda_0_218 : STD_LOGIC; 
  signal Outesquerda_0_mux0000_219 : STD_LOGIC; 
  signal Outesquerda_1_220 : STD_LOGIC; 
  signal Outesquerda_1_mux0000_221 : STD_LOGIC; 
  signal Outesquerda_2_OBUF_222 : STD_LOGIC; 
  signal SUM_COUT_FA2 : STD_LOGIC; 
  signal Selecionador_Fases_FSM_FFd1_224 : STD_LOGIC; 
  signal Selecionador_Fases_FSM_FFd1_In : STD_LOGIC; 
  signal Selecionador_Fases_FSM_FFd2_226 : STD_LOGIC; 
  signal Selecionador_Fases_FSM_FFd2_In : STD_LOGIC; 
  signal Selecionador_Fases_not0001 : STD_LOGIC; 
  signal Selecionador_Fases_not00011_229 : STD_LOGIC; 
  signal Selecionador_Fases_not00012_230 : STD_LOGIC; 
  signal Vetores_0_IBUF_235 : STD_LOGIC; 
  signal Vetores_1_IBUF_236 : STD_LOGIC; 
  signal Vetores_2_IBUF_237 : STD_LOGIC; 
  signal Vetores_3_IBUF_238 : STD_LOGIC; 
  signal continuar_cmp_eq0001 : STD_LOGIC; 
  signal rst_IBUF_241 : STD_LOGIC; 
  signal verifica_FSM_FFd1_242 : STD_LOGIC; 
  signal verifica_FSM_FFd1_In : STD_LOGIC; 
  signal verifica_FSM_FFd2_244 : STD_LOGIC; 
  signal verifica_FSM_FFd2_In : STD_LOGIC; 
  signal A : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal B : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal C : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal Contador : STD_LOGIC_VECTOR ( 26 downto 0 ); 
  signal Contador_addsub0000 : STD_LOGIC_VECTOR ( 26 downto 0 ); 
  signal Contador_mux0000 : STD_LOGIC_VECTOR ( 26 downto 0 ); 
  signal Madd_Contador_addsub0000_cy : STD_LOGIC_VECTOR ( 25 downto 0 ); 
  signal Madd_Contador_addsub0000_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Mcompar_continuar_cmp_lt0000_cy : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal OutDireita_mux0000 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => Outesquerda_2_OBUF_222
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  C_0 : FDSE
    port map (
      C => CLK_BUFGP_17,
      CE => C_and0000,
      D => Vetores_0_IBUF_235,
      S => C_or0000,
      Q => C(0)
    );
  C_1 : FDSE
    port map (
      C => CLK_BUFGP_17,
      CE => C_and0000,
      D => Vetores_1_IBUF_236,
      S => C_or0000,
      Q => C(1)
    );
  C_2 : FDSE
    port map (
      C => CLK_BUFGP_17,
      CE => C_and0000,
      D => Vetores_2_IBUF_237,
      S => C_or0000,
      Q => C(2)
    );
  C_3 : FDSE
    port map (
      C => CLK_BUFGP_17,
      CE => C_and0000,
      D => Vetores_3_IBUF_238,
      S => C_or0000,
      Q => C(3)
    );
  A_0 : FDE
    port map (
      C => CLK_BUFGP_17,
      CE => A_and0000,
      D => Vetores_0_IBUF_235,
      Q => A(0)
    );
  A_1 : FDE
    port map (
      C => CLK_BUFGP_17,
      CE => A_and0000,
      D => Vetores_1_IBUF_236,
      Q => A(1)
    );
  A_2 : FDE
    port map (
      C => CLK_BUFGP_17,
      CE => A_and0000,
      D => Vetores_2_IBUF_237,
      Q => A(2)
    );
  A_3 : FDE
    port map (
      C => CLK_BUFGP_17,
      CE => A_and0000,
      D => Vetores_3_IBUF_238,
      Q => A(3)
    );
  B_0 : FDE
    port map (
      C => CLK_BUFGP_17,
      CE => B_and0000,
      D => Vetores_0_IBUF_235,
      Q => B(0)
    );
  B_1 : FDE
    port map (
      C => CLK_BUFGP_17,
      CE => B_and0000,
      D => Vetores_1_IBUF_236,
      Q => B(1)
    );
  B_2 : FDE
    port map (
      C => CLK_BUFGP_17,
      CE => B_and0000,
      D => Vetores_2_IBUF_237,
      Q => B(2)
    );
  B_3 : FDE
    port map (
      C => CLK_BUFGP_17,
      CE => B_and0000,
      D => Vetores_3_IBUF_238,
      Q => B(3)
    );
  Outesquerda_0 : FDRE
    port map (
      C => CLK_BUFGP_17,
      CE => C_or0000,
      D => Outesquerda_0_mux0000_219,
      R => rst_IBUF_241,
      Q => Outesquerda_0_218
    );
  OutDireita_0 : FDRE
    port map (
      C => CLK_BUFGP_17,
      CE => C_or0000,
      D => OutDireita_mux0000(0),
      R => rst_IBUF_241,
      Q => OutDireita_0_195
    );
  OutDireita_1 : FDRE
    port map (
      C => CLK_BUFGP_17,
      CE => C_or0000,
      D => OutDireita_mux0000(1),
      R => rst_IBUF_241,
      Q => OutDireita_1_196
    );
  OutDireita_2 : FDRE
    port map (
      C => CLK_BUFGP_17,
      CE => C_or0000,
      D => OutDireita_mux0000(2),
      R => rst_IBUF_241,
      Q => OutDireita_2_197
    );
  OutDireita_3 : FDRE
    port map (
      C => CLK_BUFGP_17,
      CE => C_or0000,
      D => OutDireita_mux0000(3),
      R => rst_IBUF_241,
      Q => OutDireita_3_198
    );
  Contador_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_17,
      CE => C_or0000,
      D => Contador_mux0000(0),
      Q => Contador(0)
    );
  Contador_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_17,
      CE => C_or0000,
      D => Contador_mux0000(1),
      Q => Contador(1)
    );
  Contador_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_17,
      CE => C_or0000,
      D => Contador_mux0000(2),
      Q => Contador(2)
    );
  Contador_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_17,
      CE => C_or0000,
      D => Contador_mux0000(3),
      Q => Contador(3)
    );
  Contador_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_17,
      CE => C_or0000,
      D => Contador_mux0000(4),
      Q => Contador(4)
    );
  Contador_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_17,
      CE => C_or0000,
      D => Contador_mux0000(5),
      Q => Contador(5)
    );
  Contador_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_17,
      CE => C_or0000,
      D => Contador_mux0000(6),
      Q => Contador(6)
    );
  Contador_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_17,
      CE => C_or0000,
      D => Contador_mux0000(7),
      Q => Contador(7)
    );
  Contador_8 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_17,
      CE => C_or0000,
      D => Contador_mux0000(8),
      Q => Contador(8)
    );
  Contador_9 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_17,
      CE => C_or0000,
      D => Contador_mux0000(9),
      Q => Contador(9)
    );
  Contador_10 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_17,
      CE => C_or0000,
      D => Contador_mux0000(10),
      Q => Contador(10)
    );
  Contador_11 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_17,
      CE => C_or0000,
      D => Contador_mux0000(11),
      Q => Contador(11)
    );
  Contador_12 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_17,
      CE => C_or0000,
      D => Contador_mux0000(12),
      Q => Contador(12)
    );
  Contador_13 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_17,
      CE => C_or0000,
      D => Contador_mux0000(13),
      Q => Contador(13)
    );
  Contador_14 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_17,
      CE => C_or0000,
      D => Contador_mux0000(14),
      Q => Contador(14)
    );
  Contador_15 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_17,
      CE => C_or0000,
      D => Contador_mux0000(15),
      Q => Contador(15)
    );
  Contador_16 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_17,
      CE => C_or0000,
      D => Contador_mux0000(16),
      Q => Contador(16)
    );
  Contador_17 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_17,
      CE => C_or0000,
      D => Contador_mux0000(17),
      Q => Contador(17)
    );
  Contador_18 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_17,
      CE => C_or0000,
      D => Contador_mux0000(18),
      Q => Contador(18)
    );
  Contador_19 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_17,
      CE => C_or0000,
      D => Contador_mux0000(19),
      Q => Contador(19)
    );
  Contador_20 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_17,
      CE => C_or0000,
      D => Contador_mux0000(20),
      Q => Contador(20)
    );
  Contador_21 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_17,
      CE => C_or0000,
      D => Contador_mux0000(21),
      Q => Contador(21)
    );
  Contador_22 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_17,
      CE => C_or0000,
      D => Contador_mux0000(22),
      Q => Contador(22)
    );
  Contador_23 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_17,
      CE => C_or0000,
      D => Contador_mux0000(23),
      Q => Contador(23)
    );
  Contador_24 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_17,
      CE => C_or0000,
      D => Contador_mux0000(24),
      Q => Contador(24)
    );
  Contador_25 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_17,
      CE => C_or0000,
      D => Contador_mux0000(25),
      Q => Contador(25)
    );
  Contador_26 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_17,
      CE => C_or0000,
      D => Contador_mux0000(26),
      Q => Contador(26)
    );
  Outesquerda_1 : FDRE
    port map (
      C => CLK_BUFGP_17,
      CE => C_or0000,
      D => Outesquerda_1_mux0000_221,
      R => rst_IBUF_241,
      Q => Outesquerda_1_220
    );
  verifica_FSM_FFd1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_17,
      CE => C_or0000,
      D => verifica_FSM_FFd1_In,
      Q => verifica_FSM_FFd1_242
    );
  verifica_FSM_FFd2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_17,
      CE => C_or0000,
      D => verifica_FSM_FFd2_In,
      Q => verifica_FSM_FFd2_244
    );
  Mcompar_continuar_cmp_lt0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => Outesquerda_2_OBUF_222,
      S => Mcompar_continuar_cmp_lt0000_cy_0_rt_159,
      O => Mcompar_continuar_cmp_lt0000_cy(0)
    );
  Mcompar_continuar_cmp_lt0000_lut_1_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => Contador(9),
      I1 => Contador(10),
      I2 => Contador(11),
      I3 => Contador(12),
      O => Mcompar_continuar_cmp_lt0000_lut_1_Q_172
    );
  Mcompar_continuar_cmp_lt0000_cy_1_Q : MUXCY
    port map (
      CI => Mcompar_continuar_cmp_lt0000_cy(0),
      DI => N1,
      S => Mcompar_continuar_cmp_lt0000_lut_1_Q_172,
      O => Mcompar_continuar_cmp_lt0000_cy(1)
    );
  Mcompar_continuar_cmp_lt0000_lut_2_Q : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => Contador(13),
      I1 => Contador(14),
      I2 => Contador(15),
      I3 => Contador(16),
      O => Mcompar_continuar_cmp_lt0000_lut_2_Q_173
    );
  Mcompar_continuar_cmp_lt0000_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_continuar_cmp_lt0000_cy(1),
      DI => Outesquerda_2_OBUF_222,
      S => Mcompar_continuar_cmp_lt0000_lut_2_Q_173,
      O => Mcompar_continuar_cmp_lt0000_cy(2)
    );
  Mcompar_continuar_cmp_lt0000_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_continuar_cmp_lt0000_cy(2),
      DI => N1,
      S => Mcompar_continuar_cmp_lt0000_lut_3_Q,
      O => Mcompar_continuar_cmp_lt0000_cy(3)
    );
  Mcompar_continuar_cmp_lt0000_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_continuar_cmp_lt0000_cy(3),
      DI => Outesquerda_2_OBUF_222,
      S => Mcompar_continuar_cmp_lt0000_cy_4_rt_164,
      O => Mcompar_continuar_cmp_lt0000_cy(4)
    );
  Mcompar_continuar_cmp_lt0000_cy_5_Q : MUXCY
    port map (
      CI => Mcompar_continuar_cmp_lt0000_cy(4),
      DI => N1,
      S => Mcompar_continuar_cmp_lt0000_lut_5_Q,
      O => Mcompar_continuar_cmp_lt0000_cy(5)
    );
  Mcompar_continuar_cmp_lt0000_lut_6_Q : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => Contador(20),
      I1 => Contador(21),
      I2 => Contador(22),
      I3 => Contador(23),
      O => Mcompar_continuar_cmp_lt0000_lut_6_Q_176
    );
  Mcompar_continuar_cmp_lt0000_cy_6_Q : MUXCY
    port map (
      CI => Mcompar_continuar_cmp_lt0000_cy(5),
      DI => Outesquerda_2_OBUF_222,
      S => Mcompar_continuar_cmp_lt0000_lut_6_Q_176,
      O => Mcompar_continuar_cmp_lt0000_cy(6)
    );
  Mcompar_continuar_cmp_lt0000_cy_7_Q : MUXCY
    port map (
      CI => Mcompar_continuar_cmp_lt0000_cy(6),
      DI => Outesquerda_2_OBUF_222,
      S => Mcompar_continuar_cmp_lt0000_cy_7_rt_168,
      O => Mcompar_continuar_cmp_lt0000_cy(7)
    );
  Mcompar_continuar_cmp_lt0000_cy_8_Q : MUXCY
    port map (
      CI => Mcompar_continuar_cmp_lt0000_cy(7),
      DI => N1,
      S => Mcompar_continuar_cmp_lt0000_lut_8_Q,
      O => Mcompar_continuar_cmp_lt0000_cy(8)
    );
  Mcompar_continuar_cmp_lt0000_cy_9_Q : MUXCY
    port map (
      CI => Mcompar_continuar_cmp_lt0000_cy(8),
      DI => Outesquerda_2_OBUF_222,
      S => Mcompar_continuar_cmp_lt0000_cy_9_rt_171,
      O => Mcompar_continuar_cmp_lt0000_cy(9)
    );
  Madd_Contador_addsub0000_cy_0_Q : MUXCY
    port map (
      CI => Outesquerda_2_OBUF_222,
      DI => N1,
      S => Madd_Contador_addsub0000_lut(0),
      O => Madd_Contador_addsub0000_cy(0)
    );
  Madd_Contador_addsub0000_xor_0_Q : XORCY
    port map (
      CI => Outesquerda_2_OBUF_222,
      LI => Madd_Contador_addsub0000_lut(0),
      O => Contador_addsub0000(0)
    );
  Madd_Contador_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => Madd_Contador_addsub0000_cy(0),
      DI => Outesquerda_2_OBUF_222,
      S => Madd_Contador_addsub0000_cy_1_rt_127,
      O => Madd_Contador_addsub0000_cy(1)
    );
  Madd_Contador_addsub0000_xor_1_Q : XORCY
    port map (
      CI => Madd_Contador_addsub0000_cy(0),
      LI => Madd_Contador_addsub0000_cy_1_rt_127,
      O => Contador_addsub0000(1)
    );
  Madd_Contador_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => Madd_Contador_addsub0000_cy(1),
      DI => Outesquerda_2_OBUF_222,
      S => Madd_Contador_addsub0000_cy_2_rt_141,
      O => Madd_Contador_addsub0000_cy(2)
    );
  Madd_Contador_addsub0000_xor_2_Q : XORCY
    port map (
      CI => Madd_Contador_addsub0000_cy(1),
      LI => Madd_Contador_addsub0000_cy_2_rt_141,
      O => Contador_addsub0000(2)
    );
  Madd_Contador_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => Madd_Contador_addsub0000_cy(2),
      DI => Outesquerda_2_OBUF_222,
      S => Madd_Contador_addsub0000_cy_3_rt_143,
      O => Madd_Contador_addsub0000_cy(3)
    );
  Madd_Contador_addsub0000_xor_3_Q : XORCY
    port map (
      CI => Madd_Contador_addsub0000_cy(2),
      LI => Madd_Contador_addsub0000_cy_3_rt_143,
      O => Contador_addsub0000(3)
    );
  Madd_Contador_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => Madd_Contador_addsub0000_cy(3),
      DI => Outesquerda_2_OBUF_222,
      S => Madd_Contador_addsub0000_cy_4_rt_145,
      O => Madd_Contador_addsub0000_cy(4)
    );
  Madd_Contador_addsub0000_xor_4_Q : XORCY
    port map (
      CI => Madd_Contador_addsub0000_cy(3),
      LI => Madd_Contador_addsub0000_cy_4_rt_145,
      O => Contador_addsub0000(4)
    );
  Madd_Contador_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => Madd_Contador_addsub0000_cy(4),
      DI => Outesquerda_2_OBUF_222,
      S => Madd_Contador_addsub0000_cy_5_rt_147,
      O => Madd_Contador_addsub0000_cy(5)
    );
  Madd_Contador_addsub0000_xor_5_Q : XORCY
    port map (
      CI => Madd_Contador_addsub0000_cy(4),
      LI => Madd_Contador_addsub0000_cy_5_rt_147,
      O => Contador_addsub0000(5)
    );
  Madd_Contador_addsub0000_cy_6_Q : MUXCY
    port map (
      CI => Madd_Contador_addsub0000_cy(5),
      DI => Outesquerda_2_OBUF_222,
      S => Madd_Contador_addsub0000_cy_6_rt_149,
      O => Madd_Contador_addsub0000_cy(6)
    );
  Madd_Contador_addsub0000_xor_6_Q : XORCY
    port map (
      CI => Madd_Contador_addsub0000_cy(5),
      LI => Madd_Contador_addsub0000_cy_6_rt_149,
      O => Contador_addsub0000(6)
    );
  Madd_Contador_addsub0000_cy_7_Q : MUXCY
    port map (
      CI => Madd_Contador_addsub0000_cy(6),
      DI => Outesquerda_2_OBUF_222,
      S => Madd_Contador_addsub0000_cy_7_rt_151,
      O => Madd_Contador_addsub0000_cy(7)
    );
  Madd_Contador_addsub0000_xor_7_Q : XORCY
    port map (
      CI => Madd_Contador_addsub0000_cy(6),
      LI => Madd_Contador_addsub0000_cy_7_rt_151,
      O => Contador_addsub0000(7)
    );
  Madd_Contador_addsub0000_cy_8_Q : MUXCY
    port map (
      CI => Madd_Contador_addsub0000_cy(7),
      DI => Outesquerda_2_OBUF_222,
      S => Madd_Contador_addsub0000_cy_8_rt_153,
      O => Madd_Contador_addsub0000_cy(8)
    );
  Madd_Contador_addsub0000_xor_8_Q : XORCY
    port map (
      CI => Madd_Contador_addsub0000_cy(7),
      LI => Madd_Contador_addsub0000_cy_8_rt_153,
      O => Contador_addsub0000(8)
    );
  Madd_Contador_addsub0000_cy_9_Q : MUXCY
    port map (
      CI => Madd_Contador_addsub0000_cy(8),
      DI => Outesquerda_2_OBUF_222,
      S => Madd_Contador_addsub0000_cy_9_rt_155,
      O => Madd_Contador_addsub0000_cy(9)
    );
  Madd_Contador_addsub0000_xor_9_Q : XORCY
    port map (
      CI => Madd_Contador_addsub0000_cy(8),
      LI => Madd_Contador_addsub0000_cy_9_rt_155,
      O => Contador_addsub0000(9)
    );
  Madd_Contador_addsub0000_cy_10_Q : MUXCY
    port map (
      CI => Madd_Contador_addsub0000_cy(9),
      DI => Outesquerda_2_OBUF_222,
      S => Madd_Contador_addsub0000_cy_10_rt_107,
      O => Madd_Contador_addsub0000_cy(10)
    );
  Madd_Contador_addsub0000_xor_10_Q : XORCY
    port map (
      CI => Madd_Contador_addsub0000_cy(9),
      LI => Madd_Contador_addsub0000_cy_10_rt_107,
      O => Contador_addsub0000(10)
    );
  Madd_Contador_addsub0000_cy_11_Q : MUXCY
    port map (
      CI => Madd_Contador_addsub0000_cy(10),
      DI => Outesquerda_2_OBUF_222,
      S => Madd_Contador_addsub0000_cy_11_rt_109,
      O => Madd_Contador_addsub0000_cy(11)
    );
  Madd_Contador_addsub0000_xor_11_Q : XORCY
    port map (
      CI => Madd_Contador_addsub0000_cy(10),
      LI => Madd_Contador_addsub0000_cy_11_rt_109,
      O => Contador_addsub0000(11)
    );
  Madd_Contador_addsub0000_cy_12_Q : MUXCY
    port map (
      CI => Madd_Contador_addsub0000_cy(11),
      DI => Outesquerda_2_OBUF_222,
      S => Madd_Contador_addsub0000_cy_12_rt_111,
      O => Madd_Contador_addsub0000_cy(12)
    );
  Madd_Contador_addsub0000_xor_12_Q : XORCY
    port map (
      CI => Madd_Contador_addsub0000_cy(11),
      LI => Madd_Contador_addsub0000_cy_12_rt_111,
      O => Contador_addsub0000(12)
    );
  Madd_Contador_addsub0000_cy_13_Q : MUXCY
    port map (
      CI => Madd_Contador_addsub0000_cy(12),
      DI => Outesquerda_2_OBUF_222,
      S => Madd_Contador_addsub0000_cy_13_rt_113,
      O => Madd_Contador_addsub0000_cy(13)
    );
  Madd_Contador_addsub0000_xor_13_Q : XORCY
    port map (
      CI => Madd_Contador_addsub0000_cy(12),
      LI => Madd_Contador_addsub0000_cy_13_rt_113,
      O => Contador_addsub0000(13)
    );
  Madd_Contador_addsub0000_cy_14_Q : MUXCY
    port map (
      CI => Madd_Contador_addsub0000_cy(13),
      DI => Outesquerda_2_OBUF_222,
      S => Madd_Contador_addsub0000_cy_14_rt_115,
      O => Madd_Contador_addsub0000_cy(14)
    );
  Madd_Contador_addsub0000_xor_14_Q : XORCY
    port map (
      CI => Madd_Contador_addsub0000_cy(13),
      LI => Madd_Contador_addsub0000_cy_14_rt_115,
      O => Contador_addsub0000(14)
    );
  Madd_Contador_addsub0000_cy_15_Q : MUXCY
    port map (
      CI => Madd_Contador_addsub0000_cy(14),
      DI => Outesquerda_2_OBUF_222,
      S => Madd_Contador_addsub0000_cy_15_rt_117,
      O => Madd_Contador_addsub0000_cy(15)
    );
  Madd_Contador_addsub0000_xor_15_Q : XORCY
    port map (
      CI => Madd_Contador_addsub0000_cy(14),
      LI => Madd_Contador_addsub0000_cy_15_rt_117,
      O => Contador_addsub0000(15)
    );
  Madd_Contador_addsub0000_cy_16_Q : MUXCY
    port map (
      CI => Madd_Contador_addsub0000_cy(15),
      DI => Outesquerda_2_OBUF_222,
      S => Madd_Contador_addsub0000_cy_16_rt_119,
      O => Madd_Contador_addsub0000_cy(16)
    );
  Madd_Contador_addsub0000_xor_16_Q : XORCY
    port map (
      CI => Madd_Contador_addsub0000_cy(15),
      LI => Madd_Contador_addsub0000_cy_16_rt_119,
      O => Contador_addsub0000(16)
    );
  Madd_Contador_addsub0000_cy_17_Q : MUXCY
    port map (
      CI => Madd_Contador_addsub0000_cy(16),
      DI => Outesquerda_2_OBUF_222,
      S => Madd_Contador_addsub0000_cy_17_rt_121,
      O => Madd_Contador_addsub0000_cy(17)
    );
  Madd_Contador_addsub0000_xor_17_Q : XORCY
    port map (
      CI => Madd_Contador_addsub0000_cy(16),
      LI => Madd_Contador_addsub0000_cy_17_rt_121,
      O => Contador_addsub0000(17)
    );
  Madd_Contador_addsub0000_cy_18_Q : MUXCY
    port map (
      CI => Madd_Contador_addsub0000_cy(17),
      DI => Outesquerda_2_OBUF_222,
      S => Madd_Contador_addsub0000_cy_18_rt_123,
      O => Madd_Contador_addsub0000_cy(18)
    );
  Madd_Contador_addsub0000_xor_18_Q : XORCY
    port map (
      CI => Madd_Contador_addsub0000_cy(17),
      LI => Madd_Contador_addsub0000_cy_18_rt_123,
      O => Contador_addsub0000(18)
    );
  Madd_Contador_addsub0000_cy_19_Q : MUXCY
    port map (
      CI => Madd_Contador_addsub0000_cy(18),
      DI => Outesquerda_2_OBUF_222,
      S => Madd_Contador_addsub0000_cy_19_rt_125,
      O => Madd_Contador_addsub0000_cy(19)
    );
  Madd_Contador_addsub0000_xor_19_Q : XORCY
    port map (
      CI => Madd_Contador_addsub0000_cy(18),
      LI => Madd_Contador_addsub0000_cy_19_rt_125,
      O => Contador_addsub0000(19)
    );
  Madd_Contador_addsub0000_cy_20_Q : MUXCY
    port map (
      CI => Madd_Contador_addsub0000_cy(19),
      DI => Outesquerda_2_OBUF_222,
      S => Madd_Contador_addsub0000_cy_20_rt_129,
      O => Madd_Contador_addsub0000_cy(20)
    );
  Madd_Contador_addsub0000_xor_20_Q : XORCY
    port map (
      CI => Madd_Contador_addsub0000_cy(19),
      LI => Madd_Contador_addsub0000_cy_20_rt_129,
      O => Contador_addsub0000(20)
    );
  Madd_Contador_addsub0000_cy_21_Q : MUXCY
    port map (
      CI => Madd_Contador_addsub0000_cy(20),
      DI => Outesquerda_2_OBUF_222,
      S => Madd_Contador_addsub0000_cy_21_rt_131,
      O => Madd_Contador_addsub0000_cy(21)
    );
  Madd_Contador_addsub0000_xor_21_Q : XORCY
    port map (
      CI => Madd_Contador_addsub0000_cy(20),
      LI => Madd_Contador_addsub0000_cy_21_rt_131,
      O => Contador_addsub0000(21)
    );
  Madd_Contador_addsub0000_cy_22_Q : MUXCY
    port map (
      CI => Madd_Contador_addsub0000_cy(21),
      DI => Outesquerda_2_OBUF_222,
      S => Madd_Contador_addsub0000_cy_22_rt_133,
      O => Madd_Contador_addsub0000_cy(22)
    );
  Madd_Contador_addsub0000_xor_22_Q : XORCY
    port map (
      CI => Madd_Contador_addsub0000_cy(21),
      LI => Madd_Contador_addsub0000_cy_22_rt_133,
      O => Contador_addsub0000(22)
    );
  Madd_Contador_addsub0000_cy_23_Q : MUXCY
    port map (
      CI => Madd_Contador_addsub0000_cy(22),
      DI => Outesquerda_2_OBUF_222,
      S => Madd_Contador_addsub0000_cy_23_rt_135,
      O => Madd_Contador_addsub0000_cy(23)
    );
  Madd_Contador_addsub0000_xor_23_Q : XORCY
    port map (
      CI => Madd_Contador_addsub0000_cy(22),
      LI => Madd_Contador_addsub0000_cy_23_rt_135,
      O => Contador_addsub0000(23)
    );
  Madd_Contador_addsub0000_cy_24_Q : MUXCY
    port map (
      CI => Madd_Contador_addsub0000_cy(23),
      DI => Outesquerda_2_OBUF_222,
      S => Madd_Contador_addsub0000_cy_24_rt_137,
      O => Madd_Contador_addsub0000_cy(24)
    );
  Madd_Contador_addsub0000_xor_24_Q : XORCY
    port map (
      CI => Madd_Contador_addsub0000_cy(23),
      LI => Madd_Contador_addsub0000_cy_24_rt_137,
      O => Contador_addsub0000(24)
    );
  Madd_Contador_addsub0000_cy_25_Q : MUXCY
    port map (
      CI => Madd_Contador_addsub0000_cy(24),
      DI => Outesquerda_2_OBUF_222,
      S => Madd_Contador_addsub0000_cy_25_rt_139,
      O => Madd_Contador_addsub0000_cy(25)
    );
  Madd_Contador_addsub0000_xor_25_Q : XORCY
    port map (
      CI => Madd_Contador_addsub0000_cy(24),
      LI => Madd_Contador_addsub0000_cy_25_rt_139,
      O => Contador_addsub0000(25)
    );
  Madd_Contador_addsub0000_xor_26_Q : XORCY
    port map (
      CI => Madd_Contador_addsub0000_cy(25),
      LI => Madd_Contador_addsub0000_xor_26_rt_157,
      O => Contador_addsub0000(26)
    );
  Selecionador_Fases_FSM_FFd1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_17,
      CE => Selecionador_Fases_not0001,
      D => Selecionador_Fases_FSM_FFd1_In,
      R => rst_IBUF_241,
      Q => Selecionador_Fases_FSM_FFd1_224
    );
  Selecionador_Fases_FSM_FFd2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_17,
      CE => Selecionador_Fases_not0001,
      D => Selecionador_Fases_FSM_FFd2_In,
      R => rst_IBUF_241,
      Q => Selecionador_Fases_FSM_FFd2_226
    );
  Selecionador_Fases_FSM_FFd2_In1 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => Selecionador_Fases_FSM_FFd2_226,
      I1 => ButtonE_IBUF_11,
      I2 => Selecionador_Fases_FSM_FFd1_224,
      O => Selecionador_Fases_FSM_FFd2_In
    );
  Selecionador_Fases_FSM_FFd1_In1 : LUT4
    generic map(
      INIT => X"2F2A"
    )
    port map (
      I0 => Selecionador_Fases_FSM_FFd1_224,
      I1 => ButtonS_IBUF_15,
      I2 => Selecionador_Fases_FSM_FFd2_226,
      I3 => ButtonN_IBUF_13,
      O => Selecionador_Fases_FSM_FFd1_In
    );
  C_and00001 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => Selecionador_Fases_FSM_FFd2_226,
      I1 => ButtonS_IBUF_15,
      I2 => Selecionador_Fases_FSM_FFd1_224,
      O => C_and0000
    );
  B_and00001 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => Selecionador_Fases_FSM_FFd1_224,
      I1 => Selecionador_Fases_FSM_FFd2_226,
      I2 => ButtonE_IBUF_11,
      O => B_and0000
    );
  Selecionador_Fases_not000121 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => ButtonN_IBUF_13,
      I1 => Selecionador_Fases_FSM_FFd1_224,
      I2 => Selecionador_Fases_FSM_FFd2_226,
      O => A_and0000
    );
  C_or00001 : LUT4
    generic map(
      INIT => X"0009"
    )
    port map (
      I0 => C(0),
      I1 => C(1),
      I2 => C(3),
      I3 => C(2),
      O => C_or0000
    );
  Outesquerda_1_mux000021 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => verifica_FSM_FFd2_244,
      I1 => verifica_FSM_FFd1_242,
      O => N24
    );
  SUM_FA2_CARRY_OUT1 : LUT3
    generic map(
      INIT => X"8E"
    )
    port map (
      I0 => A(2),
      I1 => B(2),
      I2 => N15,
      O => SUM_COUT_FA2
    );
  OutDireita_mux0000_3_24 : LUT4
    generic map(
      INIT => X"EEED"
    )
    port map (
      I0 => A(3),
      I1 => verifica_FSM_FFd2_244,
      I2 => continuar_cmp_eq0001,
      I3 => SUM_COUT_FA2,
      O => OutDireita_mux0000_3_24_211
    );
  OutDireita_mux0000_3_78 : LUT3
    generic map(
      INIT => X"14"
    )
    port map (
      I0 => B(3),
      I1 => A(3),
      I2 => SUM_COUT_FA2,
      O => OutDireita_mux0000_3_78_213
    );
  OutDireita_mux0000_3_88 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => OutDireita_mux0000_3_78_213,
      I1 => N10,
      I2 => OutDireita_mux0000_3_51_212,
      O => OutDireita_mux0000(3)
    );
  OutDireita_mux0000_2_108 : LUT3
    generic map(
      INIT => X"09"
    )
    port map (
      I0 => A(2),
      I1 => N0,
      I2 => B(2),
      O => OutDireita_mux0000_2_108_206
    );
  OutDireita_mux0000_2_117 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => OutDireita_mux0000_2_108_206,
      I1 => N10,
      I2 => OutDireita_mux0000_2_83_209,
      O => OutDireita_mux0000(2)
    );
  rst_IBUF : IBUF
    port map (
      I => rst,
      O => rst_IBUF_241
    );
  ButtonE_IBUF : IBUF
    port map (
      I => ButtonE,
      O => ButtonE_IBUF_11
    );
  ButtonN_IBUF : IBUF
    port map (
      I => ButtonN,
      O => ButtonN_IBUF_13
    );
  ButtonS_IBUF : IBUF
    port map (
      I => ButtonS,
      O => ButtonS_IBUF_15
    );
  Vetores_3_IBUF : IBUF
    port map (
      I => Vetores(3),
      O => Vetores_3_IBUF_238
    );
  Vetores_2_IBUF : IBUF
    port map (
      I => Vetores(2),
      O => Vetores_2_IBUF_237
    );
  Vetores_1_IBUF : IBUF
    port map (
      I => Vetores(1),
      O => Vetores_1_IBUF_236
    );
  Vetores_0_IBUF : IBUF
    port map (
      I => Vetores(0),
      O => Vetores_0_IBUF_235
    );
  Outesquerda_3_OBUF : OBUF
    port map (
      I => Outesquerda_2_OBUF_222,
      O => Outesquerda(3)
    );
  Outesquerda_2_OBUF : OBUF
    port map (
      I => Outesquerda_2_OBUF_222,
      O => Outesquerda(2)
    );
  Outesquerda_1_OBUF : OBUF
    port map (
      I => Outesquerda_1_220,
      O => Outesquerda(1)
    );
  Outesquerda_0_OBUF : OBUF
    port map (
      I => Outesquerda_0_218,
      O => Outesquerda(0)
    );
  OutDireita_3_OBUF : OBUF
    port map (
      I => OutDireita_3_198,
      O => OutDireita(3)
    );
  OutDireita_2_OBUF : OBUF
    port map (
      I => OutDireita_2_197,
      O => OutDireita(2)
    );
  OutDireita_1_OBUF : OBUF
    port map (
      I => OutDireita_1_196,
      O => OutDireita(1)
    );
  OutDireita_0_OBUF : OBUF
    port map (
      I => OutDireita_0_195,
      O => OutDireita(0)
    );
  Mcompar_continuar_cmp_lt0000_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Contador(8),
      O => Mcompar_continuar_cmp_lt0000_cy_0_rt_159
    );
  Mcompar_continuar_cmp_lt0000_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Contador(18),
      O => Mcompar_continuar_cmp_lt0000_cy_4_rt_164
    );
  Mcompar_continuar_cmp_lt0000_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Contador(24),
      O => Mcompar_continuar_cmp_lt0000_cy_7_rt_168
    );
  Mcompar_continuar_cmp_lt0000_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Contador(26),
      O => Mcompar_continuar_cmp_lt0000_cy_9_rt_171
    );
  Madd_Contador_addsub0000_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Contador(1),
      O => Madd_Contador_addsub0000_cy_1_rt_127
    );
  Madd_Contador_addsub0000_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Contador(2),
      O => Madd_Contador_addsub0000_cy_2_rt_141
    );
  Madd_Contador_addsub0000_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Contador(3),
      O => Madd_Contador_addsub0000_cy_3_rt_143
    );
  Madd_Contador_addsub0000_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Contador(4),
      O => Madd_Contador_addsub0000_cy_4_rt_145
    );
  Madd_Contador_addsub0000_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Contador(5),
      O => Madd_Contador_addsub0000_cy_5_rt_147
    );
  Madd_Contador_addsub0000_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Contador(6),
      O => Madd_Contador_addsub0000_cy_6_rt_149
    );
  Madd_Contador_addsub0000_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Contador(7),
      O => Madd_Contador_addsub0000_cy_7_rt_151
    );
  Madd_Contador_addsub0000_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Contador(8),
      O => Madd_Contador_addsub0000_cy_8_rt_153
    );
  Madd_Contador_addsub0000_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Contador(9),
      O => Madd_Contador_addsub0000_cy_9_rt_155
    );
  Madd_Contador_addsub0000_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Contador(10),
      O => Madd_Contador_addsub0000_cy_10_rt_107
    );
  Madd_Contador_addsub0000_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Contador(11),
      O => Madd_Contador_addsub0000_cy_11_rt_109
    );
  Madd_Contador_addsub0000_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Contador(12),
      O => Madd_Contador_addsub0000_cy_12_rt_111
    );
  Madd_Contador_addsub0000_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Contador(13),
      O => Madd_Contador_addsub0000_cy_13_rt_113
    );
  Madd_Contador_addsub0000_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Contador(14),
      O => Madd_Contador_addsub0000_cy_14_rt_115
    );
  Madd_Contador_addsub0000_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Contador(15),
      O => Madd_Contador_addsub0000_cy_15_rt_117
    );
  Madd_Contador_addsub0000_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Contador(16),
      O => Madd_Contador_addsub0000_cy_16_rt_119
    );
  Madd_Contador_addsub0000_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Contador(17),
      O => Madd_Contador_addsub0000_cy_17_rt_121
    );
  Madd_Contador_addsub0000_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Contador(18),
      O => Madd_Contador_addsub0000_cy_18_rt_123
    );
  Madd_Contador_addsub0000_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Contador(19),
      O => Madd_Contador_addsub0000_cy_19_rt_125
    );
  Madd_Contador_addsub0000_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Contador(20),
      O => Madd_Contador_addsub0000_cy_20_rt_129
    );
  Madd_Contador_addsub0000_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Contador(21),
      O => Madd_Contador_addsub0000_cy_21_rt_131
    );
  Madd_Contador_addsub0000_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Contador(22),
      O => Madd_Contador_addsub0000_cy_22_rt_133
    );
  Madd_Contador_addsub0000_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Contador(23),
      O => Madd_Contador_addsub0000_cy_23_rt_135
    );
  Madd_Contador_addsub0000_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Contador(24),
      O => Madd_Contador_addsub0000_cy_24_rt_137
    );
  Madd_Contador_addsub0000_cy_25_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Contador(25),
      O => Madd_Contador_addsub0000_cy_25_rt_139
    );
  Madd_Contador_addsub0000_xor_26_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Contador(26),
      O => Madd_Contador_addsub0000_xor_26_rt_157
    );
  OutDireita_mux0000_0_46 : LUT4
    generic map(
      INIT => X"F4F0"
    )
    port map (
      I0 => B(0),
      I1 => A(0),
      I2 => OutDireita_mux0000_0_32_201,
      I3 => N16,
      O => OutDireita_mux0000(0)
    );
  OutDireita_mux0000_1_91_SW0 : LUT4
    generic map(
      INIT => X"2202"
    )
    port map (
      I0 => OutDireita_mux0000_1_79_204,
      I1 => continuar_cmp_eq0001,
      I2 => verifica_FSM_FFd2_244,
      I3 => verifica_FSM_FFd1_242,
      O => N6
    );
  OutDireita_mux0000_0_32 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => OutDireita_0_195,
      I1 => OutDireita_mux0000_0_18_200,
      I2 => Mcompar_continuar_cmp_lt0000_cy(9),
      O => OutDireita_mux0000_0_32_201
    );
  Contador_mux0000_1_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Contador_addsub0000(1),
      I1 => Mcompar_continuar_cmp_lt0000_cy(9),
      O => Contador_mux0000(1)
    );
  Contador_mux0000_0_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Contador_addsub0000(0),
      I1 => Mcompar_continuar_cmp_lt0000_cy(9),
      O => Contador_mux0000(0)
    );
  Contador_mux0000_2_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Contador_addsub0000(2),
      I1 => Mcompar_continuar_cmp_lt0000_cy(9),
      O => Contador_mux0000(2)
    );
  Contador_mux0000_3_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Contador_addsub0000(3),
      I1 => Mcompar_continuar_cmp_lt0000_cy(9),
      O => Contador_mux0000(3)
    );
  OutDireita_mux0000_1_91 : LUT4
    generic map(
      INIT => X"AFAC"
    )
    port map (
      I0 => OutDireita_1_196,
      I1 => N6,
      I2 => Mcompar_continuar_cmp_lt0000_cy(9),
      I3 => OutDireita_mux0000_1_21_203,
      O => OutDireita_mux0000(1)
    );
  Outesquerda_0_mux0000 : LUT4
    generic map(
      INIT => X"DDD8"
    )
    port map (
      I0 => Mcompar_continuar_cmp_lt0000_cy(9),
      I1 => Outesquerda_0_218,
      I2 => continuar_cmp_eq0001,
      I3 => N4,
      O => Outesquerda_0_mux0000_219
    );
  Outesquerda_1_mux0000 : LUT4
    generic map(
      INIT => X"ACA0"
    )
    port map (
      I0 => Outesquerda_1_220,
      I1 => N24,
      I2 => Mcompar_continuar_cmp_lt0000_cy(9),
      I3 => N2,
      O => Outesquerda_1_mux0000_221
    );
  verifica_FSM_FFd1_In1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => Mcompar_continuar_cmp_lt0000_cy(9),
      I1 => verifica_FSM_FFd1_242,
      I2 => verifica_FSM_FFd2_244,
      O => verifica_FSM_FFd1_In
    );
  Contador_mux0000_4_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Contador_addsub0000(4),
      I1 => Mcompar_continuar_cmp_lt0000_cy(9),
      O => Contador_mux0000(4)
    );
  Contador_mux0000_5_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Contador_addsub0000(5),
      I1 => Mcompar_continuar_cmp_lt0000_cy(9),
      O => Contador_mux0000(5)
    );
  Contador_mux0000_6_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Contador_addsub0000(6),
      I1 => Mcompar_continuar_cmp_lt0000_cy(9),
      O => Contador_mux0000(6)
    );
  Contador_mux0000_7_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Contador_addsub0000(7),
      I1 => Mcompar_continuar_cmp_lt0000_cy(9),
      O => Contador_mux0000(7)
    );
  Contador_mux0000_8_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Contador_addsub0000(8),
      I1 => Mcompar_continuar_cmp_lt0000_cy(9),
      O => Contador_mux0000(8)
    );
  Contador_mux0000_9_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Contador_addsub0000(9),
      I1 => Mcompar_continuar_cmp_lt0000_cy(9),
      O => Contador_mux0000(9)
    );
  Contador_mux0000_10_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Contador_addsub0000(10),
      I1 => Mcompar_continuar_cmp_lt0000_cy(9),
      O => Contador_mux0000(10)
    );
  Contador_mux0000_11_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Contador_addsub0000(11),
      I1 => Mcompar_continuar_cmp_lt0000_cy(9),
      O => Contador_mux0000(11)
    );
  Contador_mux0000_12_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Contador_addsub0000(12),
      I1 => Mcompar_continuar_cmp_lt0000_cy(9),
      O => Contador_mux0000(12)
    );
  Contador_mux0000_13_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => Mcompar_continuar_cmp_lt0000_cy(9),
      I1 => Contador_addsub0000(13),
      O => Contador_mux0000(13)
    );
  OutDireita_mux0000_2_25_SW0 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => B(0),
      I1 => A(0),
      O => N8
    );
  OutDireita_mux0000_2_7_SW0 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => N0,
      I1 => N14,
      O => N101
    );
  OutDireita_mux0000_2_37 : LUT4
    generic map(
      INIT => X"FDEC"
    )
    port map (
      I0 => A(2),
      I1 => verifica_FSM_FFd2_244,
      I2 => OutDireita_mux0000_2_25_207,
      I3 => N101,
      O => OutDireita_mux0000_2_37_208
    );
  Contador_mux0000_14_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => Mcompar_continuar_cmp_lt0000_cy(9),
      I1 => Contador_addsub0000(14),
      O => Contador_mux0000(14)
    );
  Contador_mux0000_15_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => Mcompar_continuar_cmp_lt0000_cy(9),
      I1 => Contador_addsub0000(15),
      O => Contador_mux0000(15)
    );
  Contador_mux0000_26_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => Mcompar_continuar_cmp_lt0000_cy(9),
      I1 => Contador_addsub0000(26),
      O => Contador_mux0000(26)
    );
  Contador_mux0000_25_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => Mcompar_continuar_cmp_lt0000_cy(9),
      I1 => Contador_addsub0000(25),
      O => Contador_mux0000(25)
    );
  Contador_mux0000_24_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => Mcompar_continuar_cmp_lt0000_cy(9),
      I1 => Contador_addsub0000(24),
      O => Contador_mux0000(24)
    );
  Contador_mux0000_23_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => Mcompar_continuar_cmp_lt0000_cy(9),
      I1 => Contador_addsub0000(23),
      O => Contador_mux0000(23)
    );
  Contador_mux0000_22_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => Mcompar_continuar_cmp_lt0000_cy(9),
      I1 => Contador_addsub0000(22),
      O => Contador_mux0000(22)
    );
  Contador_mux0000_21_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => Mcompar_continuar_cmp_lt0000_cy(9),
      I1 => Contador_addsub0000(21),
      O => Contador_mux0000(21)
    );
  Contador_mux0000_20_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => Mcompar_continuar_cmp_lt0000_cy(9),
      I1 => Contador_addsub0000(20),
      O => Contador_mux0000(20)
    );
  Contador_mux0000_19_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => Mcompar_continuar_cmp_lt0000_cy(9),
      I1 => Contador_addsub0000(19),
      O => Contador_mux0000(19)
    );
  Contador_mux0000_18_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => Mcompar_continuar_cmp_lt0000_cy(9),
      I1 => Contador_addsub0000(18),
      O => Contador_mux0000(18)
    );
  Contador_mux0000_17_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => Mcompar_continuar_cmp_lt0000_cy(9),
      I1 => Contador_addsub0000(17),
      O => Contador_mux0000(17)
    );
  Contador_mux0000_16_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => Mcompar_continuar_cmp_lt0000_cy(9),
      I1 => Contador_addsub0000(16),
      O => Contador_mux0000(16)
    );
  verifica_FSM_FFd2_In1 : LUT3
    generic map(
      INIT => X"46"
    )
    port map (
      I0 => Mcompar_continuar_cmp_lt0000_cy(9),
      I1 => verifica_FSM_FFd2_244,
      I2 => verifica_FSM_FFd1_242,
      O => verifica_FSM_FFd2_In
    );
  OutDireita_mux0000_1_21_SW0 : LUT3
    generic map(
      INIT => X"07"
    )
    port map (
      I0 => B(0),
      I1 => A(0),
      I2 => continuar_cmp_eq0001,
      O => N12
    );
  CLK_BUFGP : BUFGP
    port map (
      I => CLK,
      O => CLK_BUFGP_17
    );
  Mcompar_continuar_cmp_lt0000_lut_3_INV_0 : INV
    port map (
      I => Contador(17),
      O => Mcompar_continuar_cmp_lt0000_lut_3_Q
    );
  Mcompar_continuar_cmp_lt0000_lut_5_INV_0 : INV
    port map (
      I => Contador(19),
      O => Mcompar_continuar_cmp_lt0000_lut_5_Q
    );
  Mcompar_continuar_cmp_lt0000_lut_8_INV_0 : INV
    port map (
      I => Contador(25),
      O => Mcompar_continuar_cmp_lt0000_lut_8_Q
    );
  Madd_Contador_addsub0000_lut_0_INV_0 : INV
    port map (
      I => Contador(0),
      O => Madd_Contador_addsub0000_lut(0)
    );
  Selecionador_Fases_not00011 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Selecionador_Fases_FSM_FFd1_224,
      I1 => ButtonS_IBUF_15,
      O => Selecionador_Fases_not00011_229
    );
  Selecionador_Fases_not00012 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => Selecionador_Fases_FSM_FFd1_224,
      I1 => ButtonN_IBUF_13,
      I2 => ButtonE_IBUF_11,
      O => Selecionador_Fases_not00012_230
    );
  Selecionador_Fases_not0001_f5 : MUXF5
    port map (
      I0 => Selecionador_Fases_not00012_230,
      I1 => Selecionador_Fases_not00011_229,
      S => Selecionador_Fases_FSM_FFd2_226,
      O => Selecionador_Fases_not0001
    );
  continuar_cmp_eq00011 : LUT4_D
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => C(0),
      I1 => C(1),
      I2 => C(2),
      I3 => C(3),
      LO => N14,
      O => continuar_cmp_eq0001
    );
  Outesquerda_1_mux0000_SW0 : LUT4_L
    generic map(
      INIT => X"FEF8"
    )
    port map (
      I0 => B(3),
      I1 => A(3),
      I2 => continuar_cmp_eq0001,
      I3 => SUM_COUT_FA2,
      LO => N2
    );
  Outesquerda_0_mux0000_SW0 : LUT4_L
    generic map(
      INIT => X"0280"
    )
    port map (
      I0 => N24,
      I1 => B(3),
      I2 => A(3),
      I3 => SUM_COUT_FA2,
      LO => N4
    );
  OutDireita_mux0000_2_11 : LUT4_D
    generic map(
      INIT => X"157F"
    )
    port map (
      I0 => A(1),
      I1 => B(0),
      I2 => A(0),
      I3 => B(1),
      LO => N15,
      O => N0
    );
  OutDireita_mux0000_0_18 : LUT4_L
    generic map(
      INIT => X"C8C4"
    )
    port map (
      I0 => A(0),
      I1 => B(0),
      I2 => verifica_FSM_FFd2_244,
      I3 => continuar_cmp_eq0001,
      LO => OutDireita_mux0000_0_18_200
    );
  OutDireita_mux0000_1_79 : LUT4_L
    generic map(
      INIT => X"060A"
    )
    port map (
      I0 => A(1),
      I1 => B(0),
      I2 => B(1),
      I3 => A(0),
      LO => OutDireita_mux0000_1_79_204
    );
  OutDireita_mux0000_3_51 : LUT4_L
    generic map(
      INIT => X"ACA0"
    )
    port map (
      I0 => OutDireita_3_198,
      I1 => B(3),
      I2 => Mcompar_continuar_cmp_lt0000_cy(9),
      I3 => OutDireita_mux0000_3_24_211,
      LO => OutDireita_mux0000_3_51_212
    );
  OutDireita_mux0000_2_83 : LUT4_L
    generic map(
      INIT => X"ACA0"
    )
    port map (
      I0 => OutDireita_2_197,
      I1 => B(2),
      I2 => Mcompar_continuar_cmp_lt0000_cy(9),
      I3 => OutDireita_mux0000_2_37_208,
      LO => OutDireita_mux0000_2_83_209
    );
  OutDireita_mux0000_0_11 : LUT4_D
    generic map(
      INIT => X"000B"
    )
    port map (
      I0 => verifica_FSM_FFd1_242,
      I1 => verifica_FSM_FFd2_244,
      I2 => continuar_cmp_eq0001,
      I3 => Mcompar_continuar_cmp_lt0000_cy(9),
      LO => N16,
      O => N10
    );
  OutDireita_mux0000_2_25 : LUT4_L
    generic map(
      INIT => X"FFE8"
    )
    port map (
      I0 => B(1),
      I1 => A(1),
      I2 => N8,
      I3 => continuar_cmp_eq0001,
      LO => OutDireita_mux0000_2_25_207
    );
  OutDireita_mux0000_1_21 : LUT4_L
    generic map(
      INIT => X"A2A8"
    )
    port map (
      I0 => B(1),
      I1 => A(1),
      I2 => verifica_FSM_FFd2_244,
      I3 => N12,
      LO => OutDireita_mux0000_1_21_203
    );

end Structure;

