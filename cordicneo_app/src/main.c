#include "xparameters.h"
#include "xil_io.h"
#include "xil_printf.h"
#include "sleep.h"

// AXI base address of your CORDIC IP
#define CORDIC_BASE   XPAR_CORDICNEO_0_BASEADDR

// Register definitions
#define REG_X_IN      0x00
#define REG_Z_IN      0x04
#define REG_X_OUT     0x08
#define REG_Y_OUT     0x0C

// Q8.23 format to float conversion
float q8_23_to_float(uint32_t q)
{
    return (float)((int32_t)q) / 8388608.0f;
}

// Simple CORDIC exec function – no DONE
void cordic_compute(int32_t x, int32_t z)
{
    // Write inputs
    Xil_Out32(CORDIC_BASE + REG_X_IN, x);
    Xil_Out32(CORDIC_BASE + REG_Z_IN, z);

    // wait long enough for pipeline to complete
    usleep(10);   // 5 microseconds

    // read outputs
    int32_t xo = (int32_t)Xil_In32(CORDIC_BASE + REG_X_OUT);
    int32_t yo = (int32_t)Xil_In32(CORDIC_BASE + REG_Y_OUT);

    // print results
    xil_printf("\r\n-----------------------------\r\n");
    xil_printf("Input: X=0x%08x  Z=0x%08x\r\n", x, z);
    xil_printf("Output: X=0x%08x  Y=0x%08x\r\n", xo, yo);
    xil_printf("Float:  X=%f  Y=%f\r\n", q8_23_to_float(xo), q8_23_to_float(yo));
}

int main()
{
    xil_printf("\r\n==== CORDIC TEST BEGIN ====\r\n");

    cordic_compute(0x00800000, 0x16800000);   // +45
    cordic_compute(0x00800000, -0x16800000);  // -45
    cordic_compute(0x00000000, 0x0F600000);   // +30
    cordic_compute(0x00000000, -0x0F600000);  // -30
    cordic_compute(0x00400000, 0x03400000);   // small random test

    xil_printf("==== CORDIC TEST COMPLETE ====\r\n");

    while(1);
    return 0;
}
