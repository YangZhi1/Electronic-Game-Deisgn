/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module end_24 (
    output reg [63:0] smiley,
    output reg [63:0] ready
  );
  
  
  
  always @* begin
    smiley[0+7-:8] = 8'h10;
    smiley[8+7-:8] = 8'h20;
    smiley[16+7-:8] = 8'h47;
    smiley[24+7-:8] = 8'h80;
    smiley[32+7-:8] = 8'h80;
    smiley[40+7-:8] = 8'h47;
    smiley[48+7-:8] = 8'h20;
    smiley[56+7-:8] = 8'h10;
    ready[0+7-:8] = 8'h38;
    ready[8+7-:8] = 8'h08;
    ready[16+7-:8] = 8'h70;
    ready[24+7-:8] = 8'h50;
    ready[32+7-:8] = 8'h7e;
    ready[40+7-:8] = 8'h9c;
    ready[48+7-:8] = 8'h90;
    ready[56+7-:8] = 8'hfc;
  end
endmodule
