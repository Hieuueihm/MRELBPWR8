module Median_filter_7x7 #(parameter ROWS = 9,
                           parameter COLS = 9)
                          (input clk,
                           input rst,
                           input done_i,
                           input [7:0] d0_i,
                           input [7:0] d1_i,
                           input [7:0] d2_i,
                           input [7:0] d3_i,
                           input [7:0] d4_i,
                           input [7:0] d5_i,
                           input [7:0] d6_i,
                           input [7:0] d7_i,
                           input [7:0] d8_i,
                           output [7:0] median_o,
                           output done_o);
    wire [7:0]
    data0,
    data1,
    data2,
    data3,
    data4,
    data5,
    data6,
    data7,
    data8,
    data9,
    data10,
    data11,
    data12,
    data13,
    data14,
    data15,
    data16,
    data17,
    data18,
    data19,
    data20,
    data21,
    data22,
    data23,
    data24,
    data25,
    data26,
    data27,
    data28,
    data29,
    data30,
    data31,
    data32,
    data33,
    data34,
    data35,
    data36,
    data37,
    data38,
    data39,
    data40,
    data41,
    data42,
    data43,
    data44,
    data45,
    data46,
    data47,
    data48;
    wire done_o_modulate;
    Data_modulate_7x7 #(
    .ROWS(ROWS),
    .COLS(COLS)
    ) MEDIAN_7x7_DATA_MODULATE (
    .clk(clk),
    .rst(rst),
    .d0_i(d0_i),  // 99
    .d1_i(d1_i),  // 8
    .d2_i(d2_i),  // 7
    .d3_i(d3_i),
    .d4_i(d4_i),
    .d5_i(d5_i),
    .d6_i(d6_i),
    .d7_i(d7_i),
    .d8_i(d8_i),
    // d5 d4 d3
    .done_i(done_i),
    .d0_o(data0),
    .d1_o(data1),
    .d2_o(data2),
    .d3_o(data3),
    .d4_o(data4),
    .d5_o(data5),
    .d6_o(data6),
    .d7_o(data7),
    .d8_o(data8),
    .d9_o(data9),
    .d10_o(data10),
    .d11_o(data11),
    .d12_o(data12),
    .d13_o(data13),
    .d14_o(data14),
    .d15_o(data15),
    .d16_o(data16),
    .d17_o(data17),
    .d18_o(data18),
    .d19_o(data19),
    .d20_o(data20),
    .d21_o(data21),
    .d22_o(data22),
    .d23_o(data23),
    .d24_o(data24),
    .d25_o(data25),
    .d26_o(data26),
    .d27_o(data27),
    .d28_o(data28),
    .d29_o(data29),
    .d30_o(data30),
    .d31_o(data31),
    .d32_o(data32),
    .d33_o(data33),
    .d34_o(data34),
    .d35_o(data35),
    .d36_o(data36),
    .d37_o(data37),
    .d38_o(data38),
    .d39_o(data39),
    .d40_o(data40),
    .d41_o(data41),
    .d42_o(data42),
    .d43_o(data43),
    .d44_o(data44),
    .d45_o(data45),
    .d46_o(data46),
    .d47_o(data47),
    .d48_o(data48),
    
    
    .done_o(done_o_modulate)
    
    );
    
    Median_filter_7x7_calc MEDIAN_7x7_CALC (
    .clk(clk),
    .rst(rst),
    .done_i(done_o_modulate),
    .S1(data0),
    .S2(data1),
    .S3(data2),
    .S4(data3),
    .S5(data4),
    .S6(data5),
    .S7(data6),
    .S8(data7),
    .S9(data8),
    .S10(data9),
    .S11(data10),
    .S12(data11),
    .S13(data12),
    .S14(data13),
    .S15(data14),
    .S16(data15),
    .S17(data16),
    .S18(data17),
    .S19(data18),
    .S20(data19),
    .S21(data20),
    .S22(data21),
    .S23(data22),
    .S24(data23),
    .S25(data24),
    .S26(data25),
    .S27(data26),
    .S28(data27),
    .S29(data28),
    .S30(data29),
    .S31(data30),
    .S32(data31),
    .S33(data32),
    .S34(data33),
    .S35(data34),
    .S36(data35),
    .S37(data36),
    .S38(data37),
    .S39(data38),
    .S40(data39),
    .S41(data40),
    .S42(data41),
    .S43(data42),
    .S44(data43),
    .S45(data44),
    .S46(data45),
    .S47(data46),
    .S48(data47),
    .S49(data48),
    .median_o(median_o),
    .done_o(done_o)
    );
    
    
    
endmodule
