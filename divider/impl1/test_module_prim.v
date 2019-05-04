// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.10.0.111.2
// Netlist written on Tue Apr 30 18:43:49 2019
//
// Verilog Description of module test_module
//

module test_module (clk, clk_out, rst) /* synthesis syn_module_defined=1 */ ;   // d:/code/fpga/lattice/divider/divider.v(1[8:19])
    input [0:0]clk;   // d:/code/fpga/lattice/divider/divider.v(3[18:21])
    output [7:0]clk_out;   // d:/code/fpga/lattice/divider/divider.v(5[18:25])
    input [0:0]rst;   // d:/code/fpga/lattice/divider/divider.v(4[18:21])
    
    wire clk_c_0 /* synthesis SET_AS_NETWORK=clk_c_0, is_clock=1 */ ;   // d:/code/fpga/lattice/divider/divider.v(3[18:21])
    
    wire GND_net, VCC_net, rst_c_0, clk_out_c_7, clk_out_c_6, clk_out_c_5, 
        clk_out_c_4, clk_out_c_3, clk_out_c_2, clk_out_c_1, clk_out_c_0;
    wire [31:0]counter;   // d:/code/fpga/lattice/divider/divider.v(6[14:21])
    
    wire n13, n12, n355, n354, n353, n352, n351, n350, n349, 
        n348, n347, counter_31__N_73, n242, n346, n345, n344, 
        n343, n342, n341, n340, n188, n187, n189, n190, n191, 
        n192, n193, n194, n102, n103, n104, n105, n106, n107, 
        n108, n109, n110, n111, n112, n113, n114, n115, n116, 
        n117, n118, n119, n120, n121, n122, n123, n124, n125, 
        n407, n401, n399, n397, n395, clk_c_0_enable_8;
    
    VHI i2 (.Z(VCC_net));
    OB clk_out_pad_7 (.I(clk_out_c_7), .O(clk_out[7]));   // d:/code/fpga/lattice/divider/divider.v(5[18:25])
    LUT4 i212_4_lut (.A(counter[9]), .B(counter[3]), .C(counter[1]), .D(counter[17]), 
         .Z(n399)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i212_4_lut.init = 16'h8000;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    CCU2D counter_36_37_add_4_25 (.A0(counter[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n355), .S0(n102));   // d:/code/fpga/lattice/divider/divider.v(21[14:25])
    defparam counter_36_37_add_4_25.INIT0 = 16'hfaaa;
    defparam counter_36_37_add_4_25.INIT1 = 16'h0000;
    defparam counter_36_37_add_4_25.INJECT1_0 = "NO";
    defparam counter_36_37_add_4_25.INJECT1_1 = "NO";
    CCU2D counter_36_37_add_4_23 (.A0(counter[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n354), .COUT(n355), .S0(n104), .S1(n103));   // d:/code/fpga/lattice/divider/divider.v(21[14:25])
    defparam counter_36_37_add_4_23.INIT0 = 16'hfaaa;
    defparam counter_36_37_add_4_23.INIT1 = 16'hfaaa;
    defparam counter_36_37_add_4_23.INJECT1_0 = "NO";
    defparam counter_36_37_add_4_23.INJECT1_1 = "NO";
    CCU2D counter_36_37_add_4_21 (.A0(counter[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n353), .COUT(n354), .S0(n106), .S1(n105));   // d:/code/fpga/lattice/divider/divider.v(21[14:25])
    defparam counter_36_37_add_4_21.INIT0 = 16'hfaaa;
    defparam counter_36_37_add_4_21.INIT1 = 16'hfaaa;
    defparam counter_36_37_add_4_21.INJECT1_0 = "NO";
    defparam counter_36_37_add_4_21.INJECT1_1 = "NO";
    CCU2D counter_36_37_add_4_19 (.A0(counter[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n352), .COUT(n353), .S0(n108), .S1(n107));   // d:/code/fpga/lattice/divider/divider.v(21[14:25])
    defparam counter_36_37_add_4_19.INIT0 = 16'hfaaa;
    defparam counter_36_37_add_4_19.INIT1 = 16'hfaaa;
    defparam counter_36_37_add_4_19.INJECT1_0 = "NO";
    defparam counter_36_37_add_4_19.INJECT1_1 = "NO";
    CCU2D counter_36_37_add_4_17 (.A0(counter[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n351), .COUT(n352), .S0(n110), .S1(n109));   // d:/code/fpga/lattice/divider/divider.v(21[14:25])
    defparam counter_36_37_add_4_17.INIT0 = 16'hfaaa;
    defparam counter_36_37_add_4_17.INIT1 = 16'hfaaa;
    defparam counter_36_37_add_4_17.INJECT1_0 = "NO";
    defparam counter_36_37_add_4_17.INJECT1_1 = "NO";
    CCU2D counter_36_37_add_4_15 (.A0(counter[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n350), .COUT(n351), .S0(n112), .S1(n111));   // d:/code/fpga/lattice/divider/divider.v(21[14:25])
    defparam counter_36_37_add_4_15.INIT0 = 16'hfaaa;
    defparam counter_36_37_add_4_15.INIT1 = 16'hfaaa;
    defparam counter_36_37_add_4_15.INJECT1_0 = "NO";
    defparam counter_36_37_add_4_15.INJECT1_1 = "NO";
    CCU2D counter_36_37_add_4_13 (.A0(counter[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n349), .COUT(n350), .S0(n114), .S1(n113));   // d:/code/fpga/lattice/divider/divider.v(21[14:25])
    defparam counter_36_37_add_4_13.INIT0 = 16'hfaaa;
    defparam counter_36_37_add_4_13.INIT1 = 16'hfaaa;
    defparam counter_36_37_add_4_13.INJECT1_0 = "NO";
    defparam counter_36_37_add_4_13.INJECT1_1 = "NO";
    CCU2D counter_36_37_add_4_11 (.A0(counter[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n348), .COUT(n349), .S0(n116), .S1(n115));   // d:/code/fpga/lattice/divider/divider.v(21[14:25])
    defparam counter_36_37_add_4_11.INIT0 = 16'hfaaa;
    defparam counter_36_37_add_4_11.INIT1 = 16'hfaaa;
    defparam counter_36_37_add_4_11.INJECT1_0 = "NO";
    defparam counter_36_37_add_4_11.INJECT1_1 = "NO";
    CCU2D counter_36_37_add_4_9 (.A0(counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n347), .COUT(n348), .S0(n118), .S1(n117));   // d:/code/fpga/lattice/divider/divider.v(21[14:25])
    defparam counter_36_37_add_4_9.INIT0 = 16'hfaaa;
    defparam counter_36_37_add_4_9.INIT1 = 16'hfaaa;
    defparam counter_36_37_add_4_9.INJECT1_0 = "NO";
    defparam counter_36_37_add_4_9.INJECT1_1 = "NO";
    CCU2D counter_36_37_add_4_7 (.A0(counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n346), .COUT(n347), .S0(n120), .S1(n119));   // d:/code/fpga/lattice/divider/divider.v(21[14:25])
    defparam counter_36_37_add_4_7.INIT0 = 16'hfaaa;
    defparam counter_36_37_add_4_7.INIT1 = 16'hfaaa;
    defparam counter_36_37_add_4_7.INJECT1_0 = "NO";
    defparam counter_36_37_add_4_7.INJECT1_1 = "NO";
    CCU2D counter_36_37_add_4_5 (.A0(counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n345), .COUT(n346), .S0(n122), .S1(n121));   // d:/code/fpga/lattice/divider/divider.v(21[14:25])
    defparam counter_36_37_add_4_5.INIT0 = 16'hfaaa;
    defparam counter_36_37_add_4_5.INIT1 = 16'hfaaa;
    defparam counter_36_37_add_4_5.INJECT1_0 = "NO";
    defparam counter_36_37_add_4_5.INJECT1_1 = "NO";
    CCU2D counter_36_37_add_4_3 (.A0(counter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n344), .COUT(n345), .S0(n124), .S1(n123));   // d:/code/fpga/lattice/divider/divider.v(21[14:25])
    defparam counter_36_37_add_4_3.INIT0 = 16'hfaaa;
    defparam counter_36_37_add_4_3.INIT1 = 16'hfaaa;
    defparam counter_36_37_add_4_3.INJECT1_0 = "NO";
    defparam counter_36_37_add_4_3.INJECT1_1 = "NO";
    CCU2D counter_36_37_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n344), .S1(n125));   // d:/code/fpga/lattice/divider/divider.v(21[14:25])
    defparam counter_36_37_add_4_1.INIT0 = 16'hF000;
    defparam counter_36_37_add_4_1.INIT1 = 16'h0555;
    defparam counter_36_37_add_4_1.INJECT1_0 = "NO";
    defparam counter_36_37_add_4_1.INJECT1_1 = "NO";
    CCU2D sub_19_add_2_9 (.A0(clk_out_c_7), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n343), .S0(n187));   // d:/code/fpga/lattice/divider/divider.v(32[13:22])
    defparam sub_19_add_2_9.INIT0 = 16'h5555;
    defparam sub_19_add_2_9.INIT1 = 16'h0000;
    defparam sub_19_add_2_9.INJECT1_0 = "NO";
    defparam sub_19_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_19_add_2_7 (.A0(clk_out_c_5), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_out_c_6), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n342), .COUT(n343), .S0(n189), .S1(n188));   // d:/code/fpga/lattice/divider/divider.v(32[13:22])
    defparam sub_19_add_2_7.INIT0 = 16'h5555;
    defparam sub_19_add_2_7.INIT1 = 16'h5555;
    defparam sub_19_add_2_7.INJECT1_0 = "NO";
    defparam sub_19_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_19_add_2_5 (.A0(clk_out_c_3), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_out_c_4), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n341), .COUT(n342), .S0(n191), .S1(n190));   // d:/code/fpga/lattice/divider/divider.v(32[13:22])
    defparam sub_19_add_2_5.INIT0 = 16'h5555;
    defparam sub_19_add_2_5.INIT1 = 16'h5555;
    defparam sub_19_add_2_5.INJECT1_0 = "NO";
    defparam sub_19_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_19_add_2_3 (.A0(clk_out_c_1), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_out_c_2), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n340), .COUT(n341), .S0(n193), .S1(n192));   // d:/code/fpga/lattice/divider/divider.v(32[13:22])
    defparam sub_19_add_2_3.INIT0 = 16'h5555;
    defparam sub_19_add_2_3.INIT1 = 16'h5555;
    defparam sub_19_add_2_3.INJECT1_0 = "NO";
    defparam sub_19_add_2_3.INJECT1_1 = "NO";
    FD1S3IX counter_36_37__i24 (.D(n102), .CK(clk_c_0), .CD(counter_31__N_73), 
            .Q(counter[23])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/code/fpga/lattice/divider/divider.v(21[14:25])
    defparam counter_36_37__i24.GSR = "ENABLED";
    OB clk_out_pad_6 (.I(clk_out_c_6), .O(clk_out[6]));   // d:/code/fpga/lattice/divider/divider.v(5[18:25])
    FD1P3JX clk_out_i0_i3 (.D(n192), .SP(clk_c_0_enable_8), .PD(n242), 
            .CK(clk_c_0), .Q(clk_out_c_2)) /* synthesis lse_init_val=1 */ ;   // d:/code/fpga/lattice/divider/divider.v(26[8] 34[4])
    defparam clk_out_i0_i3.GSR = "ENABLED";
    FD1P3JX clk_out_i0_i2 (.D(n193), .SP(clk_c_0_enable_8), .PD(n242), 
            .CK(clk_c_0), .Q(clk_out_c_1)) /* synthesis lse_init_val=1 */ ;   // d:/code/fpga/lattice/divider/divider.v(26[8] 34[4])
    defparam clk_out_i0_i2.GSR = "ENABLED";
    FD1P3JX clk_out_i0_i4 (.D(n191), .SP(clk_c_0_enable_8), .PD(n242), 
            .CK(clk_c_0), .Q(clk_out_c_3)) /* synthesis lse_init_val=1 */ ;   // d:/code/fpga/lattice/divider/divider.v(26[8] 34[4])
    defparam clk_out_i0_i4.GSR = "ENABLED";
    FD1P3JX clk_out_i0_i5 (.D(n190), .SP(clk_c_0_enable_8), .PD(n242), 
            .CK(clk_c_0), .Q(clk_out_c_4)) /* synthesis lse_init_val=1 */ ;   // d:/code/fpga/lattice/divider/divider.v(26[8] 34[4])
    defparam clk_out_i0_i5.GSR = "ENABLED";
    FD1P3JX clk_out_i0_i6 (.D(n189), .SP(clk_c_0_enable_8), .PD(n242), 
            .CK(clk_c_0), .Q(clk_out_c_5)) /* synthesis lse_init_val=1 */ ;   // d:/code/fpga/lattice/divider/divider.v(26[8] 34[4])
    defparam clk_out_i0_i6.GSR = "ENABLED";
    FD1P3JX clk_out_i0_i7 (.D(n188), .SP(clk_c_0_enable_8), .PD(n242), 
            .CK(clk_c_0), .Q(clk_out_c_6)) /* synthesis lse_init_val=1 */ ;   // d:/code/fpga/lattice/divider/divider.v(26[8] 34[4])
    defparam clk_out_i0_i7.GSR = "ENABLED";
    FD1P3JX clk_out_i0_i8 (.D(n187), .SP(clk_c_0_enable_8), .PD(n242), 
            .CK(clk_c_0), .Q(clk_out_c_7)) /* synthesis lse_init_val=1 */ ;   // d:/code/fpga/lattice/divider/divider.v(26[8] 34[4])
    defparam clk_out_i0_i8.GSR = "ENABLED";
    FD1S3IX counter_36_37__i1 (.D(n125), .CK(clk_c_0), .CD(counter_31__N_73), 
            .Q(counter[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/code/fpga/lattice/divider/divider.v(21[14:25])
    defparam counter_36_37__i1.GSR = "ENABLED";
    GSR GSR_INST (.GSR(VCC_net));
    FD1S3IX counter_36_37__i23 (.D(n103), .CK(clk_c_0), .CD(counter_31__N_73), 
            .Q(counter[22])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/code/fpga/lattice/divider/divider.v(21[14:25])
    defparam counter_36_37__i23.GSR = "ENABLED";
    FD1S3IX counter_36_37__i22 (.D(n104), .CK(clk_c_0), .CD(counter_31__N_73), 
            .Q(counter[21])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/code/fpga/lattice/divider/divider.v(21[14:25])
    defparam counter_36_37__i22.GSR = "ENABLED";
    FD1S3IX counter_36_37__i21 (.D(n105), .CK(clk_c_0), .CD(counter_31__N_73), 
            .Q(counter[20])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/code/fpga/lattice/divider/divider.v(21[14:25])
    defparam counter_36_37__i21.GSR = "ENABLED";
    FD1S3IX counter_36_37__i20 (.D(n106), .CK(clk_c_0), .CD(counter_31__N_73), 
            .Q(counter[19])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/code/fpga/lattice/divider/divider.v(21[14:25])
    defparam counter_36_37__i20.GSR = "ENABLED";
    FD1S3IX counter_36_37__i19 (.D(n107), .CK(clk_c_0), .CD(counter_31__N_73), 
            .Q(counter[18])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/code/fpga/lattice/divider/divider.v(21[14:25])
    defparam counter_36_37__i19.GSR = "ENABLED";
    FD1S3IX counter_36_37__i18 (.D(n108), .CK(clk_c_0), .CD(counter_31__N_73), 
            .Q(counter[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/code/fpga/lattice/divider/divider.v(21[14:25])
    defparam counter_36_37__i18.GSR = "ENABLED";
    FD1S3IX counter_36_37__i17 (.D(n109), .CK(clk_c_0), .CD(counter_31__N_73), 
            .Q(counter[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/code/fpga/lattice/divider/divider.v(21[14:25])
    defparam counter_36_37__i17.GSR = "ENABLED";
    FD1S3IX counter_36_37__i16 (.D(n110), .CK(clk_c_0), .CD(counter_31__N_73), 
            .Q(counter[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/code/fpga/lattice/divider/divider.v(21[14:25])
    defparam counter_36_37__i16.GSR = "ENABLED";
    FD1S3IX counter_36_37__i15 (.D(n111), .CK(clk_c_0), .CD(counter_31__N_73), 
            .Q(counter[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/code/fpga/lattice/divider/divider.v(21[14:25])
    defparam counter_36_37__i15.GSR = "ENABLED";
    FD1S3IX counter_36_37__i14 (.D(n112), .CK(clk_c_0), .CD(counter_31__N_73), 
            .Q(counter[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/code/fpga/lattice/divider/divider.v(21[14:25])
    defparam counter_36_37__i14.GSR = "ENABLED";
    FD1S3IX counter_36_37__i13 (.D(n113), .CK(clk_c_0), .CD(counter_31__N_73), 
            .Q(counter[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/code/fpga/lattice/divider/divider.v(21[14:25])
    defparam counter_36_37__i13.GSR = "ENABLED";
    FD1S3IX counter_36_37__i12 (.D(n114), .CK(clk_c_0), .CD(counter_31__N_73), 
            .Q(counter[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/code/fpga/lattice/divider/divider.v(21[14:25])
    defparam counter_36_37__i12.GSR = "ENABLED";
    FD1S3IX counter_36_37__i11 (.D(n115), .CK(clk_c_0), .CD(counter_31__N_73), 
            .Q(counter[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/code/fpga/lattice/divider/divider.v(21[14:25])
    defparam counter_36_37__i11.GSR = "ENABLED";
    FD1S3IX counter_36_37__i10 (.D(n116), .CK(clk_c_0), .CD(counter_31__N_73), 
            .Q(counter[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/code/fpga/lattice/divider/divider.v(21[14:25])
    defparam counter_36_37__i10.GSR = "ENABLED";
    FD1S3IX counter_36_37__i9 (.D(n117), .CK(clk_c_0), .CD(counter_31__N_73), 
            .Q(counter[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/code/fpga/lattice/divider/divider.v(21[14:25])
    defparam counter_36_37__i9.GSR = "ENABLED";
    FD1S3IX counter_36_37__i8 (.D(n118), .CK(clk_c_0), .CD(counter_31__N_73), 
            .Q(counter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/code/fpga/lattice/divider/divider.v(21[14:25])
    defparam counter_36_37__i8.GSR = "ENABLED";
    FD1S3IX counter_36_37__i7 (.D(n119), .CK(clk_c_0), .CD(counter_31__N_73), 
            .Q(counter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/code/fpga/lattice/divider/divider.v(21[14:25])
    defparam counter_36_37__i7.GSR = "ENABLED";
    FD1S3IX counter_36_37__i6 (.D(n120), .CK(clk_c_0), .CD(counter_31__N_73), 
            .Q(counter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/code/fpga/lattice/divider/divider.v(21[14:25])
    defparam counter_36_37__i6.GSR = "ENABLED";
    FD1S3IX counter_36_37__i5 (.D(n121), .CK(clk_c_0), .CD(counter_31__N_73), 
            .Q(counter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/code/fpga/lattice/divider/divider.v(21[14:25])
    defparam counter_36_37__i5.GSR = "ENABLED";
    FD1S3IX counter_36_37__i4 (.D(n122), .CK(clk_c_0), .CD(counter_31__N_73), 
            .Q(counter[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/code/fpga/lattice/divider/divider.v(21[14:25])
    defparam counter_36_37__i4.GSR = "ENABLED";
    FD1S3IX counter_36_37__i3 (.D(n123), .CK(clk_c_0), .CD(counter_31__N_73), 
            .Q(counter[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/code/fpga/lattice/divider/divider.v(21[14:25])
    defparam counter_36_37__i3.GSR = "ENABLED";
    FD1S3IX counter_36_37__i2 (.D(n124), .CK(clk_c_0), .CD(counter_31__N_73), 
            .Q(counter[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/code/fpga/lattice/divider/divider.v(21[14:25])
    defparam counter_36_37__i2.GSR = "ENABLED";
    LUT4 i227_4_lut (.A(n13), .B(counter[22]), .C(n12), .D(counter[8]), 
         .Z(counter_31__N_73)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // d:/code/fpga/lattice/divider/divider.v(30[11:27])
    defparam i227_4_lut.init = 16'h0001;
    LUT4 i5_4_lut (.A(counter[15]), .B(counter[19]), .C(counter[10]), 
         .D(counter[13]), .Z(n13)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i5_4_lut.init = 16'hfffe;
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 i4_4_lut (.A(counter[14]), .B(n399), .C(n407), .D(n397), .Z(n12)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;
    defparam i4_4_lut.init = 16'hbfff;
    LUT4 i220_4_lut (.A(n395), .B(counter[2]), .C(n401), .D(counter[0]), 
         .Z(n407)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i220_4_lut.init = 16'h8000;
    LUT4 i210_4_lut (.A(counter[5]), .B(counter[4]), .C(counter[16]), 
         .D(counter[7]), .Z(n397)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i210_4_lut.init = 16'h8000;
    VLO i1 (.Z(GND_net));
    FD1P3JX clk_out_i0_i1 (.D(n194), .SP(clk_c_0_enable_8), .PD(n242), 
            .CK(clk_c_0), .Q(clk_out_c_0)) /* synthesis lse_init_val=1 */ ;   // d:/code/fpga/lattice/divider/divider.v(26[8] 34[4])
    defparam clk_out_i0_i1.GSR = "ENABLED";
    LUT4 i208_4_lut (.A(counter[18]), .B(counter[11]), .C(counter[23]), 
         .D(counter[20]), .Z(n395)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i208_4_lut.init = 16'h8000;
    LUT4 i214_3_lut (.A(counter[12]), .B(counter[6]), .C(counter[21]), 
         .Z(n401)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i214_3_lut.init = 16'h8080;
    LUT4 i229_2_lut (.A(counter_31__N_73), .B(rst_c_0), .Z(clk_c_0_enable_8)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i229_2_lut.init = 16'hbbbb;
    LUT4 i70_1_lut (.A(rst_c_0), .Z(n242)) /* synthesis lut_function=(!(A)) */ ;   // d:/code/fpga/lattice/divider/divider.v(4[18:21])
    defparam i70_1_lut.init = 16'h5555;
    OB clk_out_pad_5 (.I(clk_out_c_5), .O(clk_out[5]));   // d:/code/fpga/lattice/divider/divider.v(5[18:25])
    OB clk_out_pad_4 (.I(clk_out_c_4), .O(clk_out[4]));   // d:/code/fpga/lattice/divider/divider.v(5[18:25])
    OB clk_out_pad_3 (.I(clk_out_c_3), .O(clk_out[3]));   // d:/code/fpga/lattice/divider/divider.v(5[18:25])
    OB clk_out_pad_2 (.I(clk_out_c_2), .O(clk_out[2]));   // d:/code/fpga/lattice/divider/divider.v(5[18:25])
    OB clk_out_pad_1 (.I(clk_out_c_1), .O(clk_out[1]));   // d:/code/fpga/lattice/divider/divider.v(5[18:25])
    OB clk_out_pad_0 (.I(clk_out_c_0), .O(clk_out[0]));   // d:/code/fpga/lattice/divider/divider.v(5[18:25])
    IB clk_pad_0 (.I(clk[0]), .O(clk_c_0));   // d:/code/fpga/lattice/divider/divider.v(3[18:21])
    IB rst_pad_0 (.I(rst[0]), .O(rst_c_0));   // d:/code/fpga/lattice/divider/divider.v(4[18:21])
    CCU2D sub_19_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(clk_out_c_0), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n340), .S1(n194));   // d:/code/fpga/lattice/divider/divider.v(32[13:22])
    defparam sub_19_add_2_1.INIT0 = 16'hF000;
    defparam sub_19_add_2_1.INIT1 = 16'h5555;
    defparam sub_19_add_2_1.INJECT1_0 = "NO";
    defparam sub_19_add_2_1.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

