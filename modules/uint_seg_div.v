module uint_seg_div(num, out1, out2, out3, out4);

input [15:0] num;
output [3:0] out1;
output [3:0] out2;
output [3:0] out3;
output [3:0] out4;

assign out1 = num / 1000;
assign out2 = (num / 100) % 10;
assign out3 = (num % 100) / 10;
assign out4 = num % 10;

endmodule