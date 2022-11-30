// Design #1: Half adder
module half_adder (
    input a, b,
    output reg sum, cout);

    // bisa seperti ini cara penulisannya
    always @(a or b)
    {cout, sum} = a + b;

    // bisa seperti ini penulisannya
    initial 
    $display("Half adder instantiation");    
endmodule

// Design #2: Full adder
module full_adder (
    input a, b, cin,
    output reg sum, cout);

    always @(a or b or cin) begin
        {cout, sum} = a + b + cin;
    end

    initial begin
        $display("Full adder instantiation"); 
    end    
endmodule

// Top level design: Choose between half adder and full adder
module T14_topLevelmodul_generate_case (
    input a, b, cin,
    output sum, cout);

    parameter ADDER_TYPE = 1;

    generate
        case (ADDER_TYPE)
           0 : half_adder u0(.a(a), .b(b), .sum(sum), .cout(cout));
           1 : full_adder u1(.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));
        endcase
    endgenerate    
endmodule

module T14_Tb_generate_case;

    reg a, b, cin;
    wire sum, cout;

    initial begin
        a <= 0;
        b <= 0;
        cin <= 0;

        $monitor("a=0x%0h b=0x%0h cin=0x%0h cout=0%0h sum=0x%0h", a, b, cin, cout, sum);

        for (integer i = 0; i < 5; i = i + 1) begin
            #10 a <= $random;
            b <= $random;
            cin <= $random;
        end
    end    
endmodule