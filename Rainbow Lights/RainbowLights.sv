`include "ShiftRegister.sv"
module top(
    input logic clk,
    output logic RGB_R,
    output logic RGB_B,
    output logic RGB_G
);
    shift_register qvals(
        .clk(clk),
        .d(d),
        .q_1(q_1),
        .q_2(q_2),
        .q_3(q_3),
        .q_4(q_4),
        .q_5(q_5),
        .q_6(q_6)
    );

    always_ff @(posedge clk) begin
        //$display (q_1, q_3, q_5)
        RGB_G <= q_1;
        RGB_B <= q_3;
        RGB_R <= q_5;
    end
endmodule
