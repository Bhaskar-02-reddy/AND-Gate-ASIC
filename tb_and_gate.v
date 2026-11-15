`timescale 1ns/1ps

// module tb_and_gate;

//     reg a, b;
//     wire y;

//     and_gate dut (
//         .a(a),
//         .b(b),
//         .y(y)
//     );

//     initial begin
//         $monitor("Time=%0t | a=%b b=%b | y=%b", $time, a, b, y);

//         a = 0; b = 0; #10;
//         a = 0; b = 1; #10;
//         a = 1; b = 0; #10;
//         a = 1; b = 1; #10;

//         $finish;
//     end

// endmodule

`timescale 1ns/1ps

module tb_and_gate;



    reg a, b;
    wire y;

    and_gate dut (
        .a(a),
        .b(b),
        .y(y)
    );

    initial begin
        $dumpfile("and_gate.vcd");
        $dumpvars(0,tb_and_gate);
        a = 0; b = 0; #10;
        if (y !== 0) $fatal(1, "FAIL: 00");

        a = 0; b = 1; #10;
        if (y !== 0) $fatal(1, "FAIL: 01");

        a = 1; b = 0; #10;
        if (y !== 0) $fatal(1, "FAIL: 10");

        a = 1; b = 1; #10;
        if (y !== 1) $fatal(1, "FAIL: 11");

        $display("PASS: All AND gate test cases passed.");
        $finish;
    end

endmodule