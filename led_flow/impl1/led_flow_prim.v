// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.10.0.111.2
// Netlist written on Sat May 04 22:34:25 2019
//
// Verilog Description of module led_flow
//

module led_flow (clk, rst, led) /* synthesis syn_module_defined=1 */ ;   // d:/code/fpga/lattice/led_flow/led_flow.v(1[8:16])
    input clk;   // d:/code/fpga/lattice/led_flow/led_flow.v(1[23:26])
    input rst;   // d:/code/fpga/lattice/led_flow/led_flow.v(1[33:36])
    output [7:0]led;   // d:/code/fpga/lattice/led_flow/led_flow.v(1[53:56])
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // d:/code/fpga/lattice/led_flow/led_flow.v(1[23:26])
    
    wire GND_net, VCC_net, rst_c, led_c_7, led_c_6, led_c_5, led_c_4, 
        led_c_3, led_c_2, led_c_1, led_c_0;
    wire [31:0]counter;   // d:/code/fpga/lattice/led_flow/led_flow.v(4[12:19])
    
    wire n12, n8, n48, n46, n43, n42, n40, n38, n37, n32, 
        clk_c_enable_8, n28, n27, n423, n208, n134, n135, n136, 
        n137, n138, n139, n140, n141, n142, n143, n144, n145, 
        n146, n147, n148, n149, n150, n151, n152, n153, n154, 
        n155, n156, n157, n158, n159, n160, n161, n162, n163, 
        n164, n165, n420, n419, n417, n416, n415, n414, n413, 
        n412, n411, n410, n409, n408, n407, n406, n405, n404, 
        n403, n402, n401, n400, n399, n398, n397, n418, n396, 
        n395, n394, n393;
    
    VHI i177 (.Z(VCC_net));
    LUT4 i7_2_lut (.A(counter[22]), .B(counter[25]), .Z(n32)) /* synthesis lut_function=(A+(B)) */ ;   // d:/code/fpga/lattice/led_flow/led_flow.v(21[11:34])
    defparam i7_2_lut.init = 16'heeee;
    CCU2D counter_33_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n393), .S1(n165));   // d:/code/fpga/lattice/led_flow/led_flow.v(12[13:22])
    defparam counter_33_add_4_1.INIT0 = 16'hF000;
    defparam counter_33_add_4_1.INIT1 = 16'h0555;
    defparam counter_33_add_4_1.INJECT1_0 = "NO";
    defparam counter_33_add_4_1.INJECT1_1 = "NO";
    OB led_pad_7 (.I(led_c_7), .O(led[7]));   // d:/code/fpga/lattice/led_flow/led_flow.v(1[53:56])
    FD1S3IX counter_33__i0 (.D(n165), .CK(clk_c), .CD(n208), .Q(counter[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/code/fpga/lattice/led_flow/led_flow.v(12[13:22])
    defparam counter_33__i0.GSR = "ENABLED";
    LUT4 i171_4_lut (.A(n423), .B(counter[19]), .C(n12), .D(n8), .Z(clk_c_enable_8)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/code/fpga/lattice/led_flow/led_flow.v(21[11:34])
    defparam i171_4_lut.init = 16'h4000;
    LUT4 i24_4_lut (.A(n43), .B(n48), .C(n37), .D(n38), .Z(n423)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/code/fpga/lattice/led_flow/led_flow.v(21[11:34])
    defparam i24_4_lut.init = 16'hfffe;
    LUT4 i5_4_lut (.A(counter[16]), .B(counter[9]), .C(counter[6]), .D(counter[18]), 
         .Z(n12)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i5_4_lut.init = 16'h8000;
    LUT4 i1_2_lut (.A(counter[14]), .B(counter[17]), .Z(n8)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i18_4_lut (.A(counter[8]), .B(counter[11]), .C(counter[7]), .D(counter[21]), 
         .Z(n43)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/code/fpga/lattice/led_flow/led_flow.v(21[11:34])
    defparam i18_4_lut.init = 16'hfffe;
    CCU2D add_162_26 (.A0(counter[31]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n420), 
          .S1(n208));
    defparam add_162_26.INIT0 = 16'h5555;
    defparam add_162_26.INIT1 = 16'h0000;
    defparam add_162_26.INJECT1_0 = "NO";
    defparam add_162_26.INJECT1_1 = "NO";
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 i23_4_lut (.A(n27), .B(n46), .C(n40), .D(n28), .Z(n48)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/code/fpga/lattice/led_flow/led_flow.v(21[11:34])
    defparam i23_4_lut.init = 16'hfffe;
    LUT4 i12_2_lut (.A(counter[28]), .B(counter[2]), .Z(n37)) /* synthesis lut_function=(A+(B)) */ ;   // d:/code/fpga/lattice/led_flow/led_flow.v(21[11:34])
    defparam i12_2_lut.init = 16'heeee;
    LUT4 i2_2_lut (.A(counter[31]), .B(counter[23]), .Z(n27)) /* synthesis lut_function=(A+(B)) */ ;   // d:/code/fpga/lattice/led_flow/led_flow.v(21[11:34])
    defparam i2_2_lut.init = 16'heeee;
    FD1S3IX counter_33__i31 (.D(n134), .CK(clk_c), .CD(n208), .Q(counter[31])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/code/fpga/lattice/led_flow/led_flow.v(12[13:22])
    defparam counter_33__i31.GSR = "ENABLED";
    OB led_pad_6 (.I(led_c_6), .O(led[6]));   // d:/code/fpga/lattice/led_flow/led_flow.v(1[53:56])
    VLO i1 (.Z(GND_net));
    CCU2D add_162_24 (.A0(counter[29]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter[30]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n419), .COUT(n420));
    defparam add_162_24.INIT0 = 16'h5555;
    defparam add_162_24.INIT1 = 16'h5555;
    defparam add_162_24.INJECT1_0 = "NO";
    defparam add_162_24.INJECT1_1 = "NO";
    CCU2D counter_33_add_4_27 (.A0(counter[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n405), .COUT(n406), .S0(n140), .S1(n139));   // d:/code/fpga/lattice/led_flow/led_flow.v(12[13:22])
    defparam counter_33_add_4_27.INIT0 = 16'hfaaa;
    defparam counter_33_add_4_27.INIT1 = 16'hfaaa;
    defparam counter_33_add_4_27.INJECT1_0 = "NO";
    defparam counter_33_add_4_27.INJECT1_1 = "NO";
    CCU2D counter_33_add_4_11 (.A0(counter[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n397), .COUT(n398), .S0(n156), .S1(n155));   // d:/code/fpga/lattice/led_flow/led_flow.v(12[13:22])
    defparam counter_33_add_4_11.INIT0 = 16'hfaaa;
    defparam counter_33_add_4_11.INIT1 = 16'hfaaa;
    defparam counter_33_add_4_11.INJECT1_0 = "NO";
    defparam counter_33_add_4_11.INJECT1_1 = "NO";
    CCU2D add_162_22 (.A0(counter[27]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter[28]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n418), .COUT(n419));
    defparam add_162_22.INIT0 = 16'h5555;
    defparam add_162_22.INIT1 = 16'h5555;
    defparam add_162_22.INJECT1_0 = "NO";
    defparam add_162_22.INJECT1_1 = "NO";
    CCU2D add_162_20 (.A0(counter[25]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter[26]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n417), .COUT(n418));
    defparam add_162_20.INIT0 = 16'h5555;
    defparam add_162_20.INIT1 = 16'h5555;
    defparam add_162_20.INJECT1_0 = "NO";
    defparam add_162_20.INJECT1_1 = "NO";
    LUT4 i21_4_lut (.A(counter[15]), .B(n42), .C(n32), .D(counter[13]), 
         .Z(n46)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/code/fpga/lattice/led_flow/led_flow.v(21[11:34])
    defparam i21_4_lut.init = 16'hfffe;
    FD1P3AX led_i0_i1 (.D(led_c_7), .SP(clk_c_enable_8), .CK(clk_c), .Q(led_c_0));   // d:/code/fpga/lattice/led_flow/led_flow.v(21[8] 22[34])
    defparam led_i0_i1.GSR = "ENABLED";
    GSR GSR_INST (.GSR(rst_c));
    FD1S3IX counter_33__i30 (.D(n135), .CK(clk_c), .CD(n208), .Q(counter[30])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/code/fpga/lattice/led_flow/led_flow.v(12[13:22])
    defparam counter_33__i30.GSR = "ENABLED";
    FD1S3IX counter_33__i29 (.D(n136), .CK(clk_c), .CD(n208), .Q(counter[29])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/code/fpga/lattice/led_flow/led_flow.v(12[13:22])
    defparam counter_33__i29.GSR = "ENABLED";
    FD1S3IX counter_33__i28 (.D(n137), .CK(clk_c), .CD(n208), .Q(counter[28])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/code/fpga/lattice/led_flow/led_flow.v(12[13:22])
    defparam counter_33__i28.GSR = "ENABLED";
    FD1S3IX counter_33__i27 (.D(n138), .CK(clk_c), .CD(n208), .Q(counter[27])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/code/fpga/lattice/led_flow/led_flow.v(12[13:22])
    defparam counter_33__i27.GSR = "ENABLED";
    FD1S3IX counter_33__i26 (.D(n139), .CK(clk_c), .CD(n208), .Q(counter[26])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/code/fpga/lattice/led_flow/led_flow.v(12[13:22])
    defparam counter_33__i26.GSR = "ENABLED";
    FD1S3IX counter_33__i25 (.D(n140), .CK(clk_c), .CD(n208), .Q(counter[25])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/code/fpga/lattice/led_flow/led_flow.v(12[13:22])
    defparam counter_33__i25.GSR = "ENABLED";
    FD1S3IX counter_33__i24 (.D(n141), .CK(clk_c), .CD(n208), .Q(counter[24])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/code/fpga/lattice/led_flow/led_flow.v(12[13:22])
    defparam counter_33__i24.GSR = "ENABLED";
    FD1S3IX counter_33__i23 (.D(n142), .CK(clk_c), .CD(n208), .Q(counter[23])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/code/fpga/lattice/led_flow/led_flow.v(12[13:22])
    defparam counter_33__i23.GSR = "ENABLED";
    FD1S3IX counter_33__i22 (.D(n143), .CK(clk_c), .CD(n208), .Q(counter[22])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/code/fpga/lattice/led_flow/led_flow.v(12[13:22])
    defparam counter_33__i22.GSR = "ENABLED";
    FD1S3IX counter_33__i21 (.D(n144), .CK(clk_c), .CD(n208), .Q(counter[21])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/code/fpga/lattice/led_flow/led_flow.v(12[13:22])
    defparam counter_33__i21.GSR = "ENABLED";
    FD1S3IX counter_33__i20 (.D(n145), .CK(clk_c), .CD(n208), .Q(counter[20])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/code/fpga/lattice/led_flow/led_flow.v(12[13:22])
    defparam counter_33__i20.GSR = "ENABLED";
    FD1S3IX counter_33__i19 (.D(n146), .CK(clk_c), .CD(n208), .Q(counter[19])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/code/fpga/lattice/led_flow/led_flow.v(12[13:22])
    defparam counter_33__i19.GSR = "ENABLED";
    FD1S3IX counter_33__i18 (.D(n147), .CK(clk_c), .CD(n208), .Q(counter[18])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/code/fpga/lattice/led_flow/led_flow.v(12[13:22])
    defparam counter_33__i18.GSR = "ENABLED";
    FD1S3IX counter_33__i17 (.D(n148), .CK(clk_c), .CD(n208), .Q(counter[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/code/fpga/lattice/led_flow/led_flow.v(12[13:22])
    defparam counter_33__i17.GSR = "ENABLED";
    FD1S3IX counter_33__i16 (.D(n149), .CK(clk_c), .CD(n208), .Q(counter[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/code/fpga/lattice/led_flow/led_flow.v(12[13:22])
    defparam counter_33__i16.GSR = "ENABLED";
    FD1S3IX counter_33__i15 (.D(n150), .CK(clk_c), .CD(n208), .Q(counter[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/code/fpga/lattice/led_flow/led_flow.v(12[13:22])
    defparam counter_33__i15.GSR = "ENABLED";
    FD1S3IX counter_33__i14 (.D(n151), .CK(clk_c), .CD(n208), .Q(counter[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/code/fpga/lattice/led_flow/led_flow.v(12[13:22])
    defparam counter_33__i14.GSR = "ENABLED";
    FD1S3IX counter_33__i13 (.D(n152), .CK(clk_c), .CD(n208), .Q(counter[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/code/fpga/lattice/led_flow/led_flow.v(12[13:22])
    defparam counter_33__i13.GSR = "ENABLED";
    FD1S3IX counter_33__i12 (.D(n153), .CK(clk_c), .CD(n208), .Q(counter[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/code/fpga/lattice/led_flow/led_flow.v(12[13:22])
    defparam counter_33__i12.GSR = "ENABLED";
    FD1S3IX counter_33__i11 (.D(n154), .CK(clk_c), .CD(n208), .Q(counter[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/code/fpga/lattice/led_flow/led_flow.v(12[13:22])
    defparam counter_33__i11.GSR = "ENABLED";
    FD1S3IX counter_33__i10 (.D(n155), .CK(clk_c), .CD(n208), .Q(counter[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/code/fpga/lattice/led_flow/led_flow.v(12[13:22])
    defparam counter_33__i10.GSR = "ENABLED";
    FD1S3IX counter_33__i9 (.D(n156), .CK(clk_c), .CD(n208), .Q(counter[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/code/fpga/lattice/led_flow/led_flow.v(12[13:22])
    defparam counter_33__i9.GSR = "ENABLED";
    FD1S3IX counter_33__i8 (.D(n157), .CK(clk_c), .CD(n208), .Q(counter[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/code/fpga/lattice/led_flow/led_flow.v(12[13:22])
    defparam counter_33__i8.GSR = "ENABLED";
    FD1S3IX counter_33__i7 (.D(n158), .CK(clk_c), .CD(n208), .Q(counter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/code/fpga/lattice/led_flow/led_flow.v(12[13:22])
    defparam counter_33__i7.GSR = "ENABLED";
    FD1S3IX counter_33__i6 (.D(n159), .CK(clk_c), .CD(n208), .Q(counter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/code/fpga/lattice/led_flow/led_flow.v(12[13:22])
    defparam counter_33__i6.GSR = "ENABLED";
    FD1S3IX counter_33__i5 (.D(n160), .CK(clk_c), .CD(n208), .Q(counter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/code/fpga/lattice/led_flow/led_flow.v(12[13:22])
    defparam counter_33__i5.GSR = "ENABLED";
    FD1S3IX counter_33__i4 (.D(n161), .CK(clk_c), .CD(n208), .Q(counter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/code/fpga/lattice/led_flow/led_flow.v(12[13:22])
    defparam counter_33__i4.GSR = "ENABLED";
    FD1S3IX counter_33__i3 (.D(n162), .CK(clk_c), .CD(n208), .Q(counter[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/code/fpga/lattice/led_flow/led_flow.v(12[13:22])
    defparam counter_33__i3.GSR = "ENABLED";
    FD1S3IX counter_33__i2 (.D(n163), .CK(clk_c), .CD(n208), .Q(counter[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/code/fpga/lattice/led_flow/led_flow.v(12[13:22])
    defparam counter_33__i2.GSR = "ENABLED";
    FD1S3IX counter_33__i1 (.D(n164), .CK(clk_c), .CD(n208), .Q(counter[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/code/fpga/lattice/led_flow/led_flow.v(12[13:22])
    defparam counter_33__i1.GSR = "ENABLED";
    FD1P3AY led_i0_i8 (.D(led_c_6), .SP(clk_c_enable_8), .CK(clk_c), .Q(led_c_7));   // d:/code/fpga/lattice/led_flow/led_flow.v(21[8] 22[34])
    defparam led_i0_i8.GSR = "ENABLED";
    LUT4 i13_3_lut (.A(counter[30]), .B(counter[29]), .C(counter[1]), 
         .Z(n38)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/code/fpga/lattice/led_flow/led_flow.v(21[11:34])
    defparam i13_3_lut.init = 16'hfefe;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i17_4_lut (.A(counter[3]), .B(counter[12]), .C(counter[5]), .D(counter[4]), 
         .Z(n42)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/code/fpga/lattice/led_flow/led_flow.v(21[11:34])
    defparam i17_4_lut.init = 16'hfffe;
    LUT4 i3_2_lut (.A(counter[27]), .B(counter[26]), .Z(n28)) /* synthesis lut_function=(A+(B)) */ ;   // d:/code/fpga/lattice/led_flow/led_flow.v(21[11:34])
    defparam i3_2_lut.init = 16'heeee;
    CCU2D add_162_18 (.A0(counter[23]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter[24]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n416), .COUT(n417));
    defparam add_162_18.INIT0 = 16'h5555;
    defparam add_162_18.INIT1 = 16'h5555;
    defparam add_162_18.INJECT1_0 = "NO";
    defparam add_162_18.INJECT1_1 = "NO";
    CCU2D counter_33_add_4_9 (.A0(counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n396), .COUT(n397), .S0(n158), .S1(n157));   // d:/code/fpga/lattice/led_flow/led_flow.v(12[13:22])
    defparam counter_33_add_4_9.INIT0 = 16'hfaaa;
    defparam counter_33_add_4_9.INIT1 = 16'hfaaa;
    defparam counter_33_add_4_9.INJECT1_0 = "NO";
    defparam counter_33_add_4_9.INJECT1_1 = "NO";
    CCU2D add_162_16 (.A0(counter[21]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n415), .COUT(n416));
    defparam add_162_16.INIT0 = 16'h5555;
    defparam add_162_16.INIT1 = 16'h5555;
    defparam add_162_16.INJECT1_0 = "NO";
    defparam add_162_16.INJECT1_1 = "NO";
    CCU2D counter_33_add_4_25 (.A0(counter[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n404), .COUT(n405), .S0(n142), .S1(n141));   // d:/code/fpga/lattice/led_flow/led_flow.v(12[13:22])
    defparam counter_33_add_4_25.INIT0 = 16'hfaaa;
    defparam counter_33_add_4_25.INIT1 = 16'hfaaa;
    defparam counter_33_add_4_25.INJECT1_0 = "NO";
    defparam counter_33_add_4_25.INJECT1_1 = "NO";
    CCU2D counter_33_add_4_23 (.A0(counter[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n403), .COUT(n404), .S0(n144), .S1(n143));   // d:/code/fpga/lattice/led_flow/led_flow.v(12[13:22])
    defparam counter_33_add_4_23.INIT0 = 16'hfaaa;
    defparam counter_33_add_4_23.INIT1 = 16'hfaaa;
    defparam counter_33_add_4_23.INJECT1_0 = "NO";
    defparam counter_33_add_4_23.INJECT1_1 = "NO";
    CCU2D counter_33_add_4_21 (.A0(counter[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n402), .COUT(n403), .S0(n146), .S1(n145));   // d:/code/fpga/lattice/led_flow/led_flow.v(12[13:22])
    defparam counter_33_add_4_21.INIT0 = 16'hfaaa;
    defparam counter_33_add_4_21.INIT1 = 16'hfaaa;
    defparam counter_33_add_4_21.INJECT1_0 = "NO";
    defparam counter_33_add_4_21.INJECT1_1 = "NO";
    CCU2D counter_33_add_4_19 (.A0(counter[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n401), .COUT(n402), .S0(n148), .S1(n147));   // d:/code/fpga/lattice/led_flow/led_flow.v(12[13:22])
    defparam counter_33_add_4_19.INIT0 = 16'hfaaa;
    defparam counter_33_add_4_19.INIT1 = 16'hfaaa;
    defparam counter_33_add_4_19.INJECT1_0 = "NO";
    defparam counter_33_add_4_19.INJECT1_1 = "NO";
    CCU2D counter_33_add_4_17 (.A0(counter[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n400), .COUT(n401), .S0(n150), .S1(n149));   // d:/code/fpga/lattice/led_flow/led_flow.v(12[13:22])
    defparam counter_33_add_4_17.INIT0 = 16'hfaaa;
    defparam counter_33_add_4_17.INIT1 = 16'hfaaa;
    defparam counter_33_add_4_17.INJECT1_0 = "NO";
    defparam counter_33_add_4_17.INJECT1_1 = "NO";
    CCU2D counter_33_add_4_15 (.A0(counter[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n399), .COUT(n400), .S0(n152), .S1(n151));   // d:/code/fpga/lattice/led_flow/led_flow.v(12[13:22])
    defparam counter_33_add_4_15.INIT0 = 16'hfaaa;
    defparam counter_33_add_4_15.INIT1 = 16'hfaaa;
    defparam counter_33_add_4_15.INJECT1_0 = "NO";
    defparam counter_33_add_4_15.INJECT1_1 = "NO";
    CCU2D counter_33_add_4_13 (.A0(counter[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n398), .COUT(n399), .S0(n154), .S1(n153));   // d:/code/fpga/lattice/led_flow/led_flow.v(12[13:22])
    defparam counter_33_add_4_13.INIT0 = 16'hfaaa;
    defparam counter_33_add_4_13.INIT1 = 16'hfaaa;
    defparam counter_33_add_4_13.INJECT1_0 = "NO";
    defparam counter_33_add_4_13.INJECT1_1 = "NO";
    CCU2D add_162_2 (.A0(counter[7]), .B0(counter[6]), .C0(GND_net), .D0(GND_net), 
          .A1(counter[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n409));
    defparam add_162_2.INIT0 = 16'h1000;
    defparam add_162_2.INIT1 = 16'h5555;
    defparam add_162_2.INJECT1_0 = "NO";
    defparam add_162_2.INJECT1_1 = "NO";
    CCU2D counter_33_add_4_33 (.A0(counter[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n408), .S0(n134));   // d:/code/fpga/lattice/led_flow/led_flow.v(12[13:22])
    defparam counter_33_add_4_33.INIT0 = 16'hfaaa;
    defparam counter_33_add_4_33.INIT1 = 16'h0000;
    defparam counter_33_add_4_33.INJECT1_0 = "NO";
    defparam counter_33_add_4_33.INJECT1_1 = "NO";
    CCU2D counter_33_add_4_31 (.A0(counter[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[30]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n407), .COUT(n408), .S0(n136), .S1(n135));   // d:/code/fpga/lattice/led_flow/led_flow.v(12[13:22])
    defparam counter_33_add_4_31.INIT0 = 16'hfaaa;
    defparam counter_33_add_4_31.INIT1 = 16'hfaaa;
    defparam counter_33_add_4_31.INJECT1_0 = "NO";
    defparam counter_33_add_4_31.INJECT1_1 = "NO";
    CCU2D counter_33_add_4_7 (.A0(counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n395), .COUT(n396), .S0(n160), .S1(n159));   // d:/code/fpga/lattice/led_flow/led_flow.v(12[13:22])
    defparam counter_33_add_4_7.INIT0 = 16'hfaaa;
    defparam counter_33_add_4_7.INIT1 = 16'hfaaa;
    defparam counter_33_add_4_7.INJECT1_0 = "NO";
    defparam counter_33_add_4_7.INJECT1_1 = "NO";
    CCU2D counter_33_add_4_5 (.A0(counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n394), .COUT(n395), .S0(n162), .S1(n161));   // d:/code/fpga/lattice/led_flow/led_flow.v(12[13:22])
    defparam counter_33_add_4_5.INIT0 = 16'hfaaa;
    defparam counter_33_add_4_5.INIT1 = 16'hfaaa;
    defparam counter_33_add_4_5.INJECT1_0 = "NO";
    defparam counter_33_add_4_5.INJECT1_1 = "NO";
    CCU2D counter_33_add_4_3 (.A0(counter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n393), .COUT(n394), .S0(n164), .S1(n163));   // d:/code/fpga/lattice/led_flow/led_flow.v(12[13:22])
    defparam counter_33_add_4_3.INIT0 = 16'hfaaa;
    defparam counter_33_add_4_3.INIT1 = 16'hfaaa;
    defparam counter_33_add_4_3.INJECT1_0 = "NO";
    defparam counter_33_add_4_3.INJECT1_1 = "NO";
    LUT4 i15_4_lut (.A(counter[10]), .B(counter[24]), .C(counter[20]), 
         .D(counter[0]), .Z(n40)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/code/fpga/lattice/led_flow/led_flow.v(21[11:34])
    defparam i15_4_lut.init = 16'hfffe;
    CCU2D add_162_10 (.A0(counter[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n412), .COUT(n413));
    defparam add_162_10.INIT0 = 16'h5555;
    defparam add_162_10.INIT1 = 16'h5aaa;
    defparam add_162_10.INJECT1_0 = "NO";
    defparam add_162_10.INJECT1_1 = "NO";
    CCU2D add_162_8 (.A0(counter[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n411), .COUT(n412));
    defparam add_162_8.INIT0 = 16'h5555;
    defparam add_162_8.INIT1 = 16'h5aaa;
    defparam add_162_8.INJECT1_0 = "NO";
    defparam add_162_8.INJECT1_1 = "NO";
    FD1P3AY led_i0_i7 (.D(led_c_5), .SP(clk_c_enable_8), .CK(clk_c), .Q(led_c_6));   // d:/code/fpga/lattice/led_flow/led_flow.v(21[8] 22[34])
    defparam led_i0_i7.GSR = "ENABLED";
    FD1P3AY led_i0_i6 (.D(led_c_4), .SP(clk_c_enable_8), .CK(clk_c), .Q(led_c_5));   // d:/code/fpga/lattice/led_flow/led_flow.v(21[8] 22[34])
    defparam led_i0_i6.GSR = "ENABLED";
    FD1P3AY led_i0_i5 (.D(led_c_3), .SP(clk_c_enable_8), .CK(clk_c), .Q(led_c_4));   // d:/code/fpga/lattice/led_flow/led_flow.v(21[8] 22[34])
    defparam led_i0_i5.GSR = "ENABLED";
    FD1P3AY led_i0_i4 (.D(led_c_2), .SP(clk_c_enable_8), .CK(clk_c), .Q(led_c_3));   // d:/code/fpga/lattice/led_flow/led_flow.v(21[8] 22[34])
    defparam led_i0_i4.GSR = "ENABLED";
    FD1P3AY led_i0_i3 (.D(led_c_1), .SP(clk_c_enable_8), .CK(clk_c), .Q(led_c_2));   // d:/code/fpga/lattice/led_flow/led_flow.v(21[8] 22[34])
    defparam led_i0_i3.GSR = "ENABLED";
    FD1P3AY led_i0_i2 (.D(led_c_0), .SP(clk_c_enable_8), .CK(clk_c), .Q(led_c_1));   // d:/code/fpga/lattice/led_flow/led_flow.v(21[8] 22[34])
    defparam led_i0_i2.GSR = "ENABLED";
    CCU2D add_162_14 (.A0(counter[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n414), .COUT(n415));
    defparam add_162_14.INIT0 = 16'h5aaa;
    defparam add_162_14.INIT1 = 16'h5555;
    defparam add_162_14.INJECT1_0 = "NO";
    defparam add_162_14.INJECT1_1 = "NO";
    CCU2D add_162_12 (.A0(counter[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n413), .COUT(n414));
    defparam add_162_12.INIT0 = 16'h5aaa;
    defparam add_162_12.INIT1 = 16'h5aaa;
    defparam add_162_12.INJECT1_0 = "NO";
    defparam add_162_12.INJECT1_1 = "NO";
    CCU2D add_162_6 (.A0(counter[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n410), .COUT(n411));
    defparam add_162_6.INIT0 = 16'h5555;
    defparam add_162_6.INIT1 = 16'h5555;
    defparam add_162_6.INJECT1_0 = "NO";
    defparam add_162_6.INJECT1_1 = "NO";
    CCU2D add_162_4 (.A0(counter[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n409), .COUT(n410));
    defparam add_162_4.INIT0 = 16'h5aaa;
    defparam add_162_4.INIT1 = 16'h5555;
    defparam add_162_4.INJECT1_0 = "NO";
    defparam add_162_4.INJECT1_1 = "NO";
    CCU2D counter_33_add_4_29 (.A0(counter[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n406), .COUT(n407), .S0(n138), .S1(n137));   // d:/code/fpga/lattice/led_flow/led_flow.v(12[13:22])
    defparam counter_33_add_4_29.INIT0 = 16'hfaaa;
    defparam counter_33_add_4_29.INIT1 = 16'hfaaa;
    defparam counter_33_add_4_29.INJECT1_0 = "NO";
    defparam counter_33_add_4_29.INJECT1_1 = "NO";
    OB led_pad_5 (.I(led_c_5), .O(led[5]));   // d:/code/fpga/lattice/led_flow/led_flow.v(1[53:56])
    OB led_pad_4 (.I(led_c_4), .O(led[4]));   // d:/code/fpga/lattice/led_flow/led_flow.v(1[53:56])
    OB led_pad_3 (.I(led_c_3), .O(led[3]));   // d:/code/fpga/lattice/led_flow/led_flow.v(1[53:56])
    OB led_pad_2 (.I(led_c_2), .O(led[2]));   // d:/code/fpga/lattice/led_flow/led_flow.v(1[53:56])
    OB led_pad_1 (.I(led_c_1), .O(led[1]));   // d:/code/fpga/lattice/led_flow/led_flow.v(1[53:56])
    OB led_pad_0 (.I(led_c_0), .O(led[0]));   // d:/code/fpga/lattice/led_flow/led_flow.v(1[53:56])
    IB clk_pad (.I(clk), .O(clk_c));   // d:/code/fpga/lattice/led_flow/led_flow.v(1[23:26])
    IB rst_pad (.I(rst), .O(rst_c));   // d:/code/fpga/lattice/led_flow/led_flow.v(1[33:36])
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

