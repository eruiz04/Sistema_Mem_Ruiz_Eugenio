// Quartus Prime Verilog Template
// Single Port ROM

module single_port_rom
#(parameter DATA_WIDTH=32, parameter ADDR_WIDTH=32)
(
	input clk, 
	input [(ADDR_WIDTH-1):0] addr,
	output reg [(DATA_WIDTH-1):0] q
);

	// Declare the ROM variable
	//reg [DATA_WIDTH-1:0] rom[2**ADDR_WIDTH-1:0];
	reg [DATA_WIDTH-1:0] rom [ADDR_WIDTH-1:0];

	initial
	begin
		$readmemh("C:/Users/aleja/Documents/GitHub/Sistema_Mem_Ruiz_Eugenio/source/text.dat", rom);
	end

	//always @ (posedge clk)
	always @ (addr)
	begin
		q = rom[addr];
	end

endmodule
