# Universal Shifter in Verilog

## Overview
This project implements a Universal Shifter using Verilog HDL.

The shifter supports multiple operations:

- Logical Left Shift (LLS)
- Logical Right Shift (LRS)
- Arithmetic Right Shift (ASR)
- Rotate Left (ROL)
- Rotate Right (ROR)
- Barrel Left Shift
- Barrel Right Shift

## Inputs

| Signal | Width | Description |
|----------|----------|----------|
| A | 8-bit | Input data |
| shift_amt | 3-bit | Shift amount for barrel shifting |
| S | 3-bit | Operation select |

## Outputs

| Signal | Width | Description |
|----------|----------|----------|
| Y | 8-bit | Shifted output |

## Operation Table

| S | Operation |
|---|---|
| 000 | Logical Left Shift |
| 001 | Logical Right Shift |
| 010 | Arithmetic Right Shift |
| 011 | Rotate Left |
| 100 | Rotate Right |
| 101 | Barrel Right Shift |
| 110 | Barrel Left Shift |
| 111 | No Operation |

## Verilog Modeling Style

Behavioral Modeling using:

```verilog
always @(*)
case(S)
```

## Simulation

The design was verified using a Verilog testbench covering all supported shift operations.

## Author

Tejaswini Mandavilli
