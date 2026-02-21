# Mixed-Precision Quantization & FPGA Inference Framework

An end-to-end workflow for evaluating, converting, and deploying neural network models using **layer-wise mixed-precision quantization** on an FPGA accelerator.

This framework dynamically determines whether a model — or individual layers — can be quantized to **INT8, INT6, INT4, or INT2** while maintaining acceptable signal fidelity.  
The quantized model is executed on an **HLS-based dynamic MAC architecture** optimized for DSP and memory efficiency.

---

## Objective

Maximize compute density and memory efficiency while preserving numerical accuracy.

---

## Key Features

- Automatic quantization feasibility analysis  
- Layer-wise mixed precision (INT8 / INT6 / INT4 / INT2)  
- SNR-based validation (≥ 40 dB)  
- Efficient bit-packed weight storage  
- Binary-to-C weight conversion support  
- Dynamic DSP utilization in HLS  
- Layer-wise runtime configuration using metadata  
- End-to-end Python → FPGA deployment pipeline  
- UART-based hardware testing  

---

##  Quantization Feasibility Check

Each layer is evaluated independently before deployment.

###  Acceptance Criteria

A layer is eligible for quantization if:

- **SNR ≥ 40 dB**
- **≥ 99% of weights lie within the representable quantization range**

If satisfied, the layer is assigned the **lowest possible precision** among:

- INT8  
- INT6  
- INT4  
- INT2  

This enables aggressive compression without unacceptable signal degradation.

---

## Layer-wise Mixed Precision

Different layers may use different bit-widths based on sensitivity.

### Example Strategy

| Layer Type | Precision |
|------------|-----------|
| Early / Sensitive Layers | INT8 |
| Moderately Robust Layers | INT6 |
| Robust Layers | INT4 / INT2 |

### Benefits

- Improved overall accuracy  
- Reduced memory footprint  
- Higher effective DSP utilization  
- Flexible per-layer optimization  

Each layer is stored independently and processed according to its assigned precision.

---

## Model Conversion Pipeline

The conversion workflow performs:

1. Per-layer quantization based on feasibility analysis  
2. Storage of each layer in separate binary files  
3. Generation of a metadata file containing:
   - Layer dimensions  
   - Bit-width  
   - Scaling information  
   - Layer ordering  

This enables flexible layer-wise loading and execution on FPGA hardware.

---

## Bit Packing Scheme

Weights are bit-packed to minimize storage and memory bandwidth.

| Precision | Storage Format |
|------------|----------------|
| INT2 | 4 weights per byte |
| INT4 | 2 weights per byte |
| INT6 | 4 weights in 3 bytes |
| INT8 | 1 weight per byte |

A conversion utility is included to generate **C-compatible representations** for embedded/HLS integration.

---

##  Hardware Architecture (HLS)

### Dynamic MAC Design

The accelerator adapts DSP usage based on precision:

| Precision | DSP Strategy |
|------------|--------------|
| INT8 | One MAC per DSP |
| INT6 | Approximate multiplier implementation |
| INT4 | Two MACs packed per DSP |
| INT2 | Four MACs packed per DSP |

This enables **precision-scalable compute density** without modifying the hardware architecture.

---

##  Runtime Execution Flow

The embedded application performs:

1. Receive input data via UART  
2. Parse model metadata  
3. Load layer weights dynamically  
4. Configure computation precision per layer  
5. Execute layers sequentially on the accelerator  
6. Transmit output results via UART  

This allows model updates and testing **without FPGA re-synthesis**.

---
## Performance Goals

- Minimize memory usage via ultra-low-bit quantization  
- Increase effective DSP throughput via computation packing  
- Enable flexible precision scaling across layers  
- Maintain signal fidelity using SNR-based validation  

---

##  Future Improvements

- USB / OTG data transfer for higher throughput  
- Activation quantization support  
- Direct ONNX integration  
- Latency and throughput benchmarking  
- AXI-based high-speed data interfaces  

---

## Toolchain Overview

| Stage | Tool |
|-------|------|
| Quantization & Validation | Python |
| Bit Packing & Conversion | Python Utilities |
| Hardware Design | Vitis HLS |
| FPGA Deployment | Vivado / SDK |
| Runtime Interface | UART |

---

## Summary

This framework provides a **precision-adaptive FPGA inference system** capable of:

- Dynamic per-layer quantization  
- Efficient memory utilization  
- Scalable DSP packing  
- End-to-end deployment workflow  

Designed for research, academic demonstrations, and FPGA-based edge AI acceleration.

---

## 📄 License

Specify your license here (MIT / Apache 2.0 / Custom Academic License).
