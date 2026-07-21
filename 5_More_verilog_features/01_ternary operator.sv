module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);//
    
    wire [7:0] intermediate_result1;
    wire [7:0] intermediate_result2;
    wire [7:0] intermediate_result3;

    assign intermediate_result1 = (a > b)? b: a;
    assign intermediate_result2 = (intermediate_result1 > b)? b: intermediate_result1;
    assign intermediate_result3 = (intermediate_result2 > c)? c: intermediate_result2;
    assign min = (intermediate_result3 > d)? d: intermediate_result3;
endmodule