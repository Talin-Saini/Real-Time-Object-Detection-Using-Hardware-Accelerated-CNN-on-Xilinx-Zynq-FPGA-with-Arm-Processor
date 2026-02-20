Mixed-Precision Quantization & FPGA Inference Framework
Overview

This project implements an end-to-end workflow for evaluating, converting, and deploying neural network models using layer-wise mixed-precision quantization on an FPGA accelerator.

The system dynamically determines whether a model (or individual layers) can be quantized to INT8, INT6, INT4, or INT2 while maintaining acceptable signal fidelity. The processed model is then executed on an HLS-based dynamic MAC architecture with efficient DSP and memory utilization.

Objective:
Maximize compute density and memory efficiency while preserving numerical accuracy.

Key Features

Automatic quantization feasibility analysis

Layer-wise mixed precision (INT8 / INT6 / INT4 / INT2)

SNR-based validation for quality assurance

Efficient bit-packed weight storage

Binary-to-C weight conversion support

Dynamic DSP utilization in HLS

Layer-wise runtime configuration using metadata

End-to-end Python → FPGA deployment pipeline

UART-based data transfer for hardware testing

Quantization Feasibility Check

Each layer is evaluated before deployment.

Acceptance Criteria

SNR ≥ 40 dB

At least 99% of weights lie within the representable quantization range

If the criteria are satisfied, the layer is assigned the lowest possible precision among:

INT8

INT6

INT4

INT2

This ensures aggressive compression without unacceptable signal degradation.

Layer-wise Mixed Precision

Different layers can use different bit-widths based on sensitivity.

Example:

Early or sensitive layers → higher precision (INT8)

Robust layers → lower precision (INT4 / INT2)

Benefits:

Improved overall accuracy

Reduced memory footprint

Higher effective DSP utilization

Each layer is stored independently and processed according to its assigned precision.

Model Conversion Pipeline

The conversion workflow performs:

Per-layer quantization based on feasibility results

Storage of each layer in a separate binary file

Generation of a metadata file containing:

Layer dimensions

Bit-width

Scaling information

Layer ordering

This enables flexible layer-wise loading and execution on the target hardware.

Bit Packing Scheme

Weights are packed to minimize storage and memory bandwidth:

Precision	Storage Format
INT2	4 weights per byte
INT4	2 weights per byte
INT6	4 weights in 3 bytes
INT8	1 weight per byte

A conversion utility is provided to generate C-compatible representations when required for embedded or HLS integration.

Hardware Architecture (HLS)
Dynamic MAC Design

The accelerator adapts its DSP usage based on the layer precision:

Precision	DSP Strategy
INT8	One MAC per DSP
INT6	Approximate multiplier implementation
INT4	Two MAC operations packed per DSP
INT2	Four MAC operations packed per DSP

This enables precision-scalable compute density without modifying the hardware architecture.

Runtime Execution

The embedded application performs the following:

Receives input data via UART

Parses the model metadata

Loads layer weights dynamically

Configures computation precision per layer

Executes layers sequentially on the accelerator

Transmits output results via UART

This allows model testing and updates without FPGA re-synthesis.

Performance Goals

Minimize memory usage through ultra-low-bit quantization

Increase effective DSP throughput via computation packing

Enable flexible precision scaling across layers

Maintain signal fidelity using SNR-based validation

Future Improvements

USB/OTG data transfer for higher throughput

Activation quantization support

ONNX direct integration

Latency and throughput benchmarking

AXI-based high-speed data interfaces
