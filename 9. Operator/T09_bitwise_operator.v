module T09_bitwise_operator;

    reg data1 [3:0];
    reg data2 [3:0];

    integer i, j;

    initial begin
        data1[0] = 0;  data2[0] = 0;
        data1[1] = 1;  data2[1] = 1;
        data1[2] = 'x; data2[2] = 'x;
        data1[3] = 'z; data2[3] = 'z;

        for (i = 0; i < 4; i = i + 1) begin
            for (j = 0; j < 4; j = j + 1) begin
                $display(data1[i], " & ", data2[j], " : ", data1[i] & data2[j]);
            end
        end

        $display("===================================================");
        
        for (i = 0; i < 4; i = i + 1) begin
            for (j = 0; j < 4; j = j + 1) begin
                $display(data1[i], " | ", data2[j], " : ", data1[i] | data2[j]);
            end
        end
    end
    
endmodule

