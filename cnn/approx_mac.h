#ifndef MAC_UNITS_H
#define MAC_UNITS_H

#include "accelerator.h"

// ================= INT8 : DSP =================
inline acc_t mac_int8(data8 a, data8 b, acc_t acc) {
#pragma HLS bind_op variable=a op=mul impl=dsp
    return acc + (acc_t)a * b;
}

// ================= INT6 : Approx (LUT) =================
inline data6 approx_mul6(data6 a, data6 b) {
#pragma HLS inline
    // truncate lower 2 bits → cheap approx
    ap_int<4> ah = a >> 2;
    ap_int<4> bh = b >> 2;
    return (ah * bh) << 2;
}

inline acc_t mac_int6(data6 a, data6 b, acc_t acc) {
#pragma HLS inline
    return acc + approx_mul6(a,b);
}

// ================= INT4 : 2 MAC per DSP =================
inline acc_t mac_int4_pack(data4 a0, data4 a1,
                           data4 b0, data4 b1,
                           acc_t acc)
{
#pragma HLS inline

    ap_int<8> A = (a1, a0);
    ap_int<8> B = (b1, b0);

#pragma HLS bind_op variable=A op=mul impl=dsp
    ap_int<16> P = A * B;

    acc += (data4)(P.range(3,0)) * (data4)(1);
    acc += (data4)(P.range(11,8)) * (data4)(1);

    return acc;
}

// ================= INT2 : 4 MAC per DSP =================
inline acc_t mac_int2_pack(
    data2 a0,data2 a1,data2 a2,data2 a3,
    data2 b0,data2 b1,data2 b2,data2 b3,
    acc_t acc)
{
#pragma HLS inline

    ap_int<8> A = (a3,a2,a1,a0);
    ap_int<8> B = (b3,b2,b1,b0);

#pragma HLS bind_op variable=A op=mul impl=dsp
    ap_int<16> P = A * B;

    acc += P.range(1,0);
    acc += P.range(5,4);
    acc += P.range(9,8);
    acc += P.range(13,12);

    return acc;
}

#endif
