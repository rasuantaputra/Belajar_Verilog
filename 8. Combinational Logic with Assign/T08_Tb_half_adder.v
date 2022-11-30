module T08_Tb_half_adder;

    // nama harus sama dengan program nya
    reg a, b;
    wire cout, sum;
    integer i;

    T08_half_adder halfAdder(.a(a), .b(b), .cout(cout), .sum(sum));

    initial begin
        a <= 0;
        b <= 0;

        $monitor("a : %0b b : %0b cout : %0b sum : %0b cout : %0b", a, b, cout, sum, cout);

        for (i = 0; i < 4; i = i + 1) begin
            {a, b} = i;
            #10;         
        end
    end    
endmodule