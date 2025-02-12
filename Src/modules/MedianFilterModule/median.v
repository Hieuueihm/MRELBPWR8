module median (
    input clk,
    input rst,
    input [7:0] red_i,
    input [7:0] green_i,
    input [7:0] blue_i,

    input done_i,

    output [7:0] red_o,
    output [7:0] green_o,
    output [7:0] blue_o,

    output done_o
);
  wire [7:0] RGB2Gray_grayscale_o;
  wire RGB2Gray_done_o;
  wire [7:0] d0_o, d1_o, d2_o, d3_o, d4_o, d5_o, d6_o, d7_o, d8_o;

  wire prepare_done_o;
  wire [7:0] grayscale_med_o;
  wire grayscale_med_done;

  RGB2Gray RGB2Gray_instance (
      .clk(clk),
      .rst(rst),
      .red_i(red_i),
      .green_i(green_i),
      .blue_i(blue_i),
      .done_i(done_i),
      .grayscale_o(RGB2Gray_grayscale_o),
      .done_o(RGB2Gray_done_o)
  );
  Preparation #(
      .DEPTH(480)
  ) MEDIAN_PREPARATION (
      .clk(clk),
      .rst(rst),
      .done_i(RGB2Gray_done_o),
      .data_i(RGB2Gray_grayscale_o),
      .data0_o(d0_o),
      .data1_o(d1_o),
      .data2_o(d2_o),
      .data3_o(d3_o),
      .data4_o(d4_o),
      .data5_o(d5_o),
      .data6_o(d6_o),
      .data7_o(d7_o),
      .data8_o(d8_o),
      .done_o(prepare_done_o)
  );


  Median_filter_5x5 #(
      .ROWS(360),
      .COLS(480)
  ) MEDIAN_FILTER_5X5 (
      .clk(clk),
      .rst(rst),
      .done_i(prepare_done_o),
      .d0_i(d0_o),
      .d1_i(d1_o),
      .d2_i(d2_o),
      .d3_i(d3_o),
      .d4_i(d4_o),
      .d5_i(d5_o),
      .d6_i(d6_o),
      .d7_i(d7_o),
      .d8_i(d8_o),
      .median_o(grayscale_med_o),
      .done_o(grayscale_med_done)
  );
  Gray2RGB Gray2RGB (
      .clk(clk),
      .rst(rst),
      .done_i(grayscale_med_done),
      .grayscale_i(grayscale_med_o),
      .red_o(red_o),
      .green_o(green_o),
      .blue_o(blue_o),
      .done_o(done_o)
  );



endmodule
