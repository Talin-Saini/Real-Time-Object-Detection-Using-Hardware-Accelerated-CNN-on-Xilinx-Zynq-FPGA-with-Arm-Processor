#ifndef PE_H
#define PE_H

#include "approx_mac.h"

inline acc_t pe_compute(
    data8 a,
    data8 w8,
    data6 w6,
    data4 w4,
    data2 w2,
    acc_t psum,
    int precision
){
#pragma HLS inline

    switch(precision){
        case 0: return mac_int8(a,w8,psum);
        case 1: return mac_int6((data6)a,w6,psum);
        case 2: return mac_int4_pack((data4)a,0,w4,0,psum);
        case 3: return mac_int2_pack((data2)a,0,0,0,w2,0,0,0,psum);
        default: return psum;
    }
}

#endif
