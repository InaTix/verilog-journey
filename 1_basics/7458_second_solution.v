module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
    
    wire and1_1;
    wire and1_2;
    wire and2_1;
	wire and2_2;
    
    assign and1_1 = p1a & p1b & p1c;
    assign and1_2 = p1d & p1e & p1f;
    assign and2_1 = p2a & p2b; 
    assign and2_2 = p2c & p2d;
    assign p1y = and1_1 | and1_2;
    assign p2y = and2_1 | and2_2;


endmodule