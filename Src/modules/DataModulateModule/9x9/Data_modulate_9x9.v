module Data_modulate_9x9 #(parameter ROWS = 11,
                           parameter COLS = 11)
                          (input clk,
                           input rst,
                           input [7:0] d0_i,
                           input [7:0] d1_i,
                           input [7:0] d2_i,
                           input [7:0] d3_i,
                           input [7:0] d4_i,
                           input [7:0] d5_i,
                           input [7:0] d6_i,
                           input [7:0] d7_i,
                           input [7:0] d8_i,
                           input done_i,
                           output [7:0] d0_o,
                           output [7:0] d1_o,
                           output [7:0] d2_o,
                           output [7:0] d3_o,
                           output [7:0] d4_o,
                           output [7:0] d5_o,
                           output [7:0] d6_o,
                           output [7:0] d7_o,
                           output [7:0] d8_o,
                           output [7:0] d9_o,
                           output [7:0] d10_o,
                           output [7:0] d11_o,
                           output [7:0] d12_o,
                           output [7:0] d13_o,
                           output [7:0] d14_o,
                           output [7:0] d15_o,
                           output [7:0] d16_o,
                           output [7:0] d17_o,
                           output [7:0] d18_o,
                           output [7:0] d19_o,
                           output [7:0] d20_o,
                           output [7:0] d21_o,
                           output [7:0] d22_o,
                           output [7:0] d23_o,
                           output [7:0] d24_o,
                           output [7:0] d25_o,
                           output [7:0] d26_o,
                           output [7:0] d27_o,
                           output [7:0] d28_o,
                           output [7:0] d29_o,
                           output [7:0] d30_o,
                           output [7:0] d31_o,
                           output [7:0] d32_o,
                           output [7:0] d33_o,
                           output [7:0] d34_o,
                           output [7:0] d35_o,
                           output [7:0] d36_o,
                           output [7:0] d37_o,
                           output [7:0] d38_o,
                           output [7:0] d39_o,
                           output [7:0] d40_o,
                           output [7:0] d41_o,
                           output [7:0] d42_o,
                           output [7:0] d43_o,
                           output [7:0] d44_o,
                           output [7:0] d45_o,
                           output [7:0] d46_o,
                           output [7:0] d47_o,
                           output [7:0] d48_o,
                           output [7:0] d49_o,
                           output [7:0] d50_o,
                           output [7:0] d51_o,
                           output [7:0] d52_o,
                           output [7:0] d53_o,
                           output [7:0] d54_o,
                           output [7:0] d55_o,
                           output [7:0] d56_o,
                           output [7:0] d57_o,
                           output [7:0] d58_o,
                           output [7:0] d59_o,
                           output [7:0] d60_o,
                           output [7:0] d61_o,
                           output [7:0] d62_o,
                           output [7:0] d63_o,
                           output [7:0] d64_o,
                           output [7:0] d65_o,
                           output [7:0] d66_o,
                           output [7:0] d67_o,
                           output [7:0] d68_o,
                           output [7:0] d69_o,
                           output [7:0] d70_o,
                           output [7:0] d71_o,
                           output [7:0] d72_o,
                           output [7:0] d73_o,
                           output [7:0] d74_o,
                           output [7:0] d75_o,
                           output [7:0] d76_o,
                           output [7:0] d77_o,
                           output [7:0] d78_o,
                           output [7:0] d79_o,
                           output [7:0] d80_o,
                           output done_o);
    wire [2:0] i_counter;
    wire start, done_reg;
    
    
    Data_modulate_9x9_controller CONTROLLER_9X9 (
    .clk(clk),
    .rst(rst),
    .done_i(done_i),
    .i_counter(i_counter),
    .done_reg(done_reg),
    .done_o(done_o),
    .start(start)
    
    );
    Data_modulate_9x9_datapath #(
    .ROWS(ROWS),
    .COLS(COLS)
    ) DATAPATH_9X9 (
    .clk(clk),
    .rst(rst),
    .d0_i(d0_i),
    .d1_i(d1_i),
    .d2_i(d2_i),
    .d3_i(d3_i),
    .d4_i(d4_i),
    .d5_i(d5_i),
    .d6_i(d6_i),
    .d7_i(d7_i),
    .d8_i(d8_i),
    .start(start),
    .done_o(done_o),
    .d0_o(d0_o),
    .d1_o(d1_o),
    .d2_o(d2_o),
    .d3_o(d3_o),
    .d4_o(d4_o),
    .d5_o(d5_o),
    .d6_o(d6_o),
    .d7_o(d7_o),
    .d8_o(d8_o),
    .d9_o(d9_o),
    .d10_o(d10_o),
    .d11_o(d11_o),
    .d12_o(d12_o),
    .d13_o(d13_o),
    .d14_o(d14_o),
    .d15_o(d15_o),
    .d16_o(d16_o),
    .d17_o(d17_o),
    .d18_o(d18_o),
    .d19_o(d19_o),
    .d20_o(d20_o),
    .d21_o(d21_o),
    .d22_o(d22_o),
    .d23_o(d23_o),
    .d24_o(d24_o),
    .d25_o(d25_o),
    .d26_o(d26_o),
    .d27_o(d27_o),
    .d28_o(d28_o),
    .d29_o(d29_o),
    .d30_o(d30_o),
    .d31_o(d31_o),
    .d32_o(d32_o),
    .d33_o(d33_o),
    .d34_o(d34_o),
    .d35_o(d35_o),
    .d36_o(d36_o),
    .d37_o(d37_o),
    .d38_o(d38_o),
    .d39_o(d39_o),
    .d40_o(d40_o),
    .d41_o(d41_o),
    .d42_o(d42_o),
    .d43_o(d43_o),
    .d44_o(d44_o),
    .d45_o(d45_o),
    .d46_o(d46_o),
    .d47_o(d47_o),
    .d48_o(d48_o),
    .d49_o(d49_o),
    .d50_o(d50_o),
    .d51_o(d51_o),
    .d52_o(d52_o),
    .d53_o(d53_o),
    .d54_o(d54_o),
    .d55_o(d55_o),
    .d56_o(d56_o),
    .d57_o(d57_o),
    .d58_o(d58_o),
    .d59_o(d59_o),
    .d60_o(d60_o),
    .d61_o(d61_o),
    .d62_o(d62_o),
    .d63_o(d63_o),
    .d64_o(d64_o),
    .d65_o(d65_o),
    .d66_o(d66_o),
    .d67_o(d67_o),
    .d68_o(d68_o),
    .d69_o(d69_o),
    .d70_o(d70_o),
    .d71_o(d71_o),
    .d72_o(d72_o),
    .d73_o(d73_o),
    .d74_o(d74_o),
    .d75_o(d75_o),
    .d76_o(d76_o),
    .d77_o(d77_o),
    .d78_o(d78_o),
    .d79_o(d79_o),
    .d80_o(d80_o),
    .done_reg(done_reg),
    .i_counter(i_counter)
    );
    
endmodule
    
