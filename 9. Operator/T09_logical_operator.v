module T09_logical_operator;

    reg [7:0] data1;
    reg [7:0] data2;

    initial begin
        data1 = 45;
        data2 = 9;
        $display("Result for data1(%0d) && data2(%0d) : %0d", data1, data2, data1 && data2);
        
        data1 = 0;
        data2 = 4;
        $display("Result for data1(%0d) && data2(%0d) : %0d", data1, data2, data1 && data2);
        
        data1 = 'dx;
        data2 = 3;
        $display("Result for data1(%0d) && data2(%0d) : %0d", data1, data2, data1 && data2);
        
        data1 = 'b101z;
        data2 = 5;
        $display("Result for data1(%0d) && data2(%0d) : %0d", data1, data2, data1 && data2);
       

        data1 = 45;
        data2 = 9;
        $display("Result for data1(%0d) || data2(%0d) : %0d", data1, data2, data1 || data2);
       
        data1 = 0;
        data2 = 4;
        $display("Result for data1(%0d) || data2(%0d) : %0d", data1, data2, data1 || data2);
       
        data1 = 'dx;
        data2 = 3;
        $display("Result for data1(%0d) || data2(%0d) : %0d", data1, data2, data1 || data2);
       
        data1 = 'b101z;
        data2 = 5;
        $display("Result for data1(%0d) || data2(%0d) : %0d", data1, data2, data1 || data2);
       
        data1 = 4;
        $display("Result of !data1(%0d) : %0d", data1, !data1);
        
        data1 = 0;
        $display("Result of !data1(%0d) : %0d", data1, !data1);
    end    
endmodule