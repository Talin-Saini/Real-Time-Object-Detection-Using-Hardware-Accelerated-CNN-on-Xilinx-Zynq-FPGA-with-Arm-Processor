// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.1 (64-bit)
// Tool Version Limit: 2025.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XCNN_ACCELERATOR_H
#define XCNN_ACCELERATOR_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xcnn_accelerator_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
#ifdef SDT
    char *Name;
#else
    u16 DeviceId;
#endif
    u64 Control_BaseAddress;
} XCnn_accelerator_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XCnn_accelerator;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XCnn_accelerator_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XCnn_accelerator_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XCnn_accelerator_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XCnn_accelerator_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
#ifdef SDT
int XCnn_accelerator_Initialize(XCnn_accelerator *InstancePtr, UINTPTR BaseAddress);
XCnn_accelerator_Config* XCnn_accelerator_LookupConfig(UINTPTR BaseAddress);
#else
int XCnn_accelerator_Initialize(XCnn_accelerator *InstancePtr, u16 DeviceId);
XCnn_accelerator_Config* XCnn_accelerator_LookupConfig(u16 DeviceId);
#endif
int XCnn_accelerator_CfgInitialize(XCnn_accelerator *InstancePtr, XCnn_accelerator_Config *ConfigPtr);
#else
int XCnn_accelerator_Initialize(XCnn_accelerator *InstancePtr, const char* InstanceName);
int XCnn_accelerator_Release(XCnn_accelerator *InstancePtr);
#endif

void XCnn_accelerator_Start(XCnn_accelerator *InstancePtr);
u32 XCnn_accelerator_IsDone(XCnn_accelerator *InstancePtr);
u32 XCnn_accelerator_IsIdle(XCnn_accelerator *InstancePtr);
u32 XCnn_accelerator_IsReady(XCnn_accelerator *InstancePtr);
void XCnn_accelerator_EnableAutoRestart(XCnn_accelerator *InstancePtr);
void XCnn_accelerator_DisableAutoRestart(XCnn_accelerator *InstancePtr);

void XCnn_accelerator_Set_input_r(XCnn_accelerator *InstancePtr, u64 Data);
u64 XCnn_accelerator_Get_input_r(XCnn_accelerator *InstancePtr);
void XCnn_accelerator_Set_weights8(XCnn_accelerator *InstancePtr, u64 Data);
u64 XCnn_accelerator_Get_weights8(XCnn_accelerator *InstancePtr);
void XCnn_accelerator_Set_weights6(XCnn_accelerator *InstancePtr, u64 Data);
u64 XCnn_accelerator_Get_weights6(XCnn_accelerator *InstancePtr);
void XCnn_accelerator_Set_weights4(XCnn_accelerator *InstancePtr, u64 Data);
u64 XCnn_accelerator_Get_weights4(XCnn_accelerator *InstancePtr);
void XCnn_accelerator_Set_weights2(XCnn_accelerator *InstancePtr, u64 Data);
u64 XCnn_accelerator_Get_weights2(XCnn_accelerator *InstancePtr);
void XCnn_accelerator_Set_output_r(XCnn_accelerator *InstancePtr, u64 Data);
u64 XCnn_accelerator_Get_output_r(XCnn_accelerator *InstancePtr);
void XCnn_accelerator_Set_Cin(XCnn_accelerator *InstancePtr, u32 Data);
u32 XCnn_accelerator_Get_Cin(XCnn_accelerator *InstancePtr);
void XCnn_accelerator_Set_Cout(XCnn_accelerator *InstancePtr, u32 Data);
u32 XCnn_accelerator_Get_Cout(XCnn_accelerator *InstancePtr);
void XCnn_accelerator_Set_H(XCnn_accelerator *InstancePtr, u32 Data);
u32 XCnn_accelerator_Get_H(XCnn_accelerator *InstancePtr);
void XCnn_accelerator_Set_W(XCnn_accelerator *InstancePtr, u32 Data);
u32 XCnn_accelerator_Get_W(XCnn_accelerator *InstancePtr);
void XCnn_accelerator_Set_precision(XCnn_accelerator *InstancePtr, u32 Data);
u32 XCnn_accelerator_Get_precision(XCnn_accelerator *InstancePtr);

void XCnn_accelerator_InterruptGlobalEnable(XCnn_accelerator *InstancePtr);
void XCnn_accelerator_InterruptGlobalDisable(XCnn_accelerator *InstancePtr);
void XCnn_accelerator_InterruptEnable(XCnn_accelerator *InstancePtr, u32 Mask);
void XCnn_accelerator_InterruptDisable(XCnn_accelerator *InstancePtr, u32 Mask);
void XCnn_accelerator_InterruptClear(XCnn_accelerator *InstancePtr, u32 Mask);
u32 XCnn_accelerator_InterruptGetEnabled(XCnn_accelerator *InstancePtr);
u32 XCnn_accelerator_InterruptGetStatus(XCnn_accelerator *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
