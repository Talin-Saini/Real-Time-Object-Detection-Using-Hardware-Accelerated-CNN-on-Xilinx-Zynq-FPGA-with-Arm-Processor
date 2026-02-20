transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_21
vlib riviera/processing_system7_vip_v1_0_23
vlib riviera/xil_defaultlib
vlib riviera/xlconstant_v1_1_10
vlib riviera/proc_sys_reset_v5_0_17
vlib riviera/smartconnect_v1_0
vlib riviera/axi_register_slice_v2_1_35
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/interrupt_control_v3_1_5
vlib riviera/axi_gpio_v2_0_37

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_21 riviera/axi_vip_v1_1_21
vmap processing_system7_vip_v1_0_23 riviera/processing_system7_vip_v1_0_23
vmap xil_defaultlib riviera/xil_defaultlib
vmap xlconstant_v1_1_10 riviera/xlconstant_v1_1_10
vmap proc_sys_reset_v5_0_17 riviera/proc_sys_reset_v5_0_17
vmap smartconnect_v1_0 riviera/smartconnect_v1_0
vmap axi_register_slice_v2_1_35 riviera/axi_register_slice_v2_1_35
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap interrupt_control_v3_1_5 riviera/interrupt_control_v3_1_5
vmap axi_gpio_v2_0_37 riviera/axi_gpio_v2_0_37

vlog -work xilinx_vip  -incr "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 \
"C:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/ec67/hdl" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/6cfa/hdl" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ip/cnn_controler_cnn_accelerator_0_0/drivers/cnn_accelerator_v1_0/src" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 \
"C:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"C:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -incr -v2k5 "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/ec67/hdl" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/6cfa/hdl" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ip/cnn_controler_cnn_accelerator_0_0/drivers/cnn_accelerator_v1_0/src" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 \
"../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_21  -incr "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/ec67/hdl" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/6cfa/hdl" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ip/cnn_controler_cnn_accelerator_0_0/drivers/cnn_accelerator_v1_0/src" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 \
"../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/f16f/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_23  -incr "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/ec67/hdl" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/6cfa/hdl" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ip/cnn_controler_cnn_accelerator_0_0/drivers/cnn_accelerator_v1_0/src" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 \
"../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/6cfa/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/ec67/hdl" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/6cfa/hdl" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ip/cnn_controler_cnn_accelerator_0_0/drivers/cnn_accelerator_v1_0/src" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 \
"../../../bd/cnn_controler/ip/cnn_controler_processing_system7_0_0/sim/cnn_controler_processing_system7_0_0.v" \
"../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/3744/hdl/verilog/cnn_accelerator_cnn_accelerator_Pipeline_VITIS_LOOP_40_2_VITIS_LOOP_41_3.v" \
"../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/3744/hdl/verilog/cnn_accelerator_control_s_axi.v" \
"../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/3744/hdl/verilog/cnn_accelerator_flow_control_loop_pipe_sequential_init.v" \
"../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/3744/hdl/verilog/cnn_accelerator_gmem_m_axi.v" \
"../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/3744/hdl/verilog/cnn_accelerator_mul_2s_2s_2_1_1.v" \
"../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/3744/hdl/verilog/cnn_accelerator_mul_4ns_32s_36_2_1.v" \
"../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/3744/hdl/verilog/cnn_accelerator_mul_4s_4s_4_1_1.v" \
"../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/3744/hdl/verilog/cnn_accelerator_mul_8s_8s_16_1_1.v" \
"../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/3744/hdl/verilog/cnn_accelerator_mul_32s_32s_32_2_1.v" \
"../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/3744/hdl/verilog/cnn_accelerator_mul_32s_32s_62_2_1.v" \
"../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/3744/hdl/verilog/cnn_accelerator.v" \
"../../../bd/cnn_controler/ip/cnn_controler_cnn_accelerator_0_0/sim/cnn_controler_cnn_accelerator_0_0.v" \
"../../../bd/cnn_controler/ip/cnn_controler_axi_smc_0/bd_0/sim/bd_dee4.v" \

vlog -work xlconstant_v1_1_10  -incr -v2k5 "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/ec67/hdl" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/6cfa/hdl" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ip/cnn_controler_cnn_accelerator_0_0/drivers/cnn_accelerator_v1_0/src" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 \
"../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/a165/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/ec67/hdl" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/6cfa/hdl" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ip/cnn_controler_cnn_accelerator_0_0/drivers/cnn_accelerator_v1_0/src" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 \
"../../../bd/cnn_controler/ip/cnn_controler_axi_smc_0/bd_0/ip/ip_0/sim/bd_dee4_one_0.v" \

vcom -work proc_sys_reset_v5_0_17 -93  -incr \
"../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/9438/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/cnn_controler/ip/cnn_controler_axi_smc_0/bd_0/ip/ip_1/sim/bd_dee4_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/ec67/hdl" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/6cfa/hdl" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ip/cnn_controler_cnn_accelerator_0_0/drivers/cnn_accelerator_v1_0/src" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 \
"../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/3718/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/ec67/hdl" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/6cfa/hdl" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ip/cnn_controler_cnn_accelerator_0_0/drivers/cnn_accelerator_v1_0/src" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 \
"../../../bd/cnn_controler/ip/cnn_controler_axi_smc_0/bd_0/ip/ip_2/sim/bd_dee4_arsw_0.sv" \
"../../../bd/cnn_controler/ip/cnn_controler_axi_smc_0/bd_0/ip/ip_3/sim/bd_dee4_rsw_0.sv" \
"../../../bd/cnn_controler/ip/cnn_controler_axi_smc_0/bd_0/ip/ip_4/sim/bd_dee4_awsw_0.sv" \
"../../../bd/cnn_controler/ip/cnn_controler_axi_smc_0/bd_0/ip/ip_5/sim/bd_dee4_wsw_0.sv" \
"../../../bd/cnn_controler/ip/cnn_controler_axi_smc_0/bd_0/ip/ip_6/sim/bd_dee4_bsw_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/ec67/hdl" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/6cfa/hdl" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ip/cnn_controler_cnn_accelerator_0_0/drivers/cnn_accelerator_v1_0/src" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 \
"../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/d800/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/ec67/hdl" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/6cfa/hdl" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ip/cnn_controler_cnn_accelerator_0_0/drivers/cnn_accelerator_v1_0/src" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 \
"../../../bd/cnn_controler/ip/cnn_controler_axi_smc_0/bd_0/ip/ip_7/sim/bd_dee4_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/ec67/hdl" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/6cfa/hdl" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ip/cnn_controler_cnn_accelerator_0_0/drivers/cnn_accelerator_v1_0/src" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 \
"../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/2da8/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/ec67/hdl" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/6cfa/hdl" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ip/cnn_controler_cnn_accelerator_0_0/drivers/cnn_accelerator_v1_0/src" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 \
"../../../bd/cnn_controler/ip/cnn_controler_axi_smc_0/bd_0/ip/ip_8/sim/bd_dee4_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/ec67/hdl" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/6cfa/hdl" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ip/cnn_controler_cnn_accelerator_0_0/drivers/cnn_accelerator_v1_0/src" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 \
"../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/dce3/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/ec67/hdl" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/6cfa/hdl" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ip/cnn_controler_cnn_accelerator_0_0/drivers/cnn_accelerator_v1_0/src" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 \
"../../../bd/cnn_controler/ip/cnn_controler_axi_smc_0/bd_0/ip/ip_9/sim/bd_dee4_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/ec67/hdl" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/6cfa/hdl" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ip/cnn_controler_cnn_accelerator_0_0/drivers/cnn_accelerator_v1_0/src" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 \
"../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/cef3/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/ec67/hdl" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/6cfa/hdl" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ip/cnn_controler_cnn_accelerator_0_0/drivers/cnn_accelerator_v1_0/src" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 \
"../../../bd/cnn_controler/ip/cnn_controler_axi_smc_0/bd_0/ip/ip_10/sim/bd_dee4_s00a2s_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/ec67/hdl" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/6cfa/hdl" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ip/cnn_controler_cnn_accelerator_0_0/drivers/cnn_accelerator_v1_0/src" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 \
"../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/a8e4/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/ec67/hdl" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/6cfa/hdl" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ip/cnn_controler_cnn_accelerator_0_0/drivers/cnn_accelerator_v1_0/src" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 \
"../../../bd/cnn_controler/ip/cnn_controler_axi_smc_0/bd_0/ip/ip_11/sim/bd_dee4_sarn_0.sv" \
"../../../bd/cnn_controler/ip/cnn_controler_axi_smc_0/bd_0/ip/ip_12/sim/bd_dee4_srn_0.sv" \
"../../../bd/cnn_controler/ip/cnn_controler_axi_smc_0/bd_0/ip/ip_13/sim/bd_dee4_sawn_0.sv" \
"../../../bd/cnn_controler/ip/cnn_controler_axi_smc_0/bd_0/ip/ip_14/sim/bd_dee4_swn_0.sv" \
"../../../bd/cnn_controler/ip/cnn_controler_axi_smc_0/bd_0/ip/ip_15/sim/bd_dee4_sbn_0.sv" \
"../../../bd/cnn_controler/ip/cnn_controler_axi_smc_0/bd_0/ip/ip_16/sim/bd_dee4_s01mmu_0.sv" \
"../../../bd/cnn_controler/ip/cnn_controler_axi_smc_0/bd_0/ip/ip_17/sim/bd_dee4_s01tr_0.sv" \
"../../../bd/cnn_controler/ip/cnn_controler_axi_smc_0/bd_0/ip/ip_18/sim/bd_dee4_s01sic_0.sv" \
"../../../bd/cnn_controler/ip/cnn_controler_axi_smc_0/bd_0/ip/ip_19/sim/bd_dee4_s01a2s_0.sv" \
"../../../bd/cnn_controler/ip/cnn_controler_axi_smc_0/bd_0/ip/ip_20/sim/bd_dee4_sarn_1.sv" \
"../../../bd/cnn_controler/ip/cnn_controler_axi_smc_0/bd_0/ip/ip_21/sim/bd_dee4_srn_1.sv" \
"../../../bd/cnn_controler/ip/cnn_controler_axi_smc_0/bd_0/ip/ip_22/sim/bd_dee4_sawn_1.sv" \
"../../../bd/cnn_controler/ip/cnn_controler_axi_smc_0/bd_0/ip/ip_23/sim/bd_dee4_swn_1.sv" \
"../../../bd/cnn_controler/ip/cnn_controler_axi_smc_0/bd_0/ip/ip_24/sim/bd_dee4_sbn_1.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/ec67/hdl" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/6cfa/hdl" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ip/cnn_controler_cnn_accelerator_0_0/drivers/cnn_accelerator_v1_0/src" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 \
"../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/7f4f/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/ec67/hdl" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/6cfa/hdl" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ip/cnn_controler_cnn_accelerator_0_0/drivers/cnn_accelerator_v1_0/src" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 \
"../../../bd/cnn_controler/ip/cnn_controler_axi_smc_0/bd_0/ip/ip_25/sim/bd_dee4_m00s2a_0.sv" \
"../../../bd/cnn_controler/ip/cnn_controler_axi_smc_0/bd_0/ip/ip_26/sim/bd_dee4_m00arn_0.sv" \
"../../../bd/cnn_controler/ip/cnn_controler_axi_smc_0/bd_0/ip/ip_27/sim/bd_dee4_m00rn_0.sv" \
"../../../bd/cnn_controler/ip/cnn_controler_axi_smc_0/bd_0/ip/ip_28/sim/bd_dee4_m00awn_0.sv" \
"../../../bd/cnn_controler/ip/cnn_controler_axi_smc_0/bd_0/ip/ip_29/sim/bd_dee4_m00wn_0.sv" \
"../../../bd/cnn_controler/ip/cnn_controler_axi_smc_0/bd_0/ip/ip_30/sim/bd_dee4_m00bn_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/ec67/hdl" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/6cfa/hdl" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ip/cnn_controler_cnn_accelerator_0_0/drivers/cnn_accelerator_v1_0/src" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 \
"../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/0133/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/ec67/hdl" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/6cfa/hdl" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ip/cnn_controler_cnn_accelerator_0_0/drivers/cnn_accelerator_v1_0/src" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 \
"../../../bd/cnn_controler/ip/cnn_controler_axi_smc_0/bd_0/ip/ip_31/sim/bd_dee4_m00e_0.sv" \
"../../../bd/cnn_controler/ip/cnn_controler_axi_smc_0/bd_0/ip/ip_32/sim/bd_dee4_m01s2a_0.sv" \
"../../../bd/cnn_controler/ip/cnn_controler_axi_smc_0/bd_0/ip/ip_33/sim/bd_dee4_m01arn_0.sv" \
"../../../bd/cnn_controler/ip/cnn_controler_axi_smc_0/bd_0/ip/ip_34/sim/bd_dee4_m01rn_0.sv" \
"../../../bd/cnn_controler/ip/cnn_controler_axi_smc_0/bd_0/ip/ip_35/sim/bd_dee4_m01awn_0.sv" \
"../../../bd/cnn_controler/ip/cnn_controler_axi_smc_0/bd_0/ip/ip_36/sim/bd_dee4_m01wn_0.sv" \
"../../../bd/cnn_controler/ip/cnn_controler_axi_smc_0/bd_0/ip/ip_37/sim/bd_dee4_m01bn_0.sv" \
"../../../bd/cnn_controler/ip/cnn_controler_axi_smc_0/bd_0/ip/ip_38/sim/bd_dee4_m01e_0.sv" \
"../../../bd/cnn_controler/ip/cnn_controler_axi_smc_0/bd_0/ip/ip_39/sim/bd_dee4_m02s2a_0.sv" \
"../../../bd/cnn_controler/ip/cnn_controler_axi_smc_0/bd_0/ip/ip_40/sim/bd_dee4_m02arn_0.sv" \
"../../../bd/cnn_controler/ip/cnn_controler_axi_smc_0/bd_0/ip/ip_41/sim/bd_dee4_m02rn_0.sv" \
"../../../bd/cnn_controler/ip/cnn_controler_axi_smc_0/bd_0/ip/ip_42/sim/bd_dee4_m02awn_0.sv" \
"../../../bd/cnn_controler/ip/cnn_controler_axi_smc_0/bd_0/ip/ip_43/sim/bd_dee4_m02wn_0.sv" \
"../../../bd/cnn_controler/ip/cnn_controler_axi_smc_0/bd_0/ip/ip_44/sim/bd_dee4_m02bn_0.sv" \
"../../../bd/cnn_controler/ip/cnn_controler_axi_smc_0/bd_0/ip/ip_45/sim/bd_dee4_m02e_0.sv" \

vlog -work axi_register_slice_v2_1_35  -incr -v2k5 "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/ec67/hdl" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/6cfa/hdl" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ip/cnn_controler_cnn_accelerator_0_0/drivers/cnn_accelerator_v1_0/src" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 \
"../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/c5b7/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/ec67/hdl" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/6cfa/hdl" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ip/cnn_controler_cnn_accelerator_0_0/drivers/cnn_accelerator_v1_0/src" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 \
"../../../bd/cnn_controler/ip/cnn_controler_axi_smc_0/sim/cnn_controler_axi_smc_0.sv" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/cnn_controler/ip/cnn_controler_rst_ps7_0_100M_0/sim/cnn_controler_rst_ps7_0_100M_0.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -93  -incr \
"../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work interrupt_control_v3_1_5 -93  -incr \
"../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/d8cc/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_37 -93  -incr \
"../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/0271/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/cnn_controler/ip/cnn_controler_axi_gpio_0_0/sim/cnn_controler_axi_gpio_0_0.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/ec67/hdl" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/6cfa/hdl" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../../project_7.gen/sources_1/bd/cnn_controler/ip/cnn_controler_cnn_accelerator_0_0/drivers/cnn_accelerator_v1_0/src" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 \
"../../../bd/cnn_controler/sim/cnn_controler.v" \

vlog -work xil_defaultlib \
"glbl.v"

