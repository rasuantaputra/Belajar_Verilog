// Design #1: Multiplexer design uses an "assign" statement to assign
// out signal
module T14_mux_assign (
    input a, b, sel,
    output out);

    assign out = sel ? a : b;

    // The initial display statement is used so that
    // we know which design got instantiated from simulation
    // logs
    initial
        $display("mux_assign is instantiated");
    
endmodule

// Design #2: Multiplexer design uses a "case" statement to drive
// out signal
module T14_mux_case (
    input a, b, sel,
    output reg out);

    always @(a or b or sel) begin
        case (sel)
            0 : out = a;
            1 : out = b; 
        endcase
    end

    // The initial display statement is used so that
    // we know which design got instantiated from simulation
    // logs
    initial
        $display("mux_assign is instantiated");
    
endmodule

// Top Level Design: Use a parameter to choose either one
module T14_topLevelmodul_generate_if (
    input a, b, sel,
    output out);

    // Use a "generate" block to instantiate either mux_case
    // or mux_assign using an if else construct with generate
    parameter USE_CASE = 0;
    
    generate
        if (USE_CASE) begin
            T14_mux_case mux_case (.a(a), .b(b), .sel(sel), .out(out));
        end else begin
            T14_mux_assign mux_assign (.a(a), .b(b), .sel(sel), .out(out));
        end
    endgenerate    
endmodule

// test bench
module T14_tb_topLevelmodul_generate_if;

    reg a, b, sel;
    wire out;
    integer i;

    // Instantiate top level design and set USE_CASE parameter to 1 so that
    // the design using case statement is instantiated
    T14_topLevelmodul_generate_if #(.USE_CASE(1)) tb(.a(a), .b(b), .sel(sel), .out(out));

    initial begin
        a <= 0;
        b <= 0;
        sel <= 0;

        // Assign random values to DUT inputs with some delay
        for (i = 0; i < 5; i = i + 1) begin
            #10; 
            a <= $random;
            b <= $random;
            sel <= $random;
            $display("i :%0d a :0x%0h b :0x%0h sel :0x%0h out :0x%0h", i, a, b, sel, out);
        end
    end    
endmodule