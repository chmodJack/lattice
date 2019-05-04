module decode38 (key,sw,led);
input wire [0:0] key;
input wire [2:0] sw;
output reg [7:0] led;
 
always @ (negedge key)
	begin
		case(sw)                                                   //case��䣬һ��Ҫ��default���
			3'b000:	led=8'b0111_1111;                         //������ת�����С�_���»���ֻ��Ϊ���Ķ����㣬��ʵ������  
			3'b001:	led=8'b1011_1111;                         //λ��'����+��ֵ��Verilog�ﳣ���ı�﷽�������ƿ�����b��o��d��h�������ˡ�ʮ��ʮ�����ƣ�
			3'b010:	led=8'b1101_1111;
			3'b011:	led=8'b1110_1111;
			3'b100:	led=8'b1111_0111;
			3'b101:	led=8'b1111_1011;
			3'b110: led=8'b1111_1101;
			3'b111:	led=8'b1111_1110;
			default: ;
		endcase
	end
 
endmodule