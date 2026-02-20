#ifndef SYSTOLIC_ARRAY_H
#define SYSTOLIC_ARRAY_H

#include "pe.h"

inline void systolic_array(
    data8 act[SA],
    data8 w8[SA],
    data6 w6[SA],
    data4 w4[SA],
    data2 w2[SA],
    acc_t psum[SA],
    int precision
){
#pragma HLS ARRAY_PARTITION variable=act complete
#pragma HLS ARRAY_PARTITION variable=psum complete

    for(int i=0;i<SA;i++){
#pragma HLS UNROLL
        psum[i] = pe_compute(
            act[i], w8[i], w6[i], w4[i], w2[i],
            psum[i], precision
        );
    }
}

#endif
