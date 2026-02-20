#ifndef ACCELERATOR_H
#define ACCELERATOR_H

#include <ap_int.h>

// ---------- Data types ----------
typedef ap_int<8>  data8;
typedef ap_int<6>  data6;
typedef ap_int<4>  data4;
typedef ap_int<2>  data2;
typedef ap_int<32> acc_t;

// ---------- Systolic size (safe for Z7020) ----------
#define SA 8

// ---------- Tile sizes ----------
#define Tin   16
#define Tout  16
#define Tr    8
#define Tc    8
#define K     3

// ---------- Top function ----------
void cnn_accelerator(
    data8 *input,
    data8 *weights8,
    data6 *weights6,
    data4 *weights4,
    data2 *weights2,
    acc_t *output,
    int Cin,
    int Cout,
    int H,
    int W,
    int precision
);

#endif
