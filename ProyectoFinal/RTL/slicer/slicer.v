module slicer #(
    parameter NB_DATA_IN_OUT    = 8,
    parameter NBF_DATA_IN_OUT   = 7
) (
    output  signed [NB_DATA_IN_OUT - 1 : 0] o_decided_symbol   ,
    input   signed [NB_DATA_IN_OUT - 1 : 0] i_received_symbol  
);

    reg signed [NB_DATA_IN_OUT - 1 : 0] r_decided_symbol;

    always @(*) begin

        if (i_received_symbol < -64) begin
            r_decided_symbol = -96;
        end
        else if (i_received_symbol < 0) begin
            r_decided_symbol = -32;
        end
        else if (i_received_symbol < 64) begin
            r_decided_symbol = 32;
        end
        else begin
            r_decided_symbol = 96;
        end

    end
    
    assign o_decided_symbol = r_decided_symbol; 

endmodule