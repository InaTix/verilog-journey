module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire cin1 = 1'b0;
    wire [15:0] sum1;
    wire [15:0] sum2;
    wire cout1;
    
    add16 first(.a(a[15:0]), .b(b[15:0]),.cin(cin1), .sum(sum[15:0]), .cout(cout1));
    add16 second(.a(a[31:16]), .b(b[31:16]), .cin(cout1), .sum(sum[31:16]), .cout());

endmodule