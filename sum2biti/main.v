////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 9.2.04i
//  \   \         Application : sch2verilog
//  /   /         Filename : main.vf
// /___/   /\     Timestamp : 02/28/2017 11:35:24
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx92i\bin\nt\sch2verilog.exe -intstyle ise -family spartan3 -w C:/Users/user/Desktop/asdf/sum2biti/main.sch main.vf
//Design Name: main
//Device: spartan3
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module main(A0, 
            A1, 
            B0, 
            B1, 
            Ci0, 
            Co2, 
            S, 
            S1);

    input A0;
    input A1;
    input B0;
    input B1;
    input Ci0;
   output Co2;
   output S;
   output S1;
   
   wire Co1;
   wire XLXN_1;
   wire XLXN_2;
   wire XLXN_3;
   wire XLXN_8;
   wire XLXN_15;
   wire XLXN_22;
   
   XOR3 XLXI_1 (.I0(Ci0), 
                .I1(B0), 
                .I2(A0), 
                .O(S));
   AND2 XLXI_2 (.I0(B0), 
                .I1(A0), 
                .O(XLXN_8));
   AND2 XLXI_3 (.I0(Ci0), 
                .I1(A0), 
                .O(XLXN_1));
   AND2 XLXI_4 (.I0(Ci0), 
                .I1(B0), 
                .O(XLXN_2));
   OR3 XLXI_5 (.I0(XLXN_2), 
               .I1(XLXN_1), 
               .I2(XLXN_8), 
               .O(Co1));
   XOR3 XLXI_6 (.I0(Co1), 
                .I1(B1), 
                .I2(A1), 
                .O(S1));
   AND2 XLXI_7 (.I0(B1), 
                .I1(A1), 
                .O(XLXN_22));
   AND2 XLXI_8 (.I0(Co1), 
                .I1(A1), 
                .O(XLXN_15));
   AND2 XLXI_9 (.I0(Co1), 
                .I1(B1), 
                .O(XLXN_3));
   OR3 XLXI_10 (.I0(XLXN_3), 
                .I1(XLXN_15), 
                .I2(XLXN_22), 
                .O(Co2));
endmodule
