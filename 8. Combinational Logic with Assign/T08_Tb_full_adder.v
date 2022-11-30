module T08_Tb_full_adder;

    reg a, b, cin;
    wire cout, sum;
    integer i;

    T08_full_adder fullAdder (.a(a), .b(b), .cin(cin), .cout(cout), .sum(sum));

    initial begin

        a <= 0;
        b <= 0;

        $monitor("a :%0b b :%0b cin :%0b sum :%0b cout :%0b ", a, b, cin, sum, cout);

        for (i = 0; i <= 8; i = i + 1) begin
            {a, b, cin} = i;
            #10;
        end
    end    
endmodule