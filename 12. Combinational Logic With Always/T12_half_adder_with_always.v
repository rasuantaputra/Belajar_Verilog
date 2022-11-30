module T12_half_adder_with_always (
    input a, b,
    output reg cout, sum);

    always @(a or b) begin
        {cout, sum} = a + b;
    end
endmodule

module T12_Tb_half_adder_with_always;

    reg a, b;
    wire cout, sum;

    T12_half_adder_with_always Tb (.a(a), .b(b), .cout(cout), .sum(sum));

    initial begin

        {a, b} <= 0;

        $monitor("a :%0b b :%0b cout :%0b sum :%0b", a, b, cout, sum);

        for (i = 0; i < 4; i = i + 1) begin
            {a, b} = i;
            #10;
        end
    end    
endmodule