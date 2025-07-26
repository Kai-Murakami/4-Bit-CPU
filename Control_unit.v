module control_unit
(
input [7:0] instructions,

output reg[3:0] alu_sel,
output reg[1:0] reg_a_address,
output reg[1:0] reg_b_address,
output reg reg_write_en,
output reg[1:0] reg_write_address
);
 alu_sel = instructions[7:4];
reg_a_address = insructions[3:2];
reg_b_address = instructions[1:0];
reg_write_en = 1'b1;
reg_writ_address = reg_a_address;
end


endmodule
