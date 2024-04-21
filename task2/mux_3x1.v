`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/19/2024 12:47:39 PM
// Design Name: 
// Module Name: mux_3x1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mux3x1(
    input [63:0] a, b, c,
    input [1:0] sel,
    output reg [63:0] data_out   
);

always @(*) begin
    if (sel == 2'b01) begin    // If sel is 01, select input B
        data_out = b;
    end
    else if (sel == 2'b00) begin    // If sel is 00, select input A
        data_out = a;
    end
    else if (sel == 2'b10) begin    // If sel is 10, select input C
        data_out = c;
    end
    else begin    // For all other cases, output X (undefined)
        data_out = 2'bX;
    end
end


endmodule
