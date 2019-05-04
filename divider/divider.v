module test_module #(parameter N = 12000000 ,WIDTH = 31)(clk,clk_out,rst);

input wire [0:0] clk;
input wire [0:0] rst;
output reg [7:0] clk_out;
reg [WIDTH:0]counter;

initial
begin
	clk_out=8'b1111_1111;
end

always@(posedge clk)
begin
	if (counter == (N-1))
	begin
		counter <= 0;
	end
	else
	begin
		counter <= counter + 1;
	end
end

//always @(posedge clk or posedge rst)
always @(posedge clk)
begin
	if(rst == 0)
		clk_out<=8'b1111_1111;
	else if (counter == (N-1))
	begin
		clk_out <=clk_out-1;
	end
end

endmodule