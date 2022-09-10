module UnidadeControle
(
input  [5:0] Modo_Funcao_UC_Instrucao, 
input clock_botao,
output reg Seletor_Desvio_UC, we_UC, IO_UC, Reg_Write_UC, Seletor_ULA_UC, Seletor_regJr_UC, Reg_Write_Jr_UC, halt,
output reg [1:0] Seletor_W_Data_UC, 
output wire [5:0] Modo_Funcao_UC
); 
always@ (*)
	begin
		case (Modo_Funcao_UC_Instrucao)
 
			 6'b000000: // ADD
			begin
				 IO_UC = 1'B 0 ;
				 Reg_Write_UC = 1'B 1 ;
				 we_UC = 1'B 0 ;
				 Seletor_Desvio_UC = 1'B 0 ;
				 Seletor_W_Data_UC= 2'B 00;
				 Seletor_regJr_UC = 1'B 1 ;
				 Seletor_ULA_UC = 1'B 0 ;
				 Reg_Write_Jr_UC = 1'B 0 ;
				 halt= 1'B 0;
			 end
			 
			 6'b000001: // SUB
			begin
				 IO_UC = 1'B 0 ;
				 Reg_Write_UC = 1'B 1 ;
				 we_UC = 1'B 0 ;
				 Seletor_Desvio_UC = 1'B 0 ;
				 Seletor_W_Data_UC= 2'B 00;
				 Seletor_regJr_UC = 1'B 1 ;
				 Seletor_ULA_UC = 1'B 0 ;
				 Reg_Write_Jr_UC = 1'B 0 ;
				 halt= 1'B 0;
			 end
			 
			 6'b000010: // MULT
			begin
				 IO_UC = 1'B 0 ;
				 Reg_Write_UC = 1'B 1 ;
				 we_UC = 1'B 0 ;
				 Seletor_Desvio_UC = 1'B 0 ;
				 Seletor_W_Data_UC= 2'B 00;
				 Seletor_regJr_UC = 1'B 1 ;
				 Seletor_ULA_UC = 1'B 0 ;
				 Reg_Write_Jr_UC = 1'B 0 ;
				 halt= 1'B 0;
			 end
			 
			 6'b000011: // DIV
			begin
				 IO_UC = 1'B 0 ;
				 Reg_Write_UC = 1'B 1 ;
				 we_UC = 1'B 0 ;
				 Seletor_Desvio_UC = 1'B 0 ;
				 Seletor_W_Data_UC= 2'B 00;
				 Seletor_regJr_UC = 1'B 1 ;
				 Seletor_ULA_UC = 1'B 0 ;
				 Reg_Write_Jr_UC = 1'B 0 ;
				 halt= 1'B 0;
			 end
			 
			 6'b010000 : // ADDI
			begin
				 IO_UC = 1'B 0 ;
				 Reg_Write_UC = 1'B 1 ;
				 we_UC = 1'B 0 ;
				 Seletor_Desvio_UC = 1'B 0 ;
				 Seletor_W_Data_UC= 2'B 00;
				 Seletor_regJr_UC = 1'B 1 ;
				 Seletor_ULA_UC = 1'B 1 ;
				 Reg_Write_Jr_UC = 1'B 0 ;
				 halt= 1'B 0;
			 end
			 
			 6'b010001 : // SUBI
			begin
				 IO_UC = 1'B 0 ;
				 Reg_Write_UC = 1'B 1 ;
				 we_UC = 1'B 0 ;
				 Seletor_Desvio_UC = 1'B 0 ;
				 Seletor_W_Data_UC= 2'B 00;
				 Seletor_regJr_UC = 1'B 1 ;
				 Seletor_ULA_UC = 1'B 1 ;
				 Reg_Write_Jr_UC = 1'B 0 ;
				 halt= 1'B 0;
			 end
			 
			 6'b000100: // AND
			begin
				 IO_UC = 1'B 0 ;
				 Reg_Write_UC = 1'B 1 ;
				 we_UC = 1'B 0 ;
				 Seletor_Desvio_UC = 1'B 0 ;
				 Seletor_W_Data_UC= 2'B 00;
				 Seletor_regJr_UC = 1'B 1 ;
				 Seletor_ULA_UC = 1'B 0 ;
				 Reg_Write_Jr_UC = 1'B 0 ;
				 halt= 1'B 0;
			 end
			 
			 6'b000101: // OR
			begin
				 IO_UC = 1'B 0 ;
				 Reg_Write_UC = 1'B 1 ;
				 we_UC = 1'B 0 ;
				 Seletor_Desvio_UC = 1'B 0 ;
				 Seletor_W_Data_UC= 2'B 00;
				 Seletor_regJr_UC = 1'B 1 ;
				 Seletor_ULA_UC = 1'B 0 ;
				 Reg_Write_Jr_UC = 1'B 0 ;
				 halt= 1'B 0;
			 end	
				
			 6'b000110: // NOT
			begin
				 IO_UC = 1'B 0 ;
				 Reg_Write_UC = 1'B 1 ;
				 we_UC = 1'B 0 ;
				 Seletor_Desvio_UC = 1'B 0 ;
				 Seletor_W_Data_UC= 2'B 00;
				 Seletor_regJr_UC = 1'B 1 ;
				 Seletor_ULA_UC = 1'B 0 ;
				 Reg_Write_Jr_UC = 1'B 0 ;
				 halt= 1'B 0;
			 end
			 
			 6'b000111: // XOR
			begin
				 IO_UC = 1'B 0 ;
				 Reg_Write_UC = 1'B 1 ;
				 we_UC = 1'B 0 ;
				 Seletor_Desvio_UC = 1'B 0 ;
				 Seletor_W_Data_UC= 2'B 00;
				 Seletor_regJr_UC = 1'B 1 ;
				 Seletor_ULA_UC = 1'B 0 ;
				 Reg_Write_Jr_UC = 1'B 0 ;
				 halt= 1'B 0;
			 end
			 
			 6'b001000: // SHR
			begin
				 IO_UC = 1'B 0 ;
				 Reg_Write_UC = 1'B 1 ;
				 we_UC = 1'B 0 ;
				 Seletor_Desvio_UC = 1'B 0 ;
				 Seletor_W_Data_UC= 2'B 00;
				 Seletor_regJr_UC = 1'B 1 ;
				 Seletor_ULA_UC = 1'B 0 ;
				 Reg_Write_Jr_UC = 1'B 0 ;
				 halt= 1'B 0;
			 end	
				
			 6'b001001: // SHL
			begin
				 IO_UC = 1'B 0 ;
				 Reg_Write_UC = 1'B 1 ;
				 we_UC = 1'B 0 ;
				 Seletor_Desvio_UC = 1'B 0 ;
				 Seletor_W_Data_UC= 2'B 00;
				 Seletor_regJr_UC = 1'B 1 ;
				 Seletor_ULA_UC = 1'B 0 ;
				 Reg_Write_Jr_UC = 1'B 0 ;
				 halt= 1'B 0;
			 end

			 6'b001010 : //BEQ
			begin
				 IO_UC = 1'B 0 ;
				 Reg_Write_UC = 1'B 0 ;
				 we_UC = 1'B 0 ;
				 Seletor_Desvio_UC = 1'B 1 ;
				 Seletor_W_Data_UC= 2'B 00;
				 Seletor_regJr_UC = 1'B 1 ;
				 Seletor_ULA_UC = 1'B 0 ;
				 Reg_Write_Jr_UC = 1'B 0 ;
				halt= 1'B 0;
			 end
				
			 6'b001011 : //BNE
			begin
				 IO_UC = 1'B 0 ;
				 Reg_Write_UC = 1'B 0 ;
				 we_UC = 1'B 0 ;
				 Seletor_Desvio_UC = 1'B 1 ;
				 Seletor_W_Data_UC= 2'B 00;
				 Seletor_regJr_UC = 1'B 1 ;
				 Seletor_ULA_UC = 1'B 0 ;
				 Reg_Write_Jr_UC = 1'B 0 ;
				 halt= 1'B 0;
			 end
			 
			 6'b001100 : // BLE
			begin
				 IO_UC = 1'B 0 ;
				 Reg_Write_UC = 1'B 0 ;
				 we_UC = 1'B 0 ;
				 Seletor_Desvio_UC = 1'B 1 ;
				 Seletor_W_Data_UC= 2'B 00;
				 Seletor_regJr_UC = 1'B 1 ;
				 Seletor_ULA_UC = 1'B 0 ;
				 Reg_Write_Jr_UC = 1'B 0;
				 halt= 1'B 0;
			 end
			 
			 6'b001101 : // BGR
			begin
				 IO_UC = 1'B 0 ;
				 Reg_Write_UC = 1'B 0 ;
				 we_UC = 1'B 0 ;
				 Seletor_Desvio_UC = 1'B 1 ;
				 Seletor_W_Data_UC= 2'B 00;
				 Seletor_regJr_UC = 1'B 1 ;
				 Seletor_ULA_UC = 1'B 0 ;
				 Reg_Write_Jr_UC = 1'B 0;
				 halt= 1'B 0;
			 end
			 
			 6'B 110000 : // JUMP
			begin
				 IO_UC = 1'B 0 ;
				 Reg_Write_UC = 1'B 0 ;
				 we_UC = 1'B 0 ;
				 Seletor_Desvio_UC = 1'B 0 ;
				 Seletor_W_Data_UC= 2'B 00;
				 Seletor_regJr_UC = 1'B 1 ;
				 Seletor_ULA_UC = 1'B 0 ;
				 Reg_Write_Jr_UC = 1'B 0 ;
				 halt= 1'B 0;
			 end
			 
			 6'B 110100 : // JUMPJR
			begin
				 IO_UC = 1'B 0 ;
				 Reg_Write_UC = 1'B 0 ;
				 we_UC = 1'B 0 ;
				 Seletor_Desvio_UC = 1'B 0 ;
				 Seletor_W_Data_UC= 2'B 00;
				 Seletor_regJr_UC = 1'B 0 ;
				 Seletor_ULA_UC = 1'B 0 ;
				 Reg_Write_Jr_UC = 1'B 0 ;
				 halt= 1'B 0;
			 end
			 
			 6'B 111000 : // JUMPJL
			begin
				 IO_UC = 1'B 0 ;
				 Reg_Write_UC = 1'B 0 ;
				 we_UC = 1'B 0 ;
				 Seletor_Desvio_UC = 1'B 0 ;
				 Seletor_W_Data_UC= 2'B 00;
				 Seletor_regJr_UC = 1'B 1 ;
				 Seletor_ULA_UC = 1'B 0 ;
				 Reg_Write_Jr_UC = 1'B 1 ;
				 halt= 1'B 0; 
			 end
			 
			 6'B 100000 : // IN
			begin
				 IO_UC = 1'B 1 ;
				 Reg_Write_UC = 1'B 1 ;
				 we_UC = 1'B 0 ;
				 Seletor_Desvio_UC = 1'B 0 ;
				 Seletor_W_Data_UC= 2'B 11;
				 Seletor_regJr_UC = 1'B 1 ;
				 Seletor_ULA_UC = 1'B 0 ;
				 Reg_Write_Jr_UC = 1'B 0 ;
				if (clock_botao==1'b1)
					halt= 1'B 0;
					else 
						halt= 1'B 1;
							
			 end
			
			 6'B 100010 : // OUT
			begin
				 IO_UC = 1'B 1 ;
				 Reg_Write_UC = 1'B 0 ;
				 we_UC = 1'B 0 ;
				 Seletor_Desvio_UC = 1'B 0 ;
				 Seletor_W_Data_UC= 2'B 11;
				 Seletor_regJr_UC = 1'B 1 ;
				 Seletor_ULA_UC = 1'B 0 ;
				 Reg_Write_Jr_UC = 1'B 0;
				 halt= 1'B 0;
			 end
			 
			 6'B 100100 : // LOAD
			begin
				 IO_UC = 1'B 0 ;
				 Reg_Write_UC = 1'B 1 ;
				 we_UC = 1'B 0 ;
				 Seletor_Desvio_UC = 1'B 0 ;
				 Seletor_W_Data_UC= 2'B 01;
				 Seletor_regJr_UC = 1'B 1 ;
				 Seletor_ULA_UC = 1'B 0 ;
				 Reg_Write_Jr_UC = 1'B 0 ;
				 halt= 1'B 0;
			end

			 6'B 100110 : // STORE
			begin
				 IO_UC = 1'B 0 ;
				 Reg_Write_UC = 1'B 0 ;
				 we_UC = 1'B 1 ;
				 Seletor_Desvio_UC = 1'B 0 ;
				 Seletor_W_Data_UC= 2'B 00;
				 Seletor_regJr_UC = 1'B 1 ;
				 Seletor_ULA_UC = 1'B 0 ;
				 Reg_Write_Jr_UC = 1'B 0 ;
				 halt= 1'B 0;
			 end
				
			 6'B 101000 : // LOADIM
			begin
				 IO_UC = 1'B 0 ;
				 Reg_Write_UC = 1'B 1 ;
				 we_UC = 1'B 0 ;
				 Seletor_Desvio_UC = 1'B 0 ;
				 Seletor_W_Data_UC= 2'B 00;
				 Seletor_regJr_UC = 1'B 1 ;
				 Seletor_ULA_UC = 1'B 1 ;
				 Reg_Write_Jr_UC = 1'B 0 ;
				 halt= 1'B 0;
			 end

			default : // Not operation
				begin
				 IO_UC = 1'B 0 ;
				 Reg_Write_UC = 1'B 0 ;
				 we_UC = 1'B 0 ;
				 Seletor_Desvio_UC = 1'B 0 ;
				 Seletor_W_Data_UC= 2'B 00;
				 Seletor_regJr_UC = 1'B 1 ;
				 Seletor_ULA_UC = 1'B 0 ;
				 Reg_Write_Jr_UC = 1'B 0 ;
				 halt= 1'B 0;
				end
		endcase
	end
		assign Modo_Funcao_UC = Modo_Funcao_UC_Instrucao;

 endmodule
