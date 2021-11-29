module Memory_System
#(
	parameter MEMORY_DEPTH = 64,
	parameter DATA_WIDTH = 32
)
(
	input Write_Enable_i, clk,
	input [(DATA_WIDTH-1):0] Write_Data_i,
	input [(DATA_WIDTH-1):0] Address_i,
	output [(DATA_WIDTH-1):0] Instruction_o
);

	//Aqui instanciare mis modulos
	wire [(DATA_WIDTH-1):0] Qrom, Qram;
	single_port_rom #(.DATA_WIDTH(DATA_WIDTH), .ADDR_WIDTH(MEMORY_DEPTH)) ROM (.addr(Address_i), .clk(clk), .q(Qrom));
	single_port_ram #(.DATA_WIDTH(DATA_WIDTH), .ADDR_WIDTH(MEMORY_DEPTH)) RAM (.data(Write_Data_i), .addr(Address_i), .we(Write_Enable_i),.clk(clk),.q(Qram));
	
	mux2to1 Output (.D0(Qrom), .D1(Qram), .S(Write_Enable_i), .Y(Instruction_o));
	
	
endmodule	
