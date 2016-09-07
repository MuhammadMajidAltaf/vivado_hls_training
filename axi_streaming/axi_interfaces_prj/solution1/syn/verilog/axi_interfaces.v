// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.1
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="axi_interfaces,hls_ip_2016_1,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7k160tfbg484-1,HLS_INPUT_CLOCK=4.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=2.649000,HLS_SYN_LAT=3,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=307,HLS_SYN_LUT=344}" *)

module axi_interfaces (
        ap_clk,
        ap_rst_n,
        d_o_0_TDATA,
        d_o_0_TVALID,
        d_o_0_TREADY,
        d_o_1_TDATA,
        d_o_1_TVALID,
        d_o_1_TREADY,
        d_o_2_TDATA,
        d_o_2_TVALID,
        d_o_2_TREADY,
        d_o_3_TDATA,
        d_o_3_TVALID,
        d_o_3_TREADY,
        d_o_4_TDATA,
        d_o_4_TVALID,
        d_o_4_TREADY,
        d_o_5_TDATA,
        d_o_5_TVALID,
        d_o_5_TREADY,
        d_o_6_TDATA,
        d_o_6_TVALID,
        d_o_6_TREADY,
        d_o_7_TDATA,
        d_o_7_TVALID,
        d_o_7_TREADY,
        d_i_0_TDATA,
        d_i_0_TVALID,
        d_i_0_TREADY,
        d_i_1_TDATA,
        d_i_1_TVALID,
        d_i_1_TREADY,
        d_i_2_TDATA,
        d_i_2_TVALID,
        d_i_2_TREADY,
        d_i_3_TDATA,
        d_i_3_TVALID,
        d_i_3_TREADY,
        d_i_4_TDATA,
        d_i_4_TVALID,
        d_i_4_TREADY,
        d_i_5_TDATA,
        d_i_5_TVALID,
        d_i_5_TREADY,
        d_i_6_TDATA,
        d_i_6_TVALID,
        d_i_6_TREADY,
        d_i_7_TDATA,
        d_i_7_TVALID,
        d_i_7_TREADY,
        s_axi_AXILiteS_AWVALID,
        s_axi_AXILiteS_AWREADY,
        s_axi_AXILiteS_AWADDR,
        s_axi_AXILiteS_WVALID,
        s_axi_AXILiteS_WREADY,
        s_axi_AXILiteS_WDATA,
        s_axi_AXILiteS_WSTRB,
        s_axi_AXILiteS_ARVALID,
        s_axi_AXILiteS_ARREADY,
        s_axi_AXILiteS_ARADDR,
        s_axi_AXILiteS_RVALID,
        s_axi_AXILiteS_RREADY,
        s_axi_AXILiteS_RDATA,
        s_axi_AXILiteS_RRESP,
        s_axi_AXILiteS_BVALID,
        s_axi_AXILiteS_BREADY,
        s_axi_AXILiteS_BRESP,
        interrupt
);

parameter    ap_ST_st1_fsm_0 = 2'b1;
parameter    ap_ST_st2_fsm_1 = 2'b10;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv32_1 = 32'b1;
parameter    C_S_AXI_AXILITES_DATA_WIDTH = 32;
parameter    ap_const_int64_8 = 8;
parameter    C_S_AXI_AXILITES_ADDR_WIDTH = 4;
parameter    C_S_AXI_DATA_WIDTH = 32;
parameter    ap_const_lv5_0 = 5'b00000;
parameter    ap_const_lv6_8 = 6'b1000;
parameter    ap_const_lv6_20 = 6'b100000;

parameter C_S_AXI_AXILITES_WSTRB_WIDTH = (C_S_AXI_AXILITES_DATA_WIDTH / ap_const_int64_8);
parameter C_S_AXI_WSTRB_WIDTH = (C_S_AXI_DATA_WIDTH / ap_const_int64_8);

input   ap_clk;
input   ap_rst_n;
output  [15:0] d_o_0_TDATA;
output   d_o_0_TVALID;
input   d_o_0_TREADY;
output  [15:0] d_o_1_TDATA;
output   d_o_1_TVALID;
input   d_o_1_TREADY;
output  [15:0] d_o_2_TDATA;
output   d_o_2_TVALID;
input   d_o_2_TREADY;
output  [15:0] d_o_3_TDATA;
output   d_o_3_TVALID;
input   d_o_3_TREADY;
output  [15:0] d_o_4_TDATA;
output   d_o_4_TVALID;
input   d_o_4_TREADY;
output  [15:0] d_o_5_TDATA;
output   d_o_5_TVALID;
input   d_o_5_TREADY;
output  [15:0] d_o_6_TDATA;
output   d_o_6_TVALID;
input   d_o_6_TREADY;
output  [15:0] d_o_7_TDATA;
output   d_o_7_TVALID;
input   d_o_7_TREADY;
input  [15:0] d_i_0_TDATA;
input   d_i_0_TVALID;
output   d_i_0_TREADY;
input  [15:0] d_i_1_TDATA;
input   d_i_1_TVALID;
output   d_i_1_TREADY;
input  [15:0] d_i_2_TDATA;
input   d_i_2_TVALID;
output   d_i_2_TREADY;
input  [15:0] d_i_3_TDATA;
input   d_i_3_TVALID;
output   d_i_3_TREADY;
input  [15:0] d_i_4_TDATA;
input   d_i_4_TVALID;
output   d_i_4_TREADY;
input  [15:0] d_i_5_TDATA;
input   d_i_5_TVALID;
output   d_i_5_TREADY;
input  [15:0] d_i_6_TDATA;
input   d_i_6_TVALID;
output   d_i_6_TREADY;
input  [15:0] d_i_7_TDATA;
input   d_i_7_TVALID;
output   d_i_7_TREADY;
input   s_axi_AXILiteS_AWVALID;
output   s_axi_AXILiteS_AWREADY;
input  [C_S_AXI_AXILITES_ADDR_WIDTH - 1 : 0] s_axi_AXILiteS_AWADDR;
input   s_axi_AXILiteS_WVALID;
output   s_axi_AXILiteS_WREADY;
input  [C_S_AXI_AXILITES_DATA_WIDTH - 1 : 0] s_axi_AXILiteS_WDATA;
input  [C_S_AXI_AXILITES_WSTRB_WIDTH - 1 : 0] s_axi_AXILiteS_WSTRB;
input   s_axi_AXILiteS_ARVALID;
output   s_axi_AXILiteS_ARREADY;
input  [C_S_AXI_AXILITES_ADDR_WIDTH - 1 : 0] s_axi_AXILiteS_ARADDR;
output   s_axi_AXILiteS_RVALID;
input   s_axi_AXILiteS_RREADY;
output  [C_S_AXI_AXILITES_DATA_WIDTH - 1 : 0] s_axi_AXILiteS_RDATA;
output  [1:0] s_axi_AXILiteS_RRESP;
output   s_axi_AXILiteS_BVALID;
input   s_axi_AXILiteS_BREADY;
output  [1:0] s_axi_AXILiteS_BRESP;
output   interrupt;

reg d_o_0_TVALID;
reg d_o_1_TVALID;
reg d_o_2_TVALID;
reg d_o_3_TVALID;
reg d_o_4_TVALID;
reg d_o_5_TVALID;
reg d_o_6_TVALID;
reg d_o_7_TVALID;
reg d_i_0_TREADY;
reg d_i_1_TREADY;
reg d_i_2_TREADY;
reg d_i_3_TREADY;
reg d_i_4_TREADY;
reg d_i_5_TREADY;
reg d_i_6_TREADY;
reg d_i_7_TREADY;

reg    ap_rst_n_inv;
wire    ap_start;
reg    ap_done;
reg    ap_idle;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_19;
reg    ap_ready;
reg   [31:0] acc_0;
reg   [31:0] acc_1;
reg   [31:0] acc_2;
reg   [31:0] acc_3;
reg   [31:0] acc_4;
reg   [31:0] acc_5;
reg   [31:0] acc_6;
reg   [31:0] acc_7;
reg    d_o_0_TDATA_blk_n;
reg    ap_sig_cseq_ST_st2_fsm_1;
reg    ap_sig_90;
reg    d_o_1_TDATA_blk_n;
reg    d_o_2_TDATA_blk_n;
reg    d_o_3_TDATA_blk_n;
reg    d_o_4_TDATA_blk_n;
reg    d_o_5_TDATA_blk_n;
reg    d_o_6_TDATA_blk_n;
reg    d_o_7_TDATA_blk_n;
reg    d_i_0_TDATA_blk_n;
reg    d_i_1_TDATA_blk_n;
reg    d_i_2_TDATA_blk_n;
reg    d_i_3_TDATA_blk_n;
reg    d_i_4_TDATA_blk_n;
reg    d_i_5_TDATA_blk_n;
reg    d_i_6_TDATA_blk_n;
reg    d_i_7_TDATA_blk_n;
wire   [4:0] tmp_11_fu_439_p1;
reg    ap_sig_162;
reg    ap_sig_ioackin_d_o_0_TREADY;
reg    ap_sig_ioackin_d_o_1_TREADY;
reg    ap_sig_ioackin_d_o_2_TREADY;
reg    ap_sig_ioackin_d_o_3_TREADY;
reg    ap_sig_ioackin_d_o_4_TREADY;
reg    ap_sig_ioackin_d_o_5_TREADY;
reg    ap_sig_ioackin_d_o_6_TREADY;
reg    ap_sig_ioackin_d_o_7_TREADY;
wire   [0:0] exitcond_fu_443_p2;
reg   [4:0] i1_reg_215;
wire   [31:0] tmp_3_fu_241_p2;
wire   [31:0] tmp_3_1_fu_266_p2;
wire   [31:0] tmp_3_2_fu_291_p2;
wire   [31:0] tmp_3_3_fu_316_p2;
wire   [31:0] tmp_3_4_fu_341_p2;
wire   [31:0] tmp_3_5_fu_366_p2;
wire   [31:0] tmp_3_6_fu_391_p2;
wire   [31:0] tmp_3_7_fu_416_p2;
reg    ap_reg_ioackin_d_o_0_TREADY;
reg    ap_reg_ioackin_d_o_1_TREADY;
reg    ap_reg_ioackin_d_o_2_TREADY;
reg    ap_reg_ioackin_d_o_3_TREADY;
reg    ap_reg_ioackin_d_o_4_TREADY;
reg    ap_reg_ioackin_d_o_5_TREADY;
reg    ap_reg_ioackin_d_o_6_TREADY;
reg    ap_reg_ioackin_d_o_7_TREADY;
wire  signed [31:0] tmp_2_fu_237_p1;
wire  signed [31:0] tmp_2_1_fu_262_p1;
wire  signed [31:0] tmp_2_2_fu_287_p1;
wire  signed [31:0] tmp_2_3_fu_312_p1;
wire  signed [31:0] tmp_2_4_fu_337_p1;
wire  signed [31:0] tmp_2_5_fu_362_p1;
wire  signed [31:0] tmp_2_6_fu_387_p1;
wire  signed [31:0] tmp_2_7_fu_412_p1;
wire   [5:0] i1_cast_fu_229_p1;
wire   [5:0] i_1_7_fu_433_p2;
reg   [1:0] ap_NS_fsm;
reg    ap_sig_379;
reg    ap_sig_381;
reg    ap_sig_383;
reg    ap_sig_385;
reg    ap_sig_387;
reg    ap_sig_389;
reg    ap_sig_391;
reg    ap_sig_393;

// power-on initialization
initial begin
#0 ap_CS_fsm = 2'b1;
#0 acc_0 = 32'b00000000000000000000000000000000;
#0 acc_1 = 32'b00000000000000000000000000000000;
#0 acc_2 = 32'b00000000000000000000000000000000;
#0 acc_3 = 32'b00000000000000000000000000000000;
#0 acc_4 = 32'b00000000000000000000000000000000;
#0 acc_5 = 32'b00000000000000000000000000000000;
#0 acc_6 = 32'b00000000000000000000000000000000;
#0 acc_7 = 32'b00000000000000000000000000000000;
#0 ap_reg_ioackin_d_o_0_TREADY = 1'b0;
#0 ap_reg_ioackin_d_o_1_TREADY = 1'b0;
#0 ap_reg_ioackin_d_o_2_TREADY = 1'b0;
#0 ap_reg_ioackin_d_o_3_TREADY = 1'b0;
#0 ap_reg_ioackin_d_o_4_TREADY = 1'b0;
#0 ap_reg_ioackin_d_o_5_TREADY = 1'b0;
#0 ap_reg_ioackin_d_o_6_TREADY = 1'b0;
#0 ap_reg_ioackin_d_o_7_TREADY = 1'b0;
end

axi_interfaces_AXILiteS_s_axi #(
    .C_S_AXI_ADDR_WIDTH( C_S_AXI_AXILITES_ADDR_WIDTH ),
    .C_S_AXI_DATA_WIDTH( C_S_AXI_AXILITES_DATA_WIDTH ))
axi_interfaces_AXILiteS_s_axi_U(
    .AWVALID(s_axi_AXILiteS_AWVALID),
    .AWREADY(s_axi_AXILiteS_AWREADY),
    .AWADDR(s_axi_AXILiteS_AWADDR),
    .WVALID(s_axi_AXILiteS_WVALID),
    .WREADY(s_axi_AXILiteS_WREADY),
    .WDATA(s_axi_AXILiteS_WDATA),
    .WSTRB(s_axi_AXILiteS_WSTRB),
    .ARVALID(s_axi_AXILiteS_ARVALID),
    .ARREADY(s_axi_AXILiteS_ARREADY),
    .ARADDR(s_axi_AXILiteS_ARADDR),
    .RVALID(s_axi_AXILiteS_RVALID),
    .RREADY(s_axi_AXILiteS_RREADY),
    .RDATA(s_axi_AXILiteS_RDATA),
    .RRESP(s_axi_AXILiteS_RRESP),
    .BVALID(s_axi_AXILiteS_BVALID),
    .BREADY(s_axi_AXILiteS_BREADY),
    .BRESP(s_axi_AXILiteS_BRESP),
    .ACLK(ap_clk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .ap_start(ap_start),
    .interrupt(interrupt),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_idle(ap_idle)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_st1_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_reg_ioackin_d_o_0_TREADY <= 1'b0;
    end else begin
        if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
            if (~(ap_sig_162 | (1'b0 == ap_sig_ioackin_d_o_0_TREADY) | (1'b0 == ap_sig_ioackin_d_o_1_TREADY) | (1'b0 == ap_sig_ioackin_d_o_2_TREADY) | (1'b0 == ap_sig_ioackin_d_o_3_TREADY) | (1'b0 == ap_sig_ioackin_d_o_4_TREADY) | (1'b0 == ap_sig_ioackin_d_o_5_TREADY) | (1'b0 == ap_sig_ioackin_d_o_6_TREADY) | (1'b0 == ap_sig_ioackin_d_o_7_TREADY))) begin
                ap_reg_ioackin_d_o_0_TREADY <= 1'b0;
            end else if (ap_sig_379) begin
                ap_reg_ioackin_d_o_0_TREADY <= 1'b1;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_reg_ioackin_d_o_1_TREADY <= 1'b0;
    end else begin
        if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
            if (~(ap_sig_162 | (1'b0 == ap_sig_ioackin_d_o_0_TREADY) | (1'b0 == ap_sig_ioackin_d_o_1_TREADY) | (1'b0 == ap_sig_ioackin_d_o_2_TREADY) | (1'b0 == ap_sig_ioackin_d_o_3_TREADY) | (1'b0 == ap_sig_ioackin_d_o_4_TREADY) | (1'b0 == ap_sig_ioackin_d_o_5_TREADY) | (1'b0 == ap_sig_ioackin_d_o_6_TREADY) | (1'b0 == ap_sig_ioackin_d_o_7_TREADY))) begin
                ap_reg_ioackin_d_o_1_TREADY <= 1'b0;
            end else if (ap_sig_381) begin
                ap_reg_ioackin_d_o_1_TREADY <= 1'b1;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_reg_ioackin_d_o_2_TREADY <= 1'b0;
    end else begin
        if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
            if (~(ap_sig_162 | (1'b0 == ap_sig_ioackin_d_o_0_TREADY) | (1'b0 == ap_sig_ioackin_d_o_1_TREADY) | (1'b0 == ap_sig_ioackin_d_o_2_TREADY) | (1'b0 == ap_sig_ioackin_d_o_3_TREADY) | (1'b0 == ap_sig_ioackin_d_o_4_TREADY) | (1'b0 == ap_sig_ioackin_d_o_5_TREADY) | (1'b0 == ap_sig_ioackin_d_o_6_TREADY) | (1'b0 == ap_sig_ioackin_d_o_7_TREADY))) begin
                ap_reg_ioackin_d_o_2_TREADY <= 1'b0;
            end else if (ap_sig_383) begin
                ap_reg_ioackin_d_o_2_TREADY <= 1'b1;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_reg_ioackin_d_o_3_TREADY <= 1'b0;
    end else begin
        if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
            if (~(ap_sig_162 | (1'b0 == ap_sig_ioackin_d_o_0_TREADY) | (1'b0 == ap_sig_ioackin_d_o_1_TREADY) | (1'b0 == ap_sig_ioackin_d_o_2_TREADY) | (1'b0 == ap_sig_ioackin_d_o_3_TREADY) | (1'b0 == ap_sig_ioackin_d_o_4_TREADY) | (1'b0 == ap_sig_ioackin_d_o_5_TREADY) | (1'b0 == ap_sig_ioackin_d_o_6_TREADY) | (1'b0 == ap_sig_ioackin_d_o_7_TREADY))) begin
                ap_reg_ioackin_d_o_3_TREADY <= 1'b0;
            end else if (ap_sig_385) begin
                ap_reg_ioackin_d_o_3_TREADY <= 1'b1;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_reg_ioackin_d_o_4_TREADY <= 1'b0;
    end else begin
        if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
            if (~(ap_sig_162 | (1'b0 == ap_sig_ioackin_d_o_0_TREADY) | (1'b0 == ap_sig_ioackin_d_o_1_TREADY) | (1'b0 == ap_sig_ioackin_d_o_2_TREADY) | (1'b0 == ap_sig_ioackin_d_o_3_TREADY) | (1'b0 == ap_sig_ioackin_d_o_4_TREADY) | (1'b0 == ap_sig_ioackin_d_o_5_TREADY) | (1'b0 == ap_sig_ioackin_d_o_6_TREADY) | (1'b0 == ap_sig_ioackin_d_o_7_TREADY))) begin
                ap_reg_ioackin_d_o_4_TREADY <= 1'b0;
            end else if (ap_sig_387) begin
                ap_reg_ioackin_d_o_4_TREADY <= 1'b1;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_reg_ioackin_d_o_5_TREADY <= 1'b0;
    end else begin
        if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
            if (~(ap_sig_162 | (1'b0 == ap_sig_ioackin_d_o_0_TREADY) | (1'b0 == ap_sig_ioackin_d_o_1_TREADY) | (1'b0 == ap_sig_ioackin_d_o_2_TREADY) | (1'b0 == ap_sig_ioackin_d_o_3_TREADY) | (1'b0 == ap_sig_ioackin_d_o_4_TREADY) | (1'b0 == ap_sig_ioackin_d_o_5_TREADY) | (1'b0 == ap_sig_ioackin_d_o_6_TREADY) | (1'b0 == ap_sig_ioackin_d_o_7_TREADY))) begin
                ap_reg_ioackin_d_o_5_TREADY <= 1'b0;
            end else if (ap_sig_389) begin
                ap_reg_ioackin_d_o_5_TREADY <= 1'b1;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_reg_ioackin_d_o_6_TREADY <= 1'b0;
    end else begin
        if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
            if (~(ap_sig_162 | (1'b0 == ap_sig_ioackin_d_o_0_TREADY) | (1'b0 == ap_sig_ioackin_d_o_1_TREADY) | (1'b0 == ap_sig_ioackin_d_o_2_TREADY) | (1'b0 == ap_sig_ioackin_d_o_3_TREADY) | (1'b0 == ap_sig_ioackin_d_o_4_TREADY) | (1'b0 == ap_sig_ioackin_d_o_5_TREADY) | (1'b0 == ap_sig_ioackin_d_o_6_TREADY) | (1'b0 == ap_sig_ioackin_d_o_7_TREADY))) begin
                ap_reg_ioackin_d_o_6_TREADY <= 1'b0;
            end else if (ap_sig_391) begin
                ap_reg_ioackin_d_o_6_TREADY <= 1'b1;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_reg_ioackin_d_o_7_TREADY <= 1'b0;
    end else begin
        if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
            if (~(ap_sig_162 | (1'b0 == ap_sig_ioackin_d_o_0_TREADY) | (1'b0 == ap_sig_ioackin_d_o_1_TREADY) | (1'b0 == ap_sig_ioackin_d_o_2_TREADY) | (1'b0 == ap_sig_ioackin_d_o_3_TREADY) | (1'b0 == ap_sig_ioackin_d_o_4_TREADY) | (1'b0 == ap_sig_ioackin_d_o_5_TREADY) | (1'b0 == ap_sig_ioackin_d_o_6_TREADY) | (1'b0 == ap_sig_ioackin_d_o_7_TREADY))) begin
                ap_reg_ioackin_d_o_7_TREADY <= 1'b0;
            end else if (ap_sig_393) begin
                ap_reg_ioackin_d_o_7_TREADY <= 1'b1;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(ap_sig_162 | (1'b0 == ap_sig_ioackin_d_o_0_TREADY) | (1'b0 == ap_sig_ioackin_d_o_1_TREADY) | (1'b0 == ap_sig_ioackin_d_o_2_TREADY) | (1'b0 == ap_sig_ioackin_d_o_3_TREADY) | (1'b0 == ap_sig_ioackin_d_o_4_TREADY) | (1'b0 == ap_sig_ioackin_d_o_5_TREADY) | (1'b0 == ap_sig_ioackin_d_o_6_TREADY) | (1'b0 == ap_sig_ioackin_d_o_7_TREADY)) & (1'b0 == exitcond_fu_443_p2))) begin
        i1_reg_215 <= tmp_11_fu_439_p1;
    end else if ((((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == 1'b0)) | ((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(ap_sig_162 | (1'b0 == ap_sig_ioackin_d_o_0_TREADY) | (1'b0 == ap_sig_ioackin_d_o_1_TREADY) | (1'b0 == ap_sig_ioackin_d_o_2_TREADY) | (1'b0 == ap_sig_ioackin_d_o_3_TREADY) | (1'b0 == ap_sig_ioackin_d_o_4_TREADY) | (1'b0 == ap_sig_ioackin_d_o_5_TREADY) | (1'b0 == ap_sig_ioackin_d_o_6_TREADY) | (1'b0 == ap_sig_ioackin_d_o_7_TREADY)) & ~(1'b0 == exitcond_fu_443_p2)))) begin
        i1_reg_215 <= ap_const_lv5_0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(ap_sig_162 | (1'b0 == ap_sig_ioackin_d_o_0_TREADY) | (1'b0 == ap_sig_ioackin_d_o_1_TREADY) | (1'b0 == ap_sig_ioackin_d_o_2_TREADY) | (1'b0 == ap_sig_ioackin_d_o_3_TREADY) | (1'b0 == ap_sig_ioackin_d_o_4_TREADY) | (1'b0 == ap_sig_ioackin_d_o_5_TREADY) | (1'b0 == ap_sig_ioackin_d_o_6_TREADY) | (1'b0 == ap_sig_ioackin_d_o_7_TREADY)))) begin
        acc_0 <= tmp_3_fu_241_p2;
        acc_1 <= tmp_3_1_fu_266_p2;
        acc_2 <= tmp_3_2_fu_291_p2;
        acc_3 <= tmp_3_3_fu_316_p2;
        acc_4 <= tmp_3_4_fu_341_p2;
        acc_5 <= tmp_3_5_fu_366_p2;
        acc_6 <= tmp_3_6_fu_391_p2;
        acc_7 <= tmp_3_7_fu_416_p2;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(ap_sig_162 | (1'b0 == ap_sig_ioackin_d_o_0_TREADY) | (1'b0 == ap_sig_ioackin_d_o_1_TREADY) | (1'b0 == ap_sig_ioackin_d_o_2_TREADY) | (1'b0 == ap_sig_ioackin_d_o_3_TREADY) | (1'b0 == ap_sig_ioackin_d_o_4_TREADY) | (1'b0 == ap_sig_ioackin_d_o_5_TREADY) | (1'b0 == ap_sig_ioackin_d_o_6_TREADY) | (1'b0 == ap_sig_ioackin_d_o_7_TREADY)) & ~(1'b0 == exitcond_fu_443_p2))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_start) & (1'b1 == ap_sig_cseq_ST_st1_fsm_0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(ap_sig_162 | (1'b0 == ap_sig_ioackin_d_o_0_TREADY) | (1'b0 == ap_sig_ioackin_d_o_1_TREADY) | (1'b0 == ap_sig_ioackin_d_o_2_TREADY) | (1'b0 == ap_sig_ioackin_d_o_3_TREADY) | (1'b0 == ap_sig_ioackin_d_o_4_TREADY) | (1'b0 == ap_sig_ioackin_d_o_5_TREADY) | (1'b0 == ap_sig_ioackin_d_o_6_TREADY) | (1'b0 == ap_sig_ioackin_d_o_7_TREADY)) & ~(1'b0 == exitcond_fu_443_p2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_19) begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_90) begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b0 == ap_reg_ioackin_d_o_0_TREADY)) begin
        ap_sig_ioackin_d_o_0_TREADY = d_o_0_TREADY;
    end else begin
        ap_sig_ioackin_d_o_0_TREADY = 1'b1;
    end
end

always @ (*) begin
    if ((1'b0 == ap_reg_ioackin_d_o_1_TREADY)) begin
        ap_sig_ioackin_d_o_1_TREADY = d_o_1_TREADY;
    end else begin
        ap_sig_ioackin_d_o_1_TREADY = 1'b1;
    end
end

always @ (*) begin
    if ((1'b0 == ap_reg_ioackin_d_o_2_TREADY)) begin
        ap_sig_ioackin_d_o_2_TREADY = d_o_2_TREADY;
    end else begin
        ap_sig_ioackin_d_o_2_TREADY = 1'b1;
    end
end

always @ (*) begin
    if ((1'b0 == ap_reg_ioackin_d_o_3_TREADY)) begin
        ap_sig_ioackin_d_o_3_TREADY = d_o_3_TREADY;
    end else begin
        ap_sig_ioackin_d_o_3_TREADY = 1'b1;
    end
end

always @ (*) begin
    if ((1'b0 == ap_reg_ioackin_d_o_4_TREADY)) begin
        ap_sig_ioackin_d_o_4_TREADY = d_o_4_TREADY;
    end else begin
        ap_sig_ioackin_d_o_4_TREADY = 1'b1;
    end
end

always @ (*) begin
    if ((1'b0 == ap_reg_ioackin_d_o_5_TREADY)) begin
        ap_sig_ioackin_d_o_5_TREADY = d_o_5_TREADY;
    end else begin
        ap_sig_ioackin_d_o_5_TREADY = 1'b1;
    end
end

always @ (*) begin
    if ((1'b0 == ap_reg_ioackin_d_o_6_TREADY)) begin
        ap_sig_ioackin_d_o_6_TREADY = d_o_6_TREADY;
    end else begin
        ap_sig_ioackin_d_o_6_TREADY = 1'b1;
    end
end

always @ (*) begin
    if ((1'b0 == ap_reg_ioackin_d_o_7_TREADY)) begin
        ap_sig_ioackin_d_o_7_TREADY = d_o_7_TREADY;
    end else begin
        ap_sig_ioackin_d_o_7_TREADY = 1'b1;
    end
end

always @ (*) begin
    if ((~(ap_start == 1'b0) & (1'b1 == ap_sig_cseq_ST_st2_fsm_1))) begin
        d_i_0_TDATA_blk_n = d_i_0_TVALID;
    end else begin
        d_i_0_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(ap_sig_162 | (1'b0 == ap_sig_ioackin_d_o_0_TREADY) | (1'b0 == ap_sig_ioackin_d_o_1_TREADY) | (1'b0 == ap_sig_ioackin_d_o_2_TREADY) | (1'b0 == ap_sig_ioackin_d_o_3_TREADY) | (1'b0 == ap_sig_ioackin_d_o_4_TREADY) | (1'b0 == ap_sig_ioackin_d_o_5_TREADY) | (1'b0 == ap_sig_ioackin_d_o_6_TREADY) | (1'b0 == ap_sig_ioackin_d_o_7_TREADY)))) begin
        d_i_0_TREADY = 1'b1;
    end else begin
        d_i_0_TREADY = 1'b0;
    end
end

always @ (*) begin
    if ((~(ap_start == 1'b0) & (1'b1 == ap_sig_cseq_ST_st2_fsm_1))) begin
        d_i_1_TDATA_blk_n = d_i_1_TVALID;
    end else begin
        d_i_1_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(ap_sig_162 | (1'b0 == ap_sig_ioackin_d_o_0_TREADY) | (1'b0 == ap_sig_ioackin_d_o_1_TREADY) | (1'b0 == ap_sig_ioackin_d_o_2_TREADY) | (1'b0 == ap_sig_ioackin_d_o_3_TREADY) | (1'b0 == ap_sig_ioackin_d_o_4_TREADY) | (1'b0 == ap_sig_ioackin_d_o_5_TREADY) | (1'b0 == ap_sig_ioackin_d_o_6_TREADY) | (1'b0 == ap_sig_ioackin_d_o_7_TREADY)))) begin
        d_i_1_TREADY = 1'b1;
    end else begin
        d_i_1_TREADY = 1'b0;
    end
end

always @ (*) begin
    if ((~(ap_start == 1'b0) & (1'b1 == ap_sig_cseq_ST_st2_fsm_1))) begin
        d_i_2_TDATA_blk_n = d_i_2_TVALID;
    end else begin
        d_i_2_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(ap_sig_162 | (1'b0 == ap_sig_ioackin_d_o_0_TREADY) | (1'b0 == ap_sig_ioackin_d_o_1_TREADY) | (1'b0 == ap_sig_ioackin_d_o_2_TREADY) | (1'b0 == ap_sig_ioackin_d_o_3_TREADY) | (1'b0 == ap_sig_ioackin_d_o_4_TREADY) | (1'b0 == ap_sig_ioackin_d_o_5_TREADY) | (1'b0 == ap_sig_ioackin_d_o_6_TREADY) | (1'b0 == ap_sig_ioackin_d_o_7_TREADY)))) begin
        d_i_2_TREADY = 1'b1;
    end else begin
        d_i_2_TREADY = 1'b0;
    end
end

always @ (*) begin
    if ((~(ap_start == 1'b0) & (1'b1 == ap_sig_cseq_ST_st2_fsm_1))) begin
        d_i_3_TDATA_blk_n = d_i_3_TVALID;
    end else begin
        d_i_3_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(ap_sig_162 | (1'b0 == ap_sig_ioackin_d_o_0_TREADY) | (1'b0 == ap_sig_ioackin_d_o_1_TREADY) | (1'b0 == ap_sig_ioackin_d_o_2_TREADY) | (1'b0 == ap_sig_ioackin_d_o_3_TREADY) | (1'b0 == ap_sig_ioackin_d_o_4_TREADY) | (1'b0 == ap_sig_ioackin_d_o_5_TREADY) | (1'b0 == ap_sig_ioackin_d_o_6_TREADY) | (1'b0 == ap_sig_ioackin_d_o_7_TREADY)))) begin
        d_i_3_TREADY = 1'b1;
    end else begin
        d_i_3_TREADY = 1'b0;
    end
end

always @ (*) begin
    if ((~(ap_start == 1'b0) & (1'b1 == ap_sig_cseq_ST_st2_fsm_1))) begin
        d_i_4_TDATA_blk_n = d_i_4_TVALID;
    end else begin
        d_i_4_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(ap_sig_162 | (1'b0 == ap_sig_ioackin_d_o_0_TREADY) | (1'b0 == ap_sig_ioackin_d_o_1_TREADY) | (1'b0 == ap_sig_ioackin_d_o_2_TREADY) | (1'b0 == ap_sig_ioackin_d_o_3_TREADY) | (1'b0 == ap_sig_ioackin_d_o_4_TREADY) | (1'b0 == ap_sig_ioackin_d_o_5_TREADY) | (1'b0 == ap_sig_ioackin_d_o_6_TREADY) | (1'b0 == ap_sig_ioackin_d_o_7_TREADY)))) begin
        d_i_4_TREADY = 1'b1;
    end else begin
        d_i_4_TREADY = 1'b0;
    end
end

always @ (*) begin
    if ((~(ap_start == 1'b0) & (1'b1 == ap_sig_cseq_ST_st2_fsm_1))) begin
        d_i_5_TDATA_blk_n = d_i_5_TVALID;
    end else begin
        d_i_5_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(ap_sig_162 | (1'b0 == ap_sig_ioackin_d_o_0_TREADY) | (1'b0 == ap_sig_ioackin_d_o_1_TREADY) | (1'b0 == ap_sig_ioackin_d_o_2_TREADY) | (1'b0 == ap_sig_ioackin_d_o_3_TREADY) | (1'b0 == ap_sig_ioackin_d_o_4_TREADY) | (1'b0 == ap_sig_ioackin_d_o_5_TREADY) | (1'b0 == ap_sig_ioackin_d_o_6_TREADY) | (1'b0 == ap_sig_ioackin_d_o_7_TREADY)))) begin
        d_i_5_TREADY = 1'b1;
    end else begin
        d_i_5_TREADY = 1'b0;
    end
end

always @ (*) begin
    if ((~(ap_start == 1'b0) & (1'b1 == ap_sig_cseq_ST_st2_fsm_1))) begin
        d_i_6_TDATA_blk_n = d_i_6_TVALID;
    end else begin
        d_i_6_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(ap_sig_162 | (1'b0 == ap_sig_ioackin_d_o_0_TREADY) | (1'b0 == ap_sig_ioackin_d_o_1_TREADY) | (1'b0 == ap_sig_ioackin_d_o_2_TREADY) | (1'b0 == ap_sig_ioackin_d_o_3_TREADY) | (1'b0 == ap_sig_ioackin_d_o_4_TREADY) | (1'b0 == ap_sig_ioackin_d_o_5_TREADY) | (1'b0 == ap_sig_ioackin_d_o_6_TREADY) | (1'b0 == ap_sig_ioackin_d_o_7_TREADY)))) begin
        d_i_6_TREADY = 1'b1;
    end else begin
        d_i_6_TREADY = 1'b0;
    end
end

always @ (*) begin
    if ((~(ap_start == 1'b0) & (1'b1 == ap_sig_cseq_ST_st2_fsm_1))) begin
        d_i_7_TDATA_blk_n = d_i_7_TVALID;
    end else begin
        d_i_7_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(ap_sig_162 | (1'b0 == ap_sig_ioackin_d_o_0_TREADY) | (1'b0 == ap_sig_ioackin_d_o_1_TREADY) | (1'b0 == ap_sig_ioackin_d_o_2_TREADY) | (1'b0 == ap_sig_ioackin_d_o_3_TREADY) | (1'b0 == ap_sig_ioackin_d_o_4_TREADY) | (1'b0 == ap_sig_ioackin_d_o_5_TREADY) | (1'b0 == ap_sig_ioackin_d_o_6_TREADY) | (1'b0 == ap_sig_ioackin_d_o_7_TREADY)))) begin
        d_i_7_TREADY = 1'b1;
    end else begin
        d_i_7_TREADY = 1'b0;
    end
end

always @ (*) begin
    if ((~(ap_start == 1'b0) & (1'b1 == ap_sig_cseq_ST_st2_fsm_1))) begin
        d_o_0_TDATA_blk_n = d_o_0_TREADY;
    end else begin
        d_o_0_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~ap_sig_162 & (1'b0 == ap_reg_ioackin_d_o_0_TREADY))) begin
        d_o_0_TVALID = 1'b1;
    end else begin
        d_o_0_TVALID = 1'b0;
    end
end

always @ (*) begin
    if ((~(ap_start == 1'b0) & (1'b1 == ap_sig_cseq_ST_st2_fsm_1))) begin
        d_o_1_TDATA_blk_n = d_o_1_TREADY;
    end else begin
        d_o_1_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~ap_sig_162 & (1'b0 == ap_reg_ioackin_d_o_1_TREADY))) begin
        d_o_1_TVALID = 1'b1;
    end else begin
        d_o_1_TVALID = 1'b0;
    end
end

always @ (*) begin
    if ((~(ap_start == 1'b0) & (1'b1 == ap_sig_cseq_ST_st2_fsm_1))) begin
        d_o_2_TDATA_blk_n = d_o_2_TREADY;
    end else begin
        d_o_2_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~ap_sig_162 & (1'b0 == ap_reg_ioackin_d_o_2_TREADY))) begin
        d_o_2_TVALID = 1'b1;
    end else begin
        d_o_2_TVALID = 1'b0;
    end
end

always @ (*) begin
    if ((~(ap_start == 1'b0) & (1'b1 == ap_sig_cseq_ST_st2_fsm_1))) begin
        d_o_3_TDATA_blk_n = d_o_3_TREADY;
    end else begin
        d_o_3_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~ap_sig_162 & (1'b0 == ap_reg_ioackin_d_o_3_TREADY))) begin
        d_o_3_TVALID = 1'b1;
    end else begin
        d_o_3_TVALID = 1'b0;
    end
end

always @ (*) begin
    if ((~(ap_start == 1'b0) & (1'b1 == ap_sig_cseq_ST_st2_fsm_1))) begin
        d_o_4_TDATA_blk_n = d_o_4_TREADY;
    end else begin
        d_o_4_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~ap_sig_162 & (1'b0 == ap_reg_ioackin_d_o_4_TREADY))) begin
        d_o_4_TVALID = 1'b1;
    end else begin
        d_o_4_TVALID = 1'b0;
    end
end

always @ (*) begin
    if ((~(ap_start == 1'b0) & (1'b1 == ap_sig_cseq_ST_st2_fsm_1))) begin
        d_o_5_TDATA_blk_n = d_o_5_TREADY;
    end else begin
        d_o_5_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~ap_sig_162 & (1'b0 == ap_reg_ioackin_d_o_5_TREADY))) begin
        d_o_5_TVALID = 1'b1;
    end else begin
        d_o_5_TVALID = 1'b0;
    end
end

always @ (*) begin
    if ((~(ap_start == 1'b0) & (1'b1 == ap_sig_cseq_ST_st2_fsm_1))) begin
        d_o_6_TDATA_blk_n = d_o_6_TREADY;
    end else begin
        d_o_6_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~ap_sig_162 & (1'b0 == ap_reg_ioackin_d_o_6_TREADY))) begin
        d_o_6_TVALID = 1'b1;
    end else begin
        d_o_6_TVALID = 1'b0;
    end
end

always @ (*) begin
    if ((~(ap_start == 1'b0) & (1'b1 == ap_sig_cseq_ST_st2_fsm_1))) begin
        d_o_7_TDATA_blk_n = d_o_7_TREADY;
    end else begin
        d_o_7_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~ap_sig_162 & (1'b0 == ap_reg_ioackin_d_o_7_TREADY))) begin
        d_o_7_TVALID = 1'b1;
    end else begin
        d_o_7_TVALID = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : begin
            if (~(ap_start == 1'b0)) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end
        end
        ap_ST_st2_fsm_1 : begin
            ap_NS_fsm = ap_ST_st2_fsm_1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

always @ (*) begin
    ap_sig_162 = ((ap_start == 1'b0) | (d_i_0_TVALID == 1'b0) | (d_i_1_TVALID == 1'b0) | (d_i_2_TVALID == 1'b0) | (d_i_3_TVALID == 1'b0) | (d_i_4_TVALID == 1'b0) | (d_i_5_TVALID == 1'b0) | (d_i_6_TVALID == 1'b0) | (d_i_7_TVALID == 1'b0));
end

always @ (*) begin
    ap_sig_19 = (ap_CS_fsm[ap_const_lv32_0] == 1'b1);
end

always @ (*) begin
    ap_sig_379 = (~ap_sig_162 & (1'b1 == d_o_0_TREADY));
end

always @ (*) begin
    ap_sig_381 = (~ap_sig_162 & (1'b1 == d_o_1_TREADY));
end

always @ (*) begin
    ap_sig_383 = (~ap_sig_162 & (1'b1 == d_o_2_TREADY));
end

always @ (*) begin
    ap_sig_385 = (~ap_sig_162 & (1'b1 == d_o_3_TREADY));
end

always @ (*) begin
    ap_sig_387 = (~ap_sig_162 & (1'b1 == d_o_4_TREADY));
end

always @ (*) begin
    ap_sig_389 = (~ap_sig_162 & (1'b1 == d_o_5_TREADY));
end

always @ (*) begin
    ap_sig_391 = (~ap_sig_162 & (1'b1 == d_o_6_TREADY));
end

always @ (*) begin
    ap_sig_393 = (~ap_sig_162 & (1'b1 == d_o_7_TREADY));
end

always @ (*) begin
    ap_sig_90 = (1'b1 == ap_CS_fsm[ap_const_lv32_1]);
end

assign d_o_0_TDATA = tmp_3_fu_241_p2[15:0];

assign d_o_1_TDATA = tmp_3_1_fu_266_p2[15:0];

assign d_o_2_TDATA = tmp_3_2_fu_291_p2[15:0];

assign d_o_3_TDATA = tmp_3_3_fu_316_p2[15:0];

assign d_o_4_TDATA = tmp_3_4_fu_341_p2[15:0];

assign d_o_5_TDATA = tmp_3_5_fu_366_p2[15:0];

assign d_o_6_TDATA = tmp_3_6_fu_391_p2[15:0];

assign d_o_7_TDATA = tmp_3_7_fu_416_p2[15:0];

assign exitcond_fu_443_p2 = ((i_1_7_fu_433_p2 == ap_const_lv6_20) ? 1'b1 : 1'b0);

assign i1_cast_fu_229_p1 = i1_reg_215;

assign i_1_7_fu_433_p2 = (ap_const_lv6_8 + i1_cast_fu_229_p1);

assign tmp_11_fu_439_p1 = i_1_7_fu_433_p2[4:0];

assign tmp_2_1_fu_262_p1 = $signed(d_i_1_TDATA);

assign tmp_2_2_fu_287_p1 = $signed(d_i_2_TDATA);

assign tmp_2_3_fu_312_p1 = $signed(d_i_3_TDATA);

assign tmp_2_4_fu_337_p1 = $signed(d_i_4_TDATA);

assign tmp_2_5_fu_362_p1 = $signed(d_i_5_TDATA);

assign tmp_2_6_fu_387_p1 = $signed(d_i_6_TDATA);

assign tmp_2_7_fu_412_p1 = $signed(d_i_7_TDATA);

assign tmp_2_fu_237_p1 = $signed(d_i_0_TDATA);

assign tmp_3_1_fu_266_p2 = ($signed(tmp_2_1_fu_262_p1) + $signed(acc_1));

assign tmp_3_2_fu_291_p2 = ($signed(tmp_2_2_fu_287_p1) + $signed(acc_2));

assign tmp_3_3_fu_316_p2 = ($signed(tmp_2_3_fu_312_p1) + $signed(acc_3));

assign tmp_3_4_fu_341_p2 = ($signed(tmp_2_4_fu_337_p1) + $signed(acc_4));

assign tmp_3_5_fu_366_p2 = ($signed(tmp_2_5_fu_362_p1) + $signed(acc_5));

assign tmp_3_6_fu_391_p2 = ($signed(tmp_2_6_fu_387_p1) + $signed(acc_6));

assign tmp_3_7_fu_416_p2 = ($signed(tmp_2_7_fu_412_p1) + $signed(acc_7));

assign tmp_3_fu_241_p2 = ($signed(tmp_2_fu_237_p1) + $signed(acc_0));

endmodule //axi_interfaces