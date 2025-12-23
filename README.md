# ALU-16bit-RTL-to-GDSII
This repository presents the design and implementation of a 16-bit Arithmetic Logic Unit (ALU) using Verilog HDL, following a complete ASIC design flow from RTL design to physical verification.
rification.

## ALU Overview

The ALU operates on 16-bit inputs and supports arithmetic, logical, and shift operations controlled via a 4-bit select signal.

### Supported Operations
| ALU_Sel	| Operation         |
|---------|-------------------|
| 0000	  |Addition           |
| 0001	  |Subtraction        |
| 0010	  |Multiplication     |
| 0011	  |Division           |
| 0100	  |Logical Shift Left |
| 0101	  |Logical Shift Right|
| 0110	  |AND                |
| 0111	  |OR                 |
| 1000	  |XOR                |
| 1001	  |NOR                |
| 1010	  |NAND               |
| 1011	  |XNOR               |

Carry-out is generated for arithmetic operations.

## Architecture
- Pure combinational ALU
- Case-based operation selection
- Modular RTL design
- Synthesizable Verilog

## Verification
- Functional Simulation
- RTL simulation using Verilog testbench
- Exhaustive operation testing via ALU select iteration
- Post-Synthesis Simulation
- Gate-level netlist simulation
- SDF back-annotation for timing verification

## ASIC Design Flow
- RTL Coding (Verilog)
- Functional Simulation
- Logic Synthesis (standard cell based)
- Post-Synthesis Timing Simulation
- Floorplanning
- Power Planning
- Placement
- Routing
- Timing Analysis (Pre-CTS)
- Geometry & Connectivity Verification

## Repository Structure
- rtl/ → Verilog RTL source
- tb/ → Testbenches
- synthesis/ → Synthesis scripts and reports
- post_synthesis/ → Netlist and SDF
- physical_design/ → P&R and timing artifacts
- docs/ → Architecture and design explanations

## Disclaimer
- This repository contains original academic work only.
- No proprietary PDKs, libraries, or confidential materials are included.

## Key Skills Demonstrated
- RTL design using Verilog HDL
- ASIC synthesis and timing analysis
- Gate-level simulation with SDF
- Physical design flow understanding
- Digital design verification methodology
