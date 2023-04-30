module virtual_seg (
    input [3:0] port,
    input [7:0] pattern,
    input gnd
);

always @(*) begin
    $display(port);
    $display(pattern);
end

endmodule //virtual_seg