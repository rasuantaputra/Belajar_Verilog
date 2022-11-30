module T29_2x4_decoder (
    input a0, a1,
    output d0, d1, d2, d3);

    wire w0, w1;

    not(w0, a0);
    not(w1, a1);

    and(d0, w0, w1);
    and(d1, a0, w1);
    and(d2, a1, w0);
    and(d3, a1, a0);
    
endmodule

module T29_Tb_2x4_decoder;

    reg a0, a1;
    wire d0, d1, d2, d3, w0, w1;

    integer i;
    decoder trutrh_table(.a0(a0), .a1(a1), .d0(d0), .d1(d1), .d2(d2), .d3(d3), .w0(w0), .w1(w1));

    initial begin
        {a0, a1} <= 0;

        $monitor("T = 0%t, d0 = 0%b, d1 = 0%b, d2 = 0%b, d3 = 0%b", $time, d0, d1, d2, d3);

        for (i = 0; i < 4; i = i + 1) begin
            a0 <= $random;
            a1 <= $random;
        end
    end

endmodule