module shift_reg_serial (
    input  wire sclk,     // Serial clock
    input  wire rst_n,    // Active-low reset
    input  wire en,       // Enable shifting
    input  wire sdata,    // Serial data in (MSB first)
    output reg  [8:0] q   // Parallel output
);

    always @(posedge sclk or negedge rst_n) begin
        if (!rst_n)
            q <= 9'd0;
        else if (en)
            q <= {q[7:0], sdata}; // Shift left, insert LSB
    end

endmodule

//======================================================================
// Serial-to-Parallel 9-bit Shift Register
//======================================================================

