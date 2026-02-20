# 1 "C:/Users/ishan/ECT_110_vitis/cordicbeta/zynq_fsbl/zynq_fsbl_bsp/lop-config.dts"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/Users/ishan/ECT_110_vitis/cordicbeta/zynq_fsbl/zynq_fsbl_bsp/lop-config.dts"

/dts-v1/;
/ {
        compatible = "system-device-tree-v1,lop";
        lops {
                lop_0 {
                        compatible = "system-device-tree-v1,lop,load";
                        load = "assists/baremetal_validate_comp_xlnx.py";
                };

                lop_1 {
                    compatible = "system-device-tree-v1,lop,assist-v1";
                    node = "/";
                    outdir = "C:/Users/ishan/ECT_110_vitis/cordicbeta/zynq_fsbl/zynq_fsbl_bsp";
                    id = "module,baremetal_validate_comp_xlnx";
                    options = "ps7_cortexa9_0 C:/Xilinx/2025.1/Vitis/data/embeddedsw/ThirdParty/sw_services/lwip220_v1_2/src C:/Users/ishan/ECT_110_vitis/_ide/.wsdata/.repo.yaml";
                };

        };
    };
