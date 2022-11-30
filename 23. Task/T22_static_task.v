module T22_static_task;

    // style-1
    task sum1(input[7:0] a, b, output[7:0] c);
        begin
            c = a + b;
        end
    endtask

    // style-2
    task sum2;
        input [7:0] a, b;
        output [7:0] c;

        begin
            c = a + b;
        end
    endtask

    initial begin
        // fail?
        // reg [7:0] x, y, z;
        // sum1(2, 3);
    end    
endmodule

// If a task is static, then all its member variables will be shared across different invocations of the same task that has been launched to run concurrently