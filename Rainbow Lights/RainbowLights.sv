`include "ShiftRegister.sv"
module top(
    input logic clk,
    output logic RGB_R,
    output logic RGB_B,
    output logic RGB_G
);

    parameter LIGHT_INTERVAL = 2000000;
    logic [$clog2(LIGHT_INTERVAL) - 1:0] count = 0;


    always_ff @(posedge clk) begin
        assign RGB_G <= q_5;
        assign RGB_B <= q_3;
        assign RGB_R <= q_1;
    end
endmodule
