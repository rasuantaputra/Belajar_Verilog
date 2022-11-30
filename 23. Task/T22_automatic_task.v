module T22_automatic_task;



    initial tampilkan1();
    initial tampilkan1();
    initial tampilkan1();
    initial tampilkan1();
    
    integer i = 0;
    // static task
    task tampilkan1();        
        begin
            i = i + 1;
            $display("i = %0d", i);
        end
    endtask

// =======================fail=======================
    initial tampilkan2();
    initial tampilkan2();
    initial tampilkan2();
    initial tampilkan2();

    integer j = 0;
    // If the task is made automatic, each invocation of the task is allocated a different space in simulation memory and behaves differently.
    // Note that the task is now automatic
    task automatic tampilkan2();
        begin
            j = j + 1;
            $display("j = %0d", j);
        end
    endtask

endmodule