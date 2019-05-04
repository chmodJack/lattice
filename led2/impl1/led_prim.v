// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.10.0.111.2
// Netlist written on Sat Apr 27 17:43:11 2019
//
// Verilog Description of module led
//

module led (key, sw, led1, led2) /* synthesis syn_module_defined=1 */ ;   // d:/code/fpga/lattice/led2/led.v(1[8:11])
    input [2:0]key;   // d:/code/fpga/lattice/led2/led.v(3[18:21])
    input [2:0]sw;   // d:/code/fpga/lattice/led2/led.v(4[18:20])
    output [2:0]led1;   // d:/code/fpga/lattice/led2/led.v(6[19:23])
    output [2:0]led2;   // d:/code/fpga/lattice/led2/led.v(7[19:23])
    
    
    wire led1_c_2_c, led1_c_1_c, led1_c_0_c, sw_c_2, sw_c_1, sw_c_0, 
        led2_c_2, led2_c_1, led2_c_0, VCC_net, GND_net;
    
    VHI i22 (.Z(VCC_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    TSALL TSALL_INST (.TSALL(GND_net));
    VLO i26 (.Z(GND_net));
    OB led1_pad_2 (.I(led1_c_2_c), .O(led1[2]));   // d:/code/fpga/lattice/led2/led.v(6[19:23])
    OB led1_pad_1 (.I(led1_c_1_c), .O(led1[1]));   // d:/code/fpga/lattice/led2/led.v(6[19:23])
    OB led1_pad_0 (.I(led1_c_0_c), .O(led1[0]));   // d:/code/fpga/lattice/led2/led.v(6[19:23])
    OB led2_pad_2 (.I(led2_c_2), .O(led2[2]));   // d:/code/fpga/lattice/led2/led.v(7[19:23])
    OB led2_pad_1 (.I(led2_c_1), .O(led2[1]));   // d:/code/fpga/lattice/led2/led.v(7[19:23])
    OB led2_pad_0 (.I(led2_c_0), .O(led2[0]));   // d:/code/fpga/lattice/led2/led.v(7[19:23])
    IB led1_c_2_pad (.I(key[2]), .O(led1_c_2_c));   // d:/code/fpga/lattice/led2/led.v(3[18:21])
    IB led1_c_1_pad (.I(key[1]), .O(led1_c_1_c));   // d:/code/fpga/lattice/led2/led.v(3[18:21])
    IB led1_c_0_pad (.I(key[0]), .O(led1_c_0_c));   // d:/code/fpga/lattice/led2/led.v(3[18:21])
    IB sw_pad_2 (.I(sw[2]), .O(sw_c_2));   // d:/code/fpga/lattice/led2/led.v(4[18:20])
    IB sw_pad_1 (.I(sw[1]), .O(sw_c_1));   // d:/code/fpga/lattice/led2/led.v(4[18:20])
    IB sw_pad_0 (.I(sw[0]), .O(sw_c_0));   // d:/code/fpga/lattice/led2/led.v(4[18:20])
    GSR GSR_INST (.GSR(VCC_net));
    LUT4 sw_2__I_0_1_lut (.A(sw_c_2), .Z(led2_c_2)) /* synthesis lut_function=(!(A)) */ ;   // d:/code/fpga/lattice/led2/led.v(15[16:22])
    defparam sw_2__I_0_1_lut.init = 16'h5555;
    LUT4 sw_1__I_0_1_lut (.A(sw_c_1), .Z(led2_c_1)) /* synthesis lut_function=(!(A)) */ ;   // d:/code/fpga/lattice/led2/led.v(14[16:22])
    defparam sw_1__I_0_1_lut.init = 16'h5555;
    LUT4 sw_0__I_0_1_lut (.A(sw_c_0), .Z(led2_c_0)) /* synthesis lut_function=(!(A)) */ ;   // d:/code/fpga/lattice/led2/led.v(13[16:22])
    defparam sw_0__I_0_1_lut.init = 16'h5555;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

