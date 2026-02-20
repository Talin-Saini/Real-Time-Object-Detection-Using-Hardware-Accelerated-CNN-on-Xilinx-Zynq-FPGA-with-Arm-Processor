#include "accelerator.h"
#include <iostream>
#include <cstdlib>

#define H 8
#define W 8
#define CIN Tin
#define COUT Tout

int main() {

    std::cout << "Starting CNN Accelerator Test..." << std::endl;

    // --------------------------------------------------
    // Allocate memory (1D as required by AXI interface)
    // --------------------------------------------------
    int input_size   = CIN * H * W;
    int weight_size  = COUT * CIN;
    int output_size  = COUT * H * W;

    data8 *input    = new data8[input_size];
    data8 *weight8  = new data8[weight_size];
    data6 *weight6  = new data6[weight_size];
    data4 *weight4  = new data4[weight_size];
    data2 *weight2  = new data2[weight_size];
    acc_t *output   = new acc_t[output_size];

    // --------------------------------------------------
    // Initialize input (small values to avoid overflow)
    // --------------------------------------------------
    for (int i = 0; i < input_size; i++) {
        input[i] = (i % 8) - 4;   // values in [-4,3]
    }

    // --------------------------------------------------
    // Initialize weights for all precisions
    // --------------------------------------------------
    for (int i = 0; i < weight_size; i++) {
        weight8[i] = (i % 8) - 4;
        weight6[i] = (i % 4) - 2;
        weight4[i] = (i % 4) - 2;
        weight2[i] = (i % 2);
    }

    // Clear output
    for (int i = 0; i < output_size; i++) {
        output[i] = 0;
    }

    // --------------------------------------------------
    // Choose precision mode
    // 0 = INT8
    // 1 = INT6 (approx)
    // 2 = INT4 (packed DSP)
    // 3 = INT2 (packed DSP)
    // --------------------------------------------------
    int precision = 0;   // change this to test different modes

    // --------------------------------------------------
    // Call accelerator
    // --------------------------------------------------
    cnn_accelerator(
        input,
        weight8,
        weight6,
        weight4,
        weight2,
        output,
        CIN,
        COUT,
        H,
        W,
        precision
    );

    // --------------------------------------------------
    // Print few outputs
    // --------------------------------------------------
    std::cout << "Output samples:" << std::endl;

    for (int i = 0; i < 10; i++) {
        std::cout << output[i] << " ";
    }
    std::cout << std::endl;

    std::cout << "Test completed." << std::endl;

    // --------------------------------------------------
    // Free memory
    // --------------------------------------------------
    delete[] input;
    delete[] weight8;
    delete[] weight6;
    delete[] weight4;
    delete[] weight2;
    delete[] output;

    return 0;
}
