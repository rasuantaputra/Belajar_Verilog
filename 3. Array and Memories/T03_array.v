/*
reg array [3:0] => [a0
                    a1
                    a2]
reg [3:0] vector => [v0 v1 v2] 
*/

module array ();

    reg [11:0] array_1 ;
    wire [0:7] array_2 [3:0]; // 8-bit wide vector array with depth=4
    reg [7:0]  array_3 [3:0];
    
    /*
    [jumlah bit] nama_array [cols :  rows] =>
        [ (0,0|8-bit) (0,1|8-bit)
      (1,0|8-bit) (1,1|8-bit)
      (2,0|8-bit) (2,1|8-bit)
      (3,0|8-bit) (3,1|8-bit)
      ]
    */
    reg [7:0] array_4 [0:1][0:3]; // array_3 is a 2D array rows=4, cols=2 each 8-bit wide
initial begin
// ============================================================================
    array_1 [0] = 0;
    array_1 [1] = 0;
    array_1 [2] = 1;
    
    $display("hasil array_1 [0] : ", array_1 [0]);
    $display("hasil array_1 [1] : ", array_1 [1]);
    $display("hasil array_1 [2] : ", array_1 [2]);
    
    array_1 [11] = 1;
    array_1 [10] = 1;
    array_1 [9] = 1;

    $display("hasil array_1 [11] : ", array_1 [11]);
    $display("hasil array_1 [10] : ", array_1 [10]);
    $display("hasil array_1 [9] : ", array_1 [9]);
    
    $display("\n =============part select=============\n");
    // part select
    $display("Hasil array_1[5:3] : ", array_1 [5:3]);
    $display("Hasil array_1[3:2] : ", array_1 [3:2]);
    $display("Hasil array_1[11:0] : ", array_1[11:0]);

    $display("\n =============reg [7:0]  array_3 [3:0]=============\n");
   
    // reg [7:0]  array_3 [3:0];
    array_3 [0] = 00000000;
    $display("Hasil array_3[0]", array_3[0]);
    array_3 [1] = 00000001;
    $display("Hasil array_3[1]", array_3[1]);
    array_3 [2] = 00000011;
    $display("Hasil array_3[2]", array_3[2]);
    array_3 [3] = 00000100;
    $display("Hasil array_3[3]", array_3[3]);

    $display("\n =============reg [7:0] array_4 [0:1][0:3]=============\n");
    array_4 [0][0] = 10000001;
    array_4 [1][0] = 10000010;
    array_4 [2][0] = 10000011;
    array_4 [3][0] = 10000100;

    array_4 [0][1] = 10000101;
    array_4 [1][1] = 10000110;
    array_4 [2][1] = 10000111;
    array_4 [3][1] = 10001000;

    $display("Hasil array_4 [0][0] : ", array_4 [0][0]);
    $display("Hasil array_4 [1][0] : ", array_4 [1][0]);
    $display("Hasil array_4 [2][0] : ", array_4 [2][0]);
    $display("Hasil array_4 [3][0] : ", array_4 [3][0]);

    $display("Hasil array_4 [0][1] : ", array_4 [0][1]);
    $display("Hasil array_4 [1][1] : ", array_4 [1][1]);
    $display("Hasil array_4 [2][1] : ", array_4 [2][1]);
    $display("Hasil array_4 [3][1] : ", array_4 [3][1]); 
    


    
    
end    
endmodule