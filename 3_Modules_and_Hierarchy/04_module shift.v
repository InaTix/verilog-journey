module top_module ( input clk, input d, output q );
    
    wire d1;
    wire d2;
    wire q1;
    wire q2;

    my_dff first (.clk(clk), .d(d), .q(q1));
    my_dff second (.clk(clk), .d(q1), .q(q2));
    my_dff thirth (.clk(clk), .d(q2), .q(q));

endmodule