module led(key,sw,led);

input wire [3:0] key;
input wire [3:0] sw;
output wire [7:0] led;

assign led[0]=key[0];
assign led[1]=key[0];
assign led[2]=key[1];
assign led[3]=key[1];

assign led[4]=key[2];
assign led[5]=key[2];
assign led[6]=key[3];
assign led[7]=key[3];

endmodule