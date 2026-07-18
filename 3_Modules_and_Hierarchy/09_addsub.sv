module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire [15:0] sum_add16_low;
    wire [15:0] sum_add16_high;
    wire cout;
    wire [31:0] inverted;
   
    assign inverted = {32{sub}}^b;
    add16 add16_high (.a(a[31:16]), .b(inverted[31:16]), .cin(cout), .sum(sum_add16_high), .cout());
    add16 add16_low (.a(a[15:0]), .b(inverted[15:0]), .cin(sub), .sum(sum_add16_low), .cout(cout));
    assign sum = {sum_add16_high, sum_add16_low};
    
endmodule