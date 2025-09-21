module shift_register(
    input logic clk,
    output logic d,
    output logic q_1,
    output logic q_2,
    output logic q_3,
    output logic q_4,
    output logic q_5,
    output logic q_6
);


    initial begin
        q_1 <= 1'b1;
        q_2 <= 1'b1;
        q_3 <= 1'b1;
        q_4 <= 1'b0;
        q_5 <= 1'b0;
        q_6 <= 1'b0;
    end

    parameter LIGHT_INTERVAL = 2000000;
    logic [$clog2(LIGHT_INTERVAL) - 1:0] count = 0;

    always_ff @(posedge clk) begin
        if (count == LIGHT_INTERVAL - 1) begin
            count <= 0;
            d <= q_6;
            q_6 <= q_5;
            q_5 <= q_4;
            q_4 <= q_3;
            q_3 <= q_2;
            q_2 <= q_1;
            q_1 <= d;
        end
        else begin
            count <= count + 1;
        end
    end
endmodule
