module dsm_top (
    input  wire clk_dsm,      // Clock for DSM operation
    input  wire rst_n,        // Active-low reset for DSM
    input  wire sclk,         // Serial clock for shift register
    input  wire sdata,        // Serial data input (MSB first)
    input  wire en,           // Enable loading of serial data
    output wire [8:0] data_word,// Parallel data from shift register
    output wire dout         // Delta-sigma modulated output bitstream
);

    //-------------------------------------------------------------
    // Internal Signals
    //-------------------------------------------------------------
    //wire [8:0] data_word;     // Parallel data from shift register

    //-------------------------------------------------------------
    // Serial-to-Parallel Shift Register
    //-------------------------------------------------------------
    shift_reg_serial u_shift (
        .sclk(sclk),
        .rst_n(rst_n),
        .en(en),
        .sdata(sdata),
        .q(data_word)
    );

    //-------------------------------------------------------------
    // Delta-Sigma Modulator (8-bit input)
    //-------------------------------------------------------------
    dsm_8bit u_dsm (
        .clk(clk_dsm),
        .rst_n(rst_n),
        .DI(data_word),
        .DO(dout)
    );

endmodule

//======================================================================
// 8-bit Delta-Sigma Modulator with Serial Input Interface
//======================================================================
