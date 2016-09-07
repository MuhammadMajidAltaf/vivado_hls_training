set moduleName dct_Loop_Col_DCT_Loop_proc
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {dct_Loop_Col_DCT_Loop_proc}
set C_modelType { void 0 }
set C_modelArgList {
	{ col_inbuf_0 int 16 regular {array 8 { 1 3 } 1 1 }  }
	{ col_inbuf_1 int 16 regular {array 8 { 1 3 } 1 1 }  }
	{ col_inbuf_2 int 16 regular {array 8 { 1 3 } 1 1 }  }
	{ col_inbuf_3 int 16 regular {array 8 { 1 3 } 1 1 }  }
	{ col_inbuf_4 int 16 regular {array 8 { 1 3 } 1 1 }  }
	{ col_inbuf_5 int 16 regular {array 8 { 1 3 } 1 1 }  }
	{ col_inbuf_6 int 16 regular {array 8 { 1 3 } 1 1 }  }
	{ col_inbuf_7 int 16 regular {array 8 { 1 3 } 1 1 }  }
	{ col_outbuf_i int 16 regular {array 64 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "col_inbuf_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "col_inbuf_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "col_inbuf_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "col_inbuf_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "col_inbuf_4", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "col_inbuf_5", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "col_inbuf_6", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "col_inbuf_7", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "col_outbuf_i", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 35
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ col_inbuf_0_address0 sc_out sc_lv 3 signal 0 } 
	{ col_inbuf_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ col_inbuf_0_q0 sc_in sc_lv 16 signal 0 } 
	{ col_inbuf_1_address0 sc_out sc_lv 3 signal 1 } 
	{ col_inbuf_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ col_inbuf_1_q0 sc_in sc_lv 16 signal 1 } 
	{ col_inbuf_2_address0 sc_out sc_lv 3 signal 2 } 
	{ col_inbuf_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ col_inbuf_2_q0 sc_in sc_lv 16 signal 2 } 
	{ col_inbuf_3_address0 sc_out sc_lv 3 signal 3 } 
	{ col_inbuf_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ col_inbuf_3_q0 sc_in sc_lv 16 signal 3 } 
	{ col_inbuf_4_address0 sc_out sc_lv 3 signal 4 } 
	{ col_inbuf_4_ce0 sc_out sc_logic 1 signal 4 } 
	{ col_inbuf_4_q0 sc_in sc_lv 16 signal 4 } 
	{ col_inbuf_5_address0 sc_out sc_lv 3 signal 5 } 
	{ col_inbuf_5_ce0 sc_out sc_logic 1 signal 5 } 
	{ col_inbuf_5_q0 sc_in sc_lv 16 signal 5 } 
	{ col_inbuf_6_address0 sc_out sc_lv 3 signal 6 } 
	{ col_inbuf_6_ce0 sc_out sc_logic 1 signal 6 } 
	{ col_inbuf_6_q0 sc_in sc_lv 16 signal 6 } 
	{ col_inbuf_7_address0 sc_out sc_lv 3 signal 7 } 
	{ col_inbuf_7_ce0 sc_out sc_logic 1 signal 7 } 
	{ col_inbuf_7_q0 sc_in sc_lv 16 signal 7 } 
	{ col_outbuf_i_address0 sc_out sc_lv 6 signal 8 } 
	{ col_outbuf_i_ce0 sc_out sc_logic 1 signal 8 } 
	{ col_outbuf_i_we0 sc_out sc_logic 1 signal 8 } 
	{ col_outbuf_i_d0 sc_out sc_lv 16 signal 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "col_inbuf_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "col_inbuf_0", "role": "address0" }} , 
 	{ "name": "col_inbuf_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "col_inbuf_0", "role": "ce0" }} , 
 	{ "name": "col_inbuf_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "col_inbuf_0", "role": "q0" }} , 
 	{ "name": "col_inbuf_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "col_inbuf_1", "role": "address0" }} , 
 	{ "name": "col_inbuf_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "col_inbuf_1", "role": "ce0" }} , 
 	{ "name": "col_inbuf_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "col_inbuf_1", "role": "q0" }} , 
 	{ "name": "col_inbuf_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "col_inbuf_2", "role": "address0" }} , 
 	{ "name": "col_inbuf_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "col_inbuf_2", "role": "ce0" }} , 
 	{ "name": "col_inbuf_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "col_inbuf_2", "role": "q0" }} , 
 	{ "name": "col_inbuf_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "col_inbuf_3", "role": "address0" }} , 
 	{ "name": "col_inbuf_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "col_inbuf_3", "role": "ce0" }} , 
 	{ "name": "col_inbuf_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "col_inbuf_3", "role": "q0" }} , 
 	{ "name": "col_inbuf_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "col_inbuf_4", "role": "address0" }} , 
 	{ "name": "col_inbuf_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "col_inbuf_4", "role": "ce0" }} , 
 	{ "name": "col_inbuf_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "col_inbuf_4", "role": "q0" }} , 
 	{ "name": "col_inbuf_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "col_inbuf_5", "role": "address0" }} , 
 	{ "name": "col_inbuf_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "col_inbuf_5", "role": "ce0" }} , 
 	{ "name": "col_inbuf_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "col_inbuf_5", "role": "q0" }} , 
 	{ "name": "col_inbuf_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "col_inbuf_6", "role": "address0" }} , 
 	{ "name": "col_inbuf_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "col_inbuf_6", "role": "ce0" }} , 
 	{ "name": "col_inbuf_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "col_inbuf_6", "role": "q0" }} , 
 	{ "name": "col_inbuf_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "col_inbuf_7", "role": "address0" }} , 
 	{ "name": "col_inbuf_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "col_inbuf_7", "role": "ce0" }} , 
 	{ "name": "col_inbuf_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "col_inbuf_7", "role": "q0" }} , 
 	{ "name": "col_outbuf_i_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "col_outbuf_i", "role": "address0" }} , 
 	{ "name": "col_outbuf_i_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "col_outbuf_i", "role": "ce0" }} , 
 	{ "name": "col_outbuf_i_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "col_outbuf_i", "role": "we0" }} , 
 	{ "name": "col_outbuf_i_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "col_outbuf_i", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16"], "CDFG" : "dct_Loop_Col_DCT_Loop_proc", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
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
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dct_coeff_table_0_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dct_coeff_table_1_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dct_coeff_table_2_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dct_coeff_table_3_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dct_coeff_table_4_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dct_coeff_table_5_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dct_coeff_table_6_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dct_coeff_table_7_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dct_mac_muladd_15s_16s_29s_29_1_U43", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dct_mac_muladd_15s_16s_14ns_29_1_U44", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dct_mac_muladd_15s_16s_29s_29_1_U45", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dct_mac_muladd_15s_16s_29s_29_1_U46", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dct_mac_muladd_14ns_16s_29s_29_1_U47", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dct_mul_mul_15s_16s_29_1_U48", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dct_mul_mul_15s_16s_29_1_U49", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dct_mul_mul_15s_16s_29_1_U50", "Parent" : "0", "Child" : []}]}

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "105", "Max" : "105"}
	, {"Name" : "Interval", "Min" : "105", "Max" : "105"}
]}

set Spec2ImplPortList { 
	col_inbuf_0 { ap_memory {  { col_inbuf_0_address0 mem_address 1 3 }  { col_inbuf_0_ce0 mem_ce 1 1 }  { col_inbuf_0_q0 mem_dout 0 16 } } }
	col_inbuf_1 { ap_memory {  { col_inbuf_1_address0 mem_address 1 3 }  { col_inbuf_1_ce0 mem_ce 1 1 }  { col_inbuf_1_q0 mem_dout 0 16 } } }
	col_inbuf_2 { ap_memory {  { col_inbuf_2_address0 mem_address 1 3 }  { col_inbuf_2_ce0 mem_ce 1 1 }  { col_inbuf_2_q0 mem_dout 0 16 } } }
	col_inbuf_3 { ap_memory {  { col_inbuf_3_address0 mem_address 1 3 }  { col_inbuf_3_ce0 mem_ce 1 1 }  { col_inbuf_3_q0 mem_dout 0 16 } } }
	col_inbuf_4 { ap_memory {  { col_inbuf_4_address0 mem_address 1 3 }  { col_inbuf_4_ce0 mem_ce 1 1 }  { col_inbuf_4_q0 mem_dout 0 16 } } }
	col_inbuf_5 { ap_memory {  { col_inbuf_5_address0 mem_address 1 3 }  { col_inbuf_5_ce0 mem_ce 1 1 }  { col_inbuf_5_q0 mem_dout 0 16 } } }
	col_inbuf_6 { ap_memory {  { col_inbuf_6_address0 mem_address 1 3 }  { col_inbuf_6_ce0 mem_ce 1 1 }  { col_inbuf_6_q0 mem_dout 0 16 } } }
	col_inbuf_7 { ap_memory {  { col_inbuf_7_address0 mem_address 1 3 }  { col_inbuf_7_ce0 mem_ce 1 1 }  { col_inbuf_7_q0 mem_dout 0 16 } } }
	col_outbuf_i { ap_memory {  { col_outbuf_i_address0 mem_address 1 6 }  { col_outbuf_i_ce0 mem_ce 1 1 }  { col_outbuf_i_we0 mem_we 1 1 }  { col_outbuf_i_d0 mem_din 1 16 } } }
}
