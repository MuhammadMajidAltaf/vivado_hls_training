############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
############################################################
open_project axi_interfaces_prj
set_top axi_interfaces
add_files axi_interfaces.c
add_files -tb axi_interfaces_test.c
add_files -tb result.golden.dat
open_solution "solution1"
set_part {xc7k160tfbg484-1}
create_clock -period 4 -name default
source "./axi_interfaces_prj/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level all
export_design -format ip_catalog
