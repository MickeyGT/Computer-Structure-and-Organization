////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 9.2.04i
//  \   \         Application : sch2verilog
//  /   /         Filename : sum4main.vf
// /___/   /\     Timestamp : 03/07/2017 10:46:11
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx92i\bin\nt\sch2verilog.exe -intstyle ise -family spartan3 -w C:/Users/user/Desktop/asdf/sum4biti/sum4main.sch sum4main.vf
//Design Name: sum4main
//Device: spartan3
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module sum4main(a, 
                b, 
                Cout, 
                r);

    input [3:0] a;
    input [3:0] b;
   output Cout;
   output [3:0] r;
   
   wire XLXN_1;
   wire XLXN_2;
   wire XLXN_3;
   wire XLXN_46;
   
   main XLXI_3 (.A(a[0]), 
                .B(b[0]), 
                .Ci(XLXN_46), 
                .Co(XLXN_1), 
                .S(r[0]));
   main XLXI_4 (.A(a[1]), 
                .B(b[1]), 
                .Ci(XLXN_1), 
                .Co(XLXN_2), 
                .S(r[1]));
   main XLXI_5 (.A(a[2]), 
                .B(b[2]), 
                .Ci(XLXN_2), 
                .Co(XLXN_3), 
                .S(r[2]));
   main XLXI_6 (.A(a[3]), 
                .B(b[3]), 
                .Ci(XLXN_3), 
                .Co(Cout), 
                .S(r[3]));
   GND XLXI_15 (.G(XLXN_46));
endmodule
