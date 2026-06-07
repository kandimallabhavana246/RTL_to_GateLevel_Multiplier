`timescale 1ns/1ps

module tb_multiplier_8bit;

reg [7:0] A;
reg [7:0] B;

wire [15:0] P;

multiplier_8bit dut(
    .A(A),
    .B(B),
    .P(P)
);

initial
begin

A = 8'd10;
B = 8'd5;
#10;
$display("A=%d B=%d Product=%d",A,B,P);

A = 8'd12;
B = 8'd4;
#10;
$display("A=%d B=%d Product=%d",A,B,P);

A = 8'd15;
B = 8'd15;
#10;
$display("A=%d B=%d Product=%d",A,B,P);

A = 8'd20;
B = 8'd3;
#10;
$display("A=%d B=%d Product=%d",A,B,P);

$finish;

end

endmodule