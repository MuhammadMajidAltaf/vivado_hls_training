# This TCL script sets up the project and initial solution
# then runs synthesis that solution

##########################################

# Create a project
open_project -reset yuv_filter_prj

# The source file and test bench
add_files yuv_filter.c
add_files -tb image_aux.c
add_files -tb yuv_filter_test.c
add_files -tb test_data

# Specify the top-level function for synthesis
set_top yuv_filter

##########################################

# Create solution1
open_solution "solution1"

# Specify a Xilinx device and clock period
# - Do not specify a clock uncertainty (margin)
# - Let the  margin to default to 12.5% of clock period
set_part  {xc7z020clg484-1}
create_clock -period 10

# Simulate the C code 
csim_design

# Synthesis the C code 
csynth_design

exit
