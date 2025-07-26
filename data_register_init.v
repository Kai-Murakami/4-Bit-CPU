module DataRegister2(
input clk, reseta, resetb,
input[3:0] da,db,
input ena,enb,
output [3:0] qa, qb
);

DataRegister2 DA(clk,reseta,ena,da,qa);
DataRegister2 DB(clk,resetb,enb,db,qb);

endmodule
