# Functional Simulation

## Objective

Verify the logical correctness of the AND gate.

## Testbench

File: sim/and_gate_tb.sv

## Simulator

Icarus Verilog

## Test Cases

| Test | A | B | Expected Y |
|------|---|---|------------|
| 1 | 0 | 0 | 0 |
| 2 | 0 | 1 | 0 |
| 3 | 1 | 0 | 0 |
| 4 | 1 | 1 | 1 |

## Simulation Commands

iverilog -g2012 -o and_gate_sim rtl/and_gate.sv sim/and_gate_tb.sv

vvp and_gate_sim

## Waveform Analysis

GTKWave is used to inspect the generated VCD waveform.

## Expected Result

All four test cases should pass.
