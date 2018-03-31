`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/03/29 21:39:06
// Design Name: 
// Module Name: lut_check
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


module lut_check(
    input clk,  
    input rst,  
    input [10:0]FreqCtrl,  
    output [11:0]waveform 
    );
    
    wire [11:0]phase;  
    PhaseAdder u_PhaseAdder  
    (  
        .clk        (clk),  
        .rst        (rst),  
        .FreqCtrl   (FreqCtrl),  
        .phase      (phase)  
    );  
    
    DDS_ROM u_DDS_ROM  
    (  
        .a      (phase[11:0]),  
        .spo    (waveform)  
    );  
    
    
endmodule