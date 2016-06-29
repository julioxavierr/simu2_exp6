# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Mac/Home/Desktop/SD1/VHDL/safe_box/safe_box.cache/wt [current_project]
set_property parent.project_path C:/Mac/Home/Desktop/SD1/VHDL/safe_box/safe_box.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property board_part digilentinc.com:basys3:part0:1.1 [current_project]
read_vhdl -library xil_defaultlib {
  C:/Mac/Home/Desktop/SD1/VHDL/safe_box/safe_box.srcs/sources_1/new/mux2x1.vhd
  C:/Mac/Home/Desktop/SD1/VHDL/safe_box/safe_box.srcs/sources_1/new/dff.vhd
  C:/Mac/Home/Desktop/SD1/VHDL/safe_box/safe_box.srcs/sources_1/new/mux8x1.vhd
  C:/Mac/Home/Desktop/SD1/VHDL/safe_box/safe_box.srcs/sources_1/new/40174.vhd
  C:/Mac/Home/Desktop/SD1/VHDL/safe_box/safe_box.srcs/sources_1/new/shift_register.vhd
  C:/Mac/Home/Desktop/SD1/VHDL/safe_box/safe_box.srcs/sources_1/new/password_config.vhd
  C:/Mac/Home/Desktop/SD1/VHDL/safe_box/safe_box.srcs/sources_1/new/JK_FF.vhd
  C:/Mac/Home/Desktop/SD1/VHDL/safe_box/safe_box.srcs/sources_1/new/main.vhd
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Mac/Home/Desktop/SD1/VHDL/safe_box/Basys3_Master.xdc
set_property used_in_implementation false [get_files C:/Mac/Home/Desktop/SD1/VHDL/safe_box/Basys3_Master.xdc]


synth_design -top main -part xc7a35tcpg236-1


write_checkpoint -force -noxdef main.dcp

catch { report_utilization -file main_utilization_synth.rpt -pb main_utilization_synth.pb }
