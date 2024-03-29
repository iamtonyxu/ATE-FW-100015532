`timescale 1 ns/100 ps
// Version: 9.1 SPB 9.1.0.22


module Ram256x11_TPort(WD,RD,WEN,REN,WADDR,RADDR,WCLK,RCLK);
input [10:0] WD;
output [10:0] RD;
input  WEN, REN;
input [7:0] WADDR, RADDR;
input WCLK, RCLK;

    wire WEAP, WEBP, VCC, GND;
    
    VCC VCC_1_net(.Y(VCC));
    GND GND_1_net(.Y(GND));
    RAM512X18 Ram256x11_TPort_R0C0(.RADDR8(GND), .RADDR7(RADDR[7])
        , .RADDR6(RADDR[6]), .RADDR5(RADDR[5]), .RADDR4(RADDR[4]), 
        .RADDR3(RADDR[3]), .RADDR2(RADDR[2]), .RADDR1(RADDR[1]), 
        .RADDR0(RADDR[0]), .WADDR8(GND), .WADDR7(WADDR[7]), 
        .WADDR6(WADDR[6]), .WADDR5(WADDR[5]), .WADDR4(WADDR[4]), 
        .WADDR3(WADDR[3]), .WADDR2(WADDR[2]), .WADDR1(WADDR[1]), 
        .WADDR0(WADDR[0]), .WD17(GND), .WD16(GND), .WD15(GND), 
        .WD14(GND), .WD13(GND), .WD12(GND), .WD11(GND), .WD10(
        WD[10]), .WD9(WD[9]), .WD8(WD[8]), .WD7(WD[7]), .WD6(
        WD[6]), .WD5(WD[5]), .WD4(WD[4]), .WD3(WD[3]), .WD2(WD[2])
        , .WD1(WD[1]), .WD0(WD[0]), .RW0(GND), .RW1(VCC), .WW0(
        GND), .WW1(VCC), .PIPE(GND), .REN(WEBP), .WEN(WEAP), 
        .RCLK(RCLK), .WCLK(WCLK), .RESET(VCC), .RD17(), .RD16(), 
        .RD15(), .RD14(), .RD13(), .RD12(), .RD11(), .RD10(RD[10])
        , .RD9(RD[9]), .RD8(RD[8]), .RD7(RD[7]), .RD6(RD[6]), 
        .RD5(RD[5]), .RD4(RD[4]), .RD3(RD[3]), .RD2(RD[2]), .RD1(
        RD[1]), .RD0(RD[0]));
    INV WEBUBBLEB(.A(REN), .Y(WEBP));
    INV WEBUBBLEA(.A(WEN), .Y(WEAP));
    
endmodule

// _Disclaimer: Please leave the following comments in the file, they are for internal purposes only._


// _GEN_File_Contents_

// Version:9.1.0.22
// ACTGENU_CALL:1
// BATCH:T
// FAM:ProASIC3E
// OUTFORMAT:Verilog
// LPMTYPE:LPM_RAM
// LPM_HINT:TWO
// INSERT_PAD:NO
// INSERT_IOREG:NO
// GEN_BHV_VHDL_VAL:F
// GEN_BHV_VERILOG_VAL:F
// MGNTIMER:F
// MGNCMPL:T
// DESDIR:T:/Test Working/KIK2-MSVisualStudio/VMS/100015532/Firmware/100015532TFW.Actel/smartgen\Ram256x11_TPort
// GEN_BEHV_MODULE:T
// SMARTGEN_DIE:
// SMARTGEN_PACKAGE:
// AGENIII_IS_SUBPROJECT_LIBERO:T
// WWIDTH:11
// WDEPTH:256
// RWIDTH:11
// RDEPTH:256
// CLKS:2
// RESET_POLARITY:2
// INIT_RAM:F
// DEFAULT_WORD:0x000
// CASCADE:0
// WCLK_EDGE:RISE
// RCLK_EDGE:RISE
// WCLOCK_PN:WCLK
// RCLOCK_PN:RCLK
// PMODE2:0
// DATA_IN_PN:WD
// WADDRESS_PN:WADDR
// WE_PN:WEN
// DATA_OUT_PN:RD
// RADDRESS_PN:RADDR
// RE_PN:REN
// WE_POLARITY:1
// RE_POLARITY:1
// PTYPE:1

// _End_Comments_

