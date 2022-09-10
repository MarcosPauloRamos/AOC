module Reg_Jr
(
input clock,
input Reg_Jr_UC,
input [9:0] EPI,
output reg [9:0] EPI_Jr
); 
always@ (posedge clock)
	begin
		if (Reg_Jr_UC==1)
			EPI_Jr=EPI;
	end
endmodule