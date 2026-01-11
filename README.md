# ALU-16bit-RTL-to-GDSII
This repository presents the design and implementation of a 16-bit Arithmetic Logic Unit (ALU) using Verilog HDL, following an academic ASIC design flow from RTL design to physical layout and verification.

The project emphasizes RTL correctness, synthesis awareness, and physical design understanding using Cadence Virtuoso.

## ALU Overview

The ALU operates on 16-bit inputs and supports arithmetic, logical, and shift operations controlled via a 4-bit select (control) signal.

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
- Synthesizable Verilog RTL
- Modular and readable design style

## Verification & Analysis
- Functional verification performed at RTL level using a Verilog testbench
- All operations validated through exhaustive stimulus
- Logic synthesis and physical design analyzed within Cadence tools
- Timing, connectivity, and layout correctness verified using tool-generated reports

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

Note: Intermediate netlists and timing files were analyzed within the EDA environment and are not exported in this repository.

## Repository Structure
- rtl/ → Verilog RTL source code
- tb/ → Testbenches
- synthesis/ → Synthesis scripts and reports
- post_synthesis/ → Netlist and SDF
- physical_design/ → P&R and timing artifacts
- docs/ → Architecture and design documentation

## Disclaimer
- This repository contains original academic work only.
- No proprietary PDKs, libraries, or confidential materials are included.

## Key Skills Demonstrated
- RTL design using Verilog HDL
- Understanding of ASIC synthesis and physical design flow
- Layout-level verification concepts (DRC / LVS)
- Timing awareness and report-based analysis
- Physical design flow understanding
- Digital design verification methodology

## References
This project was a part of my B. Tech Assignments which was to be done in Cadence Encounter.
