VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_7
        SIGNAL XLXN_8
        SIGNAL XLXN_9
        SIGNAL XLXN_10
        SIGNAL XLXN_22
        SIGNAL XLXN_23
        SIGNAL XLXN_24
        SIGNAL XLXN_25
        SIGNAL S1A0
        SIGNAL nb(0)
        SIGNAL nb(1)
        SIGNAL nb(2)
        SIGNAL nb(3)
        SIGNAL bnb(3:0)
        SIGNAL bnb(3)
        SIGNAL bnb(2)
        SIGNAL bnb(1)
        SIGNAL b(3:0)
        SIGNAL b(2)
        BEGIN SIGNAL b(3)
        END SIGNAL
        SIGNAL b(1)
        SIGNAL b(0)
        SIGNAL a(3:0)
        SIGNAL nb(3:0)
        SIGNAL R(3:0)
        SIGNAL Cout
        SIGNAL bnb(0)
        SIGNAL XLXN_66
        SIGNAL XLXN_67
        SIGNAL XLXN_70
        BEGIN SIGNAL a(3)
        END SIGNAL
        SIGNAL XLXN_59
        SIGNAL XLXN_76
        SIGNAL XLXN_61
        SIGNAL XLXN_79
        SIGNAL R(3)
        SIGNAL XLXN_84
        SIGNAL XLXN_85
        SIGNAL XLXN_87
        SIGNAL XLXN_88
        SIGNAL XLXN_91
        SIGNAL XLXN_92
        SIGNAL Overflow
        PORT Input S1A0
        PORT Input b(3:0)
        PORT Input a(3:0)
        PORT Output R(3:0)
        PORT Output Cout
        PORT Output Overflow
        BEGIN BLOCKDEF sum4main
            TIMESTAMP 2017 3 14 8 32 29
            LINE N 64 32 0 32 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
            LINE N 320 -32 384 -32 
            RECTANGLE N 64 -128 320 64 
        END BLOCKDEF
        BEGIN BLOCKDEF inv
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -32 64 -32 
            LINE N 224 -32 160 -32 
            LINE N 64 -64 128 -32 
            LINE N 128 -32 64 0 
            LINE N 64 0 64 -64 
            CIRCLE N 128 -48 160 -16 
        END BLOCKDEF
        BEGIN BLOCKDEF m2_1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 96 -64 96 -192 
            LINE N 256 -96 96 -64 
            LINE N 256 -160 256 -96 
            LINE N 96 -192 256 -160 
            LINE N 176 -32 96 -32 
            LINE N 176 -80 176 -32 
            LINE N 0 -32 96 -32 
            LINE N 320 -128 256 -128 
            LINE N 0 -96 96 -96 
            LINE N 0 -160 96 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF xnor2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 60 -128 
            ARC N -40 -152 72 -40 48 -48 44 -144 
            ARC N -24 -152 88 -40 64 -48 64 -144 
            LINE N 128 -144 64 -144 
            LINE N 128 -48 64 -48 
            ARC N 44 -144 220 32 208 -96 128 -144 
            ARC N 44 -224 220 -48 128 -48 208 -96 
            CIRCLE N 212 -104 228 -88 
            LINE N 228 -96 256 -96 
            LINE N 60 -28 60 -28 
        END BLOCKDEF
        BEGIN BLOCKDEF and3
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 256 -128 192 -128 
            LINE N 64 -176 144 -176 
            LINE N 144 -80 64 -80 
            ARC N 96 -176 192 -80 144 -80 144 -176 
            LINE N 64 -64 64 -192 
        END BLOCKDEF
        BEGIN BLOCKDEF xor2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 60 -128 
            LINE N 256 -96 208 -96 
            ARC N -40 -152 72 -40 48 -48 44 -144 
            ARC N -24 -152 88 -40 64 -48 64 -144 
            LINE N 128 -144 64 -144 
            LINE N 128 -48 64 -48 
            ARC N 44 -144 220 32 208 -96 128 -144 
            ARC N 44 -224 220 -48 128 -48 208 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF or2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 28 -224 204 -48 112 -48 192 -96 
            ARC N -40 -152 72 -40 48 -48 48 -144 
            LINE N 112 -144 48 -144 
            ARC N 28 -144 204 32 192 -96 112 -144 
            LINE N 112 -48 48 -48 
        END BLOCKDEF
        BEGIN BLOCK XLXI_3 inv
            PIN I b(3)
            PIN O nb(3)
        END BLOCK
        BEGIN BLOCK XLXI_5 inv
            PIN I b(2)
            PIN O nb(2)
        END BLOCK
        BEGIN BLOCK XLXI_6 inv
            PIN I b(1)
            PIN O nb(1)
        END BLOCK
        BEGIN BLOCK XLXI_7 inv
            PIN I b(0)
            PIN O nb(0)
        END BLOCK
        BEGIN BLOCK XLXI_8 m2_1
            PIN D0 b(3)
            PIN D1 nb(3)
            PIN S0 S1A0
            PIN O bnb(3)
        END BLOCK
        BEGIN BLOCK XLXI_9 m2_1
            PIN D0 b(2)
            PIN D1 nb(2)
            PIN S0 S1A0
            PIN O bnb(2)
        END BLOCK
        BEGIN BLOCK XLXI_10 m2_1
            PIN D0 b(1)
            PIN D1 nb(1)
            PIN S0 S1A0
            PIN O bnb(1)
        END BLOCK
        BEGIN BLOCK XLXI_12 sum4main
            PIN b(3:0) bnb(3:0)
            PIN a(3:0) a(3:0)
            PIN r(3:0) R(3:0)
            PIN Cout Cout
            PIN Ci S1A0
        END BLOCK
        BEGIN BLOCK XLXI_11 m2_1
            PIN D0 b(0)
            PIN D1 nb(0)
            PIN S0 S1A0
            PIN O bnb(0)
        END BLOCK
        BEGIN BLOCK XLXI_28 and3
            PIN I0 XLXN_61
            PIN I1 XLXN_79
            PIN I2 XLXN_59
            PIN O XLXN_91
        END BLOCK
        BEGIN BLOCK XLXI_22 xnor2
            PIN I0 b(3)
            PIN I1 a(3)
            PIN O XLXN_59
        END BLOCK
        BEGIN BLOCK XLXI_27 inv
            PIN I S1A0
            PIN O XLXN_61
        END BLOCK
        BEGIN BLOCK XLXI_34 xor2
            PIN I0 R(3)
            PIN I1 a(3)
            PIN O XLXN_79
        END BLOCK
        BEGIN BLOCK XLXI_35 and3
            PIN I0 S1A0
            PIN I1 XLXN_88
            PIN I2 XLXN_84
            PIN O XLXN_92
        END BLOCK
        BEGIN BLOCK XLXI_38 xor2
            PIN I0 R(3)
            PIN I1 a(3)
            PIN O XLXN_88
        END BLOCK
        BEGIN BLOCK XLXI_39 xor2
            PIN I0 b(3)
            PIN I1 a(3)
            PIN O XLXN_84
        END BLOCK
        BEGIN BLOCK XLXI_40 or2
            PIN I0 XLXN_92
            PIN I1 XLXN_91
            PIN O Overflow
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_3 608 368 R90
        INSTANCE XLXI_5 864 368 R90
        INSTANCE XLXI_6 1104 368 R90
        INSTANCE XLXI_7 1344 368 R90
        BEGIN BRANCH S1A0
            WIRE 320 720 384 720
            WIRE 384 720 576 720
            WIRE 576 720 576 800
            WIRE 576 720 832 720
            WIRE 832 720 832 800
            WIRE 832 720 1072 720
            WIRE 1072 720 1072 800
            WIRE 1072 720 1312 720
            WIRE 1312 720 1568 720
            WIRE 1312 720 1312 800
            WIRE 384 720 384 1360
            WIRE 384 1360 608 1360
            WIRE 608 1360 608 1408
        END BRANCH
        INSTANCE XLXI_8 544 800 R90
        INSTANCE XLXI_9 800 800 R90
        INSTANCE XLXI_10 1040 800 R90
        BEGIN BRANCH nb(0)
            WIRE 1376 592 1376 624
            WIRE 1376 624 1376 800
            BEGIN DISPLAY 1376 624 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH nb(1)
            WIRE 1136 592 1136 640
            WIRE 1136 640 1136 800
            BEGIN DISPLAY 1136 640 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH nb(2)
            WIRE 896 592 896 640
            WIRE 896 640 896 800
            BEGIN DISPLAY 896 640 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH nb(3)
            WIRE 640 592 640 640
            WIRE 640 640 640 800
            BEGIN DISPLAY 640 640 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_12 640 1408 R90
        END INSTANCE
        BEGIN BRANCH bnb(3:0)
            WIRE 528 1312 672 1312
            WIRE 672 1312 736 1312
            WIRE 736 1312 736 1408
            WIRE 736 1312 800 1312
            WIRE 800 1312 928 1312
            WIRE 928 1312 1168 1312
            WIRE 1168 1312 1408 1312
            WIRE 1408 1312 1584 1312
            BEGIN DISPLAY 800 1312 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 672 1312 672 1216
        BEGIN BRANCH bnb(3)
            WIRE 672 1120 672 1152
            WIRE 672 1152 672 1216
            BEGIN DISPLAY 672 1152 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 928 1312 928 1216
        BEGIN BRANCH bnb(2)
            WIRE 928 1120 928 1168
            WIRE 928 1168 928 1216
            BEGIN DISPLAY 928 1168 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1168 1312 1168 1216
        BEGIN BRANCH bnb(1)
            WIRE 1168 1120 1168 1168
            WIRE 1168 1168 1168 1216
            BEGIN DISPLAY 1168 1168 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1408 1312 1408 1216
        BEGIN BRANCH b(3:0)
            WIRE 384 96 640 96
            WIRE 640 96 896 96
            WIRE 896 96 1136 96
            WIRE 1136 96 1376 96
            WIRE 1376 96 1568 96
        END BRANCH
        BUSTAP 640 96 640 192
        BUSTAP 896 96 896 192
        BUSTAP 1136 96 1136 192
        BUSTAP 1376 96 1376 192
        BEGIN BRANCH b(2)
            WIRE 896 192 896 224
            WIRE 896 224 896 272
            WIRE 896 272 896 368
            WIRE 896 272 960 272
            WIRE 960 272 960 800
            BEGIN DISPLAY 896 224 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(3)
            WIRE 640 192 640 224
            WIRE 640 224 640 272
            WIRE 640 272 640 368
            WIRE 640 272 704 272
            WIRE 704 272 704 800
            BEGIN DISPLAY 640 224 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(1)
            WIRE 1136 192 1136 224
            WIRE 1136 224 1136 272
            WIRE 1136 272 1136 368
            WIRE 1136 272 1200 272
            WIRE 1200 272 1200 800
            BEGIN DISPLAY 1136 224 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(0)
            WIRE 1376 192 1376 224
            WIRE 1376 224 1376 272
            WIRE 1376 272 1376 368
            WIRE 1376 272 1440 272
            WIRE 1440 272 1440 800
            BEGIN DISPLAY 1376 224 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(3:0)
            WIRE 672 1360 1584 1360
            WIRE 672 1360 672 1408
        END BRANCH
        BEGIN BRANCH nb(3:0)
            WIRE 384 512 464 512
            WIRE 464 512 560 512
            BEGIN DISPLAY 464 512 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH R(3:0)
            WIRE 736 1792 736 1824
        END BRANCH
        BEGIN BRANCH Cout
            WIRE 672 1792 672 1824
        END BRANCH
        INSTANCE XLXI_11 1280 800 R90
        BEGIN BRANCH bnb(0)
            WIRE 1408 1120 1408 1168
            WIRE 1408 1168 1408 1216
            BEGIN DISPLAY 1408 1168 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 320 720 S1A0 R180 28
        IOMARKER 1568 96 b(3:0) R0 28
        IOMARKER 1584 1360 a(3:0) R0 28
        IOMARKER 736 1824 R(3:0) R90 28
        IOMARKER 672 1824 Cout R90 28
        INSTANCE XLXI_28 2240 1920 R0
        INSTANCE XLXI_22 1680 1680 R0
        BEGIN BRANCH b(3)
            WIRE 1632 1616 1648 1616
            WIRE 1648 1616 1680 1616
            BEGIN DISPLAY 1632 1616 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(3)
            WIRE 1632 1552 1648 1552
            WIRE 1648 1552 1680 1552
            BEGIN DISPLAY 1632 1552 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_59
            WIRE 1936 1584 2240 1584
            WIRE 2240 1584 2240 1632
            WIRE 2240 1632 2240 1728
        END BRANCH
        BEGIN BRANCH XLXN_61
            WIRE 1968 2032 2240 2032
            WIRE 2240 1856 2240 1968
            WIRE 2240 1968 2240 1984
            WIRE 2240 1984 2240 2000
            WIRE 2240 2000 2240 2032
        END BRANCH
        INSTANCE XLXI_27 1744 2064 R0
        BEGIN BRANCH S1A0
            WIRE 1632 2032 1744 2032
            BEGIN DISPLAY 1632 2032 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_79
            WIRE 1936 1792 2240 1792
        END BRANCH
        INSTANCE XLXI_34 1680 1888 R0
        BEGIN BRANCH a(3)
            WIRE 1616 1760 1680 1760
            BEGIN DISPLAY 1616 1760 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH R(3)
            WIRE 1616 1824 1680 1824
            BEGIN DISPLAY 1616 1824 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_35 2240 2560 R0
        BEGIN BRANCH b(3)
            WIRE 1632 2256 1648 2256
            WIRE 1648 2256 1680 2256
            BEGIN DISPLAY 1632 2256 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(3)
            WIRE 1632 2192 1648 2192
            WIRE 1648 2192 1680 2192
            BEGIN DISPLAY 1632 2192 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_84
            WIRE 1936 2224 2240 2224
            WIRE 2240 2224 2240 2272
            WIRE 2240 2272 2240 2368
        END BRANCH
        BEGIN BRANCH S1A0
            WIRE 1632 2672 1968 2672
            WIRE 1968 2672 2240 2672
            WIRE 2240 2496 2240 2608
            WIRE 2240 2608 2240 2624
            WIRE 2240 2624 2240 2640
            WIRE 2240 2640 2240 2672
            BEGIN DISPLAY 1632 2672 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_88
            WIRE 1936 2432 2240 2432
        END BRANCH
        INSTANCE XLXI_38 1680 2528 R0
        BEGIN BRANCH a(3)
            WIRE 1616 2400 1680 2400
            BEGIN DISPLAY 1616 2400 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH R(3)
            WIRE 1616 2464 1680 2464
            BEGIN DISPLAY 1616 2464 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_39 1680 2320 R0
        INSTANCE XLXI_40 2752 2208 R0
        BEGIN BRANCH XLXN_91
            WIRE 2496 1792 2624 1792
            WIRE 2624 1792 2624 2080
            WIRE 2624 2080 2752 2080
        END BRANCH
        BEGIN BRANCH XLXN_92
            WIRE 2496 2432 2624 2432
            WIRE 2624 2144 2624 2432
            WIRE 2624 2144 2752 2144
        END BRANCH
        BEGIN BRANCH Overflow
            WIRE 3008 2112 3120 2112
        END BRANCH
        IOMARKER 3120 2112 Overflow R0 28
    END SHEET
END SCHEMATIC
