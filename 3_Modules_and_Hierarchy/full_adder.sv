module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);//
    wire cin = 1'b0;
    wire cout1;
    wire sum1 [15:0];
    wire sum2 [15:0];
    
    add16 add_first(.a(a[15:0]), .b(b[15:0]), .cin(cin),.sum(sum[15:0]), .cout(cout1));
    add16 add_second(.a(a[31:16]), .b(b[31:16]), .cin(cout1),.sum(sum[31:16]), .cout());
    
endmodule

module add1 ( input a, input b, input cin, output sum, output cout );

    wire a_XOR_b;  
    wire and1; 
    wire and2;
    
    assign a_XOR_b = a ^ b;
	assign and1 = a & b;
    assign and2 = cin & a_XOR_b; 
    assign sum = a_XOR_b ^ cin;
    assign cout = and1 | and2;
    
endmodule
