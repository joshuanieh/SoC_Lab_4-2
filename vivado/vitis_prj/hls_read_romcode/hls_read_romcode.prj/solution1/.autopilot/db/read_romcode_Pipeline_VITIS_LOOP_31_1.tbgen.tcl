set moduleName read_romcode_Pipeline_VITIS_LOOP_31_1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {read_romcode_Pipeline_VITIS_LOOP_31_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ BUS0 int 32 regular {axi_master 0}  }
	{ sext_ln31 int 62 regular  }
	{ select_ln26 int 12 regular  }
	{ internal_bram int 32 regular {bram 2048 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "BUS0", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "romcode","offset": { "type": "dynamic","port_name": "romcode","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "sext_ln31", "interface" : "wire", "bitwidth" : 62, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln26", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "internal_bram", "interface" : "bram", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 59
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_BUS0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_BUS0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_BUS0_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_BUS0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_BUS0_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_BUS0_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_BUS0_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_BUS0_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_BUS0_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_BUS0_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_BUS0_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_BUS0_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_BUS0_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_BUS0_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_BUS0_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_BUS0_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_BUS0_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_BUS0_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_BUS0_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_BUS0_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_BUS0_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_BUS0_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_BUS0_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_BUS0_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_BUS0_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_BUS0_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_BUS0_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_BUS0_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_BUS0_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_BUS0_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_BUS0_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_BUS0_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_BUS0_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_BUS0_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_BUS0_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_BUS0_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_BUS0_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_BUS0_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_BUS0_RFIFONUM sc_in sc_lv 11 signal 0 } 
	{ m_axi_BUS0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_BUS0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_BUS0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_BUS0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_BUS0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_BUS0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_BUS0_BUSER sc_in sc_lv 1 signal 0 } 
	{ sext_ln31 sc_in sc_lv 62 signal 1 } 
	{ select_ln26 sc_in sc_lv 12 signal 2 } 
	{ internal_bram_Addr_A sc_out sc_lv 32 signal 3 } 
	{ internal_bram_EN_A sc_out sc_logic 1 signal 3 } 
	{ internal_bram_WEN_A sc_out sc_lv 4 signal 3 } 
	{ internal_bram_Din_A sc_out sc_lv 32 signal 3 } 
	{ internal_bram_Dout_A sc_in sc_lv 32 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_BUS0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BUS0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_BUS0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BUS0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_BUS0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "BUS0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_BUS0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "BUS0", "role": "AWID" }} , 
 	{ "name": "m_axi_BUS0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "BUS0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_BUS0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "BUS0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_BUS0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "BUS0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_BUS0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "BUS0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_BUS0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "BUS0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_BUS0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "BUS0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_BUS0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "BUS0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_BUS0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "BUS0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_BUS0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "BUS0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_BUS0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BUS0", "role": "WVALID" }} , 
 	{ "name": "m_axi_BUS0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BUS0", "role": "WREADY" }} , 
 	{ "name": "m_axi_BUS0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "BUS0", "role": "WDATA" }} , 
 	{ "name": "m_axi_BUS0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "BUS0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_BUS0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BUS0", "role": "WLAST" }} , 
 	{ "name": "m_axi_BUS0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "BUS0", "role": "WID" }} , 
 	{ "name": "m_axi_BUS0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "BUS0", "role": "WUSER" }} , 
 	{ "name": "m_axi_BUS0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BUS0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_BUS0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BUS0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_BUS0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "BUS0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_BUS0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "BUS0", "role": "ARID" }} , 
 	{ "name": "m_axi_BUS0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "BUS0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_BUS0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "BUS0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_BUS0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "BUS0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_BUS0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "BUS0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_BUS0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "BUS0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_BUS0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "BUS0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_BUS0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "BUS0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_BUS0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "BUS0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_BUS0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "BUS0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_BUS0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BUS0", "role": "RVALID" }} , 
 	{ "name": "m_axi_BUS0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BUS0", "role": "RREADY" }} , 
 	{ "name": "m_axi_BUS0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "BUS0", "role": "RDATA" }} , 
 	{ "name": "m_axi_BUS0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BUS0", "role": "RLAST" }} , 
 	{ "name": "m_axi_BUS0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "BUS0", "role": "RID" }} , 
 	{ "name": "m_axi_BUS0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "BUS0", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_BUS0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "BUS0", "role": "RUSER" }} , 
 	{ "name": "m_axi_BUS0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "BUS0", "role": "RRESP" }} , 
 	{ "name": "m_axi_BUS0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BUS0", "role": "BVALID" }} , 
 	{ "name": "m_axi_BUS0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BUS0", "role": "BREADY" }} , 
 	{ "name": "m_axi_BUS0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "BUS0", "role": "BRESP" }} , 
 	{ "name": "m_axi_BUS0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "BUS0", "role": "BID" }} , 
 	{ "name": "m_axi_BUS0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "BUS0", "role": "BUSER" }} , 
 	{ "name": "sext_ln31", "direction": "in", "datatype": "sc_lv", "bitwidth":62, "type": "signal", "bundle":{"name": "sext_ln31", "role": "default" }} , 
 	{ "name": "select_ln26", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "select_ln26", "role": "default" }} , 
 	{ "name": "internal_bram_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "internal_bram", "role": "Addr_A" }} , 
 	{ "name": "internal_bram_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "internal_bram", "role": "EN_A" }} , 
 	{ "name": "internal_bram_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "internal_bram", "role": "WEN_A" }} , 
 	{ "name": "internal_bram_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "internal_bram", "role": "Din_A" }} , 
 	{ "name": "internal_bram_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "internal_bram", "role": "Dout_A" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "read_romcode_Pipeline_VITIS_LOOP_31_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "BUS0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "BUS0_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln31", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln26", "Type" : "None", "Direction" : "I"},
			{"Name" : "internal_bram", "Type" : "Bram", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_31_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	read_romcode_Pipeline_VITIS_LOOP_31_1 {
		BUS0 {Type I LastRead 1 FirstWrite -1}
		sext_ln31 {Type I LastRead 0 FirstWrite -1}
		select_ln26 {Type I LastRead 0 FirstWrite -1}
		internal_bram {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "4", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_BUS0_AWVALID VALID 1 1 }  { m_axi_BUS0_AWREADY READY 0 1 }  { m_axi_BUS0_AWADDR ADDR 1 64 }  { m_axi_BUS0_AWID ID 1 1 }  { m_axi_BUS0_AWLEN SIZE 1 32 }  { m_axi_BUS0_AWSIZE BURST 1 3 }  { m_axi_BUS0_AWBURST LOCK 1 2 }  { m_axi_BUS0_AWLOCK CACHE 1 2 }  { m_axi_BUS0_AWCACHE PROT 1 4 }  { m_axi_BUS0_AWPROT QOS 1 3 }  { m_axi_BUS0_AWQOS REGION 1 4 }  { m_axi_BUS0_AWREGION USER 1 4 }  { m_axi_BUS0_AWUSER DATA 1 1 }  { m_axi_BUS0_WVALID VALID 1 1 }  { m_axi_BUS0_WREADY READY 0 1 }  { m_axi_BUS0_WDATA FIFONUM 1 32 }  { m_axi_BUS0_WSTRB STRB 1 4 }  { m_axi_BUS0_WLAST LAST 1 1 }  { m_axi_BUS0_WID ID 1 1 }  { m_axi_BUS0_WUSER DATA 1 1 }  { m_axi_BUS0_ARVALID VALID 1 1 }  { m_axi_BUS0_ARREADY READY 0 1 }  { m_axi_BUS0_ARADDR ADDR 1 64 }  { m_axi_BUS0_ARID ID 1 1 }  { m_axi_BUS0_ARLEN SIZE 1 32 }  { m_axi_BUS0_ARSIZE BURST 1 3 }  { m_axi_BUS0_ARBURST LOCK 1 2 }  { m_axi_BUS0_ARLOCK CACHE 1 2 }  { m_axi_BUS0_ARCACHE PROT 1 4 }  { m_axi_BUS0_ARPROT QOS 1 3 }  { m_axi_BUS0_ARQOS REGION 1 4 }  { m_axi_BUS0_ARREGION USER 1 4 }  { m_axi_BUS0_ARUSER DATA 1 1 }  { m_axi_BUS0_RVALID VALID 0 1 }  { m_axi_BUS0_RREADY READY 1 1 }  { m_axi_BUS0_RDATA FIFONUM 0 32 }  { m_axi_BUS0_RLAST LAST 0 1 }  { m_axi_BUS0_RID ID 0 1 }  { m_axi_BUS0_RFIFONUM LEN 0 11 }  { m_axi_BUS0_RUSER DATA 0 1 }  { m_axi_BUS0_RRESP RESP 0 2 }  { m_axi_BUS0_BVALID VALID 0 1 }  { m_axi_BUS0_BREADY READY 1 1 }  { m_axi_BUS0_BRESP RESP 0 2 }  { m_axi_BUS0_BID ID 0 1 }  { m_axi_BUS0_BUSER DATA 0 1 } } }
	sext_ln31 { ap_none {  { sext_ln31 in_data 0 62 } } }
	select_ln26 { ap_none {  { select_ln26 in_data 0 12 } } }
	internal_bram { bram {  { internal_bram_Addr_A MemPortADDR2 1 32 }  { internal_bram_EN_A MemPortCE2 1 1 }  { internal_bram_WEN_A MemPortWE2 1 4 }  { internal_bram_Din_A MemPortDIN2 1 32 }  { internal_bram_Dout_A MemPortDOUT2 0 32 } } }
}
