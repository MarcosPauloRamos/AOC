module Modulo_IO 
(
input clock,
input [15:0] Switches,
input [31:0] Data_output,//saída dos dados do processador 
input RegWrite, IO_UC, halt,
output reg [31:0] Saida, 
output reg [31:0] ES

);

	always@ (posedge clock)
		begin
			if (IO_UC==1'B1)
				Saida=Data_output;	
		end
	 
	always@ (*)
		begin
			if ((IO_UC==1'B1) && (RegWrite==1'B1) && (halt==1'B1))
					ES=Switches;				
		end 
		
endmodule 