VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_29(4:0)
        SIGNAL XLXN_30(4:0)
        SIGNAL XLXN_35(31:0)
        SIGNAL Clock
        SIGNAL PC(31:0)
        SIGNAL New_PC(31:0)
        SIGNAL PC(6:2)
        SIGNAL Instr(31:0)
        SIGNAL Instr(20:16)
        SIGNAL XLXN_45(20:16)
        SIGNAL Instr(25:21)
        SIGNAL XLXN_47(25:21)
        SIGNAL RegDest
        SIGNAL WrReg(4:0)
        SIGNAL Instr(15:11)
        SIGNAL RegWr
        SIGNAL XLXN_33(31:0)
        SIGNAL XLXN_34(31:0)
        SIGNAL Instr(15:0)
        SIGNAL ALUOP(1:0)
        SIGNAL XLXN_57(31:0)
        SIGNAL ALUSrc
        SIGNAL ALU_Out(31:0)
        SIGNAL ALU_Out(6:2)
        SIGNAL MemWr
        SIGNAL INW0(31:0)
        SIGNAL INW1(31:0)
        SIGNAL OUTW0(31:0)
        SIGNAL XLXN_66(31:0)
        SIGNAL Mem2Reg
        SIGNAL XLXN_68(31:0)
        PORT Input Clock
        PORT Input INW0(31:0)
        PORT Input INW1(31:0)
        PORT Output OUTW0(31:0)
        BEGIN BLOCKDEF Program_Counter
            TIMESTAMP 2017 3 28 7 31 5
            RECTANGLE N 64 -128 320 0 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF PC_Update
            TIMESTAMP 2017 3 28 7 47 21
            RECTANGLE N 64 -116 320 0 
            LINE N 64 -80 0 -80 
            RECTANGLE N 0 -92 64 -68 
            RECTANGLE N 320 -28 384 -4 
            LINE N 320 -16 384 -16 
        END BLOCKDEF
        BEGIN BLOCKDEF ROM_32x32
            TIMESTAMP 2017 3 28 8 7 46
            RECTANGLE N 64 -64 336 0 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 336 -44 400 -20 
            LINE N 336 -32 400 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF MUX2v5
            TIMESTAMP 2017 3 28 8 18 47
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF File_Regs
            TIMESTAMP 2017 4 25 7 57 35
            RECTANGLE N 64 -468 384 0 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 384 -444 448 -420 
            LINE N 384 -432 448 -432 
            RECTANGLE N 384 -396 448 -372 
            LINE N 384 -384 448 -384 
            RECTANGLE N 0 -316 64 -292 
            LINE N 64 -304 0 -304 
            RECTANGLE N 0 -252 64 -228 
            LINE N 64 -240 0 -240 
            LINE N 64 -432 0 -432 
            LINE N 64 -384 0 -384 
        END BLOCKDEF
        BEGIN BLOCKDEF ALU
            TIMESTAMP 2017 4 25 8 31 10
            RECTANGLE N 64 -320 320 0 
            LINE N 64 -288 0 -288 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -300 384 -276 
            LINE N 320 -288 384 -288 
        END BLOCKDEF
        BEGIN BLOCKDEF DataMem
            TIMESTAMP 2017 4 25 8 42 43
            RECTANGLE N 0 68 64 92 
            LINE N 64 80 0 80 
            RECTANGLE N 0 132 64 156 
            LINE N 64 144 0 144 
            RECTANGLE N 384 132 448 156 
            LINE N 384 144 448 144 
            LINE N 64 16 0 16 
            RECTANGLE N 64 -240 384 188 
            LINE N 64 -208 0 -208 
            RECTANGLE N 0 -156 64 -132 
            LINE N 64 -144 0 -144 
            RECTANGLE N 384 -156 448 -132 
            LINE N 384 -144 448 -144 
            RECTANGLE N 0 -92 64 -68 
            LINE N 64 -80 0 -80 
        END BLOCKDEF
        BEGIN BLOCKDEF MUX_2v32
            TIMESTAMP 2017 4 25 8 39 45
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCK U_PC Program_Counter
            PIN Clock Clock
            PIN New_PC(31:0) New_PC(31:0)
            PIN PC(31:0) PC(31:0)
        END BLOCK
        BEGIN BLOCK U_New_PC PC_Update
            PIN PC(31:0) PC(31:0)
            PIN New_PC(31:0) New_PC(31:0)
        END BLOCK
        BEGIN BLOCK U_ROM ROM_32x32
            PIN Address(4:0) PC(6:2)
            PIN DATA(31:0) Instr(31:0)
        END BLOCK
        BEGIN BLOCK U_MUXRegD MUX2v5
            PIN Sel RegDest
            PIN I0(4:0) Instr(20:16)
            PIN I1(4:0) Instr(15:11)
            PIN Y(4:0) WrReg(4:0)
        END BLOCK
        BEGIN BLOCK U_Regs File_Regs
            PIN WrReg(4:0) WrReg(4:0)
            PIN WrData(31:0) XLXN_68(31:0)
            PIN RdData1(31:0) XLXN_33(31:0)
            PIN RdData2(31:0) XLXN_34(31:0)
            PIN RdReg1(4:0) Instr(25:21)
            PIN RdReg2(4:0) Instr(20:16)
            PIN Clock Clock
            PIN WrEn RegWr
        END BLOCK
        BEGIN BLOCK XLXI_15 ALU
            PIN ALUSrc ALUSrc
            PIN RdData1(31:0) XLXN_33(31:0)
            PIN RdData2(31:0) XLXN_34(31:0)
            PIN FAddr(15:0) Instr(15:0)
            PIN ALUOP(1:0) ALUOP(1:0)
            PIN Y(31:0) ALU_Out(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_24 DataMem
            PIN Clk Clock
            PIN Wr MemWr
            PIN INW0(31:0) INW0(31:0)
            PIN INW1(31:0) INW1(31:0)
            PIN Addr(4:0) ALU_Out(6:2)
            PIN DataIn(31:0) XLXN_34(31:0)
            PIN OUTW0(31:0) OUTW0(31:0)
            PIN DataOut(31:0) XLXN_66(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_25 MUX_2v32
            PIN Sel Mem2Reg
            PIN I0(31:0) ALU_Out(31:0)
            PIN I1(31:0) XLXN_66(31:0)
            PIN Y(31:0) XLXN_68(31:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 5440 3520
        BEGIN INSTANCE U_PC 288 800 R0
            BEGIN DISPLAY 64 24 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH Clock
            WIRE 256 704 288 704
        END BRANCH
        BEGIN BRANCH PC(31:0)
            WIRE 656 512 720 512
            WIRE 720 512 720 592
            WIRE 720 592 720 704
            WIRE 720 704 720 816
            WIRE 720 816 720 928
            WIRE 672 704 720 704
            BEGIN DISPLAY 720 592 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH New_PC(31:0)
            WIRE 48 448 48 592
            WIRE 48 592 48 768
            WIRE 48 768 288 768
            WIRE 48 448 272 448
            BEGIN DISPLAY 48 592 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_New_PC 656 432 R180
            BEGIN DISPLAY 480 -52 ATTR InstName
                ALIGNMENT RIGHT
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE U_ROM 896 848 R0
            BEGIN DISPLAY 48 -180 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BUSTAP 720 816 816 816
        BEGIN BRANCH PC(6:2)
            WIRE 816 816 848 816
            WIRE 848 816 896 816
            BEGIN DISPLAY 848 816 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(31:0)
            WIRE 1296 816 1328 816
            WIRE 1328 816 1328 864
            WIRE 1328 864 1328 912
            WIRE 1328 912 1328 1008
            WIRE 1328 1008 1328 1168
            WIRE 1328 1168 1328 1248
            WIRE 1328 1248 1328 1312
            BEGIN DISPLAY 1328 1008 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1328 864 1424 864
        BUSTAP 1328 912 1424 912
        BEGIN BRANCH Instr(20:16)
            WIRE 1424 912 1488 912
            WIRE 1488 912 1920 912
            WIRE 1920 912 2080 912
            WIRE 1488 912 1488 1104
            WIRE 1488 1104 1616 1104
            WIRE 2080 896 2224 896
            WIRE 2080 896 2080 912
            BEGIN DISPLAY 1920 912 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(25:21)
            WIRE 1424 864 1936 864
            WIRE 1936 864 2080 864
            WIRE 2080 832 2224 832
            WIRE 2080 832 2080 864
            BEGIN DISPLAY 1936 864 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegDest
            WIRE 1504 1040 1584 1040
            WIRE 1584 1040 1616 1040
            BEGIN DISPLAY 1584 1040 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_MUXRegD 1616 1200 R0
        END INSTANCE
        BEGIN BRANCH WrReg(4:0)
            WIRE 2000 1040 2080 1040
            WIRE 2080 1040 2224 1040
            BEGIN DISPLAY 2080 1040 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1328 1168 1424 1168
        BEGIN BRANCH Instr(15:11)
            WIRE 1424 1168 1488 1168
            WIRE 1488 1168 1616 1168
            BEGIN DISPLAY 1488 1168 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_Regs 2224 1136 R0
            BEGIN DISPLAY 64 -544 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH Clock
            WIRE 2176 704 2224 704
            BEGIN DISPLAY 2176 704 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegWr
            WIRE 2176 752 2224 752
            BEGIN DISPLAY 2176 752 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_33(31:0)
            WIRE 2672 704 2928 704
        END BRANCH
        BEGIN BRANCH XLXN_34(31:0)
            WIRE 2672 752 2688 752
            WIRE 2688 752 2688 768
            WIRE 2688 768 2720 768
            WIRE 2720 768 2928 768
            WIRE 2720 768 2720 992
            WIRE 2720 992 3472 992
            WIRE 3472 752 3584 752
            WIRE 3472 752 3472 992
        END BRANCH
        BUSTAP 1328 1248 1424 1248
        BEGIN BRANCH Instr(15:0)
            WIRE 1424 1248 2736 1248
            WIRE 2736 832 2736 1248
            WIRE 2736 832 2928 832
        END BRANCH
        BEGIN BRANCH ALUOP(1:0)
            WIRE 2800 896 2848 896
            WIRE 2848 896 2928 896
            BEGIN DISPLAY 2848 896 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 256 704 Clock R180 28
        BEGIN INSTANCE XLXI_15 2928 928 R0
        END INSTANCE
        BEGIN BRANCH ALUSrc
            WIRE 2880 640 2928 640
            BEGIN DISPLAY 2880 640 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALU_Out(31:0)
            WIRE 3312 640 3360 640
            WIRE 3360 640 3360 688
            WIRE 3360 688 3360 896
            WIRE 3360 896 4272 896
            WIRE 4272 752 4368 752
            WIRE 4272 752 4272 896
        END BRANCH
        BEGIN INSTANCE XLXI_24 3584 608 R0
        END INSTANCE
        BUSTAP 3360 688 3456 688
        BEGIN BRANCH ALU_Out(6:2)
            WIRE 3456 688 3584 688
        END BRANCH
        BEGIN BRANCH Clock
            WIRE 3488 400 3584 400
            BEGIN DISPLAY 3488 400 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH MemWr
            WIRE 3504 624 3584 624
            BEGIN DISPLAY 3504 624 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH INW0(31:0)
            WIRE 3568 464 3584 464
        END BRANCH
        BEGIN BRANCH INW1(31:0)
            WIRE 3568 528 3584 528
        END BRANCH
        IOMARKER 3568 464 INW0(31:0) R180 28
        IOMARKER 3568 528 INW1(31:0) R180 28
        BEGIN BRANCH OUTW0(31:0)
            WIRE 4032 464 4064 464
        END BRANCH
        IOMARKER 4064 464 OUTW0(31:0) R0 28
        BEGIN INSTANCE XLXI_25 4368 848 R0
        END INSTANCE
        BEGIN BRANCH XLXN_66(31:0)
            WIRE 4032 752 4192 752
            WIRE 4192 752 4192 816
            WIRE 4192 816 4368 816
        END BRANCH
        BEGIN BRANCH Mem2Reg
            WIRE 4336 688 4368 688
            BEGIN DISPLAY 4336 688 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_68(31:0)
            WIRE 2160 1104 2224 1104
            WIRE 2160 1104 2160 1216
            WIRE 2160 1216 4832 1216
            WIRE 4752 688 4832 688
            WIRE 4832 688 4832 1216
        END BRANCH
    END SHEET
END SCHEMATIC
