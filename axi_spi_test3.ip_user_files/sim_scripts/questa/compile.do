vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/lib_cdc_v1_0_3
vlib questa_lib/msim/proc_sys_reset_v5_0_15

vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap lib_cdc_v1_0_3 questa_lib/msim/lib_cdc_v1_0_3
vmap proc_sys_reset_v5_0_15 questa_lib/msim/proc_sys_reset_v5_0_15

vlog -work xpm  -incr -mfcu  -sv "+incdir+../../../../../verilog_lab/Oscilloscope/Oscilloscope.gen/sources_1/bd/design_1/ipshared/3242" \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../../verilog_lab/Oscilloscope/Oscilloscope.gen/sources_1/bd/design_1/ipshared/3242" \
"../../../../../verilog_lab/Oscilloscope/Oscilloscope.srcs/sources_1/new/oscil.v" \
"../../../../../verilog_lab/Oscilloscope/Oscilloscope.gen/sources_1/bd/design_1/ip/design_1_ila_0_0/sim/design_1_ila_0_0.v" \
"../../../../../verilog_lab/Oscilloscope/Oscilloscope.gen/sources_1/bd/design_1/ip/design_1_clk_wiz_0/design_1_clk_wiz_0_clk_wiz.v" \
"../../../../../verilog_lab/Oscilloscope/Oscilloscope.gen/sources_1/bd/design_1/ip/design_1_clk_wiz_0/design_1_clk_wiz_0.v" \
"../../../../../verilog_lab/Oscilloscope/Oscilloscope.gen/sources_1/bd/design_1/ip/design_1_oscil_0_0/sim/design_1_oscil_0_0.v" \

vcom -work lib_cdc_v1_0_3  -93  \
"../../../../../verilog_lab/Oscilloscope/Oscilloscope.gen/sources_1/bd/design_1/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_15  -93  \
"../../../../../verilog_lab/Oscilloscope/Oscilloscope.gen/sources_1/bd/design_1/ipshared/3a26/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../../../verilog_lab/Oscilloscope/Oscilloscope.gen/sources_1/bd/design_1/ip/design_1_rst_clk_wiz_100M_0/sim/design_1_rst_clk_wiz_100M_0.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../../verilog_lab/Oscilloscope/Oscilloscope.gen/sources_1/bd/design_1/ipshared/3242" \
"../../bd/design_1/sim/design_1.v" \
"../../../../../verilog_lab/Oscilloscope/Oscilloscope.gen/sources_1/bd/design_1/hdl/design_1_wrapper.v" \

vlog -work xil_defaultlib \
"glbl.v"

