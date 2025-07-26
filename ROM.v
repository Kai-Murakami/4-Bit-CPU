module instruction_memory(
input[3:0] address,
output reg[7:0] instructions
);
reg[7:0] memory[15:0];

initial begin
    mem[0] = 8'b00000000;
end

always @(*) begin
    instructions = mem[address];
end
endmodule
