module Median_filter_9x9_calc (input clk,
                               input rst,
                               input done_i,
                               input [7:0] S1,
                               S2,
                               S3,
                               S4,
                               S5,
                               S6,
                               S7,
                               S8,
                               S9,
                               S10,
                               S11,
                               S12,
                               S13,
                               S14,
                               S15,
                               S16,
                               S17,
                               S18,
                               S19,
                               S20,
                               S21,
                               S22,
                               S23,
                               S24,
                               S25,
                               S26,
                               S27,
                               S28,
                               S29,
                               S30,
                               S31,
                               S32,
                               S33,
                               S34,
                               S35,
                               S36,
                               S37,
                               S38,
                               S39,
                               S40,
                               S41,
                               S42,
                               S43,
                               S44,
                               S45,
                               S46,
                               S47,
                               S48,
                               S49,
                               S50,
                               S51,
                               S52,
                               S53,
                               S54,
                               S55,
                               S56,
                               S57,
                               S58,
                               S59,
                               S60,
                               S61,
                               S62,
                               S63,
                               S64,
                               S65,
                               S66,
                               S67,
                               S68,
                               S69,
                               S70,
                               S71,
                               S72,
                               S73,
                               S74,
                               S75,
                               S76,
                               S77,
                               S78,
                               S79,
                               S80,
                               S81,
                               output [7:0] median_o,
                               output done_o);
    
    reg [7:0]
    p1_S1,
    p1_S2,
    p1_S3,
    p1_S4,
    p1_S5,
    p1_S6,
    p1_S7,
    p1_S8,
    p1_S9,
    p1_S10,
    p1_S11,
    p1_S12,
    p1_S13,
    p1_S14,
    p1_S15,
    p1_S16,
    p1_S17,
    p1_S18,
    p1_S19,
    p1_S20,
    p1_S21,
    p1_S22,
    p1_S23,
    p1_S24,
    p1_S25,
    p1_S26,
    p1_S27,
    p1_S28,
    p1_S29,
    p1_S30,
    p1_S31,
    p1_S32,
    p1_S33,
    p1_S34,
    p1_S35,
    p1_S36,
    p1_S37,
    p1_S38,
    p1_S39,
    p1_S40,
    p1_S41,
    p1_S42,
    p1_S43,
    p1_S44,
    p1_S45,
    p1_S46,
    p1_S47,
    p1_S48,
    p1_S49,
    p1_S50,
    p1_S51,
    p1_S52,
    p1_S53,
    p1_S54,
    p1_S55,
    p1_S56,
    p1_S57,
    p1_S58,
    p1_S59,
    p1_S60,
    p1_S61,
    p1_S62,
    p1_S63,
    p1_S64,
    p1_S65,
    p1_S66,
    p1_S67,
    p1_S68,
    p1_S69,
    p1_S70,
    p1_S71,
    p1_S72,
    p1_S73,
    p1_S74,
    p1_S75,
    p1_S76,
    p1_S77,
    p1_S78,
    p1_S79,
    p1_S80,
    p1_S81;
    
    reg p1_done_i;
    
    always @(posedge clk) begin
        if (rst) begin
            p1_S1     <= 0;
            p1_S2     <= 0;
            p1_S3     <= 0;
            p1_S4     <= 0;
            p1_S5     <= 0;
            p1_S6     <= 0;
            p1_S7     <= 0;
            p1_S8     <= 0;
            p1_S9     <= 0;
            p1_S10    <= 0;
            p1_S11    <= 0;
            p1_S12    <= 0;
            p1_S13    <= 0;
            p1_S14    <= 0;
            p1_S15    <= 0;
            p1_S16    <= 0;
            p1_S17    <= 0;
            p1_S18    <= 0;
            p1_S19    <= 0;
            p1_S20    <= 0;
            p1_S21    <= 0;
            p1_S22    <= 0;
            p1_S23    <= 0;
            p1_S24    <= 0;
            p1_S25    <= 0;
            p1_S26    <= 0;
            p1_S27    <= 0;
            p1_S28    <= 0;
            p1_S29    <= 0;
            p1_S30    <= 0;
            p1_S31    <= 0;
            p1_S32    <= 0;
            p1_S33    <= 0;
            p1_S34    <= 0;
            p1_S35    <= 0;
            p1_S36    <= 0;
            p1_S37    <= 0;
            p1_S38    <= 0;
            p1_S39    <= 0;
            p1_S40    <= 0;
            p1_S41    <= 0;
            p1_S42    <= 0;
            p1_S43    <= 0;
            p1_S44    <= 0;
            p1_S45    <= 0;
            p1_S46    <= 0;
            p1_S47    <= 0;
            p1_S48    <= 0;
            p1_S49    <= 0;
            p1_S50    <= 0;
            p1_S51    <= 0;
            p1_S52    <= 0;
            p1_S53    <= 0;
            p1_S54    <= 0;
            p1_S55    <= 0;
            p1_S56    <= 0;
            p1_S57    <= 0;
            p1_S58    <= 0;
            p1_S59    <= 0;
            p1_S60    <= 0;
            p1_S61    <= 0;
            p1_S62    <= 0;
            p1_S63    <= 0;
            p1_S64    <= 0;
            p1_S65    <= 0;
            p1_S66    <= 0;
            p1_S67    <= 0;
            p1_S68    <= 0;
            p1_S69    <= 0;
            p1_S70    <= 0;
            p1_S71    <= 0;
            p1_S72    <= 0;
            p1_S73    <= 0;
            p1_S74    <= 0;
            p1_S75    <= 0;
            p1_S76    <= 0;
            p1_S77    <= 0;
            p1_S78    <= 0;
            p1_S79    <= 0;
            p1_S80    <= 0;
            p1_S81    <= 0;
            p1_done_i <= 0;
            end else begin
            p1_S1  <= S1;
            p1_S2  <= S2;
            p1_S3  <= S3;
            p1_S4  <= S4;
            p1_S5  <= S5;
            p1_S6  <= S6;
            p1_S7  <= S7;
            p1_S8  <= S8;
            p1_S9  <= S9;
            p1_S10 <= S10;
            p1_S11 <= S11;
            p1_S12 <= S12;
            p1_S13 <= S13;
            p1_S14 <= S14;
            p1_S15 <= S15;
            p1_S16 <= S16;
            p1_S17 <= S17;
            p1_S18 <= S18;
            p1_S19 <= S19;
            p1_S20 <= S20;
            p1_S21 <= S21;
            p1_S22 <= S22;
            p1_S23 <= S23;
            p1_S24 <= S24;
            p1_S25 <= S25;
            p1_S26 <= S26;
            p1_S27 <= S27;
            p1_S28 <= S28;
            p1_S29 <= S29;
            p1_S30 <= S30;
            p1_S31 <= S31;
            p1_S32 <= S32;
            p1_S33 <= S33;
            p1_S34 <= S34;
            p1_S35 <= S35;
            p1_S36 <= S36;
            p1_S37 <= S37;
            p1_S38 <= S38;
            p1_S39 <= S39;
            p1_S40 <= S40;
            p1_S41 <= S41;
            p1_S42 <= S42;
            p1_S43 <= S43;
            p1_S44 <= S44;
            p1_S45 <= S45;
            p1_S46 <= S46;
            p1_S47 <= S47;
            p1_S48 <= S48;
            p1_S49 <= S49;
            p1_S50 <= S50;
            p1_S51 <= S51;
            p1_S52 <= S52;
            p1_S53 <= S53;
            p1_S54 <= S54;
            p1_S55 <= S55;
            p1_S56 <= S56;
            p1_S57 <= S57;
            p1_S58 <= S58;
            p1_S59 <= S59;
            p1_S60 <= S60;
            p1_S61 <= S61;
            p1_S62 <= S62;
            p1_S63 <= S63;
            p1_S64 <= S64;
            p1_S65 <= S65;
            p1_S66 <= S66;
            p1_S67 <= S67;
            p1_S68 <= S68;
            p1_S69 <= S69;
            p1_S70 <= S70;
            p1_S71 <= S71;
            p1_S72 <= S72;
            p1_S73 <= S73;
            p1_S74 <= S74;
            p1_S75 <= S75;
            p1_S76 <= S76;
            p1_S77 <= S77;
            p1_S78 <= S78;
            p1_S79 <= S79;
            p1_S80 <= S80;
            p1_S81 <= S81;
            
            p1_done_i <= done_i;
        end
    end
    
    // stage 1 - sort row
    wire [7:0] sa1_max, sa1_out8, sa1_out7, sa1_out6, sa1_mid, sa1_out4, sa1_out3, sa1_out2, sa1_min;
    wire [7:0] sa2_max, sa2_out8, sa2_out7, sa2_out6, sa2_mid, sa2_out4, sa2_out3, sa2_out2, sa2_min;
    wire [7:0] sa3_max, sa3_out8, sa3_out7, sa3_out6, sa3_mid, sa3_out4, sa3_out3, sa3_out2, sa3_min;
    wire [7:0] sa4_max, sa4_out8, sa4_out7, sa4_out6, sa4_mid, sa4_out4, sa4_out3, sa4_out2, sa4_min;
    wire [7:0] sa5_max, sa5_out8, sa5_out7, sa5_out6, sa5_mid, sa5_out4, sa5_out3, sa5_out2, sa5_min;
    wire [7:0] sa6_max, sa6_out8, sa6_out7, sa6_out6, sa6_mid, sa6_out4, sa6_out3, sa6_out2, sa6_min;
    wire [7:0] sa7_max, sa7_out8, sa7_out7, sa7_out6, sa7_mid, sa7_out4, sa7_out3, sa7_out2, sa7_min;
    wire [7:0] sa8_max, sa8_out8, sa8_out7, sa8_out6, sa8_mid, sa8_out4, sa8_out3, sa8_out2, sa8_min;
    wire [7:0] sa9_max, sa9_out8, sa9_out7, sa9_out6, sa9_mid, sa9_out4, sa9_out3, sa9_out2, sa9_min;
    
    
    
    wire p2_done_o;
    
    SortAscending9 SA1 (
    .clk(clk),
    .rst(rst),
    .done_i(p1_done_i),
    .done_o(p2_done_o),
    .S1(p1_S1),
    .S2(p1_S2),
    .S3(p1_S3),
    .S4(p1_S4),
    .S5(p1_S5),
    .S6(p1_S6),
    .S7(p1_S7),
    .S8(p1_S8),
    .S9(p1_S9),
    .min(sa1_min),
    .out2(sa1_out2),
    .out3(sa1_out3),
    .out4(sa1_out4),
    .mid(sa1_mid),
    .out6(sa1_out6),
    .out7(sa1_out7),
    .out8(sa1_out8),
    .max(sa1_max)
    );
    
    SortAscending9 SA2 (
    .clk(clk),
    .rst(rst),
    .done_i(),
    .done_o(),
    .S1(p1_S10),
    .S2(p1_S11),
    .S3(p1_S12),
    .S4(p1_S13),
    .S5(p1_S14),
    .S6(p1_S15),
    .S7(p1_S16),
    .S8(p1_S17),
    .S9(p1_S18),
    .min(sa2_min),
    .out2(sa2_out2),
    .out3(sa2_out3),
    .out4(sa2_out4),
    .mid(sa2_mid),
    .out6(sa2_out6),
    .out7(sa2_out7),
    .out8(sa2_out8),
    .max(sa2_max)
    );
    
    SortAscending9 SA3 (
    .clk(clk),
    .rst(rst),
    .done_i(),
    .done_o(),
    .S1(p1_S19),
    .S2(p1_S20),
    .S3(p1_S21),
    .S4(p1_S22),
    .S5(p1_S23),
    .S6(p1_S24),
    .S7(p1_S25),
    .S8(p1_S26),
    .S9(p1_S27),
    .min(sa3_min),
    .out2(sa3_out2),
    .out3(sa3_out3),
    .out4(sa3_out4),
    .mid(sa3_mid),
    .out6(sa3_out6),
    .out7(sa3_out7),
    .out8(sa3_out8),
    .max(sa3_max)
    );
    
    
    SortAscending9 SA4 (
    .clk(clk),
    .rst(rst),
    .done_i(),
    .done_o(),
    .S1(p1_S28),
    .S2(p1_S29),
    .S3(p1_S30),
    .S4(p1_S31),
    .S5(p1_S32),
    .S6(p1_S33),
    .S7(p1_S34),
    .S8(p1_S35),
    .S9(p1_S36),
    .min(sa4_min),
    .out2(sa4_out2),
    .out3(sa4_out3),
    .out4(sa4_out4),
    .mid(sa4_mid),
    .out6(sa4_out6),
    .out7(sa4_out7),
    .out8(sa4_out8),
    .max(sa4_max)
    );
    
    SortAscending9 SA5 (
    .clk(clk),
    .rst(rst),
    .done_i(),
    .done_o(),
    .S1(p1_S37),
    .S2(p1_S38),
    .S3(p1_S39),
    .S4(p1_S40),
    .S5(p1_S41),
    .S6(p1_S42),
    .S7(p1_S43),
    .S8(p1_S44),
    .S9(p1_S45),
    .min(sa5_min),
    .out2(sa5_out2),
    .out3(sa5_out3),
    .out4(sa5_out4),
    .mid(sa5_mid),
    .out6(sa5_out6),
    .out7(sa5_out7),
    .out8(sa5_out8),
    .max(sa5_max)
    );
    
    SortAscending9 SA6 (
    .clk(clk),
    .rst(rst),
    .done_i(),
    .done_o(),
    .S1(p1_S46),
    .S2(p1_S47),
    .S3(p1_S48),
    .S4(p1_S49),
    .S5(p1_S50),
    .S6(p1_S51),
    .S7(p1_S52),
    .S8(p1_S53),
    .S9(p1_S54),
    .min(sa6_min),
    .out2(sa6_out2),
    .out3(sa6_out3),
    .out4(sa6_out4),
    .mid(sa6_mid),
    .out6(sa6_out6),
    .out7(sa6_out7),
    .out8(sa6_out8),
    .max(sa6_max)
    );
    
    SortAscending9 SA7 (
    .clk(clk),
    .rst(rst),
    .done_i(),
    .done_o(),
    .S1(p1_S55),
    .S2(p1_S56),
    .S3(p1_S57),
    .S4(p1_S58),
    .S5(p1_S59),
    .S6(p1_S60),
    .S7(p1_S61),
    .S8(p1_S62),
    .S9(p1_S63),
    .min(sa7_min),
    .out2(sa7_out2),
    .out3(sa7_out3),
    .out4(sa7_out4),
    .mid(sa7_mid),
    .out6(sa7_out6),
    .out7(sa7_out7),
    .out8(sa7_out8),
    .max(sa7_max)
    );
    
    SortAscending9 SA8 (
    .clk(clk),
    .rst(rst),
    .done_i(),
    .done_o(),
    .S1(p1_S64),
    .S2(p1_S65),
    .S3(p1_S66),
    .S4(p1_S67),
    .S5(p1_S68),
    .S6(p1_S69),
    .S7(p1_S70),
    .S8(p1_S71),
    .S9(p1_S72),
    .min(sa8_min),
    .out2(sa8_out2),
    .out3(sa8_out3),
    .out4(sa8_out4),
    .mid(sa8_mid),
    .out6(sa8_out6),
    .out7(sa8_out7),
    .out8(sa8_out8),
    .max(sa8_max)
    );
    SortAscending9 SA9 (
    .clk(clk),
    .rst(rst),
    .done_i(),
    .done_o(),
    .S1(p1_S73),
    .S2(p1_S74),
    .S3(p1_S75),
    .S4(p1_S76),
    .S5(p1_S77),
    .S6(p1_S78),
    .S7(p1_S79),
    .S8(p1_S80),
    .S9(p1_S81),
    .min(sa9_min),
    .out2(sa9_out2),
    .out3(sa9_out3),
    .out4(sa9_out4),
    .mid(sa9_mid),
    .out6(sa9_out6),
    .out7(sa9_out7),
    .out8(sa9_out8),
    .max(sa9_max)
    );
    
    
    reg p2_done_o_delay;
    
    reg [7:0] p2_sa10_S1, p2_sa10_S2, p2_sa10_S3, p2_sa10_S4, p2_sa10_S5, p2_sa10_S6, p2_sa10_S7, p2_sa10_S8, p2_sa10_S9;
    reg [7:0] p2_sa11_S1, p2_sa11_S2, p2_sa11_S3, p2_sa11_S4, p2_sa11_S5, p2_sa11_S6, p2_sa11_S7, p2_sa11_S8, p2_sa11_S9;
    reg [7:0] p2_sa12_S1, p2_sa12_S2, p2_sa12_S3, p2_sa12_S4, p2_sa12_S5, p2_sa12_S6, p2_sa12_S7, p2_sa12_S8, p2_sa12_S9;
    reg [7:0] p2_sa13_S1, p2_sa13_S2, p2_sa13_S3, p2_sa13_S4, p2_sa13_S5, p2_sa13_S6, p2_sa13_S7, p2_sa13_S8, p2_sa13_S9;
    reg [7:0] p2_sa14_S1, p2_sa14_S2, p2_sa14_S3, p2_sa14_S4, p2_sa14_S5, p2_sa14_S6, p2_sa14_S7, p2_sa14_S8, p2_sa14_S9;
    reg [7:0] p2_sa15_S1, p2_sa15_S2, p2_sa15_S3, p2_sa15_S4, p2_sa15_S5, p2_sa15_S6, p2_sa15_S7, p2_sa15_S8, p2_sa15_S9;
    reg [7:0] p2_sa16_S1, p2_sa16_S2, p2_sa16_S3, p2_sa16_S4, p2_sa16_S5, p2_sa16_S6, p2_sa16_S7, p2_sa16_S8, p2_sa16_S9;
    reg [7:0] p2_sa17_S1, p2_sa17_S2, p2_sa17_S3, p2_sa17_S4, p2_sa17_S5, p2_sa17_S6, p2_sa17_S7, p2_sa17_S8, p2_sa17_S9;
    reg [7:0] p2_sa18_S1, p2_sa18_S2, p2_sa18_S3, p2_sa18_S4, p2_sa18_S5, p2_sa18_S6, p2_sa18_S7, p2_sa18_S8, p2_sa18_S9;
    
    
    always @(posedge clk) begin
        if (rst) begin
            p2_sa10_S1 <= 8'd0;
            p2_sa10_S2 <= 8'd0;
            p2_sa10_S3 <= 8'd0;
            p2_sa10_S4 <= 8'd0;
            p2_sa10_S5 <= 8'd0;
            p2_sa10_S6 <= 8'd0;
            p2_sa10_S7 <= 8'd0;
            p2_sa10_S8 <= 8'd0;
            p2_sa10_S9 <= 8'd0;
            
            p2_sa11_S1 <= 8'd0;
            p2_sa11_S2 <= 8'd0;
            p2_sa11_S3 <= 8'd0;
            p2_sa11_S4 <= 8'd0;
            p2_sa11_S5 <= 8'd0;
            p2_sa11_S6 <= 8'd0;
            p2_sa11_S7 <= 8'd0;
            p2_sa11_S8 <= 8'd0;
            p2_sa11_S9 <= 8'd0;
            
            p2_sa12_S1 <= 8'd0;
            p2_sa12_S2 <= 8'd0;
            p2_sa12_S3 <= 8'd0;
            p2_sa12_S4 <= 8'd0;
            p2_sa12_S5 <= 8'd0;
            p2_sa12_S6 <= 8'd0;
            p2_sa12_S7 <= 8'd0;
            p2_sa12_S8 <= 8'd0;
            p2_sa12_S9 <= 8'd0;
            
            
            p2_sa13_S1 <= 8'd0;
            p2_sa13_S2 <= 8'd0;
            p2_sa13_S3 <= 8'd0;
            p2_sa13_S4 <= 8'd0;
            p2_sa13_S5 <= 8'd0;
            p2_sa13_S6 <= 8'd0;
            p2_sa13_S7 <= 8'd0;
            p2_sa13_S8 <= 8'd0;
            p2_sa13_S9 <= 8'd0;
            
            
            p2_sa14_S1 <= 8'd0;
            p2_sa14_S2 <= 8'd0;
            p2_sa14_S3 <= 8'd0;
            p2_sa14_S4 <= 8'd0;
            p2_sa14_S5 <= 8'd0;
            p2_sa14_S6 <= 8'd0;
            p2_sa14_S7 <= 8'd0;
            p2_sa14_S8 <= 8'd0;
            p2_sa14_S9 <= 8'd0;
            
            
            
            p2_sa15_S1 <= 8'd0;
            p2_sa15_S2 <= 8'd0;
            p2_sa15_S3 <= 8'd0;
            p2_sa15_S4 <= 8'd0;
            p2_sa15_S5 <= 8'd0;
            p2_sa15_S6 <= 8'd0;
            p2_sa15_S7 <= 8'd0;
            p2_sa15_S8 <= 8'd0;
            p2_sa15_S9 <= 8'd0;
            
            
            p2_sa16_S1 <= 8'd0;
            p2_sa16_S2 <= 8'd0;
            p2_sa16_S3 <= 8'd0;
            p2_sa16_S4 <= 8'd0;
            p2_sa16_S5 <= 8'd0;
            p2_sa16_S6 <= 8'd0;
            p2_sa16_S7 <= 8'd0;
            p2_sa16_S8 <= 8'd0;
            p2_sa16_S9 <= 8'd0;
            
            
            p2_sa17_S1 <= 8'd0;
            p2_sa17_S2 <= 8'd0;
            p2_sa17_S3 <= 8'd0;
            p2_sa17_S4 <= 8'd0;
            p2_sa17_S5 <= 8'd0;
            p2_sa17_S6 <= 8'd0;
            p2_sa17_S7 <= 8'd0;
            p2_sa17_S8 <= 8'd0;
            p2_sa17_S9 <= 8'd0;
            
            
            p2_sa18_S1 <= 8'd0;
            p2_sa18_S2 <= 8'd0;
            p2_sa18_S3 <= 8'd0;
            p2_sa18_S4 <= 8'd0;
            p2_sa18_S5 <= 8'd0;
            p2_sa18_S6 <= 8'd0;
            p2_sa18_S7 <= 8'd0;
            p2_sa18_S8 <= 8'd0;
            p2_sa18_S9 <= 8'd0;
            
            
            p2_done_o_delay <= 0;
            
            
            end else begin
            
            
            
            p2_sa10_S1 <= sa1_min;
            p2_sa10_S2 <= sa2_min;
            p2_sa10_S3 <= sa3_min;
            p2_sa10_S4 <= sa4_min;
            p2_sa10_S5 <= sa5_min;
            p2_sa10_S6 <= sa6_min;
            p2_sa10_S7 <= sa7_min;
            p2_sa10_S8 <= sa8_min;
            p2_sa10_S9 <= sa9_min;
            
            p2_sa11_S1 <= sa1_out2;
            p2_sa11_S2 <= sa2_out2;
            p2_sa11_S3 <= sa3_out2;
            p2_sa11_S4 <= sa4_out2;
            p2_sa11_S5 <= sa5_out2;
            p2_sa11_S6 <= sa6_out2;
            p2_sa11_S7 <= sa7_out2;
            p2_sa11_S8 <= sa8_out2;
            p2_sa11_S9 <= sa9_out2;
            
            p2_sa12_S1 <= sa1_out3;
            p2_sa12_S2 <= sa2_out3;
            p2_sa12_S3 <= sa3_out3;
            p2_sa12_S4 <= sa4_out3;
            p2_sa12_S5 <= sa5_out3;
            p2_sa12_S6 <= sa6_out3;
            p2_sa12_S7 <= sa7_out3;
            p2_sa12_S8 <= sa8_out3;
            p2_sa12_S9 <= sa9_out3;
            
            
            p2_sa13_S1 <= sa1_out4;
            p2_sa13_S2 <= sa2_out4;
            p2_sa13_S3 <= sa3_out4;
            p2_sa13_S4 <= sa4_out4;
            p2_sa13_S5 <= sa5_out4;
            p2_sa13_S6 <= sa6_out4;
            p2_sa13_S7 <= sa7_out4;
            p2_sa13_S8 <= sa8_out4;
            p2_sa13_S9 <= sa9_out4;
            
            
            p2_sa14_S1 <= sa1_mid;
            p2_sa14_S2 <= sa2_mid;
            p2_sa14_S3 <= sa3_mid;
            p2_sa14_S4 <= sa4_mid;
            p2_sa14_S5 <= sa5_mid;
            p2_sa14_S6 <= sa6_mid;
            p2_sa14_S7 <= sa7_mid;
            p2_sa14_S8 <= sa8_mid;
            p2_sa14_S9 <= sa9_mid;
            
            
            
            p2_sa15_S1 <= sa1_out6;
            p2_sa15_S2 <= sa2_out6;
            p2_sa15_S3 <= sa3_out6;
            p2_sa15_S4 <= sa4_out6;
            p2_sa15_S5 <= sa5_out6;
            p2_sa15_S6 <= sa6_out6;
            p2_sa15_S7 <= sa7_out6;
            p2_sa15_S8 <= sa8_out6;
            p2_sa15_S9 <= sa9_out6;
            
            
            p2_sa16_S1 <= sa1_out7;
            p2_sa16_S2 <= sa2_out7;
            p2_sa16_S3 <= sa3_out7;
            p2_sa16_S4 <= sa4_out7;
            p2_sa16_S5 <= sa5_out7;
            p2_sa16_S6 <= sa6_out7;
            p2_sa16_S7 <= sa7_out7;
            p2_sa16_S8 <= sa8_out7;
            p2_sa16_S9 <= sa9_out7;
            
            
            p2_sa17_S1 <= sa1_out8;
            p2_sa17_S2 <= sa2_out8;
            p2_sa17_S3 <= sa3_out8;
            p2_sa17_S4 <= sa4_out8;
            p2_sa17_S5 <= sa5_out8;
            p2_sa17_S6 <= sa6_out8;
            p2_sa17_S7 <= sa7_out8;
            p2_sa17_S8 <= sa8_out8;
            p2_sa17_S9 <= sa9_out8;
            
            
            p2_sa18_S1 <= sa1_max;
            p2_sa18_S2 <= sa2_max;
            p2_sa18_S3 <= sa3_max;
            p2_sa18_S4 <= sa4_max;
            p2_sa18_S5 <= sa5_max;
            p2_sa18_S6 <= sa6_max;
            p2_sa18_S7 <= sa7_max;
            p2_sa18_S8 <= sa8_max;
            p2_sa18_S9 <= sa9_max;
            
            
            
            p2_done_o_delay <= p2_done_o;
        end
    end
    
    
    
    
    // stage 2 - sort cols
    wire [7:0] sa10_max, sa10_out8, sa10_out7, sa10_out6, sa10_mid, sa10_out4, sa10_out3, sa10_out2, sa10_min;
    wire [7:0] sa11_max, sa11_out8, sa11_out7, sa11_out6, sa11_mid, sa11_out4, sa11_out3, sa11_out2, sa11_min;
    wire [7:0] sa12_max, sa12_out8, sa12_out7, sa12_out6, sa12_mid, sa12_out4, sa12_out3, sa12_out2, sa12_min;
    wire [7:0] sa13_max, sa13_out8, sa13_out7, sa13_out6, sa13_mid, sa13_out4, sa13_out3, sa13_out2, sa13_min;
    wire [7:0] sa14_max, sa14_out8, sa14_out7, sa14_out6, sa14_mid, sa14_out4, sa14_out3, sa14_out2, sa14_min;
    wire [7:0] sa15_max, sa15_out8, sa15_out7, sa15_out6, sa15_mid, sa15_out4, sa15_out3, sa15_out2, sa15_min;
    wire [7:0] sa16_max, sa16_out8, sa16_out7, sa16_out6, sa16_mid, sa16_out4, sa16_out3, sa16_out2, sa16_min;
    wire [7:0] sa17_max, sa17_out8, sa17_out7, sa17_out6, sa17_mid, sa17_out4, sa17_out3, sa17_out2, sa17_min;
    wire [7:0] sa18_max, sa18_out8, sa18_out7, sa18_out6, sa18_mid, sa18_out4, sa18_out3, sa18_out2, sa18_min;
    
    wire p3_done_o;
    
    SortAscending9 SA10 (
    .clk(clk),
    .rst(rst),
    .done_i(p2_done_o_delay),
    .done_o(p3_done_o),
    .S1(p2_sa10_S1),
    .S2(p2_sa10_S2),
    .S3(p2_sa10_S3),
    .S4(p2_sa10_S4),
    .S5(p2_sa10_S5),
    .S6(p2_sa10_S6),
    .S7(p2_sa10_S7),
    .S8(p2_sa10_S8),
    .S9(p2_sa10_S9),
    .min(sa10_min),
    .out2(sa10_out2),
    .out3(sa10_out3),
    .out4(sa10_out4),
    .mid(sa10_mid),
    .out6(sa10_out6),
    .out7(sa10_out7),
    .out8(sa10_out8),
    .max(sa10_max)
    );
    
    SortAscending9 SA11 (
    .clk(clk),
    .rst(rst),
    .done_i(),
    .done_o(),
    .S1(p2_sa11_S1),
    .S2(p2_sa11_S2),
    .S3(p2_sa11_S3),
    .S4(p2_sa11_S4),
    .S5(p2_sa11_S5),
    .S6(p2_sa11_S6),
    .S7(p2_sa11_S7),
    .S8(p2_sa11_S8),
    .S9(p2_sa11_S9),
    .min(sa11_min),
    .out2(sa11_out2),
    .out3(sa11_out3),
    .out4(sa11_out4),
    .mid(sa11_mid),
    .out6(sa11_out6),
    .out7(sa11_out7),
    .out8(sa11_out8),
    .max(sa11_max)
    );
    
    SortAscending9 SA12 (
    .clk(clk),
    .rst(rst),
    .done_i(),
    .done_o(),
    .S1(p2_sa12_S1),
    .S2(p2_sa12_S2),
    .S3(p2_sa12_S3),
    .S4(p2_sa12_S4),
    .S5(p2_sa12_S5),
    .S6(p2_sa12_S6),
    .S7(p2_sa12_S7),
    .S8(p2_sa12_S8),
    .S9(p2_sa12_S9),
    .min(sa12_min),
    .out2(sa12_out2),
    .out3(sa12_out3),
    .out4(sa12_out4),
    .mid(sa12_mid),
    .out6(sa12_out6),
    .out7(sa12_out7),
    .out8(sa12_out8),
    .max(sa12_max)
    );
    
    
    SortAscending9 SA13 (
    .clk(clk),
    .rst(rst),
    .done_i(),
    .done_o(),
    .S1(p2_sa13_S1),
    .S2(p2_sa13_S2),
    .S3(p2_sa13_S3),
    .S4(p2_sa13_S4),
    .S5(p2_sa13_S5),
    .S6(p2_sa13_S6),
    .S7(p2_sa13_S7),
    .S8(p2_sa13_S8),
    .S9(p2_sa13_S9),
    .min(sa13_min),
    .out2(sa13_out2),
    .out3(sa13_out3),
    .out4(sa13_out4),
    .mid(sa13_mid),
    .out6(sa13_out6),
    .out7(sa13_out7),
    .out8(sa13_out8),
    .max(sa13_max)
    );
    
    SortAscending9 SA14 (
    .clk(clk),
    .rst(rst),
    .done_i(),
    .done_o(),
    .S1(p2_sa14_S1),
    .S2(p2_sa14_S2),
    .S3(p2_sa14_S3),
    .S4(p2_sa14_S4),
    .S5(p2_sa14_S5),
    .S6(p2_sa14_S6),
    .S7(p2_sa14_S7),
    .S8(p2_sa14_S8),
    .S9(p2_sa14_S9),
    .min(sa14_min),
    .out2(sa14_out2),
    .out3(sa14_out3),
    .out4(sa14_out4),
    .mid(sa14_mid),
    .out6(sa14_out6),
    .out7(sa14_out7),
    .out8(sa14_out8),
    .max(sa14_max)
    );
    
    SortAscending9 SA15 (
    .clk(clk),
    .rst(rst),
    .done_i(),
    .done_o(),
    .S1(p2_sa15_S1),
    .S2(p2_sa15_S2),
    .S3(p2_sa15_S3),
    .S4(p2_sa15_S4),
    .S5(p2_sa15_S5),
    .S6(p2_sa15_S6),
    .S7(p2_sa15_S7),
    .S8(p2_sa15_S8),
    .S9(p2_sa15_S9),
    .min(sa15_min),
    .out2(sa15_out2),
    .out3(sa15_out3),
    .out4(sa15_out4),
    .mid(sa15_mid),
    .out6(sa15_out6),
    .out7(sa15_out7),
    .out8(sa15_out8),
    .max(sa15_max)
    );
    
    SortAscending9 SA16 (
    .clk(clk),
    .rst(rst),
    .done_i(),
    .done_o(),
    .S1(p2_sa16_S1),
    .S2(p2_sa16_S2),
    .S3(p2_sa16_S3),
    .S4(p2_sa16_S4),
    .S5(p2_sa16_S5),
    .S6(p2_sa16_S6),
    .S7(p2_sa16_S7),
    .S8(p2_sa16_S8),
    .S9(p2_sa16_S9),
    .min(sa16_min),
    .out2(sa16_out2),
    .out3(sa16_out3),
    .out4(sa16_out4),
    .mid(sa16_mid),
    .out6(sa16_out6),
    .out7(sa16_out7),
    .out8(sa16_out8),
    .max(sa16_max)
    );
    
    SortAscending9 SA17 (
    .clk(clk),
    .rst(rst),
    .done_i(),
    .done_o(),
    .S1(p2_sa17_S1),
    .S2(p2_sa17_S2),
    .S3(p2_sa17_S3),
    .S4(p2_sa17_S4),
    .S5(p2_sa17_S5),
    .S6(p2_sa17_S6),
    .S7(p2_sa17_S7),
    .S8(p2_sa17_S8),
    .S9(p2_sa17_S9),
    .min(sa17_min),
    .out2(sa17_out2),
    .out3(sa17_out3),
    .out4(sa17_out4),
    .mid(sa17_mid),
    .out6(sa17_out6),
    .out7(sa17_out7),
    .out8(sa17_out8),
    .max(sa17_max)
    );
    SortAscending9 SA18 (
    .clk(clk),
    .rst(rst),
    .done_i(),
    .done_o(),
    .S1(p2_sa18_S1),
    .S2(p2_sa18_S2),
    .S3(p2_sa18_S3),
    .S4(p2_sa18_S4),
    .S5(p2_sa18_S5),
    .S6(p2_sa18_S6),
    .S7(p2_sa18_S7),
    .S8(p2_sa18_S8),
    .S9(p2_sa18_S9),
    .min(sa18_min),
    .out2(sa18_out2),
    .out3(sa18_out3),
    .out4(sa18_out4),
    .mid(sa18_mid),
    .out6(sa18_out6),
    .out7(sa18_out7),
    .out8(sa18_out8),
    .max(sa18_max)
    );
    
    
    reg p3_done_o_delay;
    
    reg [7:0] p3_sa10_S1, p3_sa10_S2, p3_sa10_S3, p3_sa10_S4, p3_sa10_S5, p3_sa10_S6, p3_sa10_S7, p3_sa10_S8, p3_sa10_S9;
    reg [7:0] p3_sa11_S1, p3_sa11_S2, p3_sa11_S3, p3_sa11_S4, p3_sa11_S5, p3_sa11_S6, p3_sa11_S7, p3_sa11_S8, p3_sa11_S9;
    reg [7:0] p3_sa12_S1, p3_sa12_S2, p3_sa12_S3, p3_sa12_S4, p3_sa12_S5, p3_sa12_S6, p3_sa12_S7, p3_sa12_S8, p3_sa12_S9;
    reg [7:0] p3_sa13_S1, p3_sa13_S2, p3_sa13_S3, p3_sa13_S4, p3_sa13_S5, p3_sa13_S6, p3_sa13_S7, p3_sa13_S8, p3_sa13_S9;
    reg [7:0] p3_sa14_S1, p3_sa14_S2, p3_sa14_S3, p3_sa14_S4, p3_sa14_S5, p3_sa14_S6, p3_sa14_S7, p3_sa14_S8, p3_sa14_S9;
    reg [7:0] p3_sa15_S1, p3_sa15_S2, p3_sa15_S3, p3_sa15_S4, p3_sa15_S5, p3_sa15_S6, p3_sa15_S7, p3_sa15_S8, p3_sa15_S9;
    reg [7:0] p3_sa16_S1, p3_sa16_S2, p3_sa16_S3, p3_sa16_S4, p3_sa16_S5, p3_sa16_S6, p3_sa16_S7, p3_sa16_S8, p3_sa16_S9;
    reg [7:0] p3_sa17_S1, p3_sa17_S2, p3_sa17_S3, p3_sa17_S4, p3_sa17_S5, p3_sa17_S6, p3_sa17_S7, p3_sa17_S8, p3_sa17_S9;
    reg [7:0] p3_sa18_S1, p3_sa18_S2, p3_sa18_S3, p3_sa18_S4, p3_sa18_S5, p3_sa18_S6, p3_sa18_S7, p3_sa18_S8, p3_sa18_S9;
    
    
    always @(posedge clk) begin
        if (rst) begin
            p3_sa10_S1 <= 8'd0;
            p3_sa10_S2 <= 8'd0;
            p3_sa10_S3 <= 8'd0;
            p3_sa10_S4 <= 8'd0;
            p3_sa10_S5 <= 8'd0;
            p3_sa10_S6 <= 8'd0;
            p3_sa10_S7 <= 8'd0;
            p3_sa10_S8 <= 8'd0;
            p3_sa10_S9 <= 8'd0;
            
            p3_sa11_S1 <= 8'd0;
            p3_sa11_S2 <= 8'd0;
            p3_sa11_S3 <= 8'd0;
            p3_sa11_S4 <= 8'd0;
            p3_sa11_S5 <= 8'd0;
            p3_sa11_S6 <= 8'd0;
            p3_sa11_S7 <= 8'd0;
            p3_sa11_S8 <= 8'd0;
            p3_sa11_S9 <= 8'd0;
            
            p3_sa12_S1 <= 8'd0;
            p3_sa12_S2 <= 8'd0;
            p3_sa12_S3 <= 8'd0;
            p3_sa12_S4 <= 8'd0;
            p3_sa12_S5 <= 8'd0;
            p3_sa12_S6 <= 8'd0;
            p3_sa12_S7 <= 8'd0;
            p3_sa12_S8 <= 8'd0;
            p3_sa12_S9 <= 8'd0;
            
            
            p3_sa13_S1 <= 8'd0;
            p3_sa13_S2 <= 8'd0;
            p3_sa13_S3 <= 8'd0;
            p3_sa13_S4 <= 8'd0;
            p3_sa13_S5 <= 8'd0;
            p3_sa13_S6 <= 8'd0;
            p3_sa13_S7 <= 8'd0;
            p3_sa13_S8 <= 8'd0;
            p3_sa13_S9 <= 8'd0;
            
            
            p3_sa14_S1 <= 8'd0;
            p3_sa14_S2 <= 8'd0;
            p3_sa14_S3 <= 8'd0;
            p3_sa14_S4 <= 8'd0;
            p3_sa14_S5 <= 8'd0;
            p3_sa14_S6 <= 8'd0;
            p3_sa14_S7 <= 8'd0;
            p3_sa14_S8 <= 8'd0;
            p3_sa14_S9 <= 8'd0;
            
            
            
            p3_sa15_S1 <= 8'd0;
            p3_sa15_S2 <= 8'd0;
            p3_sa15_S3 <= 8'd0;
            p3_sa15_S4 <= 8'd0;
            p3_sa15_S5 <= 8'd0;
            p3_sa15_S6 <= 8'd0;
            p3_sa15_S7 <= 8'd0;
            p3_sa15_S8 <= 8'd0;
            p3_sa15_S9 <= 8'd0;
            
            
            p3_sa16_S1 <= 8'd0;
            p3_sa16_S2 <= 8'd0;
            p3_sa16_S3 <= 8'd0;
            p3_sa16_S4 <= 8'd0;
            p3_sa16_S5 <= 8'd0;
            p3_sa16_S6 <= 8'd0;
            p3_sa16_S7 <= 8'd0;
            p3_sa16_S8 <= 8'd0;
            p3_sa16_S9 <= 8'd0;
            
            
            p3_sa17_S1 <= 8'd0;
            p3_sa17_S2 <= 8'd0;
            p3_sa17_S3 <= 8'd0;
            p3_sa17_S4 <= 8'd0;
            p3_sa17_S5 <= 8'd0;
            p3_sa17_S6 <= 8'd0;
            p3_sa17_S7 <= 8'd0;
            p3_sa17_S8 <= 8'd0;
            p3_sa17_S9 <= 8'd0;
            
            
            p3_sa18_S1 <= 8'd0;
            p3_sa18_S2 <= 8'd0;
            p3_sa18_S3 <= 8'd0;
            p3_sa18_S4 <= 8'd0;
            p3_sa18_S5 <= 8'd0;
            p3_sa18_S6 <= 8'd0;
            p3_sa18_S7 <= 8'd0;
            p3_sa18_S8 <= 8'd0;
            p3_sa18_S9 <= 8'd0;
            
            
            p3_done_o_delay <= 0;
            
            
            end else begin
            
            
            
            p3_sa10_S1 <= sa10_min;
            p3_sa10_S2 <= sa10_out2;
            p3_sa10_S3 <= sa10_out3;
            p3_sa10_S4 <= sa10_out4;
            p3_sa10_S5 <= sa10_mid;
            p3_sa10_S6 <= sa10_out6;
            p3_sa10_S7 <= sa10_out7;
            p3_sa10_S8 <= sa10_out8;
            p3_sa10_S9 <= sa10_max;
            
            p3_sa11_S1 <= sa11_min;
            p3_sa11_S2 <= sa11_out2;
            p3_sa11_S3 <= sa11_out3;
            p3_sa11_S4 <= sa11_out4;
            p3_sa11_S5 <= sa11_mid;
            p3_sa11_S6 <= sa11_out6;
            p3_sa11_S7 <= sa11_out7;
            p3_sa11_S8 <= sa11_out8;
            p3_sa11_S9 <= sa11_max;
            
            p3_sa12_S1 <= sa12_min;
            p3_sa12_S2 <= sa12_out2;
            p3_sa12_S3 <= sa12_out3;
            p3_sa12_S4 <= sa12_out4;
            p3_sa12_S5 <= sa12_mid;
            p3_sa12_S6 <= sa12_out6;
            p3_sa12_S7 <= sa12_out7;
            p3_sa12_S8 <= sa12_out8;
            p3_sa12_S9 <= sa12_max;
            
            
            p3_sa13_S1 <= sa13_min;
            p3_sa13_S2 <= sa13_out2;
            p3_sa13_S3 <= sa13_out3;
            p3_sa13_S4 <= sa13_out4;
            p3_sa13_S5 <= sa13_mid;
            p3_sa13_S6 <= sa13_out6;
            p3_sa13_S7 <= sa13_out7;
            p3_sa13_S8 <= sa13_out8;
            p3_sa13_S9 <= sa13_max;
            
            
            p3_sa14_S1 <= sa14_min;
            p3_sa14_S2 <= sa14_out2;
            p3_sa14_S3 <= sa14_out3;
            p3_sa14_S4 <= sa14_out4;
            p3_sa14_S5 <= sa14_mid;
            p3_sa14_S6 <= sa14_out6;
            p3_sa14_S7 <= sa14_out7;
            p3_sa14_S8 <= sa14_out8;
            p3_sa14_S9 <= sa14_max;
            
            
            
            p3_sa15_S1 <= sa15_min;
            p3_sa15_S2 <= sa15_out2;
            p3_sa15_S3 <= sa15_out3;
            p3_sa15_S4 <= sa15_out4;
            p3_sa15_S5 <= sa15_mid;
            p3_sa15_S6 <= sa15_out6;
            p3_sa15_S7 <= sa15_out7;
            p3_sa15_S8 <= sa15_out8;
            p3_sa15_S9 <= sa15_max;
            
            
            p3_sa16_S1 <= sa16_min;
            p3_sa16_S2 <= sa16_out2;
            p3_sa16_S3 <= sa16_out3;
            p3_sa16_S4 <= sa16_out4;
            p3_sa16_S5 <= sa16_mid;
            p3_sa16_S6 <= sa16_out6;
            p3_sa16_S7 <= sa16_out7;
            p3_sa16_S8 <= sa16_out8;
            p3_sa16_S9 <= sa16_max;
            
            
            p3_sa17_S1 <= sa17_min;
            p3_sa17_S2 <= sa17_out2;
            p3_sa17_S3 <= sa17_out3;
            p3_sa17_S4 <= sa17_out4;
            p3_sa17_S5 <= sa17_mid;
            p3_sa17_S6 <= sa17_out6;
            p3_sa17_S7 <= sa17_out7;
            p3_sa17_S8 <= sa17_out8;
            p3_sa17_S9 <= sa17_max;
            
            
            p3_sa18_S1 <= sa18_min;
            p3_sa18_S2 <= sa18_out2;
            p3_sa18_S3 <= sa18_out3;
            p3_sa18_S4 <= sa18_out4;
            p3_sa18_S5 <= sa18_mid;
            p3_sa18_S6 <= sa18_out6;
            p3_sa18_S7 <= sa18_out7;
            p3_sa18_S8 <= sa18_out8;
            p3_sa18_S9 <= sa18_max;
            
            
            
            p3_done_o_delay <= p3_done_o;
        end
    end
    
    
    
    
    
    // sort 3 upper left corner element and lower right corner element
    wire [7:0] upper_left_max, lower_right_min;
    Node N1 (
    .A(p3_sa14_S2),
    .B(p3_sa15_S1),
    .max_o(upper_left_max),
    .min_o()
    );
    
    Node N2 (
    .A(p3_sa13_S9),
    .B(p3_sa14_S8),
    .max_o(),
    .min_o(lower_right_min)
    );
    
    
    reg [7:0]
    p3_S1,
    p3_S2,
    p3_S3,
    p3_S4,
    p3_S5,
    p3_S6,
    p3_S7,
    p3_S8,
    p3_S9,
    p3_S10,
    p3_S11,
    p3_S12,
    p3_S13,
    p3_S14,
    p3_S15,
    p3_S16,
    p3_S17,
    p3_S18,
    p3_S19,
    p3_S20,
    p3_S21,
    p3_S22,
    p3_S23,
    p3_S24,
    p3_S25,
    p3_S26,
    p3_S27,
    p3_S28,
    p3_S29,
    p3_S30,
    p3_S31,
    p3_S32,
    p3_S33,
    p3_S34,
    p3_S35,
    p3_S36,
    p3_S37,
    p3_S38,
    p3_S39,
    p3_S40,
    p3_S41,
    p3_S42,
    p3_S43,
    p3_S44,
    p3_S45,
    p3_S46,
    p3_S47,
    p3_S48,
    p3_S49;
    
    reg p4_done_o;
    always @(posedge clk) begin
        if (rst) begin
            p3_S1  <= 0;
            p3_S2  <= 0;
            p3_S3  <= 0;
            p3_S4  <= 0;
            p3_S5  <= 0;
            p3_S6  <= 0;
            p3_S7  <= 0;
            p3_S8  <= 0;
            p3_S9  <= 0;
            p3_S10 <= 0;
            p3_S11 <= 0;
            p3_S12 <= 0;
            p3_S13 <= 0;
            p3_S14 <= 0;
            p3_S15 <= 0;
            p3_S16 <= 0;
            p3_S17 <= 0;
            p3_S18 <= 0;
            p3_S19 <= 0;
            p3_S20 <= 0;
            p3_S21 <= 0;
            p3_S22 <= 0;
            p3_S23 <= 0;
            p3_S24 <= 0;
            p3_S25 <= 0;
            p3_S26 <= 0;
            p3_S27 <= 0;
            p3_S28 <= 0;
            p3_S29 <= 0;
            p3_S30 <= 0;
            p3_S31 <= 0;
            p3_S32 <= 0;
            p3_S33 <= 0;
            p3_S34 <= 0;
            p3_S35 <= 0;
            p3_S36 <= 0;
            p3_S37 <= 0;
            p3_S38 <= 0;
            p3_S39 <= 0;
            p3_S40 <= 0;
            p3_S41 <= 0;
            p3_S42 <= 0;
            p3_S43 <= 0;
            p3_S44 <= 0;
            p3_S45 <= 0;
            p3_S46 <= 0;
            p3_S47 <= 0;
            p3_S48 <= 0;
            
            
            p4_done_o <= 0;
            end else begin
            
            p3_S1 <= p3_sa16_S1;
            p3_S2 <= p3_sa17_S1;
            p3_S3 <= p3_sa18_S1;
            p3_S4 <= upper_left_max;
            p3_S5 <= p3_sa15_S2;
            p3_S6 <= p3_sa16_S2;
            p3_S7 <= p3_sa17_S2;
            
            p3_S8  <= p3_sa18_S2;
            p3_S9  <= p3_sa13_S3;
            p3_S10 <= p3_sa14_S3;
            p3_S11 <= p3_sa15_S3;
            p3_S12 <= p3_sa16_S3;
            p3_S13 <= p3_sa17_S3;
            p3_S14 <= p3_sa18_S3;
            
            
            
            p3_S15 <= p3_sa12_S4;
            p3_S16 <= p3_sa13_S4;
            p3_S17 <= p3_sa14_S4;
            p3_S18 <= p3_sa15_S4;
            p3_S19 <= p3_sa16_S4;
            p3_S20 <= p3_sa17_S4;
            p3_S21 <= p3_sa18_S4;
            
            
            
            p3_S22 <= p3_sa11_S5;
            p3_S23 <= p3_sa12_S5;
            p3_S24 <= p3_sa13_S5;
            p3_S25 <= p3_sa14_S5;
            p3_S26 <= p3_sa15_S5;
            p3_S27 <= p3_sa16_S5;
            p3_S28 <= p3_sa17_S5;
            
            p3_S29 <= p3_sa10_S6;
            p3_S30 <= p3_sa11_S6;
            p3_S31 <= p3_sa12_S6;
            p3_S32 <= p3_sa13_S6;
            p3_S33 <= p3_sa14_S6;
            p3_S34 <= p3_sa15_S6;
            p3_S35 <= p3_sa16_S6;
            
            p3_S36 <= p3_sa10_S7;
            p3_S37 <= p3_sa11_S7;
            p3_S38 <= p3_sa12_S7;
            p3_S39 <= p3_sa13_S7;
            p3_S40 <= p3_sa14_S7;
            p3_S41 <= p3_sa15_S7;
            p3_S42 <= p3_sa10_S8;
            
            p3_S43 <= p3_sa11_S8;
            p3_S44 <= p3_sa12_S8;
            p3_S45 <= p3_sa13_S8;
            p3_S46 <= lower_right_min;
            p3_S47 <= p3_sa10_S9;
            p3_S48 <= p3_sa11_S9;
            p3_S49 <= p3_sa12_S9;
            
            
            
            
            
            p4_done_o <= p3_done_o_delay;
        end
    end
    Median_filter_7x7_calc CALC97 (
    .clk(clk),
    .rst(rst),
    .done_i(p4_done_o),
    .S1(p3_S1),
    .S2(p3_S2),
    .S3(p3_S3),
    .S4(p3_S4),
    .S5(p3_S5),
    .S6(p3_S6),
    .S7(p3_S7),
    .S8(p3_S8),
    .S9(p3_S9),
    .S10(p3_S10),
    .S11(p3_S11),
    .S12(p3_S12),
    .S13(p3_S13),
    .S14(p3_S14),
    .S15(p3_S15),
    .S16(p3_S16),
    .S17(p3_S17),
    .S18(p3_S18),
    .S19(p3_S19),
    .S20(p3_S20),
    .S21(p3_S21),
    .S22(p3_S22),
    .S23(p3_S23),
    .S24(p3_S24),
    .S25(p3_S25),
    .S26(p3_S26),
    .S27(p3_S27),
    .S28(p3_S28),
    .S29(p3_S29),
    .S30(p3_S30),
    .S31(p3_S31),
    .S32(p3_S32),
    .S33(p3_S33),
    .S34(p3_S34),
    .S35(p3_S35),
    .S36(p3_S36),
    .S37(p3_S37),
    .S38(p3_S38),
    .S39(p3_S39),
    .S40(p3_S40),
    .S41(p3_S41),
    .S42(p3_S42),
    .S43(p3_S43),
    .S44(p3_S44),
    .S45(p3_S45),
    .S46(p3_S46),
    .S47(p3_S47),
    .S48(p3_S48),
    .S49(p3_S49),
    .median_o(median_o),
    .done_o  (done_o)
    );
    
    
    
    
endmodule
    
