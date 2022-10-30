`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2022 04:34:11 PM
// Design Name: 
// Module Name: digit_2_addr
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


module digit_2_addr(
    input clk,
    input [3:0] digit,    // Input digit
    output [12:0] addr_start,    // Really only need 11-bit address
    output [12:0] addr_end      // Really only need 11-bit address
    );
    
    reg [12:0] addr_start_reg;
    reg [12:0] addr_end_reg;
    always @ (posedge clk) begin
        case(digit)
            4'd0: 
            begin
                addr_start_reg <=  0;
                addr_end_reg   <=  128 - 1;
            end                
            4'd1:
            begin 
                addr_start_reg <=  128;
                addr_end_reg   <=  256 - 1;
            end
            4'd2:
            begin 
                addr_start_reg <=  256;
                addr_end_reg   <=  384 - 1;
            end
            4'd3:
            begin 
                addr_start_reg <=  384;
                addr_end_reg   <=  512 - 1;
            end
            4'd4:
            begin 
                addr_start_reg <=  512;
                addr_end_reg   <=  640 - 1;
            end
            4'd5:
            begin 
                addr_start_reg <=  640;
                addr_end_reg   <=  768 - 1;
            end
            4'd6:
            begin 
                addr_start_reg <=  768;
                addr_end_reg   <=  896 - 1;
            end
            4'd7:
            begin 
                addr_start_reg <=  896;
                addr_end_reg   <=  1024 - 1;
            end
            4'd8:
            begin 
                addr_start_reg <=  1024;
                addr_end_reg   <=  1152 - 1;
            end
            4'd9:
            begin 
                addr_start_reg <=  1152;
                addr_end_reg   <=  1280 - 1;
            end
            4'd10:
            begin
                addr_start_reg <=  1280; // E   
                addr_end_reg   <=  1408 - 1;
            end          
            default:
            begin 
                addr_start_reg <= addr_start_reg;
                addr_end_reg   <= addr_end_reg;
            end
        endcase    
    end
    
    // Drive that address, baby
    assign addr_start = addr_start_reg;
    assign addr_end   = addr_end_reg;
        
endmodule
