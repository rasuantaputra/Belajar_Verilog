/*
Note that ports declared in the list of port declarations 
cannot be redeclared within the body of the module
*/

// D flip-flop example
module T04_module_1 (
    input d,
    input clk,
    input rstn,
    output reg q
);

/*
Contents of the module describe 
how a D flip flop should behave for different combinations of inputs. 
Here, input "d" is always assigned to output "q" at positive edge of clock 
if "rstn" is high because it is an active low reset.

*/
// initial begin
        always @(posedge clk ) begin
            if (!rstn) begin
                q <= 0;
            else
                q <= d;
            end
        end
    
// end

    
endmodule