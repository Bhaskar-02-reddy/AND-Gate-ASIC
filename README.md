# AND-Gate-ASIC
AND Gate RTL-to-GDSII using OpendROAD
# AND Gate ASIC Implementation

A complete RTL-to-GDSII implementation of a 2-input AND gate using open-source digital design and physical design tools.

## Project Overview

This project demonstrates the basic ASIC implementation flow, starting from RTL design and functional verification and progressing through logic synthesis, physical design, and final GDSII generation.

The objective is to understand how a simple digital logic function is translated into a physical layout suitable for ASIC fabrication.

## Design Specification

| Parameter | Description |
|---|---|
| Design | 2-input AND gate |
| Inputs | A, B |
| Output | Y |
| Logic function | Y = A AND B |
| HDL | SystemVerilog |
| Design type | Combinational logic |

### Truth Table

| A | B | Y |
|---|---|---|
| 0 | 0 | 0 |
| 0 | 1 | 0 |
| 1 | 0 | 0 |
| 1 | 1 | 1 |

## Architecture

The design accepts two binary inputs and produces one output.

The output becomes HIGH only when both inputs are HIGH.

```text
       A ──────┐
               │
               AND ────── Y
               │
       B ──────┘
```

## RTL Implementation

The design is described using synthesizable SystemVerilog.

Source file:

`rtl/and_gate.sv`

The RTL describes the Boolean function:

`Y = A & B`

## Functional Verification

A SystemVerilog testbench is used to verify all four possible input combinations.

Testbench:

`sim/and_gate_tb.sv`

Simulation is performed using Icarus Verilog.

Waveforms can be inspected using GTKWave.

## ASIC Design Flow

The project follows the standard RTL-to-GDSII implementation process:

1. **RTL Design** – Describe the AND gate using SystemVerilog.
2. **Functional Verification** – Verify all input combinations using a testbench.
3. **Logic Synthesis** – Convert RTL into a gate-level netlist using Yosys.
4. **Floorplanning** – Define the physical design area and initial layout constraints.
5. **Placement** – Position standard cells within the design area.
6. **Clock/Timing and Routing Stages** – Execute the applicable physical implementation stages. A purely combinational design may not require a clock tree.
7. **Physical Verification** – Check applicable design-rule and connectivity requirements.
8. **GDSII Generation** – Generate the final layout database.

### RTL-to-GDSII Flow Diagram

See the project flow diagram:

`images/architecture/rtl_to_gds_flow.png`

## Tools and Technologies

| Tool | Purpose |
|---|---|
| SystemVerilog | RTL design |
| Icarus Verilog | Functional simulation |
| GTKWave | Waveform analysis |
| Yosys | Logic synthesis |
| OpenROAD | Physical design implementation |
| Sky130 HD | Standard-cell technology |
| KLayout | GDSII layout visualization |

*The exact tool stages and configurations depend on the OpenROAD flow and PDK configuration used.*

## Project Results

### Functional Verification

All four input combinations are covered by the testbench.

### Synthesis Results

Detailed synthesis reports are available in:

`reports/synthesis/`

### Physical Design Results

Physical design reports and implementation outputs are documented in:

`reports/physical_design/`

### Final GDSII Layout

The generated GDSII layout can be viewed using KLayout.

Layout screenshot:

`images/layout/final_gds_layout.png`

## Repository Structure

```text
and_gate/
├── README.md
├── rtl/
│   └── and_gate.sv
├── sim/
│   └── and_gate_tb.sv
├── reports/
│   ├── synthesis/
│   └── physical_design/
├── images/
│   ├── architecture/
│   └── layout/
└── docs/
    ├── architecture.md
    ├── simulation.md
    └── asic_flow.md
```

## Learning Outcomes

- Developed a synthesizable combinational RTL design.
- Understood functional verification using a SystemVerilog testbench.
- Explored RTL-to-gate-level synthesis.
- Gained practical exposure to ASIC physical design.
- Generated and inspected a GDSII layout using open-source EDA tools.

## Future Improvements

- Implement more complex combinational and sequential circuits.
- Explore timing constraints and static timing analysis.
- Compare synthesis and physical design metrics across different designs.
- Extend the flow to larger RTL modules.

## Author

**Bhaskar**

GitHub: [Bhaskar-02-reddy](https://github.com/Bhaskar-02-reddy)

