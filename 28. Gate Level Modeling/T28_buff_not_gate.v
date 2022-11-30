module T28_buff_not_gate(input a,
                        output c, d);

    buf(c, a); // c is an output, a is inputs
    not(d, a); // d is an output, a is inputs
    
endmodule

module T28_Tb_buff_not_gate;
    reg a;
    wire c, d;

    integer i;

    gates u0 (.a(a), .c(c), .d(d));

    initial begin
        a = 0;

        $monitor("[T=%0t c(buf)=%0b d(not)=%0b", $time);

        for (i = 0; i < 10; i = i + 1) begin
            #1 a <= $random;
        end
    end    
endmodule