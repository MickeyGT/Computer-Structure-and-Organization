VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_2
        SIGNAL XLXN_3
        SIGNAL Co
        SIGNAL S
        SIGNAL A
        SIGNAL B
        SIGNAL Ci
        SIGNAL XLXN_9
        PORT Output Co
        PORT Output S
        PORT Input A
        PORT Input B
        PORT Input Ci
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
            PIN I0 Ci
            PIN I1 B
            PIN I2 A
            PIN O S
        END BLOCK
        BEGIN BLOCK XLXI_2 and2
            PIN I0 B
            PIN I1 A
            PIN O XLXN_9
        END BLOCK
        BEGIN BLOCK XLXI_3 and2
            PIN I0 Ci
            PIN I1 A
            PIN O XLXN_2
        END BLOCK
        BEGIN BLOCK XLXI_4 and2
            PIN I0 Ci
            PIN I1 B
            PIN O XLXN_3
        END BLOCK
        BEGIN BLOCK XLXI_5 or3
            PIN I0 XLXN_3
            PIN I1 XLXN_2
            PIN I2 XLXN_9
            PIN O Co
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 368 368 R0
        INSTANCE XLXI_2 368 736 R0
        INSTANCE XLXI_3 368 896 R0
        INSTANCE XLXI_4 368 1056 R0
        INSTANCE XLXI_5 800 928 R0
        BEGIN BRANCH XLXN_2
            WIRE 624 800 800 800
        END BRANCH
        BEGIN BRANCH XLXN_3
            WIRE 624 960 800 960
            WIRE 800 864 800 960
        END BRANCH
        BEGIN BRANCH Co
            WIRE 1056 800 1088 800
        END BRANCH
        IOMARKER 1088 800 Co R0 28
        BEGIN BRANCH S
            WIRE 624 240 640 240
            WIRE 640 240 1104 240
        END BRANCH
        BEGIN BRANCH A
            WIRE 336 176 368 176
        END BRANCH
        IOMARKER 336 176 A R180 28
        BEGIN BRANCH B
            WIRE 336 240 368 240
        END BRANCH
        IOMARKER 336 240 B R180 28
        BEGIN BRANCH Ci
            WIRE 336 304 368 304
        END BRANCH
        IOMARKER 336 304 Ci R180 28
        BEGIN BRANCH XLXN_9
            WIRE 624 640 800 640
            WIRE 800 640 800 736
        END BRANCH
        BEGIN BRANCH A
            WIRE 304 608 368 608
            BEGIN DISPLAY 304 608 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B
            WIRE 304 672 368 672
            BEGIN DISPLAY 304 672 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A
            WIRE 304 768 368 768
            BEGIN DISPLAY 304 768 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Ci
            WIRE 304 832 352 832
            WIRE 352 832 368 832
            BEGIN DISPLAY 304 832 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
            BEGIN DISPLAY 350 832 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B
            WIRE 304 928 368 928
            BEGIN DISPLAY 304 928 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Ci
            WIRE 304 992 368 992
            BEGIN DISPLAY 304 992 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        IOMARKER 1104 240 S R0 28
    END SHEET
END SCHEMATIC
