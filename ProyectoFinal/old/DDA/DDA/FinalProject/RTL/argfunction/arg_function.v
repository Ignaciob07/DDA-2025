// 
// MODULE TO GET THE ANGULE OF TWO MODULES
//
//  Uses maclaurin series of arctan and checks the corner cases
//
//      arctan(x) = sum_0_N (x^(2n+1) / (2n+1) )

module arg_function #(
    parameter NB_IN     = 8,
    parameter NBF_IN    = 7,
    parameter NB_OUT    = 8,
    parameter NBF_OUT   = 7
) (
    output  [NB_OUT - 1 : 0] o_arg      ,
    input   [NB_IN  - 1 : 0] i_num_a    ,
    input   [NB_IN  - 1 : 0] i_num_b    ,
    input                    clock      ,
    input                    i_rst_n    ,
    input                    i_enable
);


    
endmodule