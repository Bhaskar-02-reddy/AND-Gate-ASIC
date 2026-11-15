# AND Gate: RTL-to-GDSII Flow

```mermaid
flowchart TD
    A["SystemVerilog RTL<br/>and_gate.sv"]
    B["Functional Verification<br/>Icarus Verilog"]
    C["Waveform Analysis<br/>GTKWave"]
    D["Logic Synthesis<br/>Yosys"]
    E["Gate-Level Netlist"]
    F["Floorplanning"]
    G["Placement"]
    H["Physical Optimization<br/>and Routing"]
    I["Physical Verification"]
    J["GDSII Generation"]
    K["Layout Inspection<br/>KLayout"]

    A --> B
    B --> C
    B --> D
    D --> E
    E --> F
    F --> G
    G --> H
    H --> I
    I --> J
    J --> K



