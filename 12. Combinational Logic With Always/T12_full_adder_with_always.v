module T12_full_adder_with_always (
    input a, b, cin,
    output reg sum, cout);

    always @(a or b or cin) begin
        {cout, sum} = a + b + cin;
    end    
endmodule

module T12_Tb_full_adder_with_always;

    reg a, b, c, cin;
    wire sum, cout;

    integer i;

    T12_full_adder_with_always Tb(.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));

    initial begin

        {a, b, c, cin} <= 0;

        $monitor("a :%0b b :%0b c :%0b cin :%0b sum :%0b cout :%0b", a, b, c, cin, sum, cout);
                    
        for (i = 0; i < 16; i = i + 1) begin
            {a, b, cin} = i;
            #10;
        end
    end    
endmodule