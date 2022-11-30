module T11_always_for_invert_signal_value;

    reg clk;
    
    initial begin
        clk <= 0;
    end

    // always block is started at time 0 units
    // But when is it supposed to be repeated ?
    // There is no time control, and hence it will stay and
    // be repeated at 0 time units only. This continues
    // in a loop and simulation will hang !
    // always 10 clk = ~clk;


    // Even if the sensitivity list is empty, there should be some other form of time delay. Simulation time is advanced by a delay statement within the "always"
    //  construct as shown below. Now, the clock inversion is done after every 10 time units.

    // 10 units of time delay
    // jika di simulasikan selama 100 (per satuan waktu) maka => 100/10
    always #10 clk = ~clk;
    
endmodule