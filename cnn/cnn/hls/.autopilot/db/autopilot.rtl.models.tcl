set SynModuleInfo {
  {SRCNAME cnn_accelerator_Pipeline_VITIS_LOOP_40_2_VITIS_LOOP_41_3 MODELNAME cnn_accelerator_Pipeline_VITIS_LOOP_40_2_VITIS_LOOP_41_3 RTLNAME cnn_accelerator_cnn_accelerator_Pipeline_VITIS_LOOP_40_2_VITIS_LOOP_41_3
    SUBMODULES {
      {MODELNAME cnn_accelerator_mul_4ns_32s_36_2_1 RTLNAME cnn_accelerator_mul_4ns_32s_36_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME cnn_accelerator_mul_2s_2s_2_1_1 RTLNAME cnn_accelerator_mul_2s_2s_2_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME cnn_accelerator_mul_4s_4s_4_1_1 RTLNAME cnn_accelerator_mul_4s_4s_4_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME cnn_accelerator_mul_8s_8s_16_1_1 RTLNAME cnn_accelerator_mul_8s_8s_16_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME cnn_accelerator_flow_control_loop_pipe_sequential_init RTLNAME cnn_accelerator_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME cnn_accelerator_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME cnn_accelerator MODELNAME cnn_accelerator RTLNAME cnn_accelerator IS_TOP 1
    SUBMODULES {
      {MODELNAME cnn_accelerator_mul_32s_32s_32_2_1 RTLNAME cnn_accelerator_mul_32s_32s_32_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME cnn_accelerator_mul_32s_32s_62_2_1 RTLNAME cnn_accelerator_mul_32s_32s_62_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME cnn_accelerator_gmem_m_axi RTLNAME cnn_accelerator_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME cnn_accelerator_control_s_axi RTLNAME cnn_accelerator_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
