onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+microblaze_design -L unisims_ver -L unimacro_ver -L secureip -L xil_defaultlib -L xpm -L microblaze_v9_6_0 -L lmb_v10_v3_0_8 -L lmb_bram_if_cntlr_v4_0_8 -L blk_mem_gen_v8_3_2 -L axi_lite_ipif_v3_0_3 -L axi_intc_v4_1_6 -L mdm_v3_2_5 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_9 -L lib_pkg_v1_0_2 -L lib_srl_fifo_v1_0_2 -L axi_uartlite_v2_0_12 -L generic_baseblocks_v2_1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_8 -L fifo_generator_v13_1_0 -L axi_data_fifo_v2_1_7 -L axi_crossbar_v2_1_9 -O5 xil_defaultlib.microblaze_design xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {microblaze_design.udo}

run -all

endsim

quit -force
