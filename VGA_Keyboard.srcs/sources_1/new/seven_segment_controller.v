`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/20/2022 06:38:22 PM
// Design Name: 
// Module Name: seven_segment
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
module seven_segment_controller(
    input CLK100MHZ,
    output [3:0] an,
    output [0:6] seg,
    input  [3:0] count,
    output out_clk
    );
    
// To select each anode in turn
reg [1:0] anode_select;
reg [16:0] anode_timer;
 
reg [0:3] anode;
reg [0:6] segment;

reg out_clk_reg;
reg [3:0] count_;

always @(posedge CLK100MHZ) begin
    count_ <= count;
end

 // Parameters for segment values
parameter NULL  = 7'b111_1111;  // Turn off all segments
parameter ZERO  = 7'b000_0001;  // 0
parameter ONE   = 7'b100_1111;  // 1
parameter TWO   = 7'b001_0010;  // 2 
parameter THREE = 7'b000_0110;  // 3
parameter FOUR  = 7'b100_1100;  // 4
parameter FIVE  = 7'b010_0100;  // 5
parameter SIX   = 7'b010_0000;  // 6
parameter SEVEN = 7'b000_1111;  // 7
parameter EIGHT = 7'b000_0000;  // 8
parameter NINE  = 7'b000_0100;  // 9
parameter A     = 7'b000_1000;  // a
parameter B     = 7'b110_0000;  // b
parameter C     = 7'b100_0110;  // c
parameter D     = 7'b010_0001;  // d
parameter E     = 7'b011_0000;  // e
parameter F     = 7'b011_1000;  // f


// Use parameter for if to use 4'b1111 as all segments off
wire null_op;
parameter null_flag = 0;
assign null_op = null_flag;
  
 always @(posedge CLK100MHZ) begin
     if(anode_timer == 99_999) begin
         anode_timer <= 0;
         out_clk_reg <= ~out_clk_reg;
         anode_select <=  anode_select + 1;
         if (anode_select == 3)
            anode_select <= 0;
         case(anode_select)
             2'b00:
                   case(count_)
                     4'b0000 : segment <= ZERO;
                     4'b0001 : segment <= ONE;
                     4'b0010 : segment <= TWO;
                     4'b0011 : segment <= THREE;
                     4'b0100 : segment <= FOUR;
                     4'b0101 : segment <= FIVE;
                     4'b0110 : segment <= SIX;
                     4'b0111 : segment <= SEVEN;
                     4'b1000 : segment <= EIGHT;
                     4'b1001 : segment <= NINE;
                     4'b1010 : segment <= E; // Usually A but E for this application
                     4'b1011 : segment <= NULL; // Usually B, but NULL for Enter key
                     4'b1100 : segment <= C;
                     4'b1101 : segment <= D;
                     4'b1110 : segment <= E;
                     4'b1111 : segment <= NULL;
                                   
                   endcase                    
        endcase         
     end
     else
         anode_timer <=  anode_timer + 1;
 end
 
 
  // Selecting the anode at to display the digit
 always @(anode_select) begin
     case(anode_select) 
         2'b00 : anode = 4'b1110;
//         2'b01 : anode = 4'b1101;
//         2'b10 : anode = 4'b1011;
//         2'b11 : anode = 4'b1111;
     endcase
 end

assign an = anode;
assign seg = segment;
assign out_clk = out_clk_reg;

endmodule