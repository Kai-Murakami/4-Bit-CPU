module D-register (
input clk, 
input reset,
input enable,
input[3:0] d,
output reg [3:0] q
);

always@(posedge clk or negedge reset) begin
if(!reset)
q <= 4'b0000;
else if (en)
q<=d; 
end 
endmodule
