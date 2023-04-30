module dec224(in, en, out);

input [1:0] in;
input en;
output reg [3:0] out;

always @(*) begin
if (en) 
    out = 4'b0001 << in;
else
    out = 4'bz;
end

endmodule