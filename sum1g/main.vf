////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 9.2.04i
//  \   \         Application : sch2verilog
//  /   /         Filename : main.vf
// /___/   /\     Timestamp : 02/28/2017 11:02:55
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx92i\bin\nt\sch2verilog.exe -intstyle ise -family spartan3 -w C:/Users/user/Desktop/asdf/sum1g/main.sch main.vf
//Design Name: main
//Device: spartan3
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module main(A, 
            B, 
            Ci, 
            Co, 
            S);

    input A;
    input B;
    input Ci;
   output Co;
   output S;
   
   wire XLXN_2;
   wire XLXN_3;
   wire XLXN_9;
   
   XOR3 XLXI_1 (.I0(Ci), 
                .I1(B), 
                .I2(A), 
                .O(S));
   AND2 XLXI_2 (.I0(B), 
                .I1(A), 
                .O(XLXN_9));
   AND2 XLXI_3 (.I0(Ci), 
                .I1(A), 
                .O(XLXN_2));
   AND2 XLXI_4 (.I0(Ci), 
                .I1(B), 
                .O(XLXN_3));
   OR3 XLXI_5 (.I0(XLXN_3), 
               .I1(XLXN_2), 
               .I2(XLXN_9), 
               .O(Co));
endmodule
