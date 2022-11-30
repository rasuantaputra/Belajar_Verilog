/*
If the second operand of a division or modulus operator is zero, then the result will be X. If either operand of the power operator is real, then the result will also be real. The result will be 1 if the second operand of a power operator is 0 (a^0)
*/

module T09_arithmetic_operator;

    reg [7:0] data1;
    reg [7:0] data2;

    initial begin
        data1 = 45;
        data2 = 9;

        $display("%0d + %0d = ", data1, data2, data1 + data2);
        $display("%0d - %0d = ", data1, data2, data1 - data2);
        $display("%0d * %0d = ", data1, data2, data1 * data2);
        $display("%0d / %0d = ", data1, data2, data1 / data2);
        $display("%0d %% %0d = ", data1, data2, data1 % data2);
        $display("%0d ** %0d = ", data1, data2, data1 ** data2);

        /*
        $display("Add + =%d", data1 + data2);        
        $display("sub - =%d", data1 - data2);        
        $display("Mul * =%d", data1 * data2);        
        $display("Div / =%d", data1 / data2);
        $display("Mod %% =%d", data1 % data2);
        $display("Pow ** =%d", data2 ** 2);
        */
    end    
endmodule