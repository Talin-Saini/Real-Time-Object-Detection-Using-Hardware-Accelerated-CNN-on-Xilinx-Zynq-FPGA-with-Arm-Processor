#include "C:\Users\ishan\ECT_110_vitis\cordicbeta\ps7_cortexa9_0\standalone_ps7_cortexa9_0\bsp\include\xparameters.h"
#include "xil_io.h"
#include <stdio.h>
#include <stdint.h>

// -----------------------------
// GPIO base addresses (working)
// -----------------------------
#define GPIO0_BASE XPAR_AXI_GPIO_0_BASEADDR   // x_in (CH2) / x_out (CH1)
#define GPIO1_BASE XPAR_AXI_GPIO_1_BASEADDR   // z_in (CH2) / y_out (CH1)

// -----------------------------
// Fixed-point conversion helpers
// -----------------------------
static inline int32_t float_to_Q1616(float x)
{
    return (int32_t)(x * (1 << 16));
}

static inline float Q1616_to_float(int32_t x)
{
    return (float)x / (float)(1 << 16);
}

static inline int32_t deg_to_Q823(float deg)
{
    return (int32_t)(deg * (1 << 23));
}

static inline float Q823_to_float(int32_t z)
{
    return (float)z / (float)(1 << 23);
}

int main()
{
    setvbuf(stdout, NULL, _IONBF, 0);
    printf("=== CORDIC GPIO MULTI-ANGLE TEST ===\r\n");

    // Test angles (degrees)
    float test_angles[] = {5, 10, 30, 45, 60, 90, 120, 180, -45};
    int NUM = sizeof(test_angles)/sizeof(float);

    // Constant magnitude: X = 1.0 (Q16.16)
    int32_t X_in = float_to_Q1616(1.0f);

    // -----------------------------
    // CONFIGURE GPIO DIRECTIONS
    // -----------------------------
    Xil_Out32(GPIO0_BASE + 0x4, 0x00000001);  // CH1 output (x_out)
    Xil_Out32(GPIO0_BASE + 0xC, 0xFFFFFFFF);  // CH2 input  (x_in)

    Xil_Out32(GPIO1_BASE + 0x4, 0x00000001);  // CH1 output (y_out)
    Xil_Out32(GPIO1_BASE + 0xC, 0xFFFFFFFF);  // CH2 input  (z_in)

    // ----------------------------------------------------
    // RUN ALL TEST CASES
    // ----------------------------------------------------
    for (int t = 0; t < NUM; t++)
    {
        float angle_deg = test_angles[t];
        int32_t Z_in = deg_to_Q823(angle_deg);

        printf("\r\n----------------------------------------------\r\n");
        printf(" Rotating by %.2f degrees\n", angle_deg);
        printf("----------------------------------------------\r\n");

        printf("Input:\r\n");
        printf("  X_in = %.6f  (Q16.16 = 0x%08X)\r\n", 1.0, X_in);
        printf("  Z_in = %.6f deg (Q8.23 = 0x%08X)\r\n", angle_deg, Z_in);

        // Write input
        Xil_Out32(GPIO0_BASE + 0x8, X_in);  // x_in
        Xil_Out32(GPIO1_BASE + 0x8, Z_in);  // z_in

        // pipeline delay
        for (volatile int i = 0; i < 8000000; i++);

        // Read output
        int32_t x_out = Xil_In32(GPIO0_BASE + 0x0);
        int32_t y_out = Xil_In32(GPIO1_BASE + 0x0);

        float x_f = Q1616_to_float(x_out);
        float y_f = Q1616_to_float(y_out);

        printf("OUTPUT:\r\n");
        printf("  X_out = 0x%08X  →  %.6f\r\n", x_out, x_f);
        printf("  Y_out = 0x%08X  →  %.6f\r\n", y_out, y_f);
    }

    printf("\r\n=== ALL TESTS COMPLETE ===\r\n");

    while(1);
    return 0;
}
