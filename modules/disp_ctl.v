`include "./modules/uint_seg_div.v"
`include "./modules/dec224.v"
`include "./modules/seg_disp_drv.v"

module display(ms_clock, number, port, pattern);

input ms_clock;
input [15:0] number;
output reg [1:0] port;
output [7:0] pattern;

// define 4 numbers to display
wire [3:0] num1;
wire [3:0] num2;
wire [3:0] num3;
wire [3:0] num4;

reg [3:0] curr_num;

uint_seg_div usd_obj ( number, num1, num2, num3, num4 );
seg_disp_drv sdd_obj (curr_num, 1'd1, pattern);

integer i = 0;

always @(posedge ms_clock) begin
    if (i < 3)
        i++;
    else
        i = 0;
    port = i;

    case (port)
        2'd0: curr_num = num1;
        2'd1: curr_num = num2;
        2'd2: curr_num = num3;
        2'd3: curr_num = num4;
    endcase

end

endmodule