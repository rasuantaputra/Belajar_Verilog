/*
When the same expression has to be repeated for a number of times, 
a replication constant  is used which needs to be a non-negative number and cannot be X, Z or any variable. This constant number is also enclosed within braces along with the original concatenation operator and indicates the total number of times the expression will be repeated.
*/

module T10_replication_operator;

    reg [1:0] a;
    reg [2:0] b;

    initial begin
        a <= 2;
        b <= 4;

        #10;

        $display("a :%b b :%b res :%b", a, b, {2{a}}, {3{b}});
    end
    
endmodule