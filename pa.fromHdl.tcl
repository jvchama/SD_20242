
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name Trabalho_1_2024 -dir "/home/sd/Trabalho_1_2024/planAhead_run_1" -part xc3s700anfgg484-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "pinagem.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {Half_Adder.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {Full_Adder.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {SUM_2_Vectors_4_Bits.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {Test_Sum.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top Test_Sum $srcset
add_files [list {pinagem.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s700anfgg484-4
