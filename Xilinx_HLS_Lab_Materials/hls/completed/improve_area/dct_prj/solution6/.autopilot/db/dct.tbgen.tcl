set C_TypeInfoList {{ 
"dct" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"input": [[], {"array": [ {"scalar": "short"}, [64]]}] }, {"output": [[], {"array": [ {"scalar": "short"}, [64]]}] }],[],""]
}}
set moduleName dct
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {dct}
set C_modelType { void 0 }
set C_modelArgList {
	{ input_r int 16 regular {array 64 { 1 3 } 1 1 }  }
	{ output_r int 16 regular {array 64 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "input_r", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "input","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 63,"step" : 1}]}]}]} , 
 	{ "Name" : "output_r", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "output","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 63,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ input_r_address0 sc_out sc_lv 6 signal 0 } 
	{ input_r_ce0 sc_out sc_logic 1 signal 0 } 
	{ input_r_d0 sc_out sc_lv 16 signal 0 } 
	{ input_r_q0 sc_in sc_lv 16 signal 0 } 
	{ input_r_we0 sc_out sc_logic 1 signal 0 } 
	{ input_r_address1 sc_out sc_lv 6 signal 0 } 
	{ input_r_ce1 sc_out sc_logic 1 signal 0 } 
	{ input_r_d1 sc_out sc_lv 16 signal 0 } 
	{ input_r_q1 sc_in sc_lv 16 signal 0 } 
	{ input_r_we1 sc_out sc_logic 1 signal 0 } 
	{ output_r_address0 sc_out sc_lv 6 signal 1 } 
	{ output_r_ce0 sc_out sc_logic 1 signal 1 } 
	{ output_r_d0 sc_out sc_lv 16 signal 1 } 
	{ output_r_q0 sc_in sc_lv 16 signal 1 } 
	{ output_r_we0 sc_out sc_logic 1 signal 1 } 
	{ output_r_address1 sc_out sc_lv 6 signal 1 } 
	{ output_r_ce1 sc_out sc_logic 1 signal 1 } 
	{ output_r_d1 sc_out sc_lv 16 signal 1 } 
	{ output_r_q1 sc_in sc_lv 16 signal 1 } 
	{ output_r_we1 sc_out sc_logic 1 signal 1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "input_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "input_r", "role": "address0" }} , 
 	{ "name": "input_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_r", "role": "ce0" }} , 
 	{ "name": "input_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_r", "role": "d0" }} , 
 	{ "name": "input_r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_r", "role": "q0" }} , 
 	{ "name": "input_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_r", "role": "we0" }} , 
 	{ "name": "input_r_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "input_r", "role": "address1" }} , 
 	{ "name": "input_r_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_r", "role": "ce1" }} , 
 	{ "name": "input_r_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_r", "role": "d1" }} , 
 	{ "name": "input_r_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_r", "role": "q1" }} , 
 	{ "name": "input_r_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_r", "role": "we1" }} , 
 	{ "name": "output_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "output_r", "role": "address0" }} , 
 	{ "name": "output_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "ce0" }} , 
 	{ "name": "output_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "output_r", "role": "d0" }} , 
 	{ "name": "output_r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "output_r", "role": "q0" }} , 
 	{ "name": "output_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "we0" }} , 
 	{ "name": "output_r_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "output_r", "role": "address1" }} , 
 	{ "name": "output_r_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "ce1" }} , 
 	{ "name": "output_r_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "output_r", "role": "d1" }} , 
 	{ "name": "output_r_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "output_r", "role": "q1" }} , 
 	{ "name": "output_r_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "we1" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "38", "39", "56", "57"], "CDFG" : "dct", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "1", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "input_r", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "dct_read_data_U0", "Port" : "input_r"}]}, 
		{"Name" : "output_r", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "dct_write_data_U0", "Port" : "output_r"}]}, 
		{"Name" : "dct_coeff_table_0", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "dct_Loop_Row_DCT_Loop_proc_U0", "Port" : "dct_coeff_table_0"}, 
			{"SubInst" : "dct_Loop_Col_DCT_Loop_proc_U0", "Port" : "dct_coeff_table_0"}]}, 
		{"Name" : "dct_coeff_table_1", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "dct_Loop_Row_DCT_Loop_proc_U0", "Port" : "dct_coeff_table_1"}, 
			{"SubInst" : "dct_Loop_Col_DCT_Loop_proc_U0", "Port" : "dct_coeff_table_1"}]}, 
		{"Name" : "dct_coeff_table_2", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "dct_Loop_Row_DCT_Loop_proc_U0", "Port" : "dct_coeff_table_2"}, 
			{"SubInst" : "dct_Loop_Col_DCT_Loop_proc_U0", "Port" : "dct_coeff_table_2"}]}, 
		{"Name" : "dct_coeff_table_3", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "dct_Loop_Row_DCT_Loop_proc_U0", "Port" : "dct_coeff_table_3"}, 
			{"SubInst" : "dct_Loop_Col_DCT_Loop_proc_U0", "Port" : "dct_coeff_table_3"}]}, 
		{"Name" : "dct_coeff_table_4", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "dct_Loop_Row_DCT_Loop_proc_U0", "Port" : "dct_coeff_table_4"}, 
			{"SubInst" : "dct_Loop_Col_DCT_Loop_proc_U0", "Port" : "dct_coeff_table_4"}]}, 
		{"Name" : "dct_coeff_table_5", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "dct_Loop_Row_DCT_Loop_proc_U0", "Port" : "dct_coeff_table_5"}, 
			{"SubInst" : "dct_Loop_Col_DCT_Loop_proc_U0", "Port" : "dct_coeff_table_5"}]}, 
		{"Name" : "dct_coeff_table_6", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "dct_Loop_Row_DCT_Loop_proc_U0", "Port" : "dct_coeff_table_6"}, 
			{"SubInst" : "dct_Loop_Col_DCT_Loop_proc_U0", "Port" : "dct_coeff_table_6"}]}, 
		{"Name" : "dct_coeff_table_7", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "dct_Loop_Row_DCT_Loop_proc_U0", "Port" : "dct_coeff_table_7"}, 
			{"SubInst" : "dct_Loop_Col_DCT_Loop_proc_U0", "Port" : "dct_coeff_table_7"}]}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.row_outbuf_i_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.col_outbuf_i_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.col_inbuf_0_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.col_inbuf_1_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.col_inbuf_2_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.col_inbuf_3_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.col_inbuf_4_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.col_inbuf_5_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.col_inbuf_6_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.col_inbuf_7_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_0_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_1_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_2_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_3_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_4_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_5_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_6_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_7_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_out_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dct_read_data_U0", "Parent" : "0", "Child" : [], "CDFG" : "dct_read_data", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "input_r", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "buf_0", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "buf_1", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "buf_2", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "buf_3", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "buf_4", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "buf_5", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "buf_6", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "buf_7", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dct_Loop_Row_DCT_Loop_proc_U0", "Parent" : "0", "Child" : ["22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37"], "CDFG" : "dct_Loop_Row_DCT_Loop_proc", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "buf_2d_in_0", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "buf_2d_in_1", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "buf_2d_in_2", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "buf_2d_in_3", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "buf_2d_in_4", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "buf_2d_in_5", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "buf_2d_in_6", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "buf_2d_in_7", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "row_outbuf_i", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "dct_coeff_table_0", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "dct_coeff_table_1", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "dct_coeff_table_2", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "dct_coeff_table_3", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "dct_coeff_table_4", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "dct_coeff_table_5", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "dct_coeff_table_6", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "dct_coeff_table_7", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_Loop_Row_DCT_Loop_proc_U0.dct_coeff_table_0_U", "Parent" : "21", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_Loop_Row_DCT_Loop_proc_U0.dct_coeff_table_1_U", "Parent" : "21", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_Loop_Row_DCT_Loop_proc_U0.dct_coeff_table_2_U", "Parent" : "21", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_Loop_Row_DCT_Loop_proc_U0.dct_coeff_table_3_U", "Parent" : "21", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_Loop_Row_DCT_Loop_proc_U0.dct_coeff_table_4_U", "Parent" : "21", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_Loop_Row_DCT_Loop_proc_U0.dct_coeff_table_5_U", "Parent" : "21", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_Loop_Row_DCT_Loop_proc_U0.dct_coeff_table_6_U", "Parent" : "21", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_Loop_Row_DCT_Loop_proc_U0.dct_coeff_table_7_U", "Parent" : "21", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_Loop_Row_DCT_Loop_proc_U0.dct_mac_muladd_15s_16s_29s_29_1_U9", "Parent" : "21", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_Loop_Row_DCT_Loop_proc_U0.dct_mac_muladd_15s_16s_14ns_29_1_U10", "Parent" : "21", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_Loop_Row_DCT_Loop_proc_U0.dct_mac_muladd_15s_16s_29s_29_1_U11", "Parent" : "21", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_Loop_Row_DCT_Loop_proc_U0.dct_mac_muladd_15s_16s_29s_29_1_U12", "Parent" : "21", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_Loop_Row_DCT_Loop_proc_U0.dct_mac_muladd_14ns_16s_29s_29_1_U13", "Parent" : "21", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_Loop_Row_DCT_Loop_proc_U0.dct_mul_mul_15s_16s_29_1_U14", "Parent" : "21", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_Loop_Row_DCT_Loop_proc_U0.dct_mul_mul_15s_16s_29_1_U15", "Parent" : "21", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_Loop_Row_DCT_Loop_proc_U0.dct_mul_mul_15s_16s_29_1_U16", "Parent" : "21", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dct_Loop_Xpose_Row_Outer_Loop_proc_U0", "Parent" : "0", "Child" : [], "CDFG" : "dct_Loop_Xpose_Row_Outer_Loop_proc", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "row_outbuf_i", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "col_inbuf_0", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "col_inbuf_1", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "col_inbuf_2", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "col_inbuf_3", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "col_inbuf_4", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "col_inbuf_5", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "col_inbuf_6", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "col_inbuf_7", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dct_Loop_Col_DCT_Loop_proc_U0", "Parent" : "0", "Child" : ["40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55"], "CDFG" : "dct_Loop_Col_DCT_Loop_proc", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "col_inbuf_0", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "col_inbuf_1", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "col_inbuf_2", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "col_inbuf_3", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "col_inbuf_4", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "col_inbuf_5", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "col_inbuf_6", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "col_inbuf_7", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "col_outbuf_i", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "dct_coeff_table_0", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "dct_coeff_table_1", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "dct_coeff_table_2", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "dct_coeff_table_3", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "dct_coeff_table_4", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "dct_coeff_table_5", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "dct_coeff_table_6", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "dct_coeff_table_7", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_Loop_Col_DCT_Loop_proc_U0.dct_coeff_table_0_U", "Parent" : "39", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_Loop_Col_DCT_Loop_proc_U0.dct_coeff_table_1_U", "Parent" : "39", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_Loop_Col_DCT_Loop_proc_U0.dct_coeff_table_2_U", "Parent" : "39", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_Loop_Col_DCT_Loop_proc_U0.dct_coeff_table_3_U", "Parent" : "39", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_Loop_Col_DCT_Loop_proc_U0.dct_coeff_table_4_U", "Parent" : "39", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_Loop_Col_DCT_Loop_proc_U0.dct_coeff_table_5_U", "Parent" : "39", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_Loop_Col_DCT_Loop_proc_U0.dct_coeff_table_6_U", "Parent" : "39", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_Loop_Col_DCT_Loop_proc_U0.dct_coeff_table_7_U", "Parent" : "39", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_Loop_Col_DCT_Loop_proc_U0.dct_mac_muladd_15s_16s_29s_29_1_U43", "Parent" : "39", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_Loop_Col_DCT_Loop_proc_U0.dct_mac_muladd_15s_16s_14ns_29_1_U44", "Parent" : "39", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_Loop_Col_DCT_Loop_proc_U0.dct_mac_muladd_15s_16s_29s_29_1_U45", "Parent" : "39", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_Loop_Col_DCT_Loop_proc_U0.dct_mac_muladd_15s_16s_29s_29_1_U46", "Parent" : "39", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_Loop_Col_DCT_Loop_proc_U0.dct_mac_muladd_14ns_16s_29s_29_1_U47", "Parent" : "39", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_Loop_Col_DCT_Loop_proc_U0.dct_mul_mul_15s_16s_29_1_U48", "Parent" : "39", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_Loop_Col_DCT_Loop_proc_U0.dct_mul_mul_15s_16s_29_1_U49", "Parent" : "39", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_Loop_Col_DCT_Loop_proc_U0.dct_mul_mul_15s_16s_29_1_U50", "Parent" : "39", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dct_Loop_Xpose_Col_Outer_Loop_proc_U0", "Parent" : "0", "Child" : [], "CDFG" : "dct_Loop_Xpose_Col_Outer_Loop_proc", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "col_outbuf_i", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "buf_2d_out", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dct_write_data_U0", "Parent" : "0", "Child" : [], "CDFG" : "dct_write_data", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "buf_r", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_r", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []}]}

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "479", "Max" : "479"}
	, {"Name" : "Interval", "Min" : "106", "Max" : "106"}
]}

set Spec2ImplPortList { 
	input_r { ap_memory {  { input_r_address0 mem_address 1 6 }  { input_r_ce0 mem_ce 1 1 }  { input_r_d0 mem_din 1 16 }  { input_r_q0 mem_dout 0 16 }  { input_r_we0 mem_we 1 1 }  { input_r_address1 mem_address 1 6 }  { input_r_ce1 mem_ce 1 1 }  { input_r_d1 mem_din 1 16 }  { input_r_q1 mem_dout 0 16 }  { input_r_we1 mem_we 1 1 } } }
	output_r { ap_memory {  { output_r_address0 mem_address 1 6 }  { output_r_ce0 mem_ce 1 1 }  { output_r_d0 mem_din 1 16 }  { output_r_q0 mem_dout 0 16 }  { output_r_we0 mem_we 1 1 }  { output_r_address1 mem_address 1 6 }  { output_r_ce1 mem_ce 1 1 }  { output_r_d1 mem_din 1 16 }  { output_r_q1 mem_dout 0 16 }  { output_r_we1 mem_we 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
