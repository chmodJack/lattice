module led_flow(input clk,input rst,output reg[7:0] led);

reg [31:0] counter;

always@(posedge clk or negedge rst)
	begin
		if(!rst)
			counter<=0;
		else if(counter < 32'd100_0000)
			counter<=counter+1;
		else
			counter<=0;
	end

always@(posedge clk or negedge rst)
	begin
		if(!rst)
			led<=8'b1111_1110;
		else if(counter == 32'd100_0000)
			led[7:0] <= {led[6:0],led[7]};
	end

endmodule