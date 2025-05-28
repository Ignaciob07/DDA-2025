module counter #(
    parameter NB_COUNTER = 38     

) (
    output reg [NB_COUNTER - 1 : 0]    o_counter,
    input                              i_clock  ,
    input                              i_rst_n
);

always @(posedge i_clock or negedge i_rst_n) begin
    if (!i_rst_n) begin
        o_counter <= 0;
    end
    else begin
        if (o_counter=={(NB_COUNTER){1'b1}}) begin
            o_counter <= 0;
        end
        else begin
            o_counter <= o_counter + 1;
        end
    end
end


endmodule