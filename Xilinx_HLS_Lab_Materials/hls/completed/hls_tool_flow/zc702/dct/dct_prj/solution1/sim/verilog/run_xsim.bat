
call xelab xil_defaultlib.apatb_dct_top -prj dct.prj --lib "ieee_proposed=./ieee_proposed" -s dct 
call xsim --noieeewarnings dct -tclbatch dct.tcl

