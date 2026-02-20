#include "accelerator.h"
#include "systolic_array.h"

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
){
#pragma HLS INTERFACE m_axi port=input   bundle=gmem
#pragma HLS INTERFACE m_axi port=weights8 bundle=gmem
#pragma HLS INTERFACE m_axi port=weights6 bundle=gmem
#pragma HLS INTERFACE m_axi port=weights4 bundle=gmem
#pragma HLS INTERFACE m_axi port=weights2 bundle=gmem
#pragma HLS INTERFACE m_axi port=output  bundle=gmem

#pragma HLS INTERFACE s_axilite port=precision
#pragma HLS INTERFACE s_axilite port=Cin
#pragma HLS INTERFACE s_axilite port=Cout
#pragma HLS INTERFACE s_axilite port=H
#pragma HLS INTERFACE s_axilite port=W
#pragma HLS INTERFACE s_axilite port=return

    // ---------- BRAM buffers ----------
    static data8 in_buf[Tin][Tr+K-1][Tc+K-1];
    static acc_t out_buf[Tout][Tr][Tc];

#pragma HLS bind_storage variable=in_buf type=ram_2p impl=bram
#pragma HLS bind_storage variable=out_buf type=ram_2p impl=bram

    // ---------- Example single tile compute ----------
    for(int to=0; to<Tout; to++)
    for(int tr=0; tr<Tr; tr++)
    for(int tc=0; tc<Tc; tc++){
#pragma HLS PIPELINE II=1

        acc_t sum = 0;

        for(int ti=0; ti<Tin; ti+=SA){

            data8 act[SA];
            data8 w8[SA];
            data6 w6[SA];
            data4 w4[SA];
            data2 w2[SA];
            acc_t partial[SA];

#pragma HLS ARRAY_PARTITION variable=act complete
#pragma HLS ARRAY_PARTITION variable=partial complete

            for(int k=0;k<SA;k++){
#pragma HLS UNROLL
                act[k] = input[(ti+k)*H*W + tr*W + tc];
                w8[k]  = weights8[to*Cin + ti+k];
                w6[k]  = weights6[to*Cin + ti+k];
                w4[k]  = weights4[to*Cin + ti+k];
                w2[k]  = weights2[to*Cin + ti+k];
                partial[k] = 0;
            }

            systolic_array(act,w8,w6,w4,w2,partial,precision);

            for(int k=0;k<SA;k++) sum += partial[k];
        }

        output[to*H*W + tr*W + tc] = sum;
    }
}
