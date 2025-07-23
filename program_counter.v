module  Counter(
input clk, reset,
input[3:0] next_counter,
input write,
output reg[3:0] q
);
always @(posedge clk or posedge reset)begin
if(reset)
q <= 4'd0;
else if(write)
q <= next_counter;
end  
endmodule
