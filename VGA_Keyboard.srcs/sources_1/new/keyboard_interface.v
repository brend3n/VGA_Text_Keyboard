`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/20/2022 10:09:20 AM
// Design Name: 
// Module Name: keyboard_interface
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


module keyboard_interface(
    input         clk,
    input         PS2Data,
    input         PS2Clk,
    output [0:6]  seg,
    output [3:0]  an,
    output        tx,
    output [14:0] led,
    output reg [7:0] data
);
    wire        tready;
    wire        ready;
    wire        tstart;
    reg         start=0;
    reg         CLK50MHZ=0;
    wire [31:0] tbuf;
    reg  [15:0] keycodev=0;
    wire [15:0] keycode;
    wire [ 7:0] tbus;
    reg  [ 2:0] bcount=0;
    wire        flag;
    reg         cn=0;
    
    always @(posedge(clk))begin
        CLK50MHZ<=~CLK50MHZ;
    end
    
    ps2_recv uut (
        .clk(CLK50MHZ),
        .kclk(PS2Clk),
        .kdata(PS2Data),
        .keycode(keycode),
        .oflag(flag)
    );
    
    
    always@(keycode)
        if (keycode[7:0] == 8'hf0) begin
            cn <= 1'b0;
            bcount <= 3'd0;
        end else if (keycode[15:8] == 8'hf0) begin
            cn <= keycode != keycodev;
            bcount <= 3'd5;
        end else begin
            cn <= keycode[7:0] != keycodev[7:0] || keycodev[15:8] == 8'hf0;
            bcount <= 3'd2;
        end
    
    always@(posedge clk)
        if (flag == 1'b1 && cn == 1'b1) begin
            start <= 1'b1;
            keycodev <= keycode;
        end else
            start <= 1'b0;
            
            
    assign led = keycodev[7:0];
            
    reg [3:0] digit_reg;
    wire [3:0] digit;
    
    always @(posedge clk) begin
        case(keycode[7:0])
            8'h45:
                digit_reg <= 4'b0000; // 0
            8'h16:
                digit_reg <= 4'b0001; // 1
            8'h1E:
                digit_reg <= 4'b0010; // 2
            8'h26:
                digit_reg <= 4'b0011; // 3
            8'h25:
                digit_reg <= 4'b0100; // 4
            8'h2E:
                digit_reg <= 4'b0101; // 5
            8'h36:
                digit_reg <= 4'b0110; // 6
            8'h3D:
                digit_reg <= 4'b0111; // 7
            8'h3E:
                digit_reg <= 4'b1000; // 8
            8'h46:
                digit_reg <= 4'b1001; // 9
            8'h24:
                digit_reg <= 4'b1010; // E
            8'h5A:
                digit_reg <= 4'b1011; // Enter
            default:
                digit_reg <= 4'b1111;
            
        endcase
    end
    
    
    
    assign digit = digit_reg;
    
    seven_segment_controller(
        .CLK100MHZ(clk),
        .an(an),
        .seg(seg),
        .count(digit),
        .out_clk()
    );
    
    always @(clk)
        data <= digit_reg;
    
endmodule
