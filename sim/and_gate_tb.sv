
`timescale 1ns/1ps

module and_gate_tb;

    logic A;
    logic B;
    logic Y;

    // DUT instantiation
    and_gate dut (
        .A(A),
        .B(B),
        .Y(Y)
    );

    initial begin

        $dumpfile("and_gate.vcd");
        $dumpvars(0, and_gate_tb);

        $display("A B | Y");
        $display("--------");

        A = 0; B = 0; #10;
        $display("%0b %0b | %0b", A, B, Y);
        if (Y !== 0) $fatal(1, "Test 1 failed");

        A = 0; B = 1; #10;
        $display("%0b %0b | %0b", A, B, Y);
        if (Y !== 0) $fatal(1, "Test 2 failed");

        A = 1; B = 0; #10;
        $display("%0b %0b | %0b", A, B, Y);
        if (Y !== 0) $fatal(1, "Test 3 failed");

        A = 1; B = 1; #10;
        $display("%0b %0b | %0b", A, B, Y);
        if (Y !== 1) $fatal(1, "Test 4 failed");

        $display("------------------------");
        $display("ALL TESTS PASSED");

        $finish;

    end

endmodule

