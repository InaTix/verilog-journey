module top_module(
    input [31:0] a,
    input [31:0] b,
    output reg [31:0] sum
);
    wire cin = 1'b0;
    wire cin0 = 1'b0;
    wire cin1 = 1'b1;
    wire cout; 
    wire [15:0] sum_add16_first;
    wire [15:0] sum_add16_second;
    wire [15:0] sum_add16_third;
    
    add16 add16_first (.a(a[15:0]), .b(b[15:0]), .cin(cin), .sum(sum_add16_first), .cout(cout));
    add16 add16_second (.a(a[31:16]), .b(b[31:16]), .cin(cin0), .sum(sum_add16_second), .cout());
    add16 add16_thrid (.a(a[31:16]), .b(b[31:16]), .cin(cin1), .sum(sum_add16_third), .cout());
    always @(*) begin
        case (cout)
            1'b0: sum = {sum_add16_second, sum_add16_first};
            1'b1: sum = {sum_add16_third, sum_add16_first};
        endcase
    end
   

endmodule