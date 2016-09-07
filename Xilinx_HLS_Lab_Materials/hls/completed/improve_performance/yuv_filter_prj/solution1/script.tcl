############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
############################################################
open_project yuv_filter_prj
set_top yuv_filter
add_files yuv_filter.c
add_files -tb test_data
add_files -tb yuv_filter_test.c
add_files -tb image_aux.c
open_solution "solution1"
set_part {xc7z020clg484-1}
create_clock -period 10 -name default
source "./yuv_filter_prj/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
