// The delays declaration can contain up to three values, such as rise, fall, and turn-off delays.
/*
-> The time taken for the output of a gate to change from some value to 1 is called a rise delay.
-> The time taken for the output of a gate to change form some value to 0 is called a fall delay.
-> The time taken for the output of a gate to change from some value to high impedance is called turn-off delay.
*/
// If only one delay value is specified, then it is used for all signal changes. The default delay is zero.
// If two delays are specified, then the first delay specifies the rise delay, and the second delay specifies the fall delay.

// These delays apply to any signal as they all can rise or fall anytime in real circuits and are not restricted to only outputs of gates. There are three ways to represent gate delays.
/*
1. One delay format
2. Two delay format
3. Three delay format
*/
// The two delay format can be applied to most primitives whose outputs do not transition to high impedance.
// A three delay format cannot be applied to an AND gate because the output will not go to Z for any input combination.
/*
// Single delay specified - used for all three types of transition delays  
or #(<delay>) o1 (out, a, b);  
  
// Two delays specified - used for Rise and Fall transitions  
or #(<rise>, <fall>) o1 (out, a, b);  
// Three delays specified - used for Rise, Fall and Turn-off transitions  
or #(<rise>, <fall>, <turn_off>) o1 (out, a, b);  
*/

module T30_one_delay_format (
    input a, b,
    output out1, out2, out3);

    // AND gate has 2 time unit gate delay
    // and #(<delay>) o1 (out, a, b);
    and #(2) o1 (out1, a, b);

    // BUFIF0 gate has 3 time unit gate delay
    bufif0 #(3) b1 (out2, a, b);
endmodule

module T30_Tb_one_delay_format;
    reg a, b;
    wire out1, out2;

    des d0 (.out1(out1), .out2(out2), .a(a), .b(b));

    initial begin  
        {a, b} <= 0;

        $monitor ("T=%0t a=%0b b=%0b and=%0b bufif0=%0b", $time, a, b, out1, out2);

        #10 a <= 1;
        #10 b <= 1;
        #10 a <= 0;
        #10 b <= 0;
    end    
endmodule



