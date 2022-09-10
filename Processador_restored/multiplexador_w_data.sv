module Multiplexador_W_Data
(
input [31:0] ULA_Result,
input [31:0] Mem_Dados,
input [31:0] ES,
input [1:0] Seletor_W_Data_UC,
output reg [31:0] Saida_Selecionada_Multiplexador_W_Data
);
reg [31:0] Saida;
assign Saida_Selecionada_Multiplexador_W_Data=Saida;
always@ (*)
	begin
		case(Seletor_W_Data_UC)
			2'b00:Saida=ULA_Result;
			2'b01:Saida=Mem_Dados;
			2'b11:Saida=ES;
			default:Saida=ULA_Result;
		endcase 
	end
endmodule 