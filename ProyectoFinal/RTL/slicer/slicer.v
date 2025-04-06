module slicer #(
    parameter NB_DATA_IN_OUT    = 8,
    parameter NBF_DATA_IN_OUT   = 7
) (
    output  signed [NB_DATA_IN_OUT - 1 : 0] o_decided_symbol_q   ,
    input   signed [NB_DATA_IN_OUT - 1 : 0] i_received_symbol_q  ,

    output  signed [NB_DATA_IN_OUT - 1 : 0] o_decided_symbol_i   ,
    input   signed [NB_DATA_IN_OUT - 1 : 0] i_received_symbol_i  
);

    reg signed [NB_DATA_IN_OUT - 1 : 0] r_decided_symbol_q;
    reg signed [NB_DATA_IN_OUT - 1 : 0] r_decided_symbol_i;

    always @(*) begin
        if (!i_received_symbol_i && !i_received_symbol_q) begin
            r_decided_symbol_i  =   0;
            r_decided_symbol_q  =   0;
        end
        else begin
            if (i_received_symbol_i < -64) begin
                r_decided_symbol_i = -96;
            end
            else if (i_received_symbol_i < 0) begin
                r_decided_symbol_i = -32;
            end
            else if (i_received_symbol_i < 64) begin
                r_decided_symbol_i = 32;
            end
            else begin
                r_decided_symbol_i = 96;
            end

            if (i_received_symbol_q < -64) begin
                r_decided_symbol_q = -96;
            end
            else if (i_received_symbol_q < 0) begin
                r_decided_symbol_q = -32;
            end
            else if (i_received_symbol_q < 64) begin
                r_decided_symbol_q = 32;
            end
            else begin
                r_decided_symbol_q = 96;
            end            
        end

    end
    
    assign o_decided_symbol_i = r_decided_symbol_i; 
    assign o_decided_symbol_q = r_decided_symbol_q; 

endmodule