// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.10.0.111.2
// Netlist written on Sat Apr 27 18:05:03 2019
//
// Verilog Description of module decode38
//

module decode38 (key, sw, led) /* synthesis syn_module_defined=1 */ ;   // d:/code/fpga/lattice/decoder38/decoder38.v(1[8:16])
    input [0:0]key;   // d:/code/fpga/lattice/decoder38/decoder38.v(2[18:21])
    input [2:0]sw;   // d:/code/fpga/lattice/decoder38/decoder38.v(3[18:20])
    output [7:0]led;   // d:/code/fpga/lattice/decoder38/decoder38.v(4[18:21])
    
    wire key_c_0 /* synthesis is_clock=1 */ ;   // d:/code/fpga/lattice/decoder38/decoder38.v(2[18:21])
    wire key_0__N_10 /* synthesis is_inv_clock=1 */ ;   // d:/code/fpga/lattice/decoder38/decoder38.v(4[18:21])
    
    wire GND_net, VCC_net, sw_c_2, sw_c_1, sw_c_0, led_c_7, led_c_6, 
        led_c_5, led_c_4, led_c_3, led_c_2, led_c_1, led_c_0;
    wire [7:0]led_7__N_1;
    
    VHI i51 (.Z(VCC_net));
    INV i90 (.A(key_c_0), .Z(key_0__N_10));   // d:/code/fpga/lattice/decoder38/decoder38.v(2[18:21])
    FD1S3AX led_i8 (.D(led_7__N_1[7]), .CK(key_0__N_10), .Q(led_c_7));   // d:/code/fpga/lattice/decoder38/decoder38.v(6[8] 19[5])
    defparam led_i8.GSR = "ENABLED";
    IB sw_pad_0 (.I(sw[0]), .O(sw_c_0));   // d:/code/fpga/lattice/decoder38/decoder38.v(3[18:20])
    LUT4 i79_2_lut_3_lut (.A(sw_c_2), .B(sw_c_0), .C(sw_c_1), .Z(led_7__N_1[2])) /* synthesis lut_function=(((C)+!B)+!A) */ ;   // d:/code/fpga/lattice/decoder38/decoder38.v(8[3] 18[10])
    defparam i79_2_lut_3_lut.init = 16'hf7f7;
    LUT4 i77_2_lut_3_lut (.A(sw_c_2), .B(sw_c_0), .C(sw_c_1), .Z(led_7__N_1[0])) /* synthesis lut_function=(!(A (B (C)))) */ ;   // d:/code/fpga/lattice/decoder38/decoder38.v(8[3] 18[10])
    defparam i77_2_lut_3_lut.init = 16'h7f7f;
    LUT4 i86_2_lut_3_lut (.A(sw_c_1), .B(sw_c_0), .C(sw_c_2), .Z(led_7__N_1[5])) /* synthesis lut_function=((B+(C))+!A) */ ;   // d:/code/fpga/lattice/decoder38/decoder38.v(8[3] 18[10])
    defparam i86_2_lut_3_lut.init = 16'hfdfd;
    IB sw_pad_1 (.I(sw[1]), .O(sw_c_1));   // d:/code/fpga/lattice/decoder38/decoder38.v(3[18:20])
    IB sw_pad_2 (.I(sw[2]), .O(sw_c_2));   // d:/code/fpga/lattice/decoder38/decoder38.v(3[18:20])
    IB key_pad_0 (.I(key[0]), .O(key_c_0));   // d:/code/fpga/lattice/decoder38/decoder38.v(2[18:21])
    LUT4 i74_2_lut_3_lut (.A(sw_c_1), .B(sw_c_0), .C(sw_c_2), .Z(led_7__N_1[1])) /* synthesis lut_function=((B+!(C))+!A) */ ;   // d:/code/fpga/lattice/decoder38/decoder38.v(8[3] 18[10])
    defparam i74_2_lut_3_lut.init = 16'hdfdf;
    FD1S3AX led_i1 (.D(led_7__N_1[0]), .CK(key_0__N_10), .Q(led_c_0));   // d:/code/fpga/lattice/decoder38/decoder38.v(6[8] 19[5])
    defparam led_i1.GSR = "ENABLED";
    LUT4 i84_3_lut (.A(sw_c_1), .B(sw_c_2), .C(sw_c_0), .Z(led_7__N_1[4])) /* synthesis lut_function=((B+!(C))+!A) */ ;   // d:/code/fpga/lattice/decoder38/decoder38.v(8[3] 18[10])
    defparam i84_3_lut.init = 16'hdfdf;
    FD1S3AX led_i7 (.D(led_7__N_1[6]), .CK(key_0__N_10), .Q(led_c_6));   // d:/code/fpga/lattice/decoder38/decoder38.v(6[8] 19[5])
    defparam led_i7.GSR = "ENABLED";
    FD1S3AX led_i6 (.D(led_7__N_1[5]), .CK(key_0__N_10), .Q(led_c_5));   // d:/code/fpga/lattice/decoder38/decoder38.v(6[8] 19[5])
    defparam led_i6.GSR = "ENABLED";
    FD1S3AX led_i5 (.D(led_7__N_1[4]), .CK(key_0__N_10), .Q(led_c_4));   // d:/code/fpga/lattice/decoder38/decoder38.v(6[8] 19[5])
    defparam led_i5.GSR = "ENABLED";
    FD1S3AX led_i4 (.D(led_7__N_1[3]), .CK(key_0__N_10), .Q(led_c_3));   // d:/code/fpga/lattice/decoder38/decoder38.v(6[8] 19[5])
    defparam led_i4.GSR = "ENABLED";
    OB led_pad_0 (.I(led_c_0), .O(led[0]));   // d:/code/fpga/lattice/decoder38/decoder38.v(4[18:21])
    OB led_pad_1 (.I(led_c_1), .O(led[1]));   // d:/code/fpga/lattice/decoder38/decoder38.v(4[18:21])
    FD1S3AX led_i3 (.D(led_7__N_1[2]), .CK(key_0__N_10), .Q(led_c_2));   // d:/code/fpga/lattice/decoder38/decoder38.v(6[8] 19[5])
    defparam led_i3.GSR = "ENABLED";
    FD1S3AX led_i2 (.D(led_7__N_1[1]), .CK(key_0__N_10), .Q(led_c_1));   // d:/code/fpga/lattice/decoder38/decoder38.v(6[8] 19[5])
    defparam led_i2.GSR = "ENABLED";
    LUT4 i81_3_lut (.A(sw_c_1), .B(sw_c_0), .C(sw_c_2), .Z(led_7__N_1[3])) /* synthesis lut_function=(A+(B+!(C))) */ ;   // d:/code/fpga/lattice/decoder38/decoder38.v(8[3] 18[10])
    defparam i81_3_lut.init = 16'hefef;
    LUT4 i54_2_lut_3_lut (.A(sw_c_2), .B(sw_c_1), .C(sw_c_0), .Z(led_7__N_1[7])) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i54_2_lut_3_lut.init = 16'hfefe;
    OB led_pad_2 (.I(led_c_2), .O(led[2]));   // d:/code/fpga/lattice/decoder38/decoder38.v(4[18:21])
    OB led_pad_3 (.I(led_c_3), .O(led[3]));   // d:/code/fpga/lattice/decoder38/decoder38.v(4[18:21])
    VLO i89 (.Z(GND_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 i88_2_lut_3_lut (.A(sw_c_2), .B(sw_c_1), .C(sw_c_0), .Z(led_7__N_1[6])) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam i88_2_lut_3_lut.init = 16'hefef;
    OB led_pad_4 (.I(led_c_4), .O(led[4]));   // d:/code/fpga/lattice/decoder38/decoder38.v(4[18:21])
    OB led_pad_5 (.I(led_c_5), .O(led[5]));   // d:/code/fpga/lattice/decoder38/decoder38.v(4[18:21])
    OB led_pad_6 (.I(led_c_6), .O(led[6]));   // d:/code/fpga/lattice/decoder38/decoder38.v(4[18:21])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    GSR GSR_INST (.GSR(VCC_net));
    OB led_pad_7 (.I(led_c_7), .O(led[7]));   // d:/code/fpga/lattice/decoder38/decoder38.v(4[18:21])
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

