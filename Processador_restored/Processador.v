module Processador
(
input CLK,  
input clock_botao, reset,
input  [15:0] Switches,
output [6:0] display_0, 
output [6:0] display_1, 
output [6:0] display_2, 
output [6:0] display_3,
output [9:0] address_output,
output Seletor_Desvio_UC, Sinal_Desvio
);

wire  halt, Reg_Write_UC, Seletor_ULA_UC,   Reg_Write_Jr_UC, Seletor_regJr_UC, we_UC,IO_UC, clock;
wire [31:0] L1;
wire [31:0] L2;
wire [31:0] Imediato_estendido;
wire [31:0] Saida_Selecionada_Multiplexador_ULA;
wire [5:0] Modo_Funcao_UC;
wire [33:0] Instrucao;
wire [31:0] ULA_Result;
wire [3:0] unidade;
wire [3:0] dezena;
wire [3:0] centena;
wire [3:0] unidade_de_milhar;
wire [9:0] EPI_Jr;
wire [31:0] Mem_Dados; 
wire [31:0] ES;
wire [1:0] Seletor_W_Data_UC;
wire [11:0] addr;
wire [31:0] Saida_Selecionada_Multiplexador_W_Data;
wire [31:0] Saida;

UnidadeControle uc (Instrucao [33:28], clock_botao, Seletor_Desvio_UC, we_UC, IO_UC, Reg_Write_UC, Seletor_ULA_UC, Seletor_regJr_UC, Reg_Write_Jr_UC, halt, Seletor_W_Data_UC, Modo_Funcao_UC);
Clock DF (CLK,clock);
PC pc (clock, halt, reset, Sinal_Desvio, Seletor_Desvio_UC, Seletor_regJr_UC, Instrucao[9:0], EPI_Jr, address_output);
Memoria_Instrucoes MemI (address_output, Instrucao);
Banco_de_registradores BR (clock, Reg_Write_UC, Instrucao[27:22], Instrucao[21:16], Instrucao[15:10], Saida_Selecionada_Multiplexador_W_Data, L1, L2 );
Extensor Ext ( Instrucao [15:10],Imediato_estendido);
Mult_ULA MUXULA(L2, Imediato_estendido, Seletor_ULA_UC, Saida_Selecionada_Multiplexador_ULA );
ULA ALU (L1,Saida_Selecionada_Multiplexador_ULA, Modo_Funcao_UC, Sinal_Desvio, ULA_Result);
Reg_Jr JR (clock, Reg_Write_Jr_UC, Instrucao[9:0], EPI_Jr);
Memoria_Dados MD (L2, Instrucao[21:16],we_UC, clock, Mem_Dados);
Multiplexador_W_Data MW (ULA_Result, Mem_Dados, ES, Seletor_W_Data_UC, Saida_Selecionada_Multiplexador_W_Data); 
Modulo_IO MES (clock, Switches, L2, Reg_Write_UC, IO_UC, halt, Saida, ES);
Binario_BCD BBCD (Saida, unidade, dezena, centena, unidade_de_milhar);
Display Disp0 (unidade, display_0);
Display Disp1 (dezena, display_1);
Display Disp2 (centena, display_2);
Display Disp3 (unidade_de_milhar, display_3);
endmodule 