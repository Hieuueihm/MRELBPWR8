module Window_buffer_3x3 #(parameter COLS = 5,
                           parameter ROWS = 5)
                          (input clk,
                           input rst,
                           input done_i,
                           input[7:0] S1_i,
                           S2_i,
                           S3_i,
                           output[7:0] S1_o,
                           S2_o,
                           S3_o,
                           S4_o,
                           S5_o,
                           S6_o,
                           S7_o,
                           S8_o,
                           S9_o,
                           output done_o,
                           output progress_done_o);
    wire i_row_eq_max, i_col_eq_max, i_col_ge_threshold;
    wire count_en;
    Window_buffer_3x3_controller WINDOW_BUFFER_3X3_CONTROLLER(
    .clk(clk),
    .rst(rst),
    .done_i(done_i),
    .i_row_eq_max(i_row_eq_max),
    .i_col_eq_max(i_col_eq_max),
    .i_col_ge_threshold(i_col_ge_threshold),
    .count_en(count_en),
    .progress_done(progress_done_o),
    .done_o(done_o));
    
    Window_buffer_3x3_datapath #(.COLS(COLS),
    .ROWS(ROWS))
    WINDOW_BUFFER_3X3_DATAPATH
    (
    .clk(clk),
    .rst(rst),
    .count_en(count_en),
    .S1_i(S1_i),
    .S2_i(S2_i),
    .S3_i(S3_i),
    .i_row_eq_max(i_row_eq_max),
    .S1_o(S1_o),
    .S2_o(S2_o),
    .S3_o(S3_o),
    .S4_o(S4_o),
    .S5_o(S5_o),
    .S6_o(S6_o),
    .S7_o(S7_o),
    .S8_o(S8_o),
    .S9_o(S9_o),
    .i_col_eq_max(i_col_eq_max),
    .i_col_ge_threshold(i_col_ge_threshold));
    
endmodule
