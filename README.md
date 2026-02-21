# Mixed-Precision Quantization for Real-Time Object Detection on Xilinx Zynq FPGA

This repository implements the mixed-precision quantization and FPGA inference engine used in the project:

**Real-Time Object Detection Using Hardware-Accelerated CNN on Xilinx Zynq FPGA with ARM Processor**

The framework enables efficient deployment of the object detection CNN model by dynamically selecting layer-wise precision (INT8 / INT6 / INT4 / INT2), optimizing DSP utilization, and minimizing memory bandwidth while preserving detection accuracy.

It serves as the precision optimization and hardware acceleration backbone of the real-time detection pipeline deployed on the Zynq SoC.

---

## Objective

Enable real-time object detection on the Zynq platform by maximizing compute density and memory efficiency while maintaining numerical fidelity and detection accuracy.

---

## System Overview

The framework performs:

- Automatic per-layer quantization feasibility analysis  
- Layer-wise mixed-precision assignment  
- Bit-packed weight storage generation  
- Metadata-driven runtime configuration  
- Deployment to an HLS-based dynamic MAC accelerator  
- Embedded execution via ARM processor with UART interface  

The design ensures efficient hardware utilization while maintaining model integrity.

---

## Key Features

- Automatic quantization feasibility analysis  
- Layer-wise mixed precision (INT8 / INT6 / INT4 / INT2)  
- SNR-based validation (≥ 40 dB threshold)  
- Bit-packed weight compression  
- Binary-to-C conversion utilities  
- DSP-aware dynamic MAC architecture  
- Runtime layer-wise precision configuration  
- End-to-end Python to FPGA deployment pipeline  
- UART-based hardware testing  

---

## Quantization Feasibility Check

Each CNN layer is evaluated independently before deployment.

### Acceptance Criteria

A layer is eligible for quantization if:

- Signal-to-Noise Ratio (SNR) ≥ 40 dB  
- At least 99% of weights lie within the representable quantization range  

If these criteria are satisfied, the layer is assigned the lowest feasible precision among:

- INT8  
- INT6  
- INT4  
- INT2  

This ensures aggressive compression without unacceptable signal degradation.

---

## Layer-wise Mixed Precision Strategy

Different layers exhibit different sensitivity to quantization. The framework assigns precision accordingly.

### Example Strategy

| Layer Type                  | Assigned Precision |
|-----------------------------|-------------------|
| Early / Sensitive Layers    | INT8              |
| Moderately Robust Layers    | INT6              |
| Robust Layers               | INT4 / INT2       |

### Benefits

- Improved overall detection accuracy  
- Reduced memory footprint  
- Higher effective DSP utilization  
- Precision-aware hardware efficiency  

Each layer is stored and processed independently based on its assigned bit-width.

---

## Model Conversion Pipeline

The conversion workflow performs:

1. Per-layer quantization based on feasibility analysis  
2. Storage of each layer as separate binary files  
3. Generation of metadata containing:
   - Layer dimensions  
   - Bit-width  
   - Scaling factors  
   - Execution order  

This enables flexible, runtime-configurable execution on FPGA hardware.

---

## Bit Packing Scheme

Weights are packed to minimize storage and memory bandwidth.

| Precision | Storage Format              |
|------------|----------------------------|
| INT2       | 4 weights per byte         |
| INT4       | 2 weights per byte         |
| INT6       | 4 weights in 3 bytes       |
| INT8       | 1 weight per byte          |

A conversion utility generates C-compatible arrays for HLS and embedded integration.

---

## Hardware Architecture (HLS)

### Dynamic MAC Design

The accelerator adapts DSP utilization based on layer precision.

| Precision | DSP Utilization Strategy                     |
|------------|----------------------------------------------|
| INT8       | One MAC per DSP                              |
| INT6       | Approximate multiplier implementation         |
| INT4       | Two MAC operations packed per DSP            |
| INT2       | Four MAC operations packed per DSP           |

This precision-scalable architecture enables increased compute density without modifying the hardware structure.

---

## Runtime Execution Flow

The embedded ARM application performs:

1. Receive input data via UART  
2. Parse model metadata  
3. Dynamically load layer weights  
4. Configure computation precision per layer  
5. Execute layers sequentially on the FPGA accelerator  
6. Transmit detection output via UART  

This design allows model updates without FPGA re-synthesis.

---

## Performance Goals

- Minimize memory usage through ultra-low-bit quantization  
- Increase effective DSP throughput through computation packing  
- Enable flexible precision scaling across CNN layers  
- Maintain signal fidelity through SNR-based validation  
- Support real-time object detection constraints  

---

## Future Improvements

- USB / OTG-based high-speed data transfer  
- Activation quantization support  
- Direct ONNX model integration  
- Latency and throughput benchmarking framework  
- AXI-based high-bandwidth data interfaces  

---

## Toolchain Overview

| Stage                         | Tool              |
|--------------------------------|------------------|
| Quantization & Validation     | Python            |
| Bit Packing & Conversion      | Python Utilities  |
| Hardware Design               | Vitis HLS         |
| Platform Integration          | Vivado            |
| Embedded Application          | ARM (SDK/Vitis)   |
| Runtime Communication         | UART              |

---

## Project Structure

The repository is organized to clearly separate hardware design, embedded software, dataset, and evaluation results.

```
.
├── CNN_BLOCK_DESIGN/     # HLS-based mixed-precision MAC architecture
├── cnn/                  # CNN accelerator integration logic
├── cnn_platform/         # Vivado Zynq platform (PS + PL design)
├── cnn_app/              # Embedded runtime application (UART + control)
├── archive/              # Complete dataset (models, weights, inputs)
├── results/              # Quantization reports and performance outputs
├── archive.zip           # Compressed dataset backup
├── .gitignore            # Git ignored files configuration
└── README.md             # Project documentation
```

