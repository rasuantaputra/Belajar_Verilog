// design half adder
module T14_generate_for_loop (
    input a, b,
    output sum, cout);

    assign sum = a ^ b;
    assign cout = a & b;    
endmodule

// A top level design that contains N instances of half adder
module T14_generate_block_for_loop #(parameter N = 4) (
    input [N-1 : 0] a, b,
    output [N-1 : 0]   sum, cout);

    // Declare a temporary loop variable to be used during
    // generation and won't be available during simulation
    genvar i;

    // Generate for loop to instantiate N times
    generate
        for (i = 0; i < N; i = i + 1) begin
            T14_generate_for_loop half_adder (a[i], b[i], cout[i]);
        end
    endgenerate 
endmodule

module T14_Tb_generate_for_loop;

    parameter N = 2;

    reg [N-1 : 0] a, b;
    wire [N-1 : 0] sum, cout;

    // Instantiate top level design with N=2 so that it will have 2
    // separate instances of half adders and both are given two separate
    // inputs

    // nama_modul #hubungin_parameter nama_testBench
    T14_generate_block_for_loop #(.N(N)) testing(.a(a), .b(b), .sum(sum), .cout(cout));

    initial begin
        a <= 0;
        b <= 0;

        // $monitor("a :0x%0h b : sum :0x%0h cout :0x%0h", a, b, sum, cout);
        $monitor("a :%0b b : sum :%0b cout :%0b", a, b, sum, cout);
        
        #10 a <= 'h2;
        b <= 'h3;
        #20 b <= 'h4;
        #10 b <= 'h5;
    end    
endmodule