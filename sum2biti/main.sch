VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_1
        SIGNAL XLXN_2
        BEGIN SIGNAL Co1
        END SIGNAL
        SIGNAL S
        SIGNAL A0
        SIGNAL B0
        SIGNAL Ci0
        SIGNAL XLXN_8
        SIGNAL XLXN_15
        SIGNAL XLXN_3
        SIGNAL Co2
        SIGNAL S1
        SIGNAL A1
        SIGNAL B1
        SIGNAL XLXN_22
        PORT Output S
        PORT Input A0
        PORT Input B0
        PORT Input Ci0
        PORT Output Co2
        PORT Output S1
        PORT Input A1
        PORT Input B1
        BEGIN BLOCKDEF xor3
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 48 -64 
            LINE N 0 -128 72 -128 
            LINE N 0 -192 48 -192 
            LINE N 256 -128 208 -128 
            ARC N -40 -184 72 -72 48 -80 48 -176 
            ARC N -24 -184 88 -72 64 -80 64 -176 
            ARC N 44 -176 220 0 208 -128 128 -176 
            LINE N 48 -64 48 -80 
            LINE N 48 -192 48 -176 
            LINE N 128 -80 64 -80 
            LINE N 128 -176 64 -176 
            ARC N 44 -256 220 -80 128 -80 208 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF and2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 144 -48 64 -48 
            LINE N 64 -144 144 -144 
            LINE N 64 -48 64 -144 
        END BLOCKDEF
        BEGIN BLOCKDEF or3
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 48 -64 
            LINE N 0 -128 72 -128 
            LINE N 0 -192 48 -192 
            LINE N 256 -128 192 -128 
            ARC N 28 -256 204 -80 112 -80 192 -128 
            ARC N -40 -184 72 -72 48 -80 48 -176 
            LINE N 48 -64 48 -80 
            LINE N 48 -192 48 -176 
            LINE N 112 -80 48 -80 
            ARC N 28 -176 204 0 192 -128 112 -176 
            LINE N 112 -176 48 -176 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 xor3
            PIN I0 Ci0
            PIN I1 B0
            PIN I2 A0
            PIN O S
        END BLOCK
        BEGIN BLOCK XLXI_2 and2
            PIN I0 B0
            PIN I1 A0
            PIN O XLXN_8
        END BLOCK
        BEGIN BLOCK XLXI_3 and2
            PIN I0 Ci0
            PIN I1 A0
            PIN O XLXN_1
        END BLOCK
        BEGIN BLOCK XLXI_4 and2
            PIN I0 Ci0
            PIN I1 B0
            PIN O XLXN_2
        END BLOCK
        BEGIN BLOCK XLXI_5 or3
            PIN I0 XLXN_2
            PIN I1 XLXN_1
            PIN I2 XLXN_8
            PIN O Co1
        END BLOCK
        BEGIN BLOCK XLXI_6 xor3
            PIN I0 Co1
            PIN I1 B1
            PIN I2 A1
            PIN O S1
        END BLOCK
        BEGIN BLOCK XLXI_7 and2
            PIN I0 B1
            PIN I1 A1
            PIN O XLXN_22
        END BLOCK
        BEGIN BLOCK XLXI_8 and2
            PIN I0 Co1
            PIN I1 A1
            PIN O XLXN_15
        END BLOCK
        BEGIN BLOCK XLXI_9 and2
            PIN I0 Co1
            PIN I1 B1
            PIN O XLXN_3
        END BLOCK
        BEGIN BLOCK XLXI_10 or3
            PIN I0 XLXN_3
            PIN I1 XLXN_15
            PIN I2 XLXN_22
            PIN O Co2
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 480 432 R0
        INSTANCE XLXI_2 480 800 R0
        INSTANCE XLXI_3 480 960 R0
        INSTANCE XLXI_4 480 1120 R0
        INSTANCE XLXI_5 912 992 R0
        BEGIN BRANCH XLXN_1
            WIRE 736 864 912 864
        END BRANCH
        BEGIN BRANCH XLXN_2
            WIRE 736 1024 912 1024
            WIRE 912 928 912 1024
        END BRANCH
        BEGIN BRANCH Co1
            WIRE 1168 864 1200 864
            BEGIN DISPLAY 1200 864 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S
            WIRE 736 304 752 304
            WIRE 752 304 1216 304
        END BRANCH
        BEGIN BRANCH A0
            WIRE 448 240 480 240
        END BRANCH
        BEGIN BRANCH B0
            WIRE 448 304 480 304
        END BRANCH
        BEGIN BRANCH Ci0
            WIRE 448 368 480 368
        END BRANCH
        BEGIN BRANCH XLXN_8
            WIRE 736 704 912 704
            WIRE 912 704 912 800
        END BRANCH
        BEGIN BRANCH A0
            WIRE 416 672 480 672
            BEGIN DISPLAY 416 672 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B0
            WIRE 416 736 480 736
            BEGIN DISPLAY 416 736 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A0
            WIRE 416 832 480 832
            BEGIN DISPLAY 416 832 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Ci0
            WIRE 416 896 464 896
            WIRE 464 896 464 896
            WIRE 464 896 480 896
            BEGIN DISPLAY 416 896 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B0
            WIRE 416 992 480 992
            BEGIN DISPLAY 416 992 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Ci0
            WIRE 416 1056 480 1056
            BEGIN DISPLAY 416 1056 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        IOMARKER 448 240 A0 R180 28
        IOMARKER 448 304 B0 R180 28
        IOMARKER 448 368 Ci0 R180 28
        IOMARKER 1216 304 S R0 28
        INSTANCE XLXI_6 2032 432 R0
        INSTANCE XLXI_7 2032 800 R0
        INSTANCE XLXI_8 2032 960 R0
        INSTANCE XLXI_9 2032 1120 R0
        INSTANCE XLXI_10 2464 992 R0
        BEGIN BRANCH XLXN_15
            WIRE 2288 864 2464 864
        END BRANCH
        BEGIN BRANCH XLXN_3
            WIRE 2288 1024 2464 1024
            WIRE 2464 928 2464 1024
        END BRANCH
        BEGIN BRANCH Co2
            WIRE 2720 864 2752 864
        END BRANCH
        BEGIN BRANCH S1
            WIRE 2288 304 2304 304
            WIRE 2304 304 2736 304
        END BRANCH
        BEGIN BRANCH A1
            WIRE 2000 240 2032 240
        END BRANCH
        BEGIN BRANCH B1
            WIRE 2000 304 2032 304
        END BRANCH
        BEGIN BRANCH Co1
            WIRE 2000 368 2032 368
            BEGIN DISPLAY 2000 368 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_22
            WIRE 2288 704 2464 704
            WIRE 2464 704 2464 800
        END BRANCH
        BEGIN BRANCH A1
            WIRE 1968 672 2032 672
            BEGIN DISPLAY 1968 672 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B1
            WIRE 1968 736 2032 736
            BEGIN DISPLAY 1968 736 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1
            WIRE 1968 832 2032 832
            BEGIN DISPLAY 1968 832 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Co1
            WIRE 1968 896 2016 896
            WIRE 2016 896 2016 896
            WIRE 2016 896 2032 896
            BEGIN DISPLAY 1968 896 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B1
            WIRE 1968 992 2032 992
            BEGIN DISPLAY 1968 992 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Co1
            WIRE 1968 1056 2032 1056
            BEGIN DISPLAY 1968 1056 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        IOMARKER 2752 864 Co2 R0 28
        IOMARKER 2000 240 A1 R180 28
        IOMARKER 2000 304 B1 R180 28
        IOMARKER 2736 304 S1 R0 28
    END SHEET
END SCHEMATIC
