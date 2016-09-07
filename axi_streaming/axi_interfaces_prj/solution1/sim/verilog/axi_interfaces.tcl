
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set d_o_group [add_wave_group d_o(axis) -into $coutputgroup]
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_o_7_TREADY -into $d_o_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_o_7_TVALID -into $d_o_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_o_7_TDATA -into $d_o_group -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_o_6_TREADY -into $d_o_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_o_6_TVALID -into $d_o_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_o_6_TDATA -into $d_o_group -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_o_5_TREADY -into $d_o_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_o_5_TVALID -into $d_o_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_o_5_TDATA -into $d_o_group -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_o_4_TREADY -into $d_o_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_o_4_TVALID -into $d_o_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_o_4_TDATA -into $d_o_group -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_o_3_TREADY -into $d_o_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_o_3_TVALID -into $d_o_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_o_3_TDATA -into $d_o_group -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_o_2_TREADY -into $d_o_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_o_2_TVALID -into $d_o_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_o_2_TDATA -into $d_o_group -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_o_1_TREADY -into $d_o_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_o_1_TVALID -into $d_o_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_o_1_TDATA -into $d_o_group -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_o_0_TREADY -into $d_o_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_o_0_TVALID -into $d_o_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_o_0_TDATA -into $d_o_group -radix hex
set return_group [add_wave_group return(axi_slave) -into $coutputgroup]
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/interrupt -into $return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/s_axi_AXILiteS_BRESP -into $return_group -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/s_axi_AXILiteS_BREADY -into $return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/s_axi_AXILiteS_BVALID -into $return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/s_axi_AXILiteS_RRESP -into $return_group -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/s_axi_AXILiteS_RDATA -into $return_group -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/s_axi_AXILiteS_RREADY -into $return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/s_axi_AXILiteS_RVALID -into $return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/s_axi_AXILiteS_ARREADY -into $return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/s_axi_AXILiteS_ARVALID -into $return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/s_axi_AXILiteS_ARADDR -into $return_group -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/s_axi_AXILiteS_WSTRB -into $return_group -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/s_axi_AXILiteS_WDATA -into $return_group -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/s_axi_AXILiteS_WREADY -into $return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/s_axi_AXILiteS_WVALID -into $return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/s_axi_AXILiteS_AWREADY -into $return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/s_axi_AXILiteS_AWVALID -into $return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/s_axi_AXILiteS_AWADDR -into $return_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set d_i_group [add_wave_group d_i(axis) -into $cinputgroup]
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_i_7_TREADY -into $d_i_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_i_7_TVALID -into $d_i_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_i_7_TDATA -into $d_i_group -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_i_6_TREADY -into $d_i_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_i_6_TVALID -into $d_i_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_i_6_TDATA -into $d_i_group -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_i_5_TREADY -into $d_i_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_i_5_TVALID -into $d_i_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_i_5_TDATA -into $d_i_group -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_i_4_TREADY -into $d_i_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_i_4_TVALID -into $d_i_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_i_4_TDATA -into $d_i_group -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_i_3_TREADY -into $d_i_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_i_3_TVALID -into $d_i_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_i_3_TDATA -into $d_i_group -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_i_2_TREADY -into $d_i_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_i_2_TVALID -into $d_i_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_i_2_TDATA -into $d_i_group -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_i_1_TREADY -into $d_i_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_i_1_TVALID -into $d_i_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_i_1_TDATA -into $d_i_group -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_i_0_TREADY -into $d_i_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_i_0_TVALID -into $d_i_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_i_0_TDATA -into $d_i_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake(internal)" -into $designtopgroup]
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/ap_done -into $blocksiggroup
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/ap_idle -into $blocksiggroup
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/ap_ready -into $blocksiggroup
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/ap_start -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/ap_rst_n -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_axi_interfaces_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_axi_interfaces_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_axi_interfaces_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_axi_interfaces_top/LENGTH_d_o_0 -into $tb_portdepth_group -radix hex
add_wave /apatb_axi_interfaces_top/LENGTH_d_o_1 -into $tb_portdepth_group -radix hex
add_wave /apatb_axi_interfaces_top/LENGTH_d_o_2 -into $tb_portdepth_group -radix hex
add_wave /apatb_axi_interfaces_top/LENGTH_d_o_3 -into $tb_portdepth_group -radix hex
add_wave /apatb_axi_interfaces_top/LENGTH_d_o_4 -into $tb_portdepth_group -radix hex
add_wave /apatb_axi_interfaces_top/LENGTH_d_o_5 -into $tb_portdepth_group -radix hex
add_wave /apatb_axi_interfaces_top/LENGTH_d_o_6 -into $tb_portdepth_group -radix hex
add_wave /apatb_axi_interfaces_top/LENGTH_d_o_7 -into $tb_portdepth_group -radix hex
add_wave /apatb_axi_interfaces_top/LENGTH_d_i_0 -into $tb_portdepth_group -radix hex
add_wave /apatb_axi_interfaces_top/LENGTH_d_i_1 -into $tb_portdepth_group -radix hex
add_wave /apatb_axi_interfaces_top/LENGTH_d_i_2 -into $tb_portdepth_group -radix hex
add_wave /apatb_axi_interfaces_top/LENGTH_d_i_3 -into $tb_portdepth_group -radix hex
add_wave /apatb_axi_interfaces_top/LENGTH_d_i_4 -into $tb_portdepth_group -radix hex
add_wave /apatb_axi_interfaces_top/LENGTH_d_i_5 -into $tb_portdepth_group -radix hex
add_wave /apatb_axi_interfaces_top/LENGTH_d_i_6 -into $tb_portdepth_group -radix hex
add_wave /apatb_axi_interfaces_top/LENGTH_d_i_7 -into $tb_portdepth_group -radix hex
set tbcoutputgroup [add_wave_group "C Outputs" -into $testbenchgroup]
set tb_d_o_group [add_wave_group d_o(axis) -into $tbcoutputgroup]
add_wave /apatb_axi_interfaces_top/d_o_7_TREADY -into $tb_d_o_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/d_o_7_TVALID -into $tb_d_o_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/d_o_7_TDATA -into $tb_d_o_group -radix hex
add_wave /apatb_axi_interfaces_top/d_o_6_TREADY -into $tb_d_o_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/d_o_6_TVALID -into $tb_d_o_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/d_o_6_TDATA -into $tb_d_o_group -radix hex
add_wave /apatb_axi_interfaces_top/d_o_5_TREADY -into $tb_d_o_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/d_o_5_TVALID -into $tb_d_o_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/d_o_5_TDATA -into $tb_d_o_group -radix hex
add_wave /apatb_axi_interfaces_top/d_o_4_TREADY -into $tb_d_o_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/d_o_4_TVALID -into $tb_d_o_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/d_o_4_TDATA -into $tb_d_o_group -radix hex
add_wave /apatb_axi_interfaces_top/d_o_3_TREADY -into $tb_d_o_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/d_o_3_TVALID -into $tb_d_o_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/d_o_3_TDATA -into $tb_d_o_group -radix hex
add_wave /apatb_axi_interfaces_top/d_o_2_TREADY -into $tb_d_o_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/d_o_2_TVALID -into $tb_d_o_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/d_o_2_TDATA -into $tb_d_o_group -radix hex
add_wave /apatb_axi_interfaces_top/d_o_1_TREADY -into $tb_d_o_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/d_o_1_TVALID -into $tb_d_o_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/d_o_1_TDATA -into $tb_d_o_group -radix hex
add_wave /apatb_axi_interfaces_top/d_o_0_TREADY -into $tb_d_o_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/d_o_0_TVALID -into $tb_d_o_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/d_o_0_TDATA -into $tb_d_o_group -radix hex
set tb_return_group [add_wave_group return(axi_slave) -into $tbcoutputgroup]
add_wave /apatb_axi_interfaces_top/AXILiteS_INTERRUPT -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AXILiteS_BRESP -into $tb_return_group -radix hex
add_wave /apatb_axi_interfaces_top/AXILiteS_BREADY -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AXILiteS_BVALID -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AXILiteS_RRESP -into $tb_return_group -radix hex
add_wave /apatb_axi_interfaces_top/AXILiteS_RDATA -into $tb_return_group -radix hex
add_wave /apatb_axi_interfaces_top/AXILiteS_RREADY -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AXILiteS_RVALID -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AXILiteS_ARREADY -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AXILiteS_ARVALID -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AXILiteS_ARADDR -into $tb_return_group -radix hex
add_wave /apatb_axi_interfaces_top/AXILiteS_WSTRB -into $tb_return_group -radix hex
add_wave /apatb_axi_interfaces_top/AXILiteS_WDATA -into $tb_return_group -radix hex
add_wave /apatb_axi_interfaces_top/AXILiteS_WREADY -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AXILiteS_WVALID -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AXILiteS_AWREADY -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AXILiteS_AWVALID -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AXILiteS_AWADDR -into $tb_return_group -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_d_i_group [add_wave_group d_i(axis) -into $tbcinputgroup]
add_wave /apatb_axi_interfaces_top/d_i_7_TREADY -into $tb_d_i_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/d_i_7_TVALID -into $tb_d_i_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/d_i_7_TDATA -into $tb_d_i_group -radix hex
add_wave /apatb_axi_interfaces_top/d_i_6_TREADY -into $tb_d_i_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/d_i_6_TVALID -into $tb_d_i_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/d_i_6_TDATA -into $tb_d_i_group -radix hex
add_wave /apatb_axi_interfaces_top/d_i_5_TREADY -into $tb_d_i_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/d_i_5_TVALID -into $tb_d_i_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/d_i_5_TDATA -into $tb_d_i_group -radix hex
add_wave /apatb_axi_interfaces_top/d_i_4_TREADY -into $tb_d_i_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/d_i_4_TVALID -into $tb_d_i_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/d_i_4_TDATA -into $tb_d_i_group -radix hex
add_wave /apatb_axi_interfaces_top/d_i_3_TREADY -into $tb_d_i_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/d_i_3_TVALID -into $tb_d_i_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/d_i_3_TDATA -into $tb_d_i_group -radix hex
add_wave /apatb_axi_interfaces_top/d_i_2_TREADY -into $tb_d_i_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/d_i_2_TVALID -into $tb_d_i_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/d_i_2_TDATA -into $tb_d_i_group -radix hex
add_wave /apatb_axi_interfaces_top/d_i_1_TREADY -into $tb_d_i_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/d_i_1_TVALID -into $tb_d_i_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/d_i_1_TDATA -into $tb_d_i_group -radix hex
add_wave /apatb_axi_interfaces_top/d_i_0_TREADY -into $tb_d_i_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/d_i_0_TVALID -into $tb_d_i_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/d_i_0_TDATA -into $tb_d_i_group -radix hex
save_wave_config axi_interfaces.wcfg
run all
quit

