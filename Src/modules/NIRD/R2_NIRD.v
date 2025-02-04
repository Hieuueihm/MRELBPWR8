module R2_NIRD #(parameter COLS = 30,
                 parameter ROWS = 30)
                (input clk,
                 input rst,
                 input [7:0] m_3x3_i,
                 input done_m_3x3_i,
                 input [7:0] data_original_i,
                 input done_original_i,
                 output [3:0] ni_o,
                 output [3:0] rd_o,
                 output done_o,
                 output progress_done_o);
    wire [7:0] data0_3x3_o, data1_3x3_o, data2_3x3_o, data3_3x3_o, data4_3x3_o;
    wire done_buffer_3x3_o;
    Buffer_4_rows #(.DEPTH(COLS)) BUFFER_4_ROWS_3X3 (
    .clk(clk),
    .rst(rst),
    .done_i(done_m_3x3_i),
    .data_i(m_3x3_i),
    .data0_o(data0_3x3_o),
    .data1_o(data1_3x3_o),
    .data2_o(data2_3x3_o),
    .data3_o(data3_3x3_o),
    .data4_o(data4_3x3_o),
    .done_o(done_buffer_3x3_o)
    );
    
    wire [7:0] data0_o, data1_o, data2_o, data3_o, data4_o;
    wire done_original_o;
    Buffer_4_rows #(.DEPTH(COLS)) BUFFER_4_ROWS (
    .clk(clk),
    .rst(rst),
    .done_i(done_original_i),
    .data_i(data_original_i),
    .data0_o(data0_o),
    .data1_o(data1_o),
    .data2_o(data2_o),
    .data3_o(data3_o),
    .data4_o(data4_o),
    .done_o(done_original_o)
    );
    
    
    wire [7:0] data0_delay, data1_delay, data2_delay, data3_delay, data4_delay;
    wire done_o_delay;
    
    shift_registers #(.WIDTH(1), .CYCLE(7))
    SHIFT_5_DONE_O (
    .clk(clk),
    .rst(rst),
    .data_i(done_original_o),
    .data_o(done_o_delay)
    );
    
    shift_registers #(.WIDTH(8), .CYCLE(7))
    SHIFT_5_DATA0 (
    .clk(clk),
    .rst(rst),
    .data_i(data0_o),
    .data_o(data0_delay)
    );
    
    shift_registers #(.WIDTH(8), .CYCLE(7))
    SHIFT_5_DATA1 (
    .clk(clk),
    .rst(rst),
    .data_i(data1_o),
    .data_o(data1_delay)
    );
    
    
    shift_registers #(.WIDTH(8), .CYCLE(7))
    SHIFT_5_DATA2 (
    .clk(clk),
    .rst(rst),
    .data_i(data2_o),
    .data_o(data2_delay)
    );
    
    
    shift_registers #(.WIDTH(8), .CYCLE(7))
    SHIFT_5_DATA3 (
    .clk(clk),
    .rst(rst),
    .data_i(data3_o),
    .data_o(data3_delay)
    );
    
    shift_registers #(.WIDTH(8), .CYCLE(7))
    SHIFT_5_DATA4 (
    .clk(clk),
    .rst(rst),
    .data_i(data4_o),
    .data_o(data4_delay)
    );
    wire [7:0] S1_o, S2_o, S3_o, S4_o, S5_o, S6_o, S7_o, S8_o, S9_o, S10_o, S11_o, S12_o, S13_o;
    wire [7:0] S14_o, S15_o, S16_o, S17_o, S18_o, S19_o, S20_o, S21_o, S22_o, S23_o, S24_o, S25_o;
    wire window_buffer_5x5_done_o;
    wire window_buffer_5x5_progress_done_o;
    
    Window_buffer_5x5 #(.COLS(COLS), .ROWS(ROWS)) WINDOW_BUFFER_5x5_R2 (
    .clk(clk),
    .rst(rst),
    .done_i(done_buffer_3x3_o),
    .S1_i(data4_3x3_o),
    .S2_i(data3_3x3_o),
    .S3_i(data2_3x3_o),
    .S4_i(data1_3x3_o),
    .S5_i(data0_3x3_o),
    .S1_o(S1_o),
    .S2_o(S2_o),
    .S3_o(S3_o),
    .S4_o(S4_o),
    .S5_o(S5_o),
    .S6_o(S6_o),
    .S7_o(S7_o),
    .S8_o(S8_o),
    .S9_o(S9_o),
    .S10_o(S10_o),
    .S11_o(S11_o),
    .S12_o(S12_o),
    .S13_o(S13_o),
    .S14_o(S14_o),
    .S15_o(S15_o),
    .S16_o(S16_o),
    .S17_o(S17_o),
    .S18_o(S18_o),
    .S19_o(S19_o),
    .S20_o(S20_o),
    .S21_o(S21_o),
    .S22_o(S22_o),
    .S23_o(S23_o),
    .S24_o(S24_o),
    .S25_o(S25_o),
    .done_o(window_buffer_5x5_done_o),
    .progress_done_o(window_buffer_5x5_progress_done_o)
    );
    
    
    wire [7:0] S1_o_3x3, S2_o_3x3, S3_o_3x3, S4_o_3x3, S5_o_3x3, S6_o_3x3, S7_o_3x3, S8_o_3x3, S9_o_3x3;
    wire window_3x3_done_o;
    wire window_3x3_progress_done_o;
    Window_buffer_3x3 #(.COLS(COLS), .ROWS(ROWS)) WINDOW_BUFFER_3X3 (
    .clk(clk),
    .rst(rst),
    .done_i(done_o_delay),
    .S1_i(data3_delay),
    .S2_i(data2_delay),
    .S3_i(data1_delay),
    .S1_o(S1_o_3x3),
    .S2_o(S2_o_3x3),
    .S3_o(S3_o_3x3),
    .S4_o(S4_o_3x3),
    .S5_o(S5_o_3x3),
    .S6_o(S6_o_3x3),
    .S7_o(S7_o_3x3),
    .S8_o(S8_o_3x3),
    .S9_o(S9_o_3x3),
    .done_o(window_3x3_done_o),
    .progress_done_o(window_3x3_progress_done_o)
    );
    
    
    wire [23:0] S1_r1, S2_r1, S3_r1, S4_r1, S5_r1, S6_r1, S7_r1, S8_r1;
    wire done_o_r1;
    wire finish_inter;
    
    Interpolation_R_x #(.R(1)) INTERPOLATION_R_1 (
    .clk(clk),
    .rst(rst),
    .progress_done_i(window_buffer_5x5_progress_done_o),
    .done_i(window_buffer_5x5_done_o),
    .S_0_i(S6_o_3x3),
    .S_90_i(S2_o_3x3),
    .S_180_i(S4_o_3x3),
    .S_270_i(S8_o_3x3),
    .S_45_i_1(S3_o_3x3),
    .S_45_i_2(),
    .S_45_i_3(),
    .S_45_i_4(),
    .S_135_i_1(S1_o_3x3),
    .S_135_i_2(),
    .S_135_i_3(),
    .S_135_i_4(),
    .S_225_i_1(S7_o_3x3),
    .S_225_i_2(),
    .S_225_i_3(),
    .S_225_i_4(),
    .S_315_i_1(S9_o_3x3),
    .S_315_i_2(),
    .S_315_i_3(),
    .S_315_i_4(),
    .S1_o(S1_r1),
    .S2_o(S2_r1),
    .S3_o(S3_r1),
    .S4_o(S4_r1),
    .S5_o(S5_r1),
    .S6_o(S6_r1),
    .S7_o(S7_r1),
    .S8_o(S8_r1),
    .done_o(done_o_r1),
    .progress_done_o()
    );
    
    wire [23:0] S1_r2, S2_r2, S3_r2, S4_r2, S5_r2, S6_r2, S7_r2, S8_r2;
    wire done_o_r2;
    
    Interpolation_R_x #(.R(2)) INTERPOLATION_R_2 (
    .clk(clk),
    .rst(rst),
    .progress_done_i(window_buffer_5x5_progress_done_o),
    .done_i(window_buffer_5x5_done_o),
    .S_0_i(S15_o),
    .S_90_i(S3_o),
    .S_180_i(S11_o),
    .S_270_i(S23_o),
    .S_45_i_1(S4_o),
    .S_45_i_2(S5_o),
    .S_45_i_3(S9_o),
    .S_45_i_4(S10_o),
    .S_135_i_1(S1_o),
    .S_135_i_2(S2_o),
    .S_135_i_3(S6_o),
    .S_135_i_4(S7_o),
    .S_225_i_1(S16_o),
    .S_225_i_2(S17_o),
    .S_225_i_3(S21_o),
    .S_225_i_4(S22_o),
    .S_315_i_1(S19_o),
    .S_315_i_2(S20_o),
    .S_315_i_3(S24_o),
    .S_315_i_4(S25_o),
    .S1_o(S1_r2),
    .S2_o(S2_r2),
    .S3_o(S3_r2),
    .S4_o(S4_r2),
    .S5_o(S5_r2),
    .S6_o(S6_r2),
    .S7_o(S7_r2),
    .S8_o(S8_r2),
    .done_o(done_o_r2),
    .progress_done_o(finish_inter)
    );
    
    
    
    wire [12:0] sum_o_patch_sum;
    wire patch_sum_done_o;
    wire progress_patch_done;
    R2_patch_sum #(.COLS(COLS),
    .ROWS(ROWS)) R2_PATCH_SUM
    (
    .clk(clk),
    .rst(rst),
    .done_i(done_buffer_3x3_o),
    .S1(data0_3x3_o),
    .S2(data1_3x3_o),
    .S3(data2_3x3_o),
    .S4(data3_3x3_o),
    .S5(data4_3x3_o),
    .sum_o(sum_o_patch_sum),
    .done_o(patch_sum_done_o),
    .progress_done_o(progress_patch_done));
    
    wire ni_r2_done, ni_r2_progress_done, bit1_o_ni, bit2_o_ni, bit3_o_ni,
    bit4_o_ni, bit5_o_ni, bit6_o_ni, bit7_o_ni, bit8_o_ni;
    NI #(.WIDTH(13), .GAIN(25)) NI_CALC_R2 (
    .clk(clk),
    .rst(rst),
    .done_i(done_o_r2),
    .progress_done_i(finish_inter),
    .S1_r2(S1_r2),
    .S2_r2(S2_r2),
    .S3_r2(S3_r2),
    .S4_r2(S4_r2),
    .S5_r2(S5_r2),
    .S6_r2(S6_r2),
    .S7_r2(S7_r2),
    .S8_r2(S8_r2),
    .sum_i(sum_o_patch_sum),
    .done_o(ni_r2_done),
    .progress_done_o(ni_r2_progress_done),
    .bit1_o(bit1_o_ni),
    .bit2_o(bit2_o_ni),
    .bit3_o(bit3_o_ni),
    .bit4_o(bit4_o_ni),
    .bit5_o(bit5_o_ni),
    .bit6_o(bit6_o_ni),
    .bit7_o(bit7_o_ni),
    .bit8_o(bit8_o_ni)
    );
    
    // integer file1;
    // always @(posedge clk) begin
    //     if (rst) begin
    //         file1 = $fopen("D:\\Thesis\\CodeTest\\python\\rd_data_hex.txt", "w");
    //         end else if (done_o_r2) begin
    //         if (file1) begin
    //             $fwrite(file1, "r2 %h %h %h %h %h %h %h %h r1 %h %h %h %h %h %h %h %h\n",
    //             S8_r2, S7_r2, S6_r2, S5_r2, S4_r2, S3_r2, S2_r2, S1_r2, S8_r1, S7_r1, S6_r1, S5_r1, S4_r1, S3_r1, S2_r1, S1_r1);
    //         end
    //         end else if (finish_inter) begin
    //         $fclose(file1);
    //     end
    
    // end
    wire rd_r2_done, rd_r2_progress_done, bit1_o, bit2_o, bit3_o, bit4_o, bit5_o, bit6_o, bit7_o, bit8_o;
    RD RD_CALC_R2 (
    .clk(clk),
    .rst(rst),
    .done_i(done_o_r2),
    .progress_done_i(finish_inter),
    .S1_r2(S1_r2),
    .S2_r2(S2_r2),
    .S3_r2(S3_r2),
    .S4_r2(S4_r2),
    .S5_r2(S5_r2),
    .S6_r2(S6_r2),
    .S7_r2(S7_r2),
    .S8_r2(S8_r2),
    .S1_r1(S1_r1),
    .S2_r1(S2_r1),
    .S3_r1(S3_r1),
    .S4_r1(S4_r1),
    .S5_r1(S5_r1),
    .S6_r1(S6_r1),
    .S7_r1(S7_r1),
    .S8_r1(S8_r1),
    .done_o(rd_r2_done),
    .progress_done_o(rd_r2_progress_done),
    .bit1_o(bit1_o),
    .bit2_o(bit2_o),
    .bit3_o(bit3_o),
    .bit4_o(bit4_o),
    .bit5_o(bit5_o),
    .bit6_o(bit6_o),
    .bit7_o(bit7_o),
    .bit8_o(bit8_o)
    );
    
    // integer file;
    // always @(posedge clk) begin
    //     if (rst) begin
    //         file = $fopen("D:\\Thesis\\CodeTest\\python\\rd_data.txt", "w");
    //         end else if (rd_r2_done) begin
    //         if (file) begin
    //             $fwrite(file, "%b\n", {bit8_o, bit7_o, bit6_o, bit5_o, bit4_o, bit3_o, bit2_o, bit1_o});            end
    //             end else if (rd_r2_progress_done) begin
    //             $fclose(file);
    //         end
    
    //     end
    
    riu2_mapping RIU2_RD(
    .clk(clk),
    .rst(rst),
    .done_i(rd_r2_done),
    .progress_done_i(rd_r2_progress_done),
    .bit1_i(bit1_o),
    .bit2_i(bit2_o),
    .bit3_i(bit3_o),
    .bit4_i(bit4_o),
    .bit5_i(bit5_o),
    .bit6_i(bit6_o),
    .bit7_i(bit7_o),
    .bit8_i(bit8_o),
    .data_o(rd_o),
    .done_o(done_o),
    .progress_done_o(progress_done_o));
    
    
    riu2_mapping RIU2_NI(
    .clk(clk),
    .rst(rst),
    .done_i(ni_r2_done),
    .progress_done_i(ni_r2_progress_done),
    .bit1_i(bit1_o_ni),
    .bit2_i(bit2_o_ni),
    .bit3_i(bit3_o_ni),
    .bit4_i(bit4_o_ni),
    .bit5_i(bit5_o_ni),
    .bit6_i(bit6_o_ni),
    .bit7_i(bit7_o_ni),
    .bit8_i(bit8_o_ni),
    .data_o(ni_o),
    .done_o(),
    .progress_done_o());
endmodule
