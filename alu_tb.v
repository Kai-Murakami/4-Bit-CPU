`timescale 1ns/1ps

module ALU_tb;

    reg [3:0] A, B, Sel;
    wire [3:0] ALU_out;
    wire CarryOut;

    ALU uut (
        .A(A),
        .B(B),
        .Sel(Sel),
        .ALU_out(ALU_out),
        .CarryOut(CarryOut)
    );

    initial begin
        $dumpfile("ALU_tb.vcd");
        $dumpvars(0, ALU_tb);

        $display("Time\tA\tB\tSel\tALU_out\tCarryOut");
        $monitor("%g\t%h\t%h\t%b\t%h\t%b", $time, A, B, Sel, ALU_out, CarryOut);

        A = 4'b0011; B = 4'b0001; Sel = 4'b0000; #10; // A + B = 4
        A = 4'b0100; B = 4'b0010; Sel = 4'b0001; #10; // A - B = 2
        A = 4'b0011; B = 4'b0010; Sel = 4'b0010; #10; // A * B = 6
        A = 4'b1000; B = 4'b0010; Sel = 4'b0011; #10; // A / B = 4
        A = 4'b0101; Sel = 4'b0100; #10; // A << 1 = A*2
        A = 4'b1000; Sel = 4'b0101; #10; // A >> 1 = 4
        A = 4'b1101; Sel = 4'b0110; #10; // rotate left
        A = 4'b1101; Sel = 4'b0111; #10; // rotate right
        A = 4'b1100; B = 4'b1010; Sel = 4'b1000; #10; // AND
        A = 4'b1100; B = 4'b1010; Sel = 4'b1001; #10; // OR
        A = 4'b1100; B = 4'b1010; Sel = 4'b1010; #10; // XOR
        A = 4'b1100; B = 4'b1010; Sel = 4'b1011; #10; // NOR
        A = 4'b1100; B = 4'b1010; Sel = 4'b1100; #10; // NAND
        A = 4'b1100; B = 4'b1010; Sel = 4'b1101; #10; // XNOR
        A = 4'b0010; B = 4'b0100; Sel = 4'b1110; #10; // A < B
        A = 4'b0100; B = 4'b0100; Sel = 4'b1111; #10; // A == B

        $finish;
    end

endmodule
