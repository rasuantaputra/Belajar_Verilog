


module T01_data_type ();

// =========== Net =========================
/*
Nets are used to connect between hardware entities 
like logic gates and hence do not store any value on its own
*/
/*
When there is a requirement for mulitple nets, 
they can be bunched together to form a single "wire" (vector)
*/
    wire [3:0] kabel; // ada 4 kabel yaitu kabel[0], kabel[1], kabe[2], kabel[3]

// =========== variable =========================
/*
A variable on the other hand is 
an abstraction of a data storage element and can hold values. 
A flip-flop is a good example of a storage element.
*/

    reg ini_variabel;

// =========== other data type ========================
    integer int_data_type;  // int
    real float_data_type;    // float
    time time_c;  // only int time value like 50ns
    realtime time_d; // can store float time value like 40.25ps

// =========== Verilog String ==========================
/*
Strings are stored in "reg", and the width of the "reg"  
variable has to be large enough to hold the string.
Each character in a string represents an ASCII value and requires 1 byte. 
If the size of the variable is smaller than the string, 
then Verilog truncates the leftmost bits of the string. 
If the size of the variable is larger than the string, 
then Verilog adds zeros to the left of the string.
*/
    reg [8*11:1] string_1;
    reg [8*5:1] string_2;
    reg [8*20:1] string_3;

initial begin
    $display("\n =============Integer=============\n");
    // int_a = 32'hcafe_1234;
    int_data_type = 6;
    $display("1. int_data_type 	= 0x%0h" , int_data_type);
    $display("2. int_data_type 	= " , int_data_type);

    $display("\n =============Float=============\n");
    // real data type
    float_data_type = 3.14;
    $display("3. float_data_type 	= %0.5f", float_data_type);
    $display("4. float_data_type 	= ", float_data_type);

    $display("\n =============Time=============\n");
    // time data type
    #10;
    time_c = $time; // will store 10
    $display("5. time_c 	= %0t", time_c);
    $display("6. time_c 	= ", time_c);

    #20;
    time_d = $time; // will store 30
    $display("7. this is time_d = ", time_d);

    $display("\n =============String=============\n");
    // string
    string_1 = "Hello World";
    $display("8. string_1 = %s", string_1);

    string_2 = "Hello World";
    $display("9. string_2 = %s", string_2);

    string_3 = "Hello World";   
    $display("10. string_3 = %s", string_3);    
end    
endmodule