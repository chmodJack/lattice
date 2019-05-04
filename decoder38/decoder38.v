module decode38 (key,sw,led);
input wire [0:0] key;
input wire [2:0] sw;
output reg [7:0] led;
 
always @ (negedge key)
	begin
		case(sw)                                                   //case语句，一定要跟default语句
			3'b000:	led=8'b0111_1111;                         //条件跳转，其中“_”下划线只是为了阅读方便，无实际意义  
			3'b001:	led=8'b1011_1111;                         //位宽'进制+数值是Verilog里常数的表达方法，进制可以是b、o、d、h（二、八、十、十六进制）
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