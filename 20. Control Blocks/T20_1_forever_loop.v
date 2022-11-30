module T20_1_forever_loop;
    
    initial begin
        forever begin
            $display("ini foreever loop, simulasinya bisa hang bro...");
        end
    end

endmodule