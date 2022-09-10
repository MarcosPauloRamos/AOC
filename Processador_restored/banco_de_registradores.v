module Banco_de_registradores (clock,Write_UC,S,OP1,OP2,Multiplexador_W_Data,L1,L2);
input clock,Write_UC;
input wire [5:0] S, OP1,OP2;
input wire [31:0] Multiplexador_W_Data;
output [31:0] L1,L2;
reg   [31:0] Registradores [31:0];
always@ ( posedge clock )
	begin
		if( Write_UC==1)
			begin
				Registradores[S]=Multiplexador_W_Data;
			end
	end
assign L1=Registradores [OP1];
assign L2=Registradores [OP2];
endmodule
/*
L1 e L2 são os dados que serão enviados até a ULA
O registrador (S) é escrito sempre no nivel alto do clock 
			->dado do multiplexador(serve para selecionar uma saida expecifica) se o a UC está em alto (REg_Write_UC)
São 32 registradores de 32 bits cada (cria matrix 32*32)
OP1 e OP2 são os endereços em L1 e L2 respectivamente
S, OP1 e OP2 vem da memoria de instruções
*/