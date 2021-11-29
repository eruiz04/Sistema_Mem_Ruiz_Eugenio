// Quartus Prime Verilog Template
// Single Port ROM

module single_port_rom
#(parameter DATA_WIDTH=8, parameter ADDR_WIDTH=8)
(
	input [(ADDR_WIDTH-1):0] addr,
	input clk, 
	output reg [(DATA_WIDTH-1):0] q
);

	// Declare the ROM variable
	//reg [DATA_WIDTH-1:0] rom[2**ADDR_WIDTH-1:0];
	reg [DATA_WIDTH-1:0] rom[ADDR_WIDTH-1:0];

	// Initialize the ROM with $readmemb.  Put the memory contents
	// in the file single_port_rom_init.txt.  Without this file,
	// this design will not compile.

	// See Verilog LRM 1364-2001 Section 17.2.8 for details on the
	// format of this file, or see the "Using $readmemb and $readmemh"
	// template later in this section.

	initial
	begin
		$readmemh("C:/Users/aleja/Documents/GitHub/Sistema_Mem_Ruiz_Eugenio/source/text.dat", rom);
	end

	//always @ (posedge clk)
	always @ (addr)
	begin
		q <= rom[addr];
	end

endmodule
