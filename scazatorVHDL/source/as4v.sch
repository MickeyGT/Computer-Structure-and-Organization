VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL S1A0
        SIGNAL A(3:0)
        SIGNAL B(3:0)
        SIGNAL R(3:0)
        PORT Input S1A0
        PORT Input A(3:0)
        PORT Input B(3:0)
        PORT Output R(3:0)
        BEGIN BLOCKDEF VHDLSource
            TIMESTAMP 2017 3 21 8 33 9
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 VHDLSource
            PIN S1A0 S1A0
            PIN A(3:0) A(3:0)
            PIN B(3:0) B(3:0)
            PIN R(3:0) R(3:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 1472 1168 R0
        END INSTANCE
        BEGIN BRANCH S1A0
            WIRE 1440 1008 1472 1008
        END BRANCH
        IOMARKER 1440 1008 S1A0 R180 28
        BEGIN BRANCH A(3:0)
            WIRE 1440 1072 1472 1072
        END BRANCH
        IOMARKER 1440 1072 A(3:0) R180 28
        BEGIN BRANCH B(3:0)
            WIRE 1440 1136 1472 1136
        END BRANCH
        IOMARKER 1440 1136 B(3:0) R180 28
        BEGIN BRANCH R(3:0)
            WIRE 1856 1008 1888 1008
        END BRANCH
        IOMARKER 1888 1008 R(3:0) R0 28
    END SHEET
END SCHEMATIC
