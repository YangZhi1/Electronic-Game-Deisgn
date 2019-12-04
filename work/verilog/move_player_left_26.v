/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module move_player_left_26 (
    input [2:0] player_reg_selector,
    input [63:0] player_current_position,
    input [63:0] walls,
    input [63:0] token_map,
    output reg [63:0] player_location_out,
    output reg [2:0] new_player_reg_selector,
    output reg [63:0] new_token_map,
    output reg score_token
  );
  
  
  
  reg [7:0] new_player_position;
  
  wire [16-1:0] M_alu_aluOut;
  wire [1-1:0] M_alu_z;
  wire [1-1:0] M_alu_v;
  wire [1-1:0] M_alu_n;
  reg [16-1:0] M_alu_a;
  reg [16-1:0] M_alu_b;
  reg [6-1:0] M_alu_alufn;
  alu_40 alu (
    .a(M_alu_a),
    .b(M_alu_b),
    .alufn(M_alu_alufn),
    .aluOut(M_alu_aluOut),
    .z(M_alu_z),
    .v(M_alu_v),
    .n(M_alu_n)
  );
  
  wire [1-1:0] M_left_wall_collide;
  reg [8-1:0] M_left_wall_player_current_position;
  reg [8-1:0] M_left_wall_walls;
  wall_collide_36 left_wall (
    .player_current_position(M_left_wall_player_current_position),
    .walls(M_left_wall_walls),
    .collide(M_left_wall_collide)
  );
  
  wire [8-1:0] M_token_collide_new_token_map;
  wire [1-1:0] M_token_collide_score_token;
  reg [8-1:0] M_token_collide_token_map;
  reg [8-1:0] M_token_collide_player_next_position;
  token_collide_37 token_collide (
    .token_map(M_token_collide_token_map),
    .player_next_position(M_token_collide_player_next_position),
    .new_token_map(M_token_collide_new_token_map),
    .score_token(M_token_collide_score_token)
  );
  
  always @* begin
    score_token = 1'h0;
    new_token_map = token_map;
    M_alu_a = 1'h0;
    new_player_reg_selector = player_reg_selector;
    player_location_out = 64'h0000000000000000;
    M_left_wall_walls = walls[0+7-:8];
    M_left_wall_player_current_position = player_current_position[0+7-:8];
    M_token_collide_player_next_position = player_current_position[0+7-:8];
    M_token_collide_token_map = token_map[0+7-:8];
    M_alu_alufn = 6'h20;
    M_alu_b = 16'h0001;
    
    case (player_reg_selector)
      3'h0: begin
        M_alu_a = player_current_position[0+7-:8];
        new_player_position = M_alu_aluOut[0+7-:8];
        M_left_wall_player_current_position = new_player_position;
        M_left_wall_walls = walls[0+7-:8];
        if (M_left_wall_collide) begin
          player_location_out[0+7-:8] = player_current_position[0+7-:8];
        end else begin
          if (new_player_position == 8'h00) begin
            player_location_out = player_current_position;
          end else begin
            M_token_collide_player_next_position = new_player_position;
            M_token_collide_token_map = token_map[0+7-:8];
            new_token_map[0+7-:8] = M_token_collide_new_token_map;
            score_token = M_token_collide_score_token;
            player_location_out[0+7-:8] = new_player_position;
          end
        end
      end
      3'h1: begin
        M_alu_a = player_current_position[8+7-:8];
        new_player_position = M_alu_aluOut[0+7-:8];
        M_left_wall_player_current_position = new_player_position;
        M_left_wall_walls = walls[8+7-:8];
        if (M_left_wall_collide) begin
          player_location_out[8+7-:8] = player_current_position[8+7-:8];
        end else begin
          if (new_player_position == 8'h00) begin
            player_location_out = player_current_position;
          end else begin
            M_token_collide_player_next_position = new_player_position;
            M_token_collide_token_map = token_map[8+7-:8];
            new_token_map[8+7-:8] = M_token_collide_new_token_map;
            score_token = M_token_collide_score_token;
            player_location_out[8+7-:8] = new_player_position;
          end
        end
      end
      3'h2: begin
        M_alu_a = player_current_position[16+7-:8];
        new_player_position = M_alu_aluOut[0+7-:8];
        M_left_wall_player_current_position = new_player_position;
        M_left_wall_walls = walls[16+7-:8];
        if (M_left_wall_collide) begin
          player_location_out[16+7-:8] = player_current_position[16+7-:8];
        end else begin
          if (new_player_position == 8'h00) begin
            player_location_out = player_current_position;
          end else begin
            M_token_collide_player_next_position = new_player_position;
            M_token_collide_token_map = token_map[16+7-:8];
            new_token_map[16+7-:8] = M_token_collide_new_token_map;
            score_token = M_token_collide_score_token;
            player_location_out[16+7-:8] = new_player_position;
          end
        end
      end
      3'h3: begin
        M_alu_a = player_current_position[24+7-:8];
        new_player_position = M_alu_aluOut[0+7-:8];
        M_left_wall_player_current_position = new_player_position;
        M_left_wall_walls = walls[24+7-:8];
        if (M_left_wall_collide) begin
          player_location_out[24+7-:8] = player_current_position[24+7-:8];
        end else begin
          if (new_player_position == 8'h00) begin
            player_location_out = player_current_position;
          end else begin
            M_token_collide_player_next_position = new_player_position;
            M_token_collide_token_map = token_map[24+7-:8];
            new_token_map[24+7-:8] = M_token_collide_new_token_map;
            score_token = M_token_collide_score_token;
            player_location_out[24+7-:8] = new_player_position;
          end
        end
      end
      3'h4: begin
        M_alu_a = player_current_position[32+7-:8];
        new_player_position = M_alu_aluOut[0+7-:8];
        M_left_wall_player_current_position = new_player_position;
        M_left_wall_walls = walls[32+7-:8];
        if (M_left_wall_collide) begin
          player_location_out[32+7-:8] = player_current_position[32+7-:8];
        end else begin
          if (new_player_position == 8'h00) begin
            player_location_out = player_current_position;
          end else begin
            M_token_collide_player_next_position = new_player_position;
            M_token_collide_token_map = token_map[32+7-:8];
            new_token_map[32+7-:8] = M_token_collide_new_token_map;
            score_token = M_token_collide_score_token;
            player_location_out[32+7-:8] = new_player_position;
          end
        end
      end
      3'h5: begin
        M_alu_a = player_current_position[40+7-:8];
        new_player_position = M_alu_aluOut[0+7-:8];
        M_left_wall_player_current_position = new_player_position;
        M_left_wall_walls = walls[40+7-:8];
        if (M_left_wall_collide) begin
          player_location_out[40+7-:8] = player_current_position[40+7-:8];
        end else begin
          if (new_player_position == 8'h00) begin
            player_location_out = player_current_position;
          end else begin
            M_token_collide_player_next_position = new_player_position;
            M_token_collide_token_map = token_map[40+7-:8];
            new_token_map[40+7-:8] = M_token_collide_new_token_map;
            score_token = M_token_collide_score_token;
            player_location_out[40+7-:8] = new_player_position;
          end
        end
      end
      3'h6: begin
        M_alu_a = player_current_position[48+7-:8];
        new_player_position = M_alu_aluOut[0+7-:8];
        M_left_wall_player_current_position = new_player_position;
        M_left_wall_walls = walls[48+7-:8];
        if (M_left_wall_collide) begin
          player_location_out[48+7-:8] = player_current_position[48+7-:8];
        end else begin
          if (new_player_position == 8'h00) begin
            player_location_out = player_current_position;
          end else begin
            M_token_collide_player_next_position = new_player_position;
            M_token_collide_token_map = token_map[48+7-:8];
            new_token_map[48+7-:8] = M_token_collide_new_token_map;
            score_token = M_token_collide_score_token;
            player_location_out[48+7-:8] = new_player_position;
          end
        end
      end
      3'h7: begin
        M_alu_a = player_current_position[56+7-:8];
        new_player_position = M_alu_aluOut[0+7-:8];
        M_left_wall_player_current_position = new_player_position;
        M_left_wall_walls = walls[56+7-:8];
        if (M_left_wall_collide) begin
          player_location_out[56+7-:8] = player_current_position[56+7-:8];
        end else begin
          if (new_player_position == 8'h00) begin
            player_location_out = player_current_position;
          end else begin
            M_token_collide_player_next_position = new_player_position;
            M_token_collide_token_map = token_map[56+7-:8];
            new_token_map[56+7-:8] = M_token_collide_new_token_map;
            score_token = M_token_collide_score_token;
            player_location_out[56+7-:8] = new_player_position;
          end
        end
      end
    endcase
  end
endmodule