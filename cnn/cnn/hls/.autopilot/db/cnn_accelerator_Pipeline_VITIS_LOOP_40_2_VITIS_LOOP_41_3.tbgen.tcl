set moduleName cnn_accelerator_Pipeline_VITIS_LOOP_40_2_VITIS_LOOP_41_3
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set isPipelined_legacy 1
set pipeline_type loop_auto_rewind
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 4
set C_modelName {cnn_accelerator_Pipeline_VITIS_LOOP_40_2_VITIS_LOOP_41_3}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ gmem int 32 regular {axi_master 2}  }
	{ precision int 32 regular  }
	{ input_r int 64 regular  }
	{ sext_ln39_10 int 32 regular  }
	{ sext_ln39_11 int 32 regular  }
	{ sext_ln39_12 int 32 regular  }
	{ sext_ln39_13 int 32 regular  }
	{ sext_ln39_14 int 32 regular  }
	{ sext_ln39_15 int 32 regular  }
	{ sext_ln39_16 int 32 regular  }
	{ sext_ln39_2 int 32 regular  }
	{ sext_ln39_3 int 32 regular  }
	{ sext_ln39_4 int 32 regular  }
	{ sext_ln39_5 int 32 regular  }
	{ sext_ln39_6 int 32 regular  }
	{ sext_ln39_7 int 32 regular  }
	{ sext_ln39_8 int 32 regular  }
	{ sext_ln39_9 int 32 regular  }
	{ sext_ln39 int 32 regular  }
	{ phi_mul7 int 62 regular  }
	{ output_r int 64 regular  }
	{ w8_cast int 8 regular  }
	{ bh int 4 regular  }
	{ empty_30 int 4 regular  }
	{ empty_31 int 2 regular  }
	{ empty_32 int 2 regular  }
	{ empty_33 int 4 regular  }
	{ bh_1 int 4 regular  }
	{ w8_15_cast int 8 regular  }
	{ empty_34 int 2 regular  }
	{ empty_35 int 4 regular  }
	{ bh_2 int 4 regular  }
	{ w8_16_cast int 8 regular  }
	{ empty_36 int 2 regular  }
	{ empty_37 int 4 regular  }
	{ bh_3 int 4 regular  }
	{ w8_17_cast int 8 regular  }
	{ empty_38 int 2 regular  }
	{ empty_39 int 4 regular  }
	{ bh_4 int 4 regular  }
	{ w8_18_cast int 8 regular  }
	{ empty_40 int 2 regular  }
	{ empty_41 int 4 regular  }
	{ bh_5 int 4 regular  }
	{ w8_19_cast int 8 regular  }
	{ empty_42 int 2 regular  }
	{ empty_43 int 4 regular  }
	{ bh_6 int 4 regular  }
	{ w8_20_cast int 8 regular  }
	{ empty_44 int 2 regular  }
	{ empty_45 int 4 regular  }
	{ bh_7 int 4 regular  }
	{ w8_21_cast int 8 regular  }
	{ w8_22_cast int 8 regular  }
	{ bh_8 int 4 regular  }
	{ empty_46 int 4 regular  }
	{ empty_47 int 2 regular  }
	{ empty_48 int 2 regular  }
	{ empty_49 int 4 regular  }
	{ bh_9 int 4 regular  }
	{ w8_23_cast int 8 regular  }
	{ empty_50 int 2 regular  }
	{ empty_51 int 4 regular  }
	{ bh_15 int 4 regular  }
	{ w8_24_cast int 8 regular  }
	{ empty_52 int 2 regular  }
	{ empty_53 int 4 regular  }
	{ bh_10 int 4 regular  }
	{ w8_25_cast int 8 regular  }
	{ empty_54 int 2 regular  }
	{ empty_55 int 4 regular  }
	{ bh_11 int 4 regular  }
	{ w8_26_cast int 8 regular  }
	{ empty_56 int 2 regular  }
	{ empty_57 int 4 regular  }
	{ bh_12 int 4 regular  }
	{ w8_27_cast int 8 regular  }
	{ empty_58 int 2 regular  }
	{ empty_59 int 4 regular  }
	{ bh_13 int 4 regular  }
	{ w8_28_cast int 8 regular  }
	{ empty_60 int 2 regular  }
	{ empty int 4 regular  }
	{ bh_14 int 4 regular  }
	{ w8_29_cast int 8 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[ {"cElement": [{"cName": "input_r","offset": { "type": "dynamic","port_name": "input_r","bundle": "control"},"direction": "READONLY"},{"cName": "weights8","offset": { "type": "dynamic","port_name": "weights8","bundle": "control"},"direction": "READONLY"},{"cName": "weights6","offset": { "type": "dynamic","port_name": "weights6","bundle": "control"},"direction": "READONLY"},{"cName": "weights4","offset": { "type": "dynamic","port_name": "weights4","bundle": "control"},"direction": "READONLY"},{"cName": "weights2","offset": { "type": "dynamic","port_name": "weights2","bundle": "control"},"direction": "READONLY"},{"cName": "output_r","offset": { "type": "dynamic","port_name": "output_r","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "precision", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_r", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln39_10", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln39_11", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln39_12", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln39_13", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln39_14", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln39_15", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln39_16", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln39_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln39_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln39_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln39_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln39_6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln39_7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln39_8", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln39_9", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln39", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "phi_mul7", "interface" : "wire", "bitwidth" : 62, "direction" : "READONLY"} , 
 	{ "Name" : "output_r", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "w8_cast", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "bh", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "empty_30", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "empty_31", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "empty_32", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "empty_33", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "bh_1", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "w8_15_cast", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "empty_34", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "empty_35", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "bh_2", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "w8_16_cast", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "empty_36", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "empty_37", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "bh_3", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "w8_17_cast", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "empty_38", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "empty_39", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "bh_4", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "w8_18_cast", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "empty_40", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "empty_41", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "bh_5", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "w8_19_cast", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "empty_42", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "empty_43", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "bh_6", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "w8_20_cast", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "empty_44", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "empty_45", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "bh_7", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "w8_21_cast", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "w8_22_cast", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "bh_8", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "empty_46", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "empty_47", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "empty_48", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "empty_49", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "bh_9", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "w8_23_cast", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "empty_50", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "empty_51", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "bh_15", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "w8_24_cast", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "empty_52", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "empty_53", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "bh_10", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "w8_25_cast", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "empty_54", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "empty_55", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "bh_11", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "w8_26_cast", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "empty_56", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "empty_57", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "bh_12", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "w8_27_cast", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "empty_58", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "empty_59", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "bh_13", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "w8_28_cast", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "empty_60", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "bh_14", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "w8_29_cast", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 136
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_gmem_0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_0_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_0_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_0_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_0_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_0_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_0_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_0_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_0_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_0_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_0_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_0_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_0_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_0_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_0_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_0_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_0_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_0_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_0_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_0_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_0_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_0_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_0_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_0_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_0_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_0_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_gmem_0_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_0_RFIFONUM sc_in sc_lv 9 signal 0 } 
	{ m_axi_gmem_0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_0_BUSER sc_in sc_lv 1 signal 0 } 
	{ precision sc_in sc_lv 32 signal 1 } 
	{ input_r sc_in sc_lv 64 signal 2 } 
	{ sext_ln39_10 sc_in sc_lv 32 signal 3 } 
	{ sext_ln39_11 sc_in sc_lv 32 signal 4 } 
	{ sext_ln39_12 sc_in sc_lv 32 signal 5 } 
	{ sext_ln39_13 sc_in sc_lv 32 signal 6 } 
	{ sext_ln39_14 sc_in sc_lv 32 signal 7 } 
	{ sext_ln39_15 sc_in sc_lv 32 signal 8 } 
	{ sext_ln39_16 sc_in sc_lv 32 signal 9 } 
	{ sext_ln39_2 sc_in sc_lv 32 signal 10 } 
	{ sext_ln39_3 sc_in sc_lv 32 signal 11 } 
	{ sext_ln39_4 sc_in sc_lv 32 signal 12 } 
	{ sext_ln39_5 sc_in sc_lv 32 signal 13 } 
	{ sext_ln39_6 sc_in sc_lv 32 signal 14 } 
	{ sext_ln39_7 sc_in sc_lv 32 signal 15 } 
	{ sext_ln39_8 sc_in sc_lv 32 signal 16 } 
	{ sext_ln39_9 sc_in sc_lv 32 signal 17 } 
	{ sext_ln39 sc_in sc_lv 32 signal 18 } 
	{ phi_mul7 sc_in sc_lv 62 signal 19 } 
	{ output_r sc_in sc_lv 64 signal 20 } 
	{ w8_cast sc_in sc_lv 8 signal 21 } 
	{ bh sc_in sc_lv 4 signal 22 } 
	{ empty_30 sc_in sc_lv 4 signal 23 } 
	{ empty_31 sc_in sc_lv 2 signal 24 } 
	{ empty_32 sc_in sc_lv 2 signal 25 } 
	{ empty_33 sc_in sc_lv 4 signal 26 } 
	{ bh_1 sc_in sc_lv 4 signal 27 } 
	{ w8_15_cast sc_in sc_lv 8 signal 28 } 
	{ empty_34 sc_in sc_lv 2 signal 29 } 
	{ empty_35 sc_in sc_lv 4 signal 30 } 
	{ bh_2 sc_in sc_lv 4 signal 31 } 
	{ w8_16_cast sc_in sc_lv 8 signal 32 } 
	{ empty_36 sc_in sc_lv 2 signal 33 } 
	{ empty_37 sc_in sc_lv 4 signal 34 } 
	{ bh_3 sc_in sc_lv 4 signal 35 } 
	{ w8_17_cast sc_in sc_lv 8 signal 36 } 
	{ empty_38 sc_in sc_lv 2 signal 37 } 
	{ empty_39 sc_in sc_lv 4 signal 38 } 
	{ bh_4 sc_in sc_lv 4 signal 39 } 
	{ w8_18_cast sc_in sc_lv 8 signal 40 } 
	{ empty_40 sc_in sc_lv 2 signal 41 } 
	{ empty_41 sc_in sc_lv 4 signal 42 } 
	{ bh_5 sc_in sc_lv 4 signal 43 } 
	{ w8_19_cast sc_in sc_lv 8 signal 44 } 
	{ empty_42 sc_in sc_lv 2 signal 45 } 
	{ empty_43 sc_in sc_lv 4 signal 46 } 
	{ bh_6 sc_in sc_lv 4 signal 47 } 
	{ w8_20_cast sc_in sc_lv 8 signal 48 } 
	{ empty_44 sc_in sc_lv 2 signal 49 } 
	{ empty_45 sc_in sc_lv 4 signal 50 } 
	{ bh_7 sc_in sc_lv 4 signal 51 } 
	{ w8_21_cast sc_in sc_lv 8 signal 52 } 
	{ w8_22_cast sc_in sc_lv 8 signal 53 } 
	{ bh_8 sc_in sc_lv 4 signal 54 } 
	{ empty_46 sc_in sc_lv 4 signal 55 } 
	{ empty_47 sc_in sc_lv 2 signal 56 } 
	{ empty_48 sc_in sc_lv 2 signal 57 } 
	{ empty_49 sc_in sc_lv 4 signal 58 } 
	{ bh_9 sc_in sc_lv 4 signal 59 } 
	{ w8_23_cast sc_in sc_lv 8 signal 60 } 
	{ empty_50 sc_in sc_lv 2 signal 61 } 
	{ empty_51 sc_in sc_lv 4 signal 62 } 
	{ bh_15 sc_in sc_lv 4 signal 63 } 
	{ w8_24_cast sc_in sc_lv 8 signal 64 } 
	{ empty_52 sc_in sc_lv 2 signal 65 } 
	{ empty_53 sc_in sc_lv 4 signal 66 } 
	{ bh_10 sc_in sc_lv 4 signal 67 } 
	{ w8_25_cast sc_in sc_lv 8 signal 68 } 
	{ empty_54 sc_in sc_lv 2 signal 69 } 
	{ empty_55 sc_in sc_lv 4 signal 70 } 
	{ bh_11 sc_in sc_lv 4 signal 71 } 
	{ w8_26_cast sc_in sc_lv 8 signal 72 } 
	{ empty_56 sc_in sc_lv 2 signal 73 } 
	{ empty_57 sc_in sc_lv 4 signal 74 } 
	{ bh_12 sc_in sc_lv 4 signal 75 } 
	{ w8_27_cast sc_in sc_lv 8 signal 76 } 
	{ empty_58 sc_in sc_lv 2 signal 77 } 
	{ empty_59 sc_in sc_lv 4 signal 78 } 
	{ bh_13 sc_in sc_lv 4 signal 79 } 
	{ w8_28_cast sc_in sc_lv 8 signal 80 } 
	{ empty_60 sc_in sc_lv 2 signal 81 } 
	{ empty sc_in sc_lv 4 signal 82 } 
	{ bh_14 sc_in sc_lv 4 signal 83 } 
	{ w8_29_cast sc_in sc_lv 8 signal 84 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_gmem_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWVALID" }} , 
 	{ "name": "m_axi_gmem_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWREADY" }} , 
 	{ "name": "m_axi_gmem_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWADDR" }} , 
 	{ "name": "m_axi_gmem_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWID" }} , 
 	{ "name": "m_axi_gmem_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWLEN" }} , 
 	{ "name": "m_axi_gmem_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWSIZE" }} , 
 	{ "name": "m_axi_gmem_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWBURST" }} , 
 	{ "name": "m_axi_gmem_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWLOCK" }} , 
 	{ "name": "m_axi_gmem_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWCACHE" }} , 
 	{ "name": "m_axi_gmem_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWPROT" }} , 
 	{ "name": "m_axi_gmem_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWQOS" }} , 
 	{ "name": "m_axi_gmem_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWREGION" }} , 
 	{ "name": "m_axi_gmem_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWUSER" }} , 
 	{ "name": "m_axi_gmem_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_WVALID" }} , 
 	{ "name": "m_axi_gmem_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_WREADY" }} , 
 	{ "name": "m_axi_gmem_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "0_WDATA" }} , 
 	{ "name": "m_axi_gmem_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "0_WSTRB" }} , 
 	{ "name": "m_axi_gmem_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_WLAST" }} , 
 	{ "name": "m_axi_gmem_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_WID" }} , 
 	{ "name": "m_axi_gmem_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_WUSER" }} , 
 	{ "name": "m_axi_gmem_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARVALID" }} , 
 	{ "name": "m_axi_gmem_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARREADY" }} , 
 	{ "name": "m_axi_gmem_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARADDR" }} , 
 	{ "name": "m_axi_gmem_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARID" }} , 
 	{ "name": "m_axi_gmem_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARLEN" }} , 
 	{ "name": "m_axi_gmem_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARSIZE" }} , 
 	{ "name": "m_axi_gmem_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARBURST" }} , 
 	{ "name": "m_axi_gmem_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARLOCK" }} , 
 	{ "name": "m_axi_gmem_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARCACHE" }} , 
 	{ "name": "m_axi_gmem_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARPROT" }} , 
 	{ "name": "m_axi_gmem_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARQOS" }} , 
 	{ "name": "m_axi_gmem_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARREGION" }} , 
 	{ "name": "m_axi_gmem_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARUSER" }} , 
 	{ "name": "m_axi_gmem_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_RVALID" }} , 
 	{ "name": "m_axi_gmem_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_RREADY" }} , 
 	{ "name": "m_axi_gmem_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "0_RDATA" }} , 
 	{ "name": "m_axi_gmem_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_RLAST" }} , 
 	{ "name": "m_axi_gmem_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_RID" }} , 
 	{ "name": "m_axi_gmem_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "gmem", "role": "0_RFIFONUM" }} , 
 	{ "name": "m_axi_gmem_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_RUSER" }} , 
 	{ "name": "m_axi_gmem_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "0_RRESP" }} , 
 	{ "name": "m_axi_gmem_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_BVALID" }} , 
 	{ "name": "m_axi_gmem_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_BREADY" }} , 
 	{ "name": "m_axi_gmem_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "0_BRESP" }} , 
 	{ "name": "m_axi_gmem_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_BID" }} , 
 	{ "name": "m_axi_gmem_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_BUSER" }} , 
 	{ "name": "precision", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "precision", "role": "default" }} , 
 	{ "name": "input_r", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "input_r", "role": "default" }} , 
 	{ "name": "sext_ln39_10", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sext_ln39_10", "role": "default" }} , 
 	{ "name": "sext_ln39_11", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sext_ln39_11", "role": "default" }} , 
 	{ "name": "sext_ln39_12", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sext_ln39_12", "role": "default" }} , 
 	{ "name": "sext_ln39_13", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sext_ln39_13", "role": "default" }} , 
 	{ "name": "sext_ln39_14", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sext_ln39_14", "role": "default" }} , 
 	{ "name": "sext_ln39_15", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sext_ln39_15", "role": "default" }} , 
 	{ "name": "sext_ln39_16", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sext_ln39_16", "role": "default" }} , 
 	{ "name": "sext_ln39_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sext_ln39_2", "role": "default" }} , 
 	{ "name": "sext_ln39_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sext_ln39_3", "role": "default" }} , 
 	{ "name": "sext_ln39_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sext_ln39_4", "role": "default" }} , 
 	{ "name": "sext_ln39_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sext_ln39_5", "role": "default" }} , 
 	{ "name": "sext_ln39_6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sext_ln39_6", "role": "default" }} , 
 	{ "name": "sext_ln39_7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sext_ln39_7", "role": "default" }} , 
 	{ "name": "sext_ln39_8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sext_ln39_8", "role": "default" }} , 
 	{ "name": "sext_ln39_9", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sext_ln39_9", "role": "default" }} , 
 	{ "name": "sext_ln39", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sext_ln39", "role": "default" }} , 
 	{ "name": "phi_mul7", "direction": "in", "datatype": "sc_lv", "bitwidth":62, "type": "signal", "bundle":{"name": "phi_mul7", "role": "default" }} , 
 	{ "name": "output_r", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "output_r", "role": "default" }} , 
 	{ "name": "w8_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "w8_cast", "role": "default" }} , 
 	{ "name": "bh", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bh", "role": "default" }} , 
 	{ "name": "empty_30", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "empty_30", "role": "default" }} , 
 	{ "name": "empty_31", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "empty_31", "role": "default" }} , 
 	{ "name": "empty_32", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "empty_32", "role": "default" }} , 
 	{ "name": "empty_33", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "empty_33", "role": "default" }} , 
 	{ "name": "bh_1", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bh_1", "role": "default" }} , 
 	{ "name": "w8_15_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "w8_15_cast", "role": "default" }} , 
 	{ "name": "empty_34", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "empty_34", "role": "default" }} , 
 	{ "name": "empty_35", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "empty_35", "role": "default" }} , 
 	{ "name": "bh_2", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bh_2", "role": "default" }} , 
 	{ "name": "w8_16_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "w8_16_cast", "role": "default" }} , 
 	{ "name": "empty_36", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "empty_36", "role": "default" }} , 
 	{ "name": "empty_37", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "empty_37", "role": "default" }} , 
 	{ "name": "bh_3", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bh_3", "role": "default" }} , 
 	{ "name": "w8_17_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "w8_17_cast", "role": "default" }} , 
 	{ "name": "empty_38", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "empty_38", "role": "default" }} , 
 	{ "name": "empty_39", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "empty_39", "role": "default" }} , 
 	{ "name": "bh_4", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bh_4", "role": "default" }} , 
 	{ "name": "w8_18_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "w8_18_cast", "role": "default" }} , 
 	{ "name": "empty_40", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "empty_40", "role": "default" }} , 
 	{ "name": "empty_41", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "empty_41", "role": "default" }} , 
 	{ "name": "bh_5", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bh_5", "role": "default" }} , 
 	{ "name": "w8_19_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "w8_19_cast", "role": "default" }} , 
 	{ "name": "empty_42", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "empty_42", "role": "default" }} , 
 	{ "name": "empty_43", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "empty_43", "role": "default" }} , 
 	{ "name": "bh_6", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bh_6", "role": "default" }} , 
 	{ "name": "w8_20_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "w8_20_cast", "role": "default" }} , 
 	{ "name": "empty_44", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "empty_44", "role": "default" }} , 
 	{ "name": "empty_45", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "empty_45", "role": "default" }} , 
 	{ "name": "bh_7", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bh_7", "role": "default" }} , 
 	{ "name": "w8_21_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "w8_21_cast", "role": "default" }} , 
 	{ "name": "w8_22_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "w8_22_cast", "role": "default" }} , 
 	{ "name": "bh_8", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bh_8", "role": "default" }} , 
 	{ "name": "empty_46", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "empty_46", "role": "default" }} , 
 	{ "name": "empty_47", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "empty_47", "role": "default" }} , 
 	{ "name": "empty_48", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "empty_48", "role": "default" }} , 
 	{ "name": "empty_49", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "empty_49", "role": "default" }} , 
 	{ "name": "bh_9", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bh_9", "role": "default" }} , 
 	{ "name": "w8_23_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "w8_23_cast", "role": "default" }} , 
 	{ "name": "empty_50", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "empty_50", "role": "default" }} , 
 	{ "name": "empty_51", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "empty_51", "role": "default" }} , 
 	{ "name": "bh_15", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bh_15", "role": "default" }} , 
 	{ "name": "w8_24_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "w8_24_cast", "role": "default" }} , 
 	{ "name": "empty_52", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "empty_52", "role": "default" }} , 
 	{ "name": "empty_53", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "empty_53", "role": "default" }} , 
 	{ "name": "bh_10", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bh_10", "role": "default" }} , 
 	{ "name": "w8_25_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "w8_25_cast", "role": "default" }} , 
 	{ "name": "empty_54", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "empty_54", "role": "default" }} , 
 	{ "name": "empty_55", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "empty_55", "role": "default" }} , 
 	{ "name": "bh_11", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bh_11", "role": "default" }} , 
 	{ "name": "w8_26_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "w8_26_cast", "role": "default" }} , 
 	{ "name": "empty_56", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "empty_56", "role": "default" }} , 
 	{ "name": "empty_57", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "empty_57", "role": "default" }} , 
 	{ "name": "bh_12", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bh_12", "role": "default" }} , 
 	{ "name": "w8_27_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "w8_27_cast", "role": "default" }} , 
 	{ "name": "empty_58", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "empty_58", "role": "default" }} , 
 	{ "name": "empty_59", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "empty_59", "role": "default" }} , 
 	{ "name": "bh_13", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bh_13", "role": "default" }} , 
 	{ "name": "w8_28_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "w8_28_cast", "role": "default" }} , 
 	{ "name": "empty_60", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "empty_60", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "bh_14", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bh_14", "role": "default" }} , 
 	{ "name": "w8_29_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "w8_29_cast", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	cnn_accelerator_Pipeline_VITIS_LOOP_40_2_VITIS_LOOP_41_3 {
		gmem {Type IO LastRead 33 FirstWrite 32}
		precision {Type I LastRead 0 FirstWrite -1}
		input_r {Type I LastRead 0 FirstWrite -1}
		sext_ln39_10 {Type I LastRead 0 FirstWrite -1}
		sext_ln39_11 {Type I LastRead 0 FirstWrite -1}
		sext_ln39_12 {Type I LastRead 0 FirstWrite -1}
		sext_ln39_13 {Type I LastRead 0 FirstWrite -1}
		sext_ln39_14 {Type I LastRead 0 FirstWrite -1}
		sext_ln39_15 {Type I LastRead 0 FirstWrite -1}
		sext_ln39_16 {Type I LastRead 0 FirstWrite -1}
		sext_ln39_2 {Type I LastRead 0 FirstWrite -1}
		sext_ln39_3 {Type I LastRead 0 FirstWrite -1}
		sext_ln39_4 {Type I LastRead 0 FirstWrite -1}
		sext_ln39_5 {Type I LastRead 0 FirstWrite -1}
		sext_ln39_6 {Type I LastRead 0 FirstWrite -1}
		sext_ln39_7 {Type I LastRead 0 FirstWrite -1}
		sext_ln39_8 {Type I LastRead 0 FirstWrite -1}
		sext_ln39_9 {Type I LastRead 0 FirstWrite -1}
		sext_ln39 {Type I LastRead 0 FirstWrite -1}
		phi_mul7 {Type I LastRead 0 FirstWrite -1}
		output_r {Type I LastRead 0 FirstWrite -1}
		w8_cast {Type I LastRead 0 FirstWrite -1}
		bh {Type I LastRead 0 FirstWrite -1}
		empty_30 {Type I LastRead 0 FirstWrite -1}
		empty_31 {Type I LastRead 0 FirstWrite -1}
		empty_32 {Type I LastRead 0 FirstWrite -1}
		empty_33 {Type I LastRead 0 FirstWrite -1}
		bh_1 {Type I LastRead 0 FirstWrite -1}
		w8_15_cast {Type I LastRead 0 FirstWrite -1}
		empty_34 {Type I LastRead 0 FirstWrite -1}
		empty_35 {Type I LastRead 0 FirstWrite -1}
		bh_2 {Type I LastRead 0 FirstWrite -1}
		w8_16_cast {Type I LastRead 0 FirstWrite -1}
		empty_36 {Type I LastRead 0 FirstWrite -1}
		empty_37 {Type I LastRead 0 FirstWrite -1}
		bh_3 {Type I LastRead 0 FirstWrite -1}
		w8_17_cast {Type I LastRead 0 FirstWrite -1}
		empty_38 {Type I LastRead 0 FirstWrite -1}
		empty_39 {Type I LastRead 0 FirstWrite -1}
		bh_4 {Type I LastRead 0 FirstWrite -1}
		w8_18_cast {Type I LastRead 0 FirstWrite -1}
		empty_40 {Type I LastRead 0 FirstWrite -1}
		empty_41 {Type I LastRead 0 FirstWrite -1}
		bh_5 {Type I LastRead 0 FirstWrite -1}
		w8_19_cast {Type I LastRead 0 FirstWrite -1}
		empty_42 {Type I LastRead 0 FirstWrite -1}
		empty_43 {Type I LastRead 0 FirstWrite -1}
		bh_6 {Type I LastRead 0 FirstWrite -1}
		w8_20_cast {Type I LastRead 0 FirstWrite -1}
		empty_44 {Type I LastRead 0 FirstWrite -1}
		empty_45 {Type I LastRead 0 FirstWrite -1}
		bh_7 {Type I LastRead 0 FirstWrite -1}
		w8_21_cast {Type I LastRead 0 FirstWrite -1}
		w8_22_cast {Type I LastRead 0 FirstWrite -1}
		bh_8 {Type I LastRead 0 FirstWrite -1}
		empty_46 {Type I LastRead 0 FirstWrite -1}
		empty_47 {Type I LastRead 0 FirstWrite -1}
		empty_48 {Type I LastRead 0 FirstWrite -1}
		empty_49 {Type I LastRead 0 FirstWrite -1}
		bh_9 {Type I LastRead 0 FirstWrite -1}
		w8_23_cast {Type I LastRead 0 FirstWrite -1}
		empty_50 {Type I LastRead 0 FirstWrite -1}
		empty_51 {Type I LastRead 0 FirstWrite -1}
		bh_15 {Type I LastRead 0 FirstWrite -1}
		w8_24_cast {Type I LastRead 0 FirstWrite -1}
		empty_52 {Type I LastRead 0 FirstWrite -1}
		empty_53 {Type I LastRead 0 FirstWrite -1}
		bh_10 {Type I LastRead 0 FirstWrite -1}
		w8_25_cast {Type I LastRead 0 FirstWrite -1}
		empty_54 {Type I LastRead 0 FirstWrite -1}
		empty_55 {Type I LastRead 0 FirstWrite -1}
		bh_11 {Type I LastRead 0 FirstWrite -1}
		w8_26_cast {Type I LastRead 0 FirstWrite -1}
		empty_56 {Type I LastRead 0 FirstWrite -1}
		empty_57 {Type I LastRead 0 FirstWrite -1}
		bh_12 {Type I LastRead 0 FirstWrite -1}
		w8_27_cast {Type I LastRead 0 FirstWrite -1}
		empty_58 {Type I LastRead 0 FirstWrite -1}
		empty_59 {Type I LastRead 0 FirstWrite -1}
		bh_13 {Type I LastRead 0 FirstWrite -1}
		w8_28_cast {Type I LastRead 0 FirstWrite -1}
		empty_60 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		bh_14 {Type I LastRead 0 FirstWrite -1}
		w8_29_cast {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1047", "Max" : "1047"}
	, {"Name" : "Interval", "Min" : "1047", "Max" : "1047"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_gmem_0_AWVALID VALID 1 1 }  { m_axi_gmem_0_AWREADY READY 0 1 }  { m_axi_gmem_0_AWADDR ADDR 1 64 }  { m_axi_gmem_0_AWID ID 1 1 }  { m_axi_gmem_0_AWLEN SIZE 1 32 }  { m_axi_gmem_0_AWSIZE BURST 1 3 }  { m_axi_gmem_0_AWBURST LOCK 1 2 }  { m_axi_gmem_0_AWLOCK CACHE 1 2 }  { m_axi_gmem_0_AWCACHE PROT 1 4 }  { m_axi_gmem_0_AWPROT QOS 1 3 }  { m_axi_gmem_0_AWQOS REGION 1 4 }  { m_axi_gmem_0_AWREGION USER 1 4 }  { m_axi_gmem_0_AWUSER DATA 1 1 }  { m_axi_gmem_0_WVALID VALID 1 1 }  { m_axi_gmem_0_WREADY READY 0 1 }  { m_axi_gmem_0_WDATA FIFONUM 1 32 }  { m_axi_gmem_0_WSTRB STRB 1 4 }  { m_axi_gmem_0_WLAST LAST 1 1 }  { m_axi_gmem_0_WID ID 1 1 }  { m_axi_gmem_0_WUSER DATA 1 1 }  { m_axi_gmem_0_ARVALID VALID 1 1 }  { m_axi_gmem_0_ARREADY READY 0 1 }  { m_axi_gmem_0_ARADDR ADDR 1 64 }  { m_axi_gmem_0_ARID ID 1 1 }  { m_axi_gmem_0_ARLEN SIZE 1 32 }  { m_axi_gmem_0_ARSIZE BURST 1 3 }  { m_axi_gmem_0_ARBURST LOCK 1 2 }  { m_axi_gmem_0_ARLOCK CACHE 1 2 }  { m_axi_gmem_0_ARCACHE PROT 1 4 }  { m_axi_gmem_0_ARPROT QOS 1 3 }  { m_axi_gmem_0_ARQOS REGION 1 4 }  { m_axi_gmem_0_ARREGION USER 1 4 }  { m_axi_gmem_0_ARUSER DATA 1 1 }  { m_axi_gmem_0_RVALID VALID 0 1 }  { m_axi_gmem_0_RREADY READY 1 1 }  { m_axi_gmem_0_RDATA FIFONUM 0 32 }  { m_axi_gmem_0_RLAST LAST 0 1 }  { m_axi_gmem_0_RID ID 0 1 }  { m_axi_gmem_0_RFIFONUM LEN 0 9 }  { m_axi_gmem_0_RUSER DATA 0 1 }  { m_axi_gmem_0_RRESP RESP 0 2 }  { m_axi_gmem_0_BVALID VALID 0 1 }  { m_axi_gmem_0_BREADY READY 1 1 }  { m_axi_gmem_0_BRESP RESP 0 2 }  { m_axi_gmem_0_BID ID 0 1 }  { m_axi_gmem_0_BUSER DATA 0 1 } } }
	precision { ap_none {  { precision in_data 0 32 } } }
	input_r { ap_none {  { input_r in_data 0 64 } } }
	sext_ln39_10 { ap_none {  { sext_ln39_10 in_data 0 32 } } }
	sext_ln39_11 { ap_none {  { sext_ln39_11 in_data 0 32 } } }
	sext_ln39_12 { ap_none {  { sext_ln39_12 in_data 0 32 } } }
	sext_ln39_13 { ap_none {  { sext_ln39_13 in_data 0 32 } } }
	sext_ln39_14 { ap_none {  { sext_ln39_14 in_data 0 32 } } }
	sext_ln39_15 { ap_none {  { sext_ln39_15 in_data 0 32 } } }
	sext_ln39_16 { ap_none {  { sext_ln39_16 in_data 0 32 } } }
	sext_ln39_2 { ap_none {  { sext_ln39_2 in_data 0 32 } } }
	sext_ln39_3 { ap_none {  { sext_ln39_3 in_data 0 32 } } }
	sext_ln39_4 { ap_none {  { sext_ln39_4 in_data 0 32 } } }
	sext_ln39_5 { ap_none {  { sext_ln39_5 in_data 0 32 } } }
	sext_ln39_6 { ap_none {  { sext_ln39_6 in_data 0 32 } } }
	sext_ln39_7 { ap_none {  { sext_ln39_7 in_data 0 32 } } }
	sext_ln39_8 { ap_none {  { sext_ln39_8 in_data 0 32 } } }
	sext_ln39_9 { ap_none {  { sext_ln39_9 in_data 0 32 } } }
	sext_ln39 { ap_none {  { sext_ln39 in_data 0 32 } } }
	phi_mul7 { ap_none {  { phi_mul7 in_data 0 62 } } }
	output_r { ap_none {  { output_r in_data 0 64 } } }
	w8_cast { ap_none {  { w8_cast in_data 0 8 } } }
	bh { ap_none {  { bh in_data 0 4 } } }
	empty_30 { ap_none {  { empty_30 in_data 0 4 } } }
	empty_31 { ap_none {  { empty_31 in_data 0 2 } } }
	empty_32 { ap_none {  { empty_32 in_data 0 2 } } }
	empty_33 { ap_none {  { empty_33 in_data 0 4 } } }
	bh_1 { ap_none {  { bh_1 in_data 0 4 } } }
	w8_15_cast { ap_none {  { w8_15_cast in_data 0 8 } } }
	empty_34 { ap_none {  { empty_34 in_data 0 2 } } }
	empty_35 { ap_none {  { empty_35 in_data 0 4 } } }
	bh_2 { ap_none {  { bh_2 in_data 0 4 } } }
	w8_16_cast { ap_none {  { w8_16_cast in_data 0 8 } } }
	empty_36 { ap_none {  { empty_36 in_data 0 2 } } }
	empty_37 { ap_none {  { empty_37 in_data 0 4 } } }
	bh_3 { ap_none {  { bh_3 in_data 0 4 } } }
	w8_17_cast { ap_none {  { w8_17_cast in_data 0 8 } } }
	empty_38 { ap_none {  { empty_38 in_data 0 2 } } }
	empty_39 { ap_none {  { empty_39 in_data 0 4 } } }
	bh_4 { ap_none {  { bh_4 in_data 0 4 } } }
	w8_18_cast { ap_none {  { w8_18_cast in_data 0 8 } } }
	empty_40 { ap_none {  { empty_40 in_data 0 2 } } }
	empty_41 { ap_none {  { empty_41 in_data 0 4 } } }
	bh_5 { ap_none {  { bh_5 in_data 0 4 } } }
	w8_19_cast { ap_none {  { w8_19_cast in_data 0 8 } } }
	empty_42 { ap_none {  { empty_42 in_data 0 2 } } }
	empty_43 { ap_none {  { empty_43 in_data 0 4 } } }
	bh_6 { ap_none {  { bh_6 in_data 0 4 } } }
	w8_20_cast { ap_none {  { w8_20_cast in_data 0 8 } } }
	empty_44 { ap_none {  { empty_44 in_data 0 2 } } }
	empty_45 { ap_none {  { empty_45 in_data 0 4 } } }
	bh_7 { ap_none {  { bh_7 in_data 0 4 } } }
	w8_21_cast { ap_none {  { w8_21_cast in_data 0 8 } } }
	w8_22_cast { ap_none {  { w8_22_cast in_data 0 8 } } }
	bh_8 { ap_none {  { bh_8 in_data 0 4 } } }
	empty_46 { ap_none {  { empty_46 in_data 0 4 } } }
	empty_47 { ap_none {  { empty_47 in_data 0 2 } } }
	empty_48 { ap_none {  { empty_48 in_data 0 2 } } }
	empty_49 { ap_none {  { empty_49 in_data 0 4 } } }
	bh_9 { ap_none {  { bh_9 in_data 0 4 } } }
	w8_23_cast { ap_none {  { w8_23_cast in_data 0 8 } } }
	empty_50 { ap_none {  { empty_50 in_data 0 2 } } }
	empty_51 { ap_none {  { empty_51 in_data 0 4 } } }
	bh_15 { ap_none {  { bh_15 in_data 0 4 } } }
	w8_24_cast { ap_none {  { w8_24_cast in_data 0 8 } } }
	empty_52 { ap_none {  { empty_52 in_data 0 2 } } }
	empty_53 { ap_none {  { empty_53 in_data 0 4 } } }
	bh_10 { ap_none {  { bh_10 in_data 0 4 } } }
	w8_25_cast { ap_none {  { w8_25_cast in_data 0 8 } } }
	empty_54 { ap_none {  { empty_54 in_data 0 2 } } }
	empty_55 { ap_none {  { empty_55 in_data 0 4 } } }
	bh_11 { ap_none {  { bh_11 in_data 0 4 } } }
	w8_26_cast { ap_none {  { w8_26_cast in_data 0 8 } } }
	empty_56 { ap_none {  { empty_56 in_data 0 2 } } }
	empty_57 { ap_none {  { empty_57 in_data 0 4 } } }
	bh_12 { ap_none {  { bh_12 in_data 0 4 } } }
	w8_27_cast { ap_none {  { w8_27_cast in_data 0 8 } } }
	empty_58 { ap_none {  { empty_58 in_data 0 2 } } }
	empty_59 { ap_none {  { empty_59 in_data 0 4 } } }
	bh_13 { ap_none {  { bh_13 in_data 0 4 } } }
	w8_28_cast { ap_none {  { w8_28_cast in_data 0 8 } } }
	empty_60 { ap_none {  { empty_60 in_data 0 2 } } }
	empty { ap_none {  { empty in_data 0 4 } } }
	bh_14 { ap_none {  { bh_14 in_data 0 4 } } }
	w8_29_cast { ap_none {  { w8_29_cast in_data 0 8 } } }
}
