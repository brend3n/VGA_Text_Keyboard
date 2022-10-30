`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/20/2022 10:09:20 AM
// Design Name: 
// Module Name: top
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


module top(
	input clk_100MHz,       // from Basys 3
	input reset,            // Reset button
	input PS2Data,          // PS2 Keyboard Data stream
    input PS2Clk,           // PS2 Keyboard clk
	output hsync,           // VGA horizontal sync
	output vsync,           // VGA vertical sync
	output [11:0] rgb,      // 12 FPGA pins for RGB(4 per color)
	output [3:0] an,        // seven segment anodes
    output [0:6] seg,       // seven segement segment
    output tx,              // Not sure if this is needed
    output [14:0] led       // Output LEDs
);
	
	// Signal Declaration
	wire        video_on;        // VGA controller active region signal. HIGH if in active region, otherwise LOW.
	wire        pixel_clk;       // VGA clock for iterating over the pixels
    reg  [7:0]  data_reg;        // Stores last input from keyboard
    reg  [7:0]  data_reg_prev;   // Stores previous digit
    wire [7:0]  data_wire;       // Wire for last input from keyboard
    wire        new_char;
    reg  [11:0] rgb_reg = 12'b111111111111;
    
    wire [9:0] x_pos;          // X position of the pixel
    wire [9:0] y_pos;          // Y position of the pixel
    
    wire [12:0] addra;      // ROM: Address input
    wire [23:0] douta;      // ROM: Data output
    
    wire [12:0] addr_start;
    wire [12:0] addr_end;
    
    parameter BACKGROUND_COLOR = 12'b111111111111; // White 
    parameter FOREGROUND_COLOR = 12'b000000000000; // Black
       
       
       
       
    // Instantiate keyboard interface
    keyboard_interface keyb_int(
        .clk(clk_100MHz),
        .PS2Data(PS2Data),
        .PS2Clk(PS2Clk),
        .seg(seg),
        .an(an),
        .tx(tx),
        .led(led),
        .data(data_wire)
    );  
    
    // Update Register
    always @(posedge clk_100MHz) begin
        data_reg <= data_wire;
    end
       
    
    // ROM for char map
    
    // 8 x 16 per characer
    // 0-9, E <- other chars and Enter <- clears screen
    // every 3 bytes is 128
    // new pixel every 3 bytes
    // every character is 128
    
//    
//        Character:
//            8x16 pixels (columns x rows)       
//            1 pixel = 3 bytes
            
//        Row
//            Every row is 1 pixel (3 bytes)
//            Every 128 rows (pixels) is a new character                           
//    
        
    // Lookup table for digit to address
    digit_2_addr digit_addr_table(
        .clk(clk_100MHz),           // 100MHZ clock so always ready to display the current key pressed
        .digit(data_reg),           // Input digit
        .addr_start(addr_start),    // Start address of digit
        .addr_end(addr_end)         // End address of digit
    );
        
    // Instantiate VGA Controller
    vga_controller vga_c(
        .clk_100MHz(clk_100MHz), 
        .reset(reset), 
        .hsync(hsync), 
        .vsync(vsync),
        .video_on(video_on), 
        .p_tick(pixel_clk), 
        .x(x_pos), 
        .y(y_pos)
    ); 
    
    
    //  We read 3 bytes at a time. but its byte addressable so address 0 -> bytes 0,1,2 address 1 -> bytes 3,4,5
    blk_mem_gen_0 char_map (
        .clka(pixel_clk),    // VGA pixel clock so its synchronized with VGA controller
        .addra(addra),       // Address input
        .douta(douta)        // Data out -> should output 1 pixel per address (3 bytes)
    );
    
   
    reg [12:0] temp_addr;
    reg initial_count = 0;
    
    always @ (posedge clk_100MHz) 
    begin                         
        if (initial_count == 0) 
        begin
            temp_addr <= addr_start; // Start at first byte of char
            initial_count <= 1;
        end
        
        // Reached the last address
        if(temp_addr == addr_end) 
        begin               
            // Done displaying character 
            initial_count <= 0; // Reset by reading at the first address again               
        end                     
            
//            
//              Display color for pixel
//              douta <- has 3 Bytes or 24-bits of pixel data
              
//              Wherever there is a 1 in the data, 
//                we want to display a different color than the background
//              Otherwise,
//                we want to display the background color
//            
           
        if (douta == 24'h000000)
        begin
            // Display background color
            rgb_reg <= BACKGROUND_COLOR;
        end             
        if (douta == 24'hffffff)
        begin
            // Display foregroud color
            rgb_reg <= FOREGROUND_COLOR;
        end
         
        // Go to the next address
        temp_addr <= temp_addr + 1;
                              
    end
    
    // Update ROM address to read from
    assign addra = temp_addr;     
    
    // Update pixel color data
    assign rgb = (video_on) ? rgb_reg : 12'b0;   // while in display area RGB color = sw, else all OFF
    
    // Output
    // Display white background
//    assign rgb = (video_on) ? 12'b111111111111 : 12'b0;   // while in display area RGB color = sw, else all OFF
endmodule
