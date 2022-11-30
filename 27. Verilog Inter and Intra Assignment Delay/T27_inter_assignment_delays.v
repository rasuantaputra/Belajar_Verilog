// Delay is specified on the left side
// #<delay> <LSH> = <RSH>

/*
delay statement has delay value on the LHS of the assignment operator. This indicates that the statement itself is executed after
the delay expires, and is the most commonly using form of delay control.
*/
module T27_inter_assignment_delays;

    reg a, b, c, q;

    initial begin
        $monitor("[%0t] a=%0b b=%0b c=%0b q=%0b", $time, a, b, c, q);

        // Initialize all signals to 0 at time 0
        a <= 0; 
        b <= 0;
        c <= 0;
        q <= 0;

        // Inter-assignment delay: Wait for #5 time units
        // and then assign a and c to 1. Note that 'a' and 'c'
        // gets updated at the end of current timestep
        #5 a <= 1;
        c <= 1;

        // Inter-assignment delay: Wait for #5 time units
        // and then assign 'q' with whatever value RHS gets
        // evaluated to
        #5 q <= a & b | c;

        #20;    
    end
endmodule