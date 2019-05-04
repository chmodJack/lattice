// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.10.0.111.2
// Netlist written on Sat Apr 20 23:52:28 2019
//
// Verilog Description of module led
//

module led (key, sw, led);   // d:/code/fpga/lattice/led/led.v(1[8:11])
    input [3:0]key;   // d:/code/fpga/lattice/led/led.v(3[18:21])
    input [3:0]sw;   // d:/code/fpga/lattice/led/led.v(4[18:20])
    output [7:0]led;   // d:/code/fpga/lattice/led/led.v(5[19:22])
    
    
    wire led_c_c, n3_c, n5_c, n7_c, GND_net, VCC_net;
    
    VLO i23 (.Z(GND_net));
    OB led_pad_7 (.I(led_c_c), .O(led[7]));   // d:/code/fpga/lattice/led/led.v(5[19:22])
    OB led_pad_6 (.I(led_c_c), .O(led[6]));   // d:/code/fpga/lattice/led/led.v(5[19:22])
    OB led_pad_5 (.I(n3_c), .O(led[5]));   // d:/code/fpga/lattice/led/led.v(5[19:22])
    OB led_pad_4 (.I(n3_c), .O(led[4]));   // d:/code/fpga/lattice/led/led.v(5[19:22])
    OB led_pad_3 (.I(n5_c), .O(led[3]));   // d:/code/fpga/lattice/led/led.v(5[19:22])
    OB led_pad_2 (.I(n5_c), .O(led[2]));   // d:/code/fpga/lattice/led/led.v(5[19:22])
    OB led_pad_1 (.I(n7_c), .O(led[1]));   // d:/code/fpga/lattice/led/led.v(5[19:22])
    OB led_pad_0 (.I(n7_c), .O(led[0]));   // d:/code/fpga/lattice/led/led.v(5[19:22])
    IB led_c_pad (.I(key[3]), .O(led_c_c));   // d:/code/fpga/lattice/led/led.v(3[18:21])
    IB n3_pad (.I(key[2]), .O(n3_c));   // d:/code/fpga/lattice/led/led.v(3[18:21])
    IB n5_pad (.I(key[1]), .O(n5_c));   // d:/code/fpga/lattice/led/led.v(3[18:21])
    IB n7_pad (.I(key[0]), .O(n7_c));   // d:/code/fpga/lattice/led/led.v(3[18:21])
    GSR GSR_INST (.GSR(VCC_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    VHI i24 (.Z(VCC_net));
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

