VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_6
        SIGNAL XLXN_19
        SIGNAL XLXN_2
        SIGNAL XLXN_3
        SIGNAL XLXN_28
        SIGNAL XLXN_1
        SIGNAL r(3:0)
        SIGNAL r(0)
        SIGNAL r(1)
        SIGNAL b(3:0)
        SIGNAL a(3:0)
        SIGNAL b(1)
        SIGNAL a(1)
        SIGNAL b(0)
        SIGNAL a(0)
        SIGNAL XLXN_46
        SIGNAL Cout
        SIGNAL b(2)
        SIGNAL b(3)
        SIGNAL a(2)
        SIGNAL a(3)
        SIGNAL r(2)
        SIGNAL r(3)
        PORT Output r(3:0)
        PORT Input b(3:0)
        PORT Input a(3:0)
        PORT Output Cout
        BEGIN BLOCKDEF main
            TIMESTAMP 2017 3 7 7 56 50
            LINE N 64 32 0 32 
            LINE N 64 96 0 96 
            LINE N 64 160 0 160 
            LINE N 320 32 384 32 
            RECTANGLE N 64 0 320 192 
            LINE N 320 144 384 144 
        END BLOCKDEF
        BEGIN BLOCKDEF gnd
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -64 64 -96 
            LINE N 76 -48 52 -48 
            LINE N 68 -32 60 -32 
            LINE N 88 -64 40 -64 
            LINE N 64 -64 64 -80 
            LINE N 64 -128 64 -96 
        END BLOCKDEF
        BEGIN BLOCK XLXI_4 main
            PIN A a(1)
            PIN B b(1)
            PIN Ci XLXN_1
            PIN Co XLXN_2
            PIN S r(1)
        END BLOCK
        BEGIN BLOCK XLXI_5 main
            PIN A a(2)
            PIN B b(2)
            PIN Ci XLXN_2
            PIN Co XLXN_3
            PIN S r(2)
        END BLOCK
        BEGIN BLOCK XLXI_6 main
            PIN A a(3)
            PIN B b(3)
            PIN Ci XLXN_3
            PIN Co Cout
            PIN S r(3)
        END BLOCK
        BEGIN BLOCK XLXI_3 main
            PIN A a(0)
            PIN B b(0)
            PIN Ci XLXN_46
            PIN Co XLXN_1
            PIN S r(0)
        END BLOCK
        BEGIN BLOCK XLXI_15 gnd
            PIN G XLXN_46
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_4 960 480 R90
        END INSTANCE
        BEGIN INSTANCE XLXI_5 1312 480 R90
        END INSTANCE
        BEGIN INSTANCE XLXI_6 1632 480 R90
        END INSTANCE
        BEGIN BRANCH XLXN_2
            WIRE 928 864 928 928
            WIRE 928 928 1024 928
            WIRE 1024 416 1024 928
            WIRE 1024 416 1152 416
            WIRE 1152 416 1152 480
        END BRANCH
        BEGIN BRANCH XLXN_3
            WIRE 1280 864 1280 928
            WIRE 1280 928 1392 928
            WIRE 1392 416 1392 928
            WIRE 1392 416 1472 416
            WIRE 1472 416 1472 480
        END BRANCH
        BEGIN BRANCH XLXN_1
            WIRE 608 864 608 928
            WIRE 608 928 720 928
            WIRE 720 416 800 416
            WIRE 800 416 800 480
            WIRE 720 416 720 928
        END BRANCH
        BEGIN INSTANCE XLXI_3 640 480 R90
        END INSTANCE
        BEGIN BRANCH r(3:0)
            WIRE 400 1120 496 1120
            WIRE 496 1120 816 1120
            WIRE 816 1120 1168 1120
            WIRE 1168 1120 1488 1120
            WIRE 1488 1120 1760 1120
        END BRANCH
        BUSTAP 496 1120 496 1024
        BEGIN BRANCH r(0)
            WIRE 496 864 496 960
            WIRE 496 960 496 976
            WIRE 496 976 496 1024
            BEGIN DISPLAY 496 976 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 816 1120 816 1024
        BEGIN BRANCH r(1)
            WIRE 816 864 816 960
            WIRE 816 960 816 976
            WIRE 816 976 816 1024
            BEGIN DISPLAY 816 976 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1168 1120 1168 1024
        BUSTAP 1488 1120 1488 1024
        BEGIN BRANCH r(3)
            WIRE 1488 864 1488 960
            WIRE 1488 960 1488 976
            WIRE 1488 976 1488 1024
            BEGIN DISPLAY 1488 976 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH r(2)
            WIRE 1168 864 1168 960
            WIRE 1168 960 1168 976
            WIRE 1168 976 1168 1024
            BEGIN DISPLAY 1168 976 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 1760 1120 r(3:0) R0 28
        BEGIN BRANCH b(3:0)
            WIRE 400 80 544 80
            WIRE 544 80 864 80
            WIRE 864 80 1216 80
            WIRE 1216 80 1536 80
            WIRE 1536 80 1760 80
        END BRANCH
        BEGIN BRANCH a(3:0)
            WIRE 400 240 608 240
            WIRE 608 240 928 240
            WIRE 928 240 1280 240
            WIRE 1280 240 1600 240
            WIRE 1600 240 1760 240
        END BRANCH
        IOMARKER 1760 80 b(3:0) R0 28
        IOMARKER 1760 240 a(3:0) R0 28
        BUSTAP 608 240 608 336
        BEGIN BRANCH a(0)
            WIRE 608 336 608 352
            WIRE 608 352 608 480
            BEGIN DISPLAY 608 352 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 544 80 544 176
        BEGIN BRANCH b(0)
            WIRE 544 176 544 352
            WIRE 544 352 544 480
            BEGIN DISPLAY 544 352 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 864 80 864 176
        BEGIN BRANCH b(1)
            WIRE 864 176 864 352
            WIRE 864 352 864 480
            BEGIN DISPLAY 864 352 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 928 240 928 336
        BEGIN BRANCH a(1)
            WIRE 928 336 928 352
            WIRE 928 352 928 480
            BEGIN DISPLAY 928 352 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1216 80 1216 176
        BEGIN BRANCH b(2)
            WIRE 1216 176 1216 352
            WIRE 1216 352 1216 480
            BEGIN DISPLAY 1216 352 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1280 240 1280 336
        BEGIN BRANCH a(2)
            WIRE 1280 336 1280 352
            WIRE 1280 352 1280 480
            BEGIN DISPLAY 1280 352 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1536 80 1536 176
        BEGIN BRANCH b(3)
            WIRE 1536 176 1536 352
            WIRE 1536 352 1536 480
            BEGIN DISPLAY 1536 352 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1600 240 1600 336
        BEGIN BRANCH a(3)
            WIRE 1600 336 1600 352
            WIRE 1600 352 1600 480
            BEGIN DISPLAY 1600 352 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_46
            WIRE 320 400 480 400
            WIRE 480 400 480 480
            WIRE 320 400 320 480
        END BRANCH
        INSTANCE XLXI_15 256 608 R0
        BEGIN BRANCH Cout
            WIRE 1600 864 1600 896
        END BRANCH
        IOMARKER 1600 896 Cout R90 28
    END SHEET
END SCHEMATIC
