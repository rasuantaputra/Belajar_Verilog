module T06_shift_register_example (
    input in,
    input clock,
    input negative_reset,
    output out);    
endmodule

module shift_register;

    wire [2:0] q_net;
    wire  d, clk, rstn, o;



    T8_shift_register_example u0(.in(d), .clock(clk), .negative_reset(rstn), .out(q_net[0]));
    T8_shift_register_example u1(.in(q_net[0]), .clock(clk), .negative_reset(rstn), .out());
    T8_shift_register_example u2(.in(q_net[1]), .clock(clk), .negative_reset(rstn), .out());
    T8_shift_register_example u3(.in(q_net[2]), .clock(clk), .negative_reset(rstn), .out(o));

    
endmodule