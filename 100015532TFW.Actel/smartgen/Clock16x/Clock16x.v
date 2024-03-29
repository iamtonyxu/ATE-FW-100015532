`timescale 1 ns/100 ps
// Version: 9.1 SPB 9.1.0.22


module Clock16x(POWERDOWN,CLKA,LOCK,GLA);
input POWERDOWN, CLKA;
output  LOCK, GLA;

    wire CLKAP, VCC, GND;
    
    VCC VCC_1_net(.Y(VCC));
    GND GND_1_net(.Y(GND));
    PLL #( .VCOFREQUENCY(160.000) )  Core(.CLKA(CLKAP), .EXTFB(
        GND), .POWERDOWN(POWERDOWN), .GLA(GLA), .LOCK(LOCK), .GLB(
        ), .YB(), .GLC(), .YC(), .OADIV0(GND), .OADIV1(GND), 
        .OADIV2(GND), .OADIV3(GND), .OADIV4(GND), .OAMUX0(GND), 
        .OAMUX1(GND), .OAMUX2(VCC), .DLYGLA0(GND), .DLYGLA1(GND), 
        .DLYGLA2(GND), .DLYGLA3(GND), .DLYGLA4(GND), .OBDIV0(GND), 
        .OBDIV1(GND), .OBDIV2(GND), .OBDIV3(GND), .OBDIV4(GND), 
        .OBMUX0(GND), .OBMUX1(GND), .OBMUX2(GND), .DLYYB0(GND), 
        .DLYYB1(GND), .DLYYB2(GND), .DLYYB3(GND), .DLYYB4(GND), 
        .DLYGLB0(GND), .DLYGLB1(GND), .DLYGLB2(GND), .DLYGLB3(GND)
        , .DLYGLB4(GND), .OCDIV0(GND), .OCDIV1(GND), .OCDIV2(GND), 
        .OCDIV3(GND), .OCDIV4(GND), .OCMUX0(GND), .OCMUX1(GND), 
        .OCMUX2(GND), .DLYYC0(GND), .DLYYC1(GND), .DLYYC2(GND), 
        .DLYYC3(GND), .DLYYC4(GND), .DLYGLC0(GND), .DLYGLC1(GND), 
        .DLYGLC2(GND), .DLYGLC3(GND), .DLYGLC4(GND), .FINDIV0(VCC)
        , .FINDIV1(GND), .FINDIV2(GND), .FINDIV3(GND), .FINDIV4(
        GND), .FINDIV5(GND), .FINDIV6(GND), .FBDIV0(VCC), .FBDIV1(
        VCC), .FBDIV2(VCC), .FBDIV3(VCC), .FBDIV4(VCC), .FBDIV5(
        GND), .FBDIV6(GND), .FBDLY0(GND), .FBDLY1(GND), .FBDLY2(
        GND), .FBDLY3(GND), .FBDLY4(GND), .FBSEL0(VCC), .FBSEL1(
        GND), .XDLYSEL(GND), .VCOSEL0(GND), .VCOSEL1(GND), 
        .VCOSEL2(VCC));
    PLLINT pllint1(.A(CLKA), .Y(CLKAP));
    
endmodule

// _Disclaimer: Please leave the following comments in the file, they are for internal purposes only._


// _GEN_File_Contents_

// Version:9.1.0.22
// ACTGENU_CALL:1
// BATCH:T
// FAM:ProASIC3E
// OUTFORMAT:Verilog
// LPMTYPE:LPM_PLL_STATIC
// LPM_HINT:NONE
// INSERT_PAD:NO
// INSERT_IOREG:NO
// GEN_BHV_VHDL_VAL:F
// GEN_BHV_VERILOG_VAL:F
// MGNTIMER:F
// MGNCMPL:T
// DESDIR:T:/Test Working/KIK2-MSVisualStudio/VMS/100015532/Firmware/100015532TFW.Actel/smartgen\Clock16x
// GEN_BEHV_MODULE:T
// SMARTGEN_DIE:IT14X14M4
// SMARTGEN_PACKAGE:fg484
// AGENIII_IS_SUBPROJECT_LIBERO:T
// FIN:10.000000
// CLKASRC:2
// FBDLY:1
// FBMUX:1
// XDLYSEL:0
// PRIMFREQ:160.000000
// PPHASESHIFT:0
// DLYAVAL:1
// OAMUX:4
// POWERDOWN_POLARITY:0
// LOCK_POLARITY:1
// LOCK_CTL:0
// VOLTAGE:1.5

// _End_Comments_

