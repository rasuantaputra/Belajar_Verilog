// GAGALLL

module T11_always_as_sensitive_list;

    integer count_up, count_down, i;

    initial begin
        count_up = 0 ;
        count_down = 10;

        $monitor("count_up :%0d count_down :%0d", count_up, count_down);
        
        for (i = 0; i < count_down; i = i + 1) begin
            count_up = count_up + 1;
            count_down = count_down - 1;

            #10;
        end

        if (count_up == count_down) begin
            $display("Proses ini menggunakan initial biasa");
        end      
    end

    always @(count_up or count_down) begin
        if (count_up == count_down) begin
            $display("Proses ini menggunakan always (seperti sensitive list)");
        end
    end
    
endmodule