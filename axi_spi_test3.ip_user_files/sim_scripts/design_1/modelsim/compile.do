vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/lib_cdc_v1_0_3
vlib modelsim_lib/msim/proc_sys_reset_v5_0_15
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_17
vlib modelsim_lib/msim/processing_system7_vip_v1_0_19
vlib modelsim_lib/msim/gigantic_mux
vlib modelsim_lib/msim/xlconcat_v2_1_6
vlib modelsim_lib/msim/generic_baseblocks_v2_1_2
vlib modelsim_lib/msim/fifo_generator_v13_2_10
vlib modelsim_lib/msim/axi_data_fifo_v2_1_30
vlib modelsim_lib/msim/axi_register_slice_v2_1_31
vlib modelsim_lib/msim/axi_protocol_converter_v2_1_31

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap lib_cdc_v1_0_3 modelsim_lib/msim/lib_cdc_v1_0_3
vmap proc_sys_reset_v5_0_15 modelsim_lib/msim/proc_sys_reset_v5_0_15
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_17 modelsim_lib/msim/axi_vip_v1_1_17
vmap processing_system7_vip_v1_0_19 modelsim_lib/msim/processing_system7_vip_v1_0_19
vmap gigantic_mux modelsim_lib/msim/gigantic_mux
vmap xlconcat_v2_1_6 modelsim_lib/msim/xlconcat_v2_1_6
vmap generic_baseblocks_v2_1_2 modelsim_lib/msim/generic_baseblocks_v2_1_2
vmap fifo_generator_v13_2_10 modelsim_lib/msim/fifo_generator_v13_2_10
vmap axi_data_fifo_v2_1_30 modelsim_lib/msim/axi_data_fifo_v2_1_30
vmap axi_register_slice_v2_1_31 modelsim_lib/msim/axi_register_slice_v2_1_31
vmap axi_protocol_converter_v2_1_31 modelsim_lib/msim/axi_protocol_converter_v2_1_31

vlog -work xilinx_vip  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L processing_system7_vip_v1_0_19 -L xilinx_vip "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L processing_system7_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/814a/hdl/verilog" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/1017/hdl/verilog" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/8745/hdl/verilog" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/2340/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/814a/hdl/verilog" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/1017/hdl/verilog" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/8745/hdl/verilog" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/2340/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_myip_v1_0_S_AXI_0_0/sim/design_1_myip_v1_0_S_AXI_0_0.v" \

vcom -work lib_cdc_v1_0_3  -93  \
"../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_15  -93  \
"../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/3a26/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/design_1/ip/design_1_rst_ps7_0_100M_0/sim/design_1_rst_ps7_0_100M_0.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/814a/hdl/verilog" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/1017/hdl/verilog" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/8745/hdl/verilog" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/2340/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_spi_top_0_0/sim/design_1_spi_top_0_0.v" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu  "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/814a/hdl/verilog" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/1017/hdl/verilog" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/8745/hdl/verilog" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/2340/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_17  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L processing_system7_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/814a/hdl/verilog" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/1017/hdl/verilog" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/8745/hdl/verilog" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/2340/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/4d04/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_19  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L processing_system7_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/814a/hdl/verilog" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/1017/hdl/verilog" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/8745/hdl/verilog" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/2340/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/b28c/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/814a/hdl/verilog" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/1017/hdl/verilog" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/8745/hdl/verilog" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/2340/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_2/bd_0/sim/bd_378d.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_2/bd_0/ip/ip_0/sim/bd_378d_ila_lib_0.v" \

vlog -work gigantic_mux  -incr -mfcu  "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/814a/hdl/verilog" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/1017/hdl/verilog" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/8745/hdl/verilog" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/2340/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/7215/hdl/gigantic_mux_v1_0_cntr.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/814a/hdl/verilog" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/1017/hdl/verilog" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/8745/hdl/verilog" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/2340/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_system_ila_0_2/bd_0/ip/ip_1/bd_378d_g_inst_0_gigantic_mux.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_2/bd_0/ip/ip_1/sim/bd_378d_g_inst_0.v" \

vlog -work xlconcat_v2_1_6  -incr -mfcu  "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/814a/hdl/verilog" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/1017/hdl/verilog" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/8745/hdl/verilog" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/2340/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/6120/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/814a/hdl/verilog" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/1017/hdl/verilog" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/8745/hdl/verilog" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/2340/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_system_ila_0_2/bd_0/ip/ip_2/sim/bd_378d_slot_0_aw_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_2/bd_0/ip/ip_3/sim/bd_378d_slot_0_w_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_2/bd_0/ip/ip_4/sim/bd_378d_slot_0_b_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_2/bd_0/ip/ip_5/sim/bd_378d_slot_0_ar_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_2/bd_0/ip/ip_6/sim/bd_378d_slot_0_r_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_2/sim/design_1_system_ila_0_2.v" \
"../../../bd/design_1/ip/design_1_ila_0_2/sim/design_1_ila_0_2.v" \

vlog -work generic_baseblocks_v2_1_2  -incr -mfcu  "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/814a/hdl/verilog" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/1017/hdl/verilog" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/8745/hdl/verilog" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/2340/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_10  -incr -mfcu  "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/814a/hdl/verilog" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/1017/hdl/verilog" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/8745/hdl/verilog" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/2340/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/1443/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_10  -93  \
"../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/1443/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_10  -incr -mfcu  "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/814a/hdl/verilog" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/1017/hdl/verilog" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/8745/hdl/verilog" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/2340/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/1443/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_30  -incr -mfcu  "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/814a/hdl/verilog" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/1017/hdl/verilog" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/8745/hdl/verilog" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/2340/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/9692/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_31  -incr -mfcu  "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/814a/hdl/verilog" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/1017/hdl/verilog" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/8745/hdl/verilog" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/2340/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/92b2/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_31  -incr -mfcu  "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/814a/hdl/verilog" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/1017/hdl/verilog" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/8745/hdl/verilog" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/2340/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/3c06/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/814a/hdl/verilog" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/1017/hdl/verilog" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/8745/hdl/verilog" "+incdir+../../../../axi_spi_test3.gen/sources_1/bd/design_1/ipshared/2340/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

