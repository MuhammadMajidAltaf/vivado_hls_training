############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
############################################################
open_project dct_prj
set_top dct
add_files dct.c
add_files -tb out.golden.dat
add_files -tb in.dat
add_files -tb dct_test.c
open_solution "solution1"
set_part {xc7k70tfbg484-2}
create_clock -period 10ns -name default
#source "./dct_prj/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -evaluate verilog -format ip_catalog
