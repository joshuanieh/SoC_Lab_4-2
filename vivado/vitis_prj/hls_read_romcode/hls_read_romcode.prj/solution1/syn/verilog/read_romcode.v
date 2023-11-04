// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="read_romcode_read_romcode,hls_ip_2022_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020-clg400-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=7.300000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=1111,HLS_SYN_LUT=2634,HLS_VERSION=2022_1}" *)

module read_romcode (
        ap_clk,
        ap_rst_n,
        m_axi_BUS0_AWVALID,
        m_axi_BUS0_AWREADY,
        m_axi_BUS0_AWADDR,
        m_axi_BUS0_AWID,
        m_axi_BUS0_AWLEN,
        m_axi_BUS0_AWSIZE,
        m_axi_BUS0_AWBURST,
        m_axi_BUS0_AWLOCK,
        m_axi_BUS0_AWCACHE,
        m_axi_BUS0_AWPROT,
        m_axi_BUS0_AWQOS,
        m_axi_BUS0_AWREGION,
        m_axi_BUS0_AWUSER,
        m_axi_BUS0_WVALID,
        m_axi_BUS0_WREADY,
        m_axi_BUS0_WDATA,
        m_axi_BUS0_WSTRB,
        m_axi_BUS0_WLAST,
        m_axi_BUS0_WID,
        m_axi_BUS0_WUSER,
        m_axi_BUS0_ARVALID,
        m_axi_BUS0_ARREADY,
        m_axi_BUS0_ARADDR,
        m_axi_BUS0_ARID,
        m_axi_BUS0_ARLEN,
        m_axi_BUS0_ARSIZE,
        m_axi_BUS0_ARBURST,
        m_axi_BUS0_ARLOCK,
        m_axi_BUS0_ARCACHE,
        m_axi_BUS0_ARPROT,
        m_axi_BUS0_ARQOS,
        m_axi_BUS0_ARREGION,
        m_axi_BUS0_ARUSER,
        m_axi_BUS0_RVALID,
        m_axi_BUS0_RREADY,
        m_axi_BUS0_RDATA,
        m_axi_BUS0_RLAST,
        m_axi_BUS0_RID,
        m_axi_BUS0_RUSER,
        m_axi_BUS0_RRESP,
        m_axi_BUS0_BVALID,
        m_axi_BUS0_BREADY,
        m_axi_BUS0_BRESP,
        m_axi_BUS0_BID,
        m_axi_BUS0_BUSER,
        internal_bram_Addr_A,
        internal_bram_EN_A,
        internal_bram_WEN_A,
        internal_bram_Din_A,
        internal_bram_Dout_A,
        internal_bram_Clk_A,
        internal_bram_Rst_A,
        s_axi_control_AWVALID,
        s_axi_control_AWREADY,
        s_axi_control_AWADDR,
        s_axi_control_WVALID,
        s_axi_control_WREADY,
        s_axi_control_WDATA,
        s_axi_control_WSTRB,
        s_axi_control_ARVALID,
        s_axi_control_ARREADY,
        s_axi_control_ARADDR,
        s_axi_control_RVALID,
        s_axi_control_RREADY,
        s_axi_control_RDATA,
        s_axi_control_RRESP,
        s_axi_control_BVALID,
        s_axi_control_BREADY,
        s_axi_control_BRESP,
        interrupt
);

parameter    ap_ST_fsm_state1 = 10'd1;
parameter    ap_ST_fsm_state2 = 10'd2;
parameter    ap_ST_fsm_state3 = 10'd4;
parameter    ap_ST_fsm_state4 = 10'd8;
parameter    ap_ST_fsm_state5 = 10'd16;
parameter    ap_ST_fsm_state6 = 10'd32;
parameter    ap_ST_fsm_state7 = 10'd64;
parameter    ap_ST_fsm_state8 = 10'd128;
parameter    ap_ST_fsm_state9 = 10'd256;
parameter    ap_ST_fsm_state10 = 10'd512;
parameter    C_S_AXI_CONTROL_DATA_WIDTH = 32;
parameter    C_S_AXI_CONTROL_ADDR_WIDTH = 6;
parameter    C_S_AXI_DATA_WIDTH = 32;
parameter    C_M_AXI_BUS0_ID_WIDTH = 1;
parameter    C_M_AXI_BUS0_ADDR_WIDTH = 64;
parameter    C_M_AXI_BUS0_DATA_WIDTH = 32;
parameter    C_M_AXI_BUS0_AWUSER_WIDTH = 1;
parameter    C_M_AXI_BUS0_ARUSER_WIDTH = 1;
parameter    C_M_AXI_BUS0_WUSER_WIDTH = 1;
parameter    C_M_AXI_BUS0_RUSER_WIDTH = 1;
parameter    C_M_AXI_BUS0_BUSER_WIDTH = 1;
parameter    C_M_AXI_BUS0_USER_VALUE = 0;
parameter    C_M_AXI_BUS0_PROT_VALUE = 0;
parameter    C_M_AXI_BUS0_CACHE_VALUE = 3;
parameter    C_M_AXI_DATA_WIDTH = 32;

parameter C_S_AXI_CONTROL_WSTRB_WIDTH = (32 / 8);
parameter C_S_AXI_WSTRB_WIDTH = (32 / 8);
parameter C_M_AXI_BUS0_WSTRB_WIDTH = (32 / 8);
parameter C_M_AXI_WSTRB_WIDTH = (32 / 8);

input   ap_clk;
input   ap_rst_n;
output   m_axi_BUS0_AWVALID;
input   m_axi_BUS0_AWREADY;
output  [C_M_AXI_BUS0_ADDR_WIDTH - 1:0] m_axi_BUS0_AWADDR;
output  [C_M_AXI_BUS0_ID_WIDTH - 1:0] m_axi_BUS0_AWID;
output  [7:0] m_axi_BUS0_AWLEN;
output  [2:0] m_axi_BUS0_AWSIZE;
output  [1:0] m_axi_BUS0_AWBURST;
output  [1:0] m_axi_BUS0_AWLOCK;
output  [3:0] m_axi_BUS0_AWCACHE;
output  [2:0] m_axi_BUS0_AWPROT;
output  [3:0] m_axi_BUS0_AWQOS;
output  [3:0] m_axi_BUS0_AWREGION;
output  [C_M_AXI_BUS0_AWUSER_WIDTH - 1:0] m_axi_BUS0_AWUSER;
output   m_axi_BUS0_WVALID;
input   m_axi_BUS0_WREADY;
output  [C_M_AXI_BUS0_DATA_WIDTH - 1:0] m_axi_BUS0_WDATA;
output  [C_M_AXI_BUS0_WSTRB_WIDTH - 1:0] m_axi_BUS0_WSTRB;
output   m_axi_BUS0_WLAST;
output  [C_M_AXI_BUS0_ID_WIDTH - 1:0] m_axi_BUS0_WID;
output  [C_M_AXI_BUS0_WUSER_WIDTH - 1:0] m_axi_BUS0_WUSER;
output   m_axi_BUS0_ARVALID;
input   m_axi_BUS0_ARREADY;
output  [C_M_AXI_BUS0_ADDR_WIDTH - 1:0] m_axi_BUS0_ARADDR;
output  [C_M_AXI_BUS0_ID_WIDTH - 1:0] m_axi_BUS0_ARID;
output  [7:0] m_axi_BUS0_ARLEN;
output  [2:0] m_axi_BUS0_ARSIZE;
output  [1:0] m_axi_BUS0_ARBURST;
output  [1:0] m_axi_BUS0_ARLOCK;
output  [3:0] m_axi_BUS0_ARCACHE;
output  [2:0] m_axi_BUS0_ARPROT;
output  [3:0] m_axi_BUS0_ARQOS;
output  [3:0] m_axi_BUS0_ARREGION;
output  [C_M_AXI_BUS0_ARUSER_WIDTH - 1:0] m_axi_BUS0_ARUSER;
input   m_axi_BUS0_RVALID;
output   m_axi_BUS0_RREADY;
input  [C_M_AXI_BUS0_DATA_WIDTH - 1:0] m_axi_BUS0_RDATA;
input   m_axi_BUS0_RLAST;
input  [C_M_AXI_BUS0_ID_WIDTH - 1:0] m_axi_BUS0_RID;
input  [C_M_AXI_BUS0_RUSER_WIDTH - 1:0] m_axi_BUS0_RUSER;
input  [1:0] m_axi_BUS0_RRESP;
input   m_axi_BUS0_BVALID;
output   m_axi_BUS0_BREADY;
input  [1:0] m_axi_BUS0_BRESP;
input  [C_M_AXI_BUS0_ID_WIDTH - 1:0] m_axi_BUS0_BID;
input  [C_M_AXI_BUS0_BUSER_WIDTH - 1:0] m_axi_BUS0_BUSER;
output  [31:0] internal_bram_Addr_A;
output   internal_bram_EN_A;
output  [3:0] internal_bram_WEN_A;
output  [31:0] internal_bram_Din_A;
input  [31:0] internal_bram_Dout_A;
output   internal_bram_Clk_A;
output   internal_bram_Rst_A;
input   s_axi_control_AWVALID;
output   s_axi_control_AWREADY;
input  [C_S_AXI_CONTROL_ADDR_WIDTH - 1:0] s_axi_control_AWADDR;
input   s_axi_control_WVALID;
output   s_axi_control_WREADY;
input  [C_S_AXI_CONTROL_DATA_WIDTH - 1:0] s_axi_control_WDATA;
input  [C_S_AXI_CONTROL_WSTRB_WIDTH - 1:0] s_axi_control_WSTRB;
input   s_axi_control_ARVALID;
output   s_axi_control_ARREADY;
input  [C_S_AXI_CONTROL_ADDR_WIDTH - 1:0] s_axi_control_ARADDR;
output   s_axi_control_RVALID;
input   s_axi_control_RREADY;
output  [C_S_AXI_CONTROL_DATA_WIDTH - 1:0] s_axi_control_RDATA;
output  [1:0] s_axi_control_RRESP;
output   s_axi_control_BVALID;
input   s_axi_control_BREADY;
output  [1:0] s_axi_control_BRESP;
output   interrupt;

reg internal_bram_Rst_A;

 reg    ap_rst_n_inv;
wire    ap_start;
reg    ap_done;
reg    ap_idle;
(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_ready;
wire   [63:0] romcode;
wire   [31:0] length_r;
reg    BUS0_blk_n_AR;
wire    ap_CS_fsm_state2;
reg   [0:0] icmp_ln31_reg_153;
reg   [63:0] romcode_read_reg_142;
wire   [11:0] select_ln26_fu_104_p3;
reg   [11:0] select_ln26_reg_147;
wire   [0:0] icmp_ln31_fu_112_p2;
wire   [31:0] zext_ln17_fu_118_p1;
wire  signed [61:0] trunc_ln1_fu_122_p4;
reg   [61:0] trunc_ln1_reg_162;
wire    grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_ap_start;
wire    grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_ap_done;
wire    grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_ap_idle;
wire    grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_ap_ready;
wire    grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_m_axi_BUS0_AWVALID;
wire   [63:0] grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_m_axi_BUS0_AWADDR;
wire   [0:0] grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_m_axi_BUS0_AWID;
wire   [31:0] grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_m_axi_BUS0_AWLEN;
wire   [2:0] grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_m_axi_BUS0_AWSIZE;
wire   [1:0] grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_m_axi_BUS0_AWBURST;
wire   [1:0] grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_m_axi_BUS0_AWLOCK;
wire   [3:0] grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_m_axi_BUS0_AWCACHE;
wire   [2:0] grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_m_axi_BUS0_AWPROT;
wire   [3:0] grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_m_axi_BUS0_AWQOS;
wire   [3:0] grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_m_axi_BUS0_AWREGION;
wire   [0:0] grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_m_axi_BUS0_AWUSER;
wire    grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_m_axi_BUS0_WVALID;
wire   [31:0] grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_m_axi_BUS0_WDATA;
wire   [3:0] grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_m_axi_BUS0_WSTRB;
wire    grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_m_axi_BUS0_WLAST;
wire   [0:0] grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_m_axi_BUS0_WID;
wire   [0:0] grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_m_axi_BUS0_WUSER;
wire    grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_m_axi_BUS0_ARVALID;
wire   [63:0] grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_m_axi_BUS0_ARADDR;
wire   [0:0] grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_m_axi_BUS0_ARID;
wire   [31:0] grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_m_axi_BUS0_ARLEN;
wire   [2:0] grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_m_axi_BUS0_ARSIZE;
wire   [1:0] grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_m_axi_BUS0_ARBURST;
wire   [1:0] grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_m_axi_BUS0_ARLOCK;
wire   [3:0] grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_m_axi_BUS0_ARCACHE;
wire   [2:0] grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_m_axi_BUS0_ARPROT;
wire   [3:0] grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_m_axi_BUS0_ARQOS;
wire   [3:0] grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_m_axi_BUS0_ARREGION;
wire   [0:0] grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_m_axi_BUS0_ARUSER;
wire    grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_m_axi_BUS0_RREADY;
wire    grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_m_axi_BUS0_BREADY;
wire   [31:0] grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_internal_bram_Addr_A;
wire    grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_internal_bram_EN_A;
wire   [3:0] grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_internal_bram_WEN_A;
wire   [31:0] grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_internal_bram_Din_A;
wire    BUS0_AWREADY;
wire    BUS0_WREADY;
reg    BUS0_ARVALID;
wire    BUS0_ARREADY;
reg   [63:0] BUS0_ARADDR;
reg   [31:0] BUS0_ARLEN;
wire    BUS0_RVALID;
reg    BUS0_RREADY;
wire   [31:0] BUS0_RDATA;
wire   [10:0] BUS0_RFIFONUM;
wire    BUS0_BVALID;
reg    grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_ap_start_reg;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state10;
wire  signed [63:0] sext_ln31_fu_131_p1;
reg    ap_block_state2_io;
wire   [0:0] icmp_ln26_fu_98_p2;
wire   [11:0] trunc_ln13_fu_94_p1;
reg    ap_block_state10_on_subcall_done;
reg   [9:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
reg    ap_ST_fsm_state10_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 10'd1;
#0 grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_ap_start_reg = 1'b0;
end

read_romcode_read_romcode_Pipeline_VITIS_LOOP_31_1 grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_ap_start),
    .ap_done(grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_ap_done),
    .ap_idle(grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_ap_idle),
    .ap_ready(grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_ap_ready),
    .m_axi_BUS0_AWVALID(grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_m_axi_BUS0_AWVALID),
    .m_axi_BUS0_AWREADY(1'b0),
    .m_axi_BUS0_AWADDR(grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_m_axi_BUS0_AWADDR),
    .m_axi_BUS0_AWID(grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_m_axi_BUS0_AWID),
    .m_axi_BUS0_AWLEN(grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_m_axi_BUS0_AWLEN),
    .m_axi_BUS0_AWSIZE(grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_m_axi_BUS0_AWSIZE),
    .m_axi_BUS0_AWBURST(grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_m_axi_BUS0_AWBURST),
    .m_axi_BUS0_AWLOCK(grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_m_axi_BUS0_AWLOCK),
    .m_axi_BUS0_AWCACHE(grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_m_axi_BUS0_AWCACHE),
    .m_axi_BUS0_AWPROT(grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_m_axi_BUS0_AWPROT),
    .m_axi_BUS0_AWQOS(grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_m_axi_BUS0_AWQOS),
    .m_axi_BUS0_AWREGION(grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_m_axi_BUS0_AWREGION),
    .m_axi_BUS0_AWUSER(grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_m_axi_BUS0_AWUSER),
    .m_axi_BUS0_WVALID(grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_m_axi_BUS0_WVALID),
    .m_axi_BUS0_WREADY(1'b0),
    .m_axi_BUS0_WDATA(grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_m_axi_BUS0_WDATA),
    .m_axi_BUS0_WSTRB(grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_m_axi_BUS0_WSTRB),
    .m_axi_BUS0_WLAST(grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_m_axi_BUS0_WLAST),
    .m_axi_BUS0_WID(grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_m_axi_BUS0_WID),
    .m_axi_BUS0_WUSER(grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_m_axi_BUS0_WUSER),
    .m_axi_BUS0_ARVALID(grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_m_axi_BUS0_ARVALID),
    .m_axi_BUS0_ARREADY(BUS0_ARREADY),
    .m_axi_BUS0_ARADDR(grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_m_axi_BUS0_ARADDR),
    .m_axi_BUS0_ARID(grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_m_axi_BUS0_ARID),
    .m_axi_BUS0_ARLEN(grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_m_axi_BUS0_ARLEN),
    .m_axi_BUS0_ARSIZE(grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_m_axi_BUS0_ARSIZE),
    .m_axi_BUS0_ARBURST(grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_m_axi_BUS0_ARBURST),
    .m_axi_BUS0_ARLOCK(grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_m_axi_BUS0_ARLOCK),
    .m_axi_BUS0_ARCACHE(grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_m_axi_BUS0_ARCACHE),
    .m_axi_BUS0_ARPROT(grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_m_axi_BUS0_ARPROT),
    .m_axi_BUS0_ARQOS(grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_m_axi_BUS0_ARQOS),
    .m_axi_BUS0_ARREGION(grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_m_axi_BUS0_ARREGION),
    .m_axi_BUS0_ARUSER(grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_m_axi_BUS0_ARUSER),
    .m_axi_BUS0_RVALID(BUS0_RVALID),
    .m_axi_BUS0_RREADY(grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_m_axi_BUS0_RREADY),
    .m_axi_BUS0_RDATA(BUS0_RDATA),
    .m_axi_BUS0_RLAST(1'b0),
    .m_axi_BUS0_RID(1'd0),
    .m_axi_BUS0_RFIFONUM(BUS0_RFIFONUM),
    .m_axi_BUS0_RUSER(1'd0),
    .m_axi_BUS0_RRESP(2'd0),
    .m_axi_BUS0_BVALID(1'b0),
    .m_axi_BUS0_BREADY(grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_m_axi_BUS0_BREADY),
    .m_axi_BUS0_BRESP(2'd0),
    .m_axi_BUS0_BID(1'd0),
    .m_axi_BUS0_BUSER(1'd0),
    .sext_ln31(trunc_ln1_reg_162),
    .select_ln26(select_ln26_reg_147),
    .internal_bram_Addr_A(grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_internal_bram_Addr_A),
    .internal_bram_EN_A(grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_internal_bram_EN_A),
    .internal_bram_WEN_A(grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_internal_bram_WEN_A),
    .internal_bram_Din_A(grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_internal_bram_Din_A),
    .internal_bram_Dout_A(32'd0)
);

read_romcode_control_s_axi #(
    .C_S_AXI_ADDR_WIDTH( C_S_AXI_CONTROL_ADDR_WIDTH ),
    .C_S_AXI_DATA_WIDTH( C_S_AXI_CONTROL_DATA_WIDTH ))
control_s_axi_U(
    .AWVALID(s_axi_control_AWVALID),
    .AWREADY(s_axi_control_AWREADY),
    .AWADDR(s_axi_control_AWADDR),
    .WVALID(s_axi_control_WVALID),
    .WREADY(s_axi_control_WREADY),
    .WDATA(s_axi_control_WDATA),
    .WSTRB(s_axi_control_WSTRB),
    .ARVALID(s_axi_control_ARVALID),
    .ARREADY(s_axi_control_ARREADY),
    .ARADDR(s_axi_control_ARADDR),
    .RVALID(s_axi_control_RVALID),
    .RREADY(s_axi_control_RREADY),
    .RDATA(s_axi_control_RDATA),
    .RRESP(s_axi_control_RRESP),
    .BVALID(s_axi_control_BVALID),
    .BREADY(s_axi_control_BREADY),
    .BRESP(s_axi_control_BRESP),
    .ACLK(ap_clk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .romcode(romcode),
    .length_r(length_r),
    .ap_start(ap_start),
    .interrupt(interrupt),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_idle(ap_idle)
);

read_romcode_BUS0_m_axi #(
    .CONSERVATIVE( 1 ),
    .USER_MAXREQS( 5 ),
    .NUM_READ_OUTSTANDING( 16 ),
    .NUM_WRITE_OUTSTANDING( 16 ),
    .MAX_READ_BURST_LENGTH( 64 ),
    .MAX_WRITE_BURST_LENGTH( 16 ),
    .USER_RFIFONUM_WIDTH( 11 ),
    .C_M_AXI_ID_WIDTH( C_M_AXI_BUS0_ID_WIDTH ),
    .C_M_AXI_ADDR_WIDTH( C_M_AXI_BUS0_ADDR_WIDTH ),
    .C_M_AXI_DATA_WIDTH( C_M_AXI_BUS0_DATA_WIDTH ),
    .C_M_AXI_AWUSER_WIDTH( C_M_AXI_BUS0_AWUSER_WIDTH ),
    .C_M_AXI_ARUSER_WIDTH( C_M_AXI_BUS0_ARUSER_WIDTH ),
    .C_M_AXI_WUSER_WIDTH( C_M_AXI_BUS0_WUSER_WIDTH ),
    .C_M_AXI_RUSER_WIDTH( C_M_AXI_BUS0_RUSER_WIDTH ),
    .C_M_AXI_BUSER_WIDTH( C_M_AXI_BUS0_BUSER_WIDTH ),
    .C_USER_VALUE( C_M_AXI_BUS0_USER_VALUE ),
    .C_PROT_VALUE( C_M_AXI_BUS0_PROT_VALUE ),
    .C_CACHE_VALUE( C_M_AXI_BUS0_CACHE_VALUE ),
    .USER_DW( 32 ),
    .USER_AW( 64 ))
BUS0_m_axi_U(
    .AWVALID(m_axi_BUS0_AWVALID),
    .AWREADY(m_axi_BUS0_AWREADY),
    .AWADDR(m_axi_BUS0_AWADDR),
    .AWID(m_axi_BUS0_AWID),
    .AWLEN(m_axi_BUS0_AWLEN),
    .AWSIZE(m_axi_BUS0_AWSIZE),
    .AWBURST(m_axi_BUS0_AWBURST),
    .AWLOCK(m_axi_BUS0_AWLOCK),
    .AWCACHE(m_axi_BUS0_AWCACHE),
    .AWPROT(m_axi_BUS0_AWPROT),
    .AWQOS(m_axi_BUS0_AWQOS),
    .AWREGION(m_axi_BUS0_AWREGION),
    .AWUSER(m_axi_BUS0_AWUSER),
    .WVALID(m_axi_BUS0_WVALID),
    .WREADY(m_axi_BUS0_WREADY),
    .WDATA(m_axi_BUS0_WDATA),
    .WSTRB(m_axi_BUS0_WSTRB),
    .WLAST(m_axi_BUS0_WLAST),
    .WID(m_axi_BUS0_WID),
    .WUSER(m_axi_BUS0_WUSER),
    .ARVALID(m_axi_BUS0_ARVALID),
    .ARREADY(m_axi_BUS0_ARREADY),
    .ARADDR(m_axi_BUS0_ARADDR),
    .ARID(m_axi_BUS0_ARID),
    .ARLEN(m_axi_BUS0_ARLEN),
    .ARSIZE(m_axi_BUS0_ARSIZE),
    .ARBURST(m_axi_BUS0_ARBURST),
    .ARLOCK(m_axi_BUS0_ARLOCK),
    .ARCACHE(m_axi_BUS0_ARCACHE),
    .ARPROT(m_axi_BUS0_ARPROT),
    .ARQOS(m_axi_BUS0_ARQOS),
    .ARREGION(m_axi_BUS0_ARREGION),
    .ARUSER(m_axi_BUS0_ARUSER),
    .RVALID(m_axi_BUS0_RVALID),
    .RREADY(m_axi_BUS0_RREADY),
    .RDATA(m_axi_BUS0_RDATA),
    .RLAST(m_axi_BUS0_RLAST),
    .RID(m_axi_BUS0_RID),
    .RUSER(m_axi_BUS0_RUSER),
    .RRESP(m_axi_BUS0_RRESP),
    .BVALID(m_axi_BUS0_BVALID),
    .BREADY(m_axi_BUS0_BREADY),
    .BRESP(m_axi_BUS0_BRESP),
    .BID(m_axi_BUS0_BID),
    .BUSER(m_axi_BUS0_BUSER),
    .ACLK(ap_clk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .I_ARVALID(BUS0_ARVALID),
    .I_ARREADY(BUS0_ARREADY),
    .I_ARADDR(BUS0_ARADDR),
    .I_ARLEN(BUS0_ARLEN),
    .I_RVALID(BUS0_RVALID),
    .I_RREADY(BUS0_RREADY),
    .I_RDATA(BUS0_RDATA),
    .I_RFIFONUM(BUS0_RFIFONUM),
    .I_AWVALID(1'b0),
    .I_AWREADY(BUS0_AWREADY),
    .I_AWADDR(64'd0),
    .I_AWLEN(32'd0),
    .I_WVALID(1'b0),
    .I_WREADY(BUS0_WREADY),
    .I_WDATA(32'd0),
    .I_WSTRB(4'd0),
    .I_BVALID(BUS0_BVALID),
    .I_BREADY(1'b0)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state9)) begin
            grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_ap_start_reg <= 1'b1;
        end else if ((grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_ap_ready == 1'b1)) begin
            grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        icmp_ln31_reg_153 <= icmp_ln31_fu_112_p2;
        romcode_read_reg_142 <= romcode;
        select_ln26_reg_147 <= select_ln26_fu_104_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln31_reg_153 == 1'd0))) begin
        trunc_ln1_reg_162 <= {{romcode_read_reg_142[63:2]}};
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_state2_io) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln31_reg_153 == 1'd0))) begin
        BUS0_ARADDR = sext_ln31_fu_131_p1;
    end else if (((1'b1 == ap_CS_fsm_state9) | ((1'b1 == ap_CS_fsm_state10) & (icmp_ln31_reg_153 == 1'd0)))) begin
        BUS0_ARADDR = grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_m_axi_BUS0_ARADDR;
    end else begin
        BUS0_ARADDR = 'bx;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_state2_io) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln31_reg_153 == 1'd0))) begin
        BUS0_ARLEN = zext_ln17_fu_118_p1;
    end else if (((1'b1 == ap_CS_fsm_state9) | ((1'b1 == ap_CS_fsm_state10) & (icmp_ln31_reg_153 == 1'd0)))) begin
        BUS0_ARLEN = grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_m_axi_BUS0_ARLEN;
    end else begin
        BUS0_ARLEN = 'bx;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_state2_io) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln31_reg_153 == 1'd0))) begin
        BUS0_ARVALID = 1'b1;
    end else if (((1'b1 == ap_CS_fsm_state9) | ((1'b1 == ap_CS_fsm_state10) & (icmp_ln31_reg_153 == 1'd0)))) begin
        BUS0_ARVALID = grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_m_axi_BUS0_ARVALID;
    end else begin
        BUS0_ARVALID = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | ((1'b1 == ap_CS_fsm_state10) & (icmp_ln31_reg_153 == 1'd0)))) begin
        BUS0_RREADY = grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_m_axi_BUS0_RREADY;
    end else begin
        BUS0_RREADY = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln31_reg_153 == 1'd0))) begin
        BUS0_blk_n_AR = m_axi_BUS0_ARREADY;
    end else begin
        BUS0_blk_n_AR = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_block_state10_on_subcall_done)) begin
        ap_ST_fsm_state10_blk = 1'b1;
    end else begin
        ap_ST_fsm_state10_blk = 1'b0;
    end
end

always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_block_state2_io)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end

assign ap_ST_fsm_state3_blk = 1'b0;

assign ap_ST_fsm_state4_blk = 1'b0;

assign ap_ST_fsm_state5_blk = 1'b0;

assign ap_ST_fsm_state6_blk = 1'b0;

assign ap_ST_fsm_state7_blk = 1'b0;

assign ap_ST_fsm_state8_blk = 1'b0;

assign ap_ST_fsm_state9_blk = 1'b0;

always @ (*) begin
    if (((1'b0 == ap_block_state10_on_subcall_done) & (1'b1 == ap_CS_fsm_state10))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_state10_on_subcall_done) & (1'b1 == ap_CS_fsm_state10))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b0 == ap_block_state2_io) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln31_reg_153 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else if (((1'b0 == ap_block_state2_io) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln31_reg_153 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            if (((1'b0 == ap_block_state10_on_subcall_done) & (1'b1 == ap_CS_fsm_state10))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

always @ (*) begin
    ap_block_state10_on_subcall_done = ((grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_ap_done == 1'b0) & (icmp_ln31_reg_153 == 1'd0));
end

always @ (*) begin
    ap_block_state2_io = ((1'b0 == BUS0_ARREADY) & (icmp_ln31_reg_153 == 1'd0));
end

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_ap_start = grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_ap_start_reg;

assign icmp_ln26_fu_98_p2 = ((length_r > 32'd2048) ? 1'b1 : 1'b0);

assign icmp_ln31_fu_112_p2 = ((select_ln26_fu_104_p3 == 12'd0) ? 1'b1 : 1'b0);

assign internal_bram_Addr_A = grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_internal_bram_Addr_A;

assign internal_bram_Clk_A = ap_clk;

assign internal_bram_Din_A = grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_internal_bram_Din_A;

assign internal_bram_EN_A = grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_internal_bram_EN_A;

always @ (*) begin
    internal_bram_Rst_A = ~ap_rst_n;
end

assign internal_bram_WEN_A = grp_read_romcode_Pipeline_VITIS_LOOP_31_1_fu_84_internal_bram_WEN_A;

assign select_ln26_fu_104_p3 = ((icmp_ln26_fu_98_p2[0:0] == 1'b1) ? 12'd2048 : trunc_ln13_fu_94_p1);

assign sext_ln31_fu_131_p1 = trunc_ln1_fu_122_p4;

assign trunc_ln13_fu_94_p1 = length_r[11:0];

assign trunc_ln1_fu_122_p4 = {{romcode_read_reg_142[63:2]}};

assign zext_ln17_fu_118_p1 = select_ln26_reg_147;

endmodule //read_romcode
