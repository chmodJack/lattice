module led(key,sw,led1,led2);

input wire [2:0] key;
input wire [2:0] sw;

output wire [2:0] led1;
output wire [2:0] led2;

assign led1[0]=key[0];
assign led1[1]=key[1];
assign led1[2]=key[2];

assign led2[0]=~sw[0];
assign led2[1]=~sw[1];
assign led2[2]=~sw[2];

endmodule