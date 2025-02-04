module Data_modulate_3x3_controller (input rst,
                                     input clk,
                                     input done_i,
                                     input [2:0] i_counter,
                                     input done_reg,
                                     output done_o,
                                     output start);
    assign done_o = (i_counter == 2 && done_reg == 0) ? 1 : 0;
    assign start  = done_i;
    
    
endmodule
