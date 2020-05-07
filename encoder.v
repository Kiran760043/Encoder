//////////////////////////////////////////////////////////////////////////////////
// Design: Priority Encoder
// Engineer: kiran
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps

module encoder(in, out);

    input  wire [7:0] in;
    output reg  [2:0] out;

    always @(*)
        begin
            casez (in)
                8'b10000000 : out = 3'h7;
                8'b01000000 : out = 3'h6;
                8'b00100000 : out = 3'h5;
                8'b00010000 : out = 3'h4;
                8'b00001000 : out = 3'h3;
                8'b00000100 : out = 3'h2;
                8'b00000010 : out = 3'h1;
                8'b00000001 : out = 3'h0;
                default     : out = 3'h0;
            endcase
        end

endmodule
