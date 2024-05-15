
`timescale 1ns / 1ps

module coffee_fsm_tb;

reg clk, rst, credit5, credit10;
reg [1:0] cofee;
wire [2:0] current_state;
wire exprr, expr_1, capp;

coffee_fsm dut (
.clk(clk),
.rst(rst),
.credit5(credit5),
.credit10(credit10),
.cofee(cofee),
.current_state(current_state),
.exprr(exprr),
.expr_1(expr_1),
.capp(capp)
);

initial begin
clk = 0;
rst = 1;
credit5 = 0;
credit10 = 0;
cofee = 0;
#10 rst = 0;

#20;
credit5 = 1;
#10;
credit5 = 0;
credit10 = 1;
#10;
credit5 = 1;
#5 credit5 = 0;
credit10 = 1;
#10;

cofee = 2'b01;
#10;

cofee = 2'b10;
#10;
cofee = 2'b11;
#10;

rst = 1;
#10;
$stop;
end



initial begin
forever #5 clk = ~clk;
end

endmodule
