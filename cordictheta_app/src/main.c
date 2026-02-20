#include "xparameters.h"
#include "xil_io.h"
#include <stdio.h>
#include <stdint.h>

// ====================================
// GPIO memory base addresses
// ====================================
#define GPIO0_BASE XPAR_AXI_GPIO_0_BASEADDR   // X
#define GPIO1_BASE XPAR_AXI_GPIO_1_BASEADDR   // Y
#define GPIO2_BASE XPAR_AXI_GPIO_2_BASEADDR   // Z

// ====================================
// Q formats
// ====================================
// Q16.16 vector
static inline int32_t float_to_Q1616(float x)
{
    return (int32_t)(x * (1 << 16));
}
static inline float Q1616_to_float(int32_t x)
{
    return (float)x / (float)(1 << 16);
}

// Q8.23 angle in degrees
static inline int32_t deg_to_Q823(float deg)
{
    return (int32_t)(deg * (1 << 23));
}
static inline float Q823_to_deg(int32_t z)
{
    return (float)z / (float)(1 << 23);
}

void delay(int t)
{
    for (volatile int i = 0; i < t; i++);
}

int main()
{
    setvbuf(stdout, NULL, _IONBF, 0);
    printf("=== GPIO CORDIC TEST (correct mapping) ===\r\n");

    float angles[] = {5, 10, 30, 45, 60, 90, 120, 180, -45};
    int NUM = sizeof(angles)/sizeof(float);

    int32_t X_in, Y_in, Z_in;

    // ====================================
    // CONFIGURE GPIO DIRECTIONS
    // ====================================
    // CH1 OUT, CH2 IN

    // X
    Xil_Out32(GPIO0_BASE + 0x4, 0x00000001); // CH1 x_out = output
    Xil_Out32(GPIO0_BASE + 0xC, 0xFFFFFFFF); // CH2 x_in  = input

    // Y
    Xil_Out32(GPIO1_BASE + 0x4, 0x00000001); // CH1 y_out = output
    Xil_Out32(GPIO1_BASE + 0xC, 0xFFFFFFFF); // CH2 y_in  = input

    // Z
    Xil_Out32(GPIO2_BASE + 0x4, 0x00000001); // CH1 z_out = output
    Xil_Out32(GPIO2_BASE + 0xC, 0xFFFFFFFF); // CH2 z_in  = input

    // ====================================
    // MAIN TEST LOOP
    // ====================================
    for (int i = 0; i < NUM; i++)
    {
        float deg = angles[i];

        X_in = float_to_Q1616(1.0f);   // radius=1
        Y_in = float_to_Q1616(0.0f);
        Z_in = deg_to_Q823(deg);

        printf("\r\n-----------------------------------------\r\n");
        printf(" Rotating by %.2f degrees\r\n", deg);
        printf("-----------------------------------------\r\n");

        // send inputs to CH2
        Xil_Out32(GPIO0_BASE + 0x8, X_in); // x_in
        Xil_Out32(GPIO1_BASE + 0x8, Y_in); // y_in
        Xil_Out32(GPIO2_BASE + 0x8, Z_in); // z_in

        // wait for pipeline
        delay(6000000);

        // read outputs from CH1
        int32_t x_out = Xil_In32(GPIO0_BASE + 0x0);
        int32_t y_out = Xil_In32(GPIO1_BASE + 0x0);


        float x_f = Q1616_to_float(x_out);
        float y_f = Q1616_to_float(y_out);
  

        printf(" Input X = %.6f   (0x%08X)\r\n", Q1616_to_float(X_in), X_in);
        printf(" Input Y = %.6f   (0x%08X)\r\n", Q1616_to_float(Y_in), Y_in);
        printf(" Input Z = %.6f°  (0x%08X)\r\n", deg, Z_in);

        printf("\r\n Output X = %.6f  (0x%08X)\r\n", x_f, x_out);
        printf(" Output Y = %.6f  (0x%08X)\r\n", y_f, y_out);

    }

    printf("\r\n=== ALL DONE ===\r\n");

    while(1);
    return 0;
}
