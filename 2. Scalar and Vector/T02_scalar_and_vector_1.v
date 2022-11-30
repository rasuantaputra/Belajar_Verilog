module T02_scalar_and_vector_1 ();

    // scalar
    wire wire_scalar;
    reg reg_scalar;

    // vector
    wire [7:0] wire_vector; //msb = 7; lsb = 0
    reg [7:0] reg_vector;

    initial begin
        $display("\n =============wire [7:0] wire_vector=============\n");

        $display("Hasil wire_scalar : ", wire_scalar);
        $display("Hasil reg_scalar : ", reg_scalar);

        $display("Hasil wire_vector : ", wire_vector);
        $display("Hasil wire_vector[7:0] : ", wire_vector[7:0]);

        $display("\n =============reg [7:0] reg_vector=============\n");

        // assign 1 to bit
        // reg_vector [0] = 1; // assign 1 to bit 0 of reg_vector
        // reg_vector [3] = 0; // assign 0 to bit 3 of reg_vector
        // reg_vector [5] = 1; // assign 1 to bit 5 of reg_vector

        reg_vector[0] = 1;
        reg_vector[1] = 0;
        reg_vector[2] = 1;
        reg_vector[3] = 1;
        reg_vector[4] = 0;
        reg_vector[5] = 1;
        reg_vector[6] = 0;
        reg_vector[7] = 1;

        $display("Hasil bit-select[0] : ", reg_vector[0]);
        $display("Hasil reg_vector[1] : ", reg_vector[1]);
        $display("Hasil reg_vector[2] : ", reg_vector[2]);
        $display("Hasil reg_vector[3] : ", reg_vector[3]);
        $display("Hasil reg_vector[4] : ", reg_vector[4]);
        $display("Hasil reg_vector[5] : ", reg_vector[5]);
        $display("Hasil reg_vector[6] : ", reg_vector[6]);
        $display("Hasil reg_vector[7] : ", reg_vector[7]);
        // part select
        $display("Hasil reg_vector[5:3] : ", reg_vector[5:3]);
        $display("Hasil reg_vector[3:2] : ", reg_vector[3:2]);
        $display("Hasil reg_vector[7:0] : ", reg_vector[7:0]);
    end    
endmodule