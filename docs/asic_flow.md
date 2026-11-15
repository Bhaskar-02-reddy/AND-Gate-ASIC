# ASIC Implementation Flow

## 1. RTL Design
Develop the AND gate using SystemVerilog.

## 2. Functional Verification
Verify the design using Icarus Verilog.

## 3. Logic Synthesis
Use Yosys to translate RTL into a gate-level netlist.

## 4. Floorplanning
Define the initial physical design area.

## 5. Placement
Place the synthesized standard cells.

## 6. Physical Implementation
Perform the applicable timing, routing and
physical optimization stages.

## 7. Physical Verification
Inspect applicable design-rule and connectivity checks.

## 8. GDSII Generation
Generate the final layout database.

## 9. Layout Inspection
Open the GDSII file using KLayout.
