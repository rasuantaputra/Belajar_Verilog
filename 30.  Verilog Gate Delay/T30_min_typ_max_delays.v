// For rise, fall, and turn-off delays, the three values min, typ, and max can be specified and stand for minimum, typical and maximum delays.
// It is specified at the start of the simulation and depends on the simulator used. The typ is the default value.
/*
1. The min value is the minimum delay value that the gate is expected to have.
2. The typ value is the typical delay value that the gate is expected to have.
3. The max value is the maximum delay value that the gate is expected to have.
*/

module T30_min_typ_max_delays (
    input a, b,
    output out1, out2);
    
    and #(2:3:4, 3:4:5) o1 (out1, a, b);
    bufif0 #(5:6:7, 6:7:8, 7:8:9) b1 (out2, a, b);
    
endmodule