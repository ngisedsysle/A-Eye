set_property SRC_FILE_INFO {cfile:C:/Users/rolland/Documents/GIT/A-Eye/A-Eye_FPGA/vivado/conv_v2/conv_v2.srcs/constrs_1/new/zybo.xdc rfile:../../../conv_v2.srcs/constrs_1/new/zybo.xdc id:1} [current_design]
set_property src_info {type:XDC file:1 line:9 export:INPUT save:INPUT read:READ} [current_design]
create_clock -add -name sys_clk_pin -period 8.00 -waveform {0 4} [get_ports { in_clk }];
