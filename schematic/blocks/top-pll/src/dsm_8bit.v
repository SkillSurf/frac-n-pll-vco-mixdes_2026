module dsm_8bit (
    input  wire        clk,     // DSM clock
    input  wire        rst_n,   // Active-low reset
    input  wire [8:0]  DI,      // 8-bit digital input
    output reg         DO       // 1-bit output (bitstream)
);

    // Signed arithmetic for feedback loop
    reg signed [8:0] integrator;      // Extra bit for overflow
    reg signed [8:0] feedback_value;

    // Feedback levels (± full-scale)
    localparam signed [8:0] POS_LEVEL =  9'sd127;
    localparam signed [8:0] NEG_LEVEL = -9'sd128;

    always @(*) begin
        DO = (integrator >= 0);
        feedback_value = DO ? POS_LEVEL : NEG_LEVEL;
    end

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            integrator <= 0;
        else
            integrator <= integrator + (DI - feedback_value);
    end

endmodule

//======================================================================
// First-Order 8-bit Delta-Sigma Modulator
//======================================================================