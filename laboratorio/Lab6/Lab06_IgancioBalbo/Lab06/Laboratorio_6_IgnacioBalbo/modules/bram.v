module  bram #(
    parameter RAM_WIDTH         = 32, // Specify RAM data width
    parameter NB_RAM_DEPTH      = 13, // Specify RAM depth (number of entries)
    parameter INIT_FILE         = "" // Specify name/location of RAM initialization file if using one (leave blank if not)
)(
    output reg [RAM_WIDTH    - 1 : 0] o_data      ,
    input      [RAM_WIDTH    - 1 : 0] i_data      ,
    input      [NB_RAM_DEPTH - 1 : 0] i_write_addr,
    input      [NB_RAM_DEPTH - 1 : 0] i_read_addr ,
    input                             i_wr_enb    ,
    input                             i_rd_enb    ,
    input                             clock
);

  reg [RAM_WIDTH-1:0] sram [2**NB_RAM_DEPTH - 1 : 0];

  // The following code either initializes the memory values to a specified file or to all zeros to match hardware
  generate
      initial $readmemh(INIT_FILE, sram, 0, 2**NB_RAM_DEPTH - 1);
  endgenerate

  always @(posedge clock) begin
    if (i_wr_enb)
      sram[i_write_addr] <= i_data;
    if (i_rd_enb)
        o_data <= sram[i_read_addr];
  end

endmodule
