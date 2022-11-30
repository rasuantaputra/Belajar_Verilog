/*
verilog equality operator :
a === b : a equal to b, including x and z
a !== b : a not equal to b, including x and z
a == b  : a equal to b, result can be unknown
a !=b   : a not equal to b, result can be unknown
*/
// =====================================================

module T09_equality_operator;

    reg [7:0] data1;
    reg [7:0] data2;

    initial begin
        
        data1 = 45;
        data2 = 9;
        $display("Result for data1(%0d) === data2(%0d) : %0d", data1, data2, data1 === data2);

        data1 = 'b101x;
        data2 = 'b1011;
        $display("Result for data1(%0d) === data2(%0d) : %0d", data1, data2, data1 === data2);

        data1 = 'b101x;
        data2 = 'b101x;
        $display("Result for data1(%0d) === data2(%0d) : %0d", data1, data2, data1 === data2);

        data1 = 'b101z;
        data2 = 'b1z00;
        $display("Result for data1(%0d) !== data2(%0d) : %0d", data1, data2, data1 !== data2);

        data1 = 39;
        data2 = 39;
        $display("Result for data1(%0d) == data2(%0d) : %0d", data1, data2, data1 == data2);

        data1 = 14;
        data2 = 14;
        $display("Result for data1(%0d) != data2(%0d) : %0d", data1, data2, data1 != data2);
 
     
    end
    
endmodule