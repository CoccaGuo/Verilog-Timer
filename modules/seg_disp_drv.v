module seg_disp_drv(num, en, disp);

input [3:0] num;
input en;
output reg [7:0] disp;

always @(*) begin
    if (!en)
        disp = 8'bz;
    else begin
        case (num)
            4'd0: disp = 8'h3F;
            4'd1: disp = 8'h06;
            4'd2: disp = 8'h5B;
            4'd3: disp = 8'h4F;
            4'd4: disp = 8'h66;
            4'd5: disp = 8'h6D;
            4'd6: disp = 8'h7D;
            4'd7: disp = 8'h07;
            4'd8: disp = 8'h7F;
            4'd9: disp = 8'h6F;
        endcase
    end
end

endmodule