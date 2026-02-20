// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (Read/TOW)
//        bit 1 - ap_ready (Read/TOW)
//        others - reserved
// 0x10 : Data signal of input_r
//        bit 31~0 - input_r[31:0] (Read/Write)
// 0x14 : Data signal of input_r
//        bit 31~0 - input_r[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of weights8
//        bit 31~0 - weights8[31:0] (Read/Write)
// 0x20 : Data signal of weights8
//        bit 31~0 - weights8[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of weights6
//        bit 31~0 - weights6[31:0] (Read/Write)
// 0x2c : Data signal of weights6
//        bit 31~0 - weights6[63:32] (Read/Write)
// 0x30 : reserved
// 0x34 : Data signal of weights4
//        bit 31~0 - weights4[31:0] (Read/Write)
// 0x38 : Data signal of weights4
//        bit 31~0 - weights4[63:32] (Read/Write)
// 0x3c : reserved
// 0x40 : Data signal of weights2
//        bit 31~0 - weights2[31:0] (Read/Write)
// 0x44 : Data signal of weights2
//        bit 31~0 - weights2[63:32] (Read/Write)
// 0x48 : reserved
// 0x4c : Data signal of output_r
//        bit 31~0 - output_r[31:0] (Read/Write)
// 0x50 : Data signal of output_r
//        bit 31~0 - output_r[63:32] (Read/Write)
// 0x54 : reserved
// 0x58 : Data signal of Cin
//        bit 31~0 - Cin[31:0] (Read/Write)
// 0x5c : reserved
// 0x60 : Data signal of Cout
//        bit 31~0 - Cout[31:0] (Read/Write)
// 0x64 : reserved
// 0x68 : Data signal of H
//        bit 31~0 - H[31:0] (Read/Write)
// 0x6c : reserved
// 0x70 : Data signal of W
//        bit 31~0 - W[31:0] (Read/Write)
// 0x74 : reserved
// 0x78 : Data signal of precision
//        bit 31~0 - precision[31:0] (Read/Write)
// 0x7c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_ADDR_AP_CTRL        0x00
#define CONTROL_ADDR_GIE            0x04
#define CONTROL_ADDR_IER            0x08
#define CONTROL_ADDR_ISR            0x0c
#define CONTROL_ADDR_INPUT_R_DATA   0x10
#define CONTROL_BITS_INPUT_R_DATA   64
#define CONTROL_ADDR_WEIGHTS8_DATA  0x1c
#define CONTROL_BITS_WEIGHTS8_DATA  64
#define CONTROL_ADDR_WEIGHTS6_DATA  0x28
#define CONTROL_BITS_WEIGHTS6_DATA  64
#define CONTROL_ADDR_WEIGHTS4_DATA  0x34
#define CONTROL_BITS_WEIGHTS4_DATA  64
#define CONTROL_ADDR_WEIGHTS2_DATA  0x40
#define CONTROL_BITS_WEIGHTS2_DATA  64
#define CONTROL_ADDR_OUTPUT_R_DATA  0x4c
#define CONTROL_BITS_OUTPUT_R_DATA  64
#define CONTROL_ADDR_CIN_DATA       0x58
#define CONTROL_BITS_CIN_DATA       32
#define CONTROL_ADDR_COUT_DATA      0x60
#define CONTROL_BITS_COUT_DATA      32
#define CONTROL_ADDR_H_DATA         0x68
#define CONTROL_BITS_H_DATA         32
#define CONTROL_ADDR_W_DATA         0x70
#define CONTROL_BITS_W_DATA         32
#define CONTROL_ADDR_PRECISION_DATA 0x78
#define CONTROL_BITS_PRECISION_DATA 32
