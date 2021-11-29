/******************************************************************
* Description
*	This is the verifaction environment ofr testeting the register file.
* Version:
*	1.0
* Author:
*	Dr. José Luis Pizano Escalante
* email:
*	luispizano@iteso.mx
* Date:
*	12/06/2015
******************************************************************/
/*
Eugenio Alejandro Ruiz Mejia
eugenio.ruiz@iteso.mx 
ITESO
Diplomado Pre-Silicio
T4: Sistema de Memoria
30/11/2021
*/


module Program_Memory_TB;

parameter MEMORY_DEPTH = 32;
parameter DATA_WIDTH = 32;
reg clk_tb = 0;
reg [(DATA_WIDTH-1):0] Address_i_tb;
wire [(DATA_WIDTH-1):0] Instruction_o_tb;

  
single_port_rom
#
(
	.ADDR_WIDTH(MEMORY_DEPTH),
	.DATA_WIDTH(DATA_WIDTH)
)
DUV
(
	.addr(Address_i_tb),
	.q(Instruction_o_tb)
);
/*********************************************************/
initial // Clock generator
  begin
    forever #2 clk_tb = !clk_tb;
  end
/*********************************************************/


//ROM testing
initial begin
	//#0 Instruction_o_tb = 0;
	#0 Address_i_tb = 0;
	#50 Address_i_tb = 1;
	#50 Address_i_tb = 2;
	#50 Address_i_tb = 3;
	#50 Address_i_tb = 4;
	#50 Address_i_tb = 5;
	#50 Address_i_tb = 6;
	#50 Address_i_tb = 7;
	#50 Address_i_tb = 8;
$finish();
end

/*********************************************************/

endmodule