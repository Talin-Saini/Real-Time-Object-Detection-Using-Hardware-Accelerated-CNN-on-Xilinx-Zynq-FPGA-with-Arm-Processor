// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.1 (64-bit)
// Tool Version Limit: 2025.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xcnn_accelerator.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XCnn_accelerator_CfgInitialize(XCnn_accelerator *InstancePtr, XCnn_accelerator_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XCnn_accelerator_Start(XCnn_accelerator *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCnn_accelerator_ReadReg(InstancePtr->Control_BaseAddress, XCNN_ACCELERATOR_CONTROL_ADDR_AP_CTRL) & 0x80;
    XCnn_accelerator_WriteReg(InstancePtr->Control_BaseAddress, XCNN_ACCELERATOR_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XCnn_accelerator_IsDone(XCnn_accelerator *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCnn_accelerator_ReadReg(InstancePtr->Control_BaseAddress, XCNN_ACCELERATOR_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XCnn_accelerator_IsIdle(XCnn_accelerator *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCnn_accelerator_ReadReg(InstancePtr->Control_BaseAddress, XCNN_ACCELERATOR_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XCnn_accelerator_IsReady(XCnn_accelerator *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCnn_accelerator_ReadReg(InstancePtr->Control_BaseAddress, XCNN_ACCELERATOR_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XCnn_accelerator_EnableAutoRestart(XCnn_accelerator *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCnn_accelerator_WriteReg(InstancePtr->Control_BaseAddress, XCNN_ACCELERATOR_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XCnn_accelerator_DisableAutoRestart(XCnn_accelerator *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCnn_accelerator_WriteReg(InstancePtr->Control_BaseAddress, XCNN_ACCELERATOR_CONTROL_ADDR_AP_CTRL, 0);
}

void XCnn_accelerator_Set_input_r(XCnn_accelerator *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCnn_accelerator_WriteReg(InstancePtr->Control_BaseAddress, XCNN_ACCELERATOR_CONTROL_ADDR_INPUT_R_DATA, (u32)(Data));
    XCnn_accelerator_WriteReg(InstancePtr->Control_BaseAddress, XCNN_ACCELERATOR_CONTROL_ADDR_INPUT_R_DATA + 4, (u32)(Data >> 32));
}

u64 XCnn_accelerator_Get_input_r(XCnn_accelerator *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCnn_accelerator_ReadReg(InstancePtr->Control_BaseAddress, XCNN_ACCELERATOR_CONTROL_ADDR_INPUT_R_DATA);
    Data += (u64)XCnn_accelerator_ReadReg(InstancePtr->Control_BaseAddress, XCNN_ACCELERATOR_CONTROL_ADDR_INPUT_R_DATA + 4) << 32;
    return Data;
}

void XCnn_accelerator_Set_weights8(XCnn_accelerator *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCnn_accelerator_WriteReg(InstancePtr->Control_BaseAddress, XCNN_ACCELERATOR_CONTROL_ADDR_WEIGHTS8_DATA, (u32)(Data));
    XCnn_accelerator_WriteReg(InstancePtr->Control_BaseAddress, XCNN_ACCELERATOR_CONTROL_ADDR_WEIGHTS8_DATA + 4, (u32)(Data >> 32));
}

u64 XCnn_accelerator_Get_weights8(XCnn_accelerator *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCnn_accelerator_ReadReg(InstancePtr->Control_BaseAddress, XCNN_ACCELERATOR_CONTROL_ADDR_WEIGHTS8_DATA);
    Data += (u64)XCnn_accelerator_ReadReg(InstancePtr->Control_BaseAddress, XCNN_ACCELERATOR_CONTROL_ADDR_WEIGHTS8_DATA + 4) << 32;
    return Data;
}

void XCnn_accelerator_Set_weights6(XCnn_accelerator *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCnn_accelerator_WriteReg(InstancePtr->Control_BaseAddress, XCNN_ACCELERATOR_CONTROL_ADDR_WEIGHTS6_DATA, (u32)(Data));
    XCnn_accelerator_WriteReg(InstancePtr->Control_BaseAddress, XCNN_ACCELERATOR_CONTROL_ADDR_WEIGHTS6_DATA + 4, (u32)(Data >> 32));
}

u64 XCnn_accelerator_Get_weights6(XCnn_accelerator *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCnn_accelerator_ReadReg(InstancePtr->Control_BaseAddress, XCNN_ACCELERATOR_CONTROL_ADDR_WEIGHTS6_DATA);
    Data += (u64)XCnn_accelerator_ReadReg(InstancePtr->Control_BaseAddress, XCNN_ACCELERATOR_CONTROL_ADDR_WEIGHTS6_DATA + 4) << 32;
    return Data;
}

void XCnn_accelerator_Set_weights4(XCnn_accelerator *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCnn_accelerator_WriteReg(InstancePtr->Control_BaseAddress, XCNN_ACCELERATOR_CONTROL_ADDR_WEIGHTS4_DATA, (u32)(Data));
    XCnn_accelerator_WriteReg(InstancePtr->Control_BaseAddress, XCNN_ACCELERATOR_CONTROL_ADDR_WEIGHTS4_DATA + 4, (u32)(Data >> 32));
}

u64 XCnn_accelerator_Get_weights4(XCnn_accelerator *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCnn_accelerator_ReadReg(InstancePtr->Control_BaseAddress, XCNN_ACCELERATOR_CONTROL_ADDR_WEIGHTS4_DATA);
    Data += (u64)XCnn_accelerator_ReadReg(InstancePtr->Control_BaseAddress, XCNN_ACCELERATOR_CONTROL_ADDR_WEIGHTS4_DATA + 4) << 32;
    return Data;
}

void XCnn_accelerator_Set_weights2(XCnn_accelerator *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCnn_accelerator_WriteReg(InstancePtr->Control_BaseAddress, XCNN_ACCELERATOR_CONTROL_ADDR_WEIGHTS2_DATA, (u32)(Data));
    XCnn_accelerator_WriteReg(InstancePtr->Control_BaseAddress, XCNN_ACCELERATOR_CONTROL_ADDR_WEIGHTS2_DATA + 4, (u32)(Data >> 32));
}

u64 XCnn_accelerator_Get_weights2(XCnn_accelerator *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCnn_accelerator_ReadReg(InstancePtr->Control_BaseAddress, XCNN_ACCELERATOR_CONTROL_ADDR_WEIGHTS2_DATA);
    Data += (u64)XCnn_accelerator_ReadReg(InstancePtr->Control_BaseAddress, XCNN_ACCELERATOR_CONTROL_ADDR_WEIGHTS2_DATA + 4) << 32;
    return Data;
}

void XCnn_accelerator_Set_output_r(XCnn_accelerator *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCnn_accelerator_WriteReg(InstancePtr->Control_BaseAddress, XCNN_ACCELERATOR_CONTROL_ADDR_OUTPUT_R_DATA, (u32)(Data));
    XCnn_accelerator_WriteReg(InstancePtr->Control_BaseAddress, XCNN_ACCELERATOR_CONTROL_ADDR_OUTPUT_R_DATA + 4, (u32)(Data >> 32));
}

u64 XCnn_accelerator_Get_output_r(XCnn_accelerator *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCnn_accelerator_ReadReg(InstancePtr->Control_BaseAddress, XCNN_ACCELERATOR_CONTROL_ADDR_OUTPUT_R_DATA);
    Data += (u64)XCnn_accelerator_ReadReg(InstancePtr->Control_BaseAddress, XCNN_ACCELERATOR_CONTROL_ADDR_OUTPUT_R_DATA + 4) << 32;
    return Data;
}

void XCnn_accelerator_Set_Cin(XCnn_accelerator *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCnn_accelerator_WriteReg(InstancePtr->Control_BaseAddress, XCNN_ACCELERATOR_CONTROL_ADDR_CIN_DATA, Data);
}

u32 XCnn_accelerator_Get_Cin(XCnn_accelerator *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCnn_accelerator_ReadReg(InstancePtr->Control_BaseAddress, XCNN_ACCELERATOR_CONTROL_ADDR_CIN_DATA);
    return Data;
}

void XCnn_accelerator_Set_Cout(XCnn_accelerator *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCnn_accelerator_WriteReg(InstancePtr->Control_BaseAddress, XCNN_ACCELERATOR_CONTROL_ADDR_COUT_DATA, Data);
}

u32 XCnn_accelerator_Get_Cout(XCnn_accelerator *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCnn_accelerator_ReadReg(InstancePtr->Control_BaseAddress, XCNN_ACCELERATOR_CONTROL_ADDR_COUT_DATA);
    return Data;
}

void XCnn_accelerator_Set_H(XCnn_accelerator *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCnn_accelerator_WriteReg(InstancePtr->Control_BaseAddress, XCNN_ACCELERATOR_CONTROL_ADDR_H_DATA, Data);
}

u32 XCnn_accelerator_Get_H(XCnn_accelerator *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCnn_accelerator_ReadReg(InstancePtr->Control_BaseAddress, XCNN_ACCELERATOR_CONTROL_ADDR_H_DATA);
    return Data;
}

void XCnn_accelerator_Set_W(XCnn_accelerator *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCnn_accelerator_WriteReg(InstancePtr->Control_BaseAddress, XCNN_ACCELERATOR_CONTROL_ADDR_W_DATA, Data);
}

u32 XCnn_accelerator_Get_W(XCnn_accelerator *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCnn_accelerator_ReadReg(InstancePtr->Control_BaseAddress, XCNN_ACCELERATOR_CONTROL_ADDR_W_DATA);
    return Data;
}

void XCnn_accelerator_Set_precision(XCnn_accelerator *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCnn_accelerator_WriteReg(InstancePtr->Control_BaseAddress, XCNN_ACCELERATOR_CONTROL_ADDR_PRECISION_DATA, Data);
}

u32 XCnn_accelerator_Get_precision(XCnn_accelerator *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCnn_accelerator_ReadReg(InstancePtr->Control_BaseAddress, XCNN_ACCELERATOR_CONTROL_ADDR_PRECISION_DATA);
    return Data;
}

void XCnn_accelerator_InterruptGlobalEnable(XCnn_accelerator *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCnn_accelerator_WriteReg(InstancePtr->Control_BaseAddress, XCNN_ACCELERATOR_CONTROL_ADDR_GIE, 1);
}

void XCnn_accelerator_InterruptGlobalDisable(XCnn_accelerator *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCnn_accelerator_WriteReg(InstancePtr->Control_BaseAddress, XCNN_ACCELERATOR_CONTROL_ADDR_GIE, 0);
}

void XCnn_accelerator_InterruptEnable(XCnn_accelerator *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XCnn_accelerator_ReadReg(InstancePtr->Control_BaseAddress, XCNN_ACCELERATOR_CONTROL_ADDR_IER);
    XCnn_accelerator_WriteReg(InstancePtr->Control_BaseAddress, XCNN_ACCELERATOR_CONTROL_ADDR_IER, Register | Mask);
}

void XCnn_accelerator_InterruptDisable(XCnn_accelerator *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XCnn_accelerator_ReadReg(InstancePtr->Control_BaseAddress, XCNN_ACCELERATOR_CONTROL_ADDR_IER);
    XCnn_accelerator_WriteReg(InstancePtr->Control_BaseAddress, XCNN_ACCELERATOR_CONTROL_ADDR_IER, Register & (~Mask));
}

void XCnn_accelerator_InterruptClear(XCnn_accelerator *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCnn_accelerator_WriteReg(InstancePtr->Control_BaseAddress, XCNN_ACCELERATOR_CONTROL_ADDR_ISR, Mask);
}

u32 XCnn_accelerator_InterruptGetEnabled(XCnn_accelerator *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCnn_accelerator_ReadReg(InstancePtr->Control_BaseAddress, XCNN_ACCELERATOR_CONTROL_ADDR_IER);
}

u32 XCnn_accelerator_InterruptGetStatus(XCnn_accelerator *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCnn_accelerator_ReadReg(InstancePtr->Control_BaseAddress, XCNN_ACCELERATOR_CONTROL_ADDR_ISR);
}

