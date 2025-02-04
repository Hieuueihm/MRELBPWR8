module Data_modulate_9x9_controller (input rst,
                                     input clk,
                                     input done_i,
                                     input [2:0] i_counter, // 8
                                     input done_reg,
                                     output done_o,
                                     output start);
    assign done_o = (i_counter == 5 && done_reg == 0) ? 1 : 0;
    assign start  = done_i;
    
    
endmodule
