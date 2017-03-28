VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL New_PC(31:0)
        SIGNAL Clock
        SIGNAL PC(31:0)
        SIGNAL PC(6:2)
        SIGNAL Instr(31:0)
        SIGNAL XLXN_21
        SIGNAL XLXN_22(4:0)
        SIGNAL XLXN_23(4:0)
        SIGNAL Instr(20:16)
        SIGNAL Instr(25:21)
        SIGNAL RegDest
        SIGNAL XLXN_27(4:0)
        SIGNAL XLXN_28(4:0)
        SIGNAL WrReg(4:0)
        SIGNAL Instr(15:11)
        PORT Input Clock
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
        BEGIN BLOCK XLXI_13 MUX2v5
            PIN Sel RegDest
            PIN I0(4:0) Instr(20:16)
            PIN I1(4:0) Instr(15:11)
            PIN Y(4:0) WrReg(4:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE U_PC 480 800 R0
            BEGIN DISPLAY 63 24 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH Clock
            WIRE 448 704 480 704
        END BRANCH
        IOMARKER 448 704 Clock R180 28
        BEGIN BRANCH PC(31:0)
            WIRE 848 512 912 512
            WIRE 912 512 912 592
            WIRE 912 592 912 704
            WIRE 912 704 912 816
            WIRE 912 816 912 928
            WIRE 864 704 912 704
            BEGIN DISPLAY 912 592 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH New_PC(31:0)
            WIRE 240 448 240 592
            WIRE 240 592 240 768
            WIRE 240 768 480 768
            WIRE 240 448 464 448
            BEGIN DISPLAY 240 592 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_New_PC 848 432 R180
            BEGIN DISPLAY 480 -52 ATTR InstName
                ALIGNMENT RIGHT
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE U_ROM 1088 848 R0
            BEGIN DISPLAY 48 -180 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BUSTAP 912 816 1008 816
        BEGIN BRANCH PC(6:2)
            WIRE 1008 816 1040 816
            WIRE 1040 816 1088 816
            BEGIN DISPLAY 1040 816 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(31:0)
            WIRE 1488 816 1520 816
            WIRE 1520 816 1520 864
            WIRE 1520 864 1520 912
            WIRE 1520 912 1520 1008
            WIRE 1520 1008 1520 1120
            WIRE 1520 1120 1520 1168
            WIRE 1520 1168 1520 1312
            BEGIN DISPLAY 1520 1008 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1520 864 1616 864
        BUSTAP 1520 912 1616 912
        BEGIN BRANCH Instr(20:16)
            WIRE 1616 912 1680 912
            WIRE 1680 912 2112 912
            WIRE 2112 912 2272 912
            WIRE 1680 912 1680 1104
            WIRE 1680 1104 1808 1104
            BEGIN DISPLAY 2112 912 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(25:21)
            WIRE 1616 864 2128 864
            WIRE 2128 864 2272 864
            BEGIN DISPLAY 2128 864 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegDest
            WIRE 1696 1040 1776 1040
            WIRE 1776 1040 1808 1040
            BEGIN DISPLAY 1776 1040 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_13 1808 1200 R0
        END INSTANCE
        BEGIN BRANCH WrReg(4:0)
            WIRE 2192 1040 2272 1040
            WIRE 2272 1040 2352 1040
            BEGIN DISPLAY 2272 1040 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1520 1168 1616 1168
        BEGIN BRANCH Instr(15:11)
            WIRE 1616 1168 1680 1168
            WIRE 1680 1168 1808 1168
            BEGIN DISPLAY 1680 1168 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
