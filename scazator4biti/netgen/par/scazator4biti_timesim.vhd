--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: J.40
--  \   \         Application: netgen
--  /   /         Filename: scazator4biti_timesim.vhd
-- /___/   /\     Timestamp: Tue Mar 14 11:36:58 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 4 -pcf scazator4biti.pcf -rpw 100 -tpw 0 -ar Structure -tm scazator4biti -insert_pp_buffers false -w -dir netgen/par -ofmt vhdl -sim scazator4biti.ncd scazator4biti_timesim.vhd 
-- Device	: 3s400ft256-4 (PRODUCTION 1.39 2007-10-19)
-- Input file	: scazator4biti.ncd
-- Output file	: D:\asdf\scazator4biti\netgen\par\scazator4biti_timesim.vhd
-- # of Entities	: 1
-- Design Name	: scazator4biti
-- Xilinx	: C:\Xilinx92i
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Development System Reference Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity scazator4biti is
  port (
    S1A0 : in STD_LOGIC := 'X'; 
    Cout : out STD_LOGIC; 
    Overflow : out STD_LOGIC; 
    R : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    a : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    b : in STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end scazator4biti;

architecture Structure of scazator4biti is
  signal S1A0_IBUF_0 : STD_LOGIC; 
  signal a_0_IBUF_1 : STD_LOGIC; 
  signal a_1_IBUF_2 : STD_LOGIC; 
  signal a_2_IBUF_3 : STD_LOGIC; 
  signal a_3_IBUF_4 : STD_LOGIC; 
  signal b_0_IBUF_5 : STD_LOGIC; 
  signal b_1_IBUF_6 : STD_LOGIC; 
  signal b_2_IBUF_7 : STD_LOGIC; 
  signal b_3_IBUF_8 : STD_LOGIC; 
  signal XLXI_12_XLXN_1 : STD_LOGIC; 
  signal XLXI_12_XLXN_2_0 : STD_LOGIC; 
  signal XLXI_12_XLXN_3 : STD_LOGIC; 
  signal Cout_O : STD_LOGIC; 
  signal S1A0_INBUF : STD_LOGIC; 
  signal R_0_O : STD_LOGIC; 
  signal R_1_O : STD_LOGIC; 
  signal R_2_O : STD_LOGIC; 
  signal R_3_O : STD_LOGIC; 
  signal a_0_INBUF : STD_LOGIC; 
  signal a_1_INBUF : STD_LOGIC; 
  signal a_2_INBUF : STD_LOGIC; 
  signal Overflow_O : STD_LOGIC; 
  signal a_3_INBUF : STD_LOGIC; 
  signal b_0_INBUF : STD_LOGIC; 
  signal b_1_INBUF : STD_LOGIC; 
  signal b_2_INBUF : STD_LOGIC; 
  signal b_3_INBUF : STD_LOGIC; 
  signal R_0_OBUF_9 : STD_LOGIC; 
  signal XLXI_12_XLXN_2 : STD_LOGIC; 
  signal XLXI_12_XLXN_1_pack_1 : STD_LOGIC; 
  signal Cout_OBUF_10 : STD_LOGIC; 
  signal R_1_OBUF_11 : STD_LOGIC; 
  signal R_3_OBUF_12 : STD_LOGIC; 
  signal R_2_OBUF_13 : STD_LOGIC; 
  signal Overflow_OBUF_14 : STD_LOGIC; 
  signal XLXI_12_XLXN_3_pack_1 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
begin
  Cout_OBUF : X_OBUF
    generic map(
      LOC => "PAD175"
    )
    port map (
      I => Cout_O,
      O => Cout
    );
  S1A0_IBUF : X_BUF
    generic map(
      LOC => "PAD177",
      PATHPULSE => 757 ps
    )
    port map (
      I => S1A0,
      O => S1A0_INBUF
    );
  S1A0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD177",
      PATHPULSE => 757 ps
    )
    port map (
      I => S1A0_INBUF,
      O => S1A0_IBUF_0
    );
  R_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD78"
    )
    port map (
      I => R_0_O,
      O => R(0)
    );
  R_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD172"
    )
    port map (
      I => R_1_O,
      O => R(1)
    );
  R_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD165"
    )
    port map (
      I => R_2_O,
      O => R(2)
    );
  R_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD168"
    )
    port map (
      I => R_3_O,
      O => R(3)
    );
  a_0_IBUF : X_BUF
    generic map(
      LOC => "PAD75",
      PATHPULSE => 757 ps
    )
    port map (
      I => a(0),
      O => a_0_INBUF
    );
  a_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD75",
      PATHPULSE => 757 ps
    )
    port map (
      I => a_0_INBUF,
      O => a_0_IBUF_1
    );
  a_1_IBUF : X_BUF
    generic map(
      LOC => "PAD173",
      PATHPULSE => 757 ps
    )
    port map (
      I => a(1),
      O => a_1_INBUF
    );
  a_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD173",
      PATHPULSE => 757 ps
    )
    port map (
      I => a_1_INBUF,
      O => a_1_IBUF_2
    );
  a_2_IBUF : X_BUF
    generic map(
      LOC => "PAD166",
      PATHPULSE => 757 ps
    )
    port map (
      I => a(2),
      O => a_2_INBUF
    );
  a_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD166",
      PATHPULSE => 757 ps
    )
    port map (
      I => a_2_INBUF,
      O => a_2_IBUF_3
    );
  Overflow_OBUF : X_OBUF
    generic map(
      LOC => "PAD167"
    )
    port map (
      I => Overflow_O,
      O => Overflow
    );
  a_3_IBUF : X_BUF
    generic map(
      LOC => "PAD170",
      PATHPULSE => 757 ps
    )
    port map (
      I => a(3),
      O => a_3_INBUF
    );
  a_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD170",
      PATHPULSE => 757 ps
    )
    port map (
      I => a_3_INBUF,
      O => a_3_IBUF_4
    );
  b_0_IBUF : X_BUF
    generic map(
      LOC => "PAD77",
      PATHPULSE => 757 ps
    )
    port map (
      I => b(0),
      O => b_0_INBUF
    );
  b_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD77",
      PATHPULSE => 757 ps
    )
    port map (
      I => b_0_INBUF,
      O => b_0_IBUF_5
    );
  b_1_IBUF : X_BUF
    generic map(
      LOC => "PAD174",
      PATHPULSE => 757 ps
    )
    port map (
      I => b(1),
      O => b_1_INBUF
    );
  b_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD174",
      PATHPULSE => 757 ps
    )
    port map (
      I => b_1_INBUF,
      O => b_1_IBUF_6
    );
  b_2_IBUF : X_BUF
    generic map(
      LOC => "PAD169",
      PATHPULSE => 757 ps
    )
    port map (
      I => b(2),
      O => b_2_INBUF
    );
  b_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD169",
      PATHPULSE => 757 ps
    )
    port map (
      I => b_2_INBUF,
      O => b_2_IBUF_7
    );
  b_3_IBUF : X_BUF
    generic map(
      LOC => "PAD171",
      PATHPULSE => 757 ps
    )
    port map (
      I => b(3),
      O => b_3_INBUF
    );
  b_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD171",
      PATHPULSE => 757 ps
    )
    port map (
      I => b_3_INBUF,
      O => b_3_IBUF_8
    );
  XLXI_12_XLXI_3_XLXI_1 : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X54Y57"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => b_0_IBUF_5,
      ADR2 => VCC,
      ADR3 => VCC,
      O => R_0_OBUF_9
    );
  XLXI_12_XLXN_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X26Y1",
      PATHPULSE => 757 ps
    )
    port map (
      I => XLXI_12_XLXN_2,
      O => XLXI_12_XLXN_2_0
    );
  XLXI_12_XLXN_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X26Y1",
      PATHPULSE => 757 ps
    )
    port map (
      I => XLXI_12_XLXN_1_pack_1,
      O => XLXI_12_XLXN_1
    );
  XLXI_12_XLXI_3_XLXI_5 : X_LUT4
    generic map(
      INIT => X"F0CC",
      LOC => "SLICE_X26Y1"
    )
    port map (
      ADR0 => VCC,
      ADR1 => S1A0_IBUF_0,
      ADR2 => a_0_IBUF_1,
      ADR3 => b_0_IBUF_5,
      O => XLXI_12_XLXN_1_pack_1
    );
  XLXI_12_XLXI_4_XLXI_1 : X_LUT4
    generic map(
      INIT => X"6996",
      LOC => "SLICE_X26Y0"
    )
    port map (
      ADR0 => XLXI_12_XLXN_1,
      ADR1 => S1A0_IBUF_0,
      ADR2 => a_1_IBUF_2,
      ADR3 => b_1_IBUF_6,
      O => R_1_OBUF_11
    );
  XLXI_12_XLXI_5_XLXI_1 : X_LUT4
    generic map(
      INIT => X"6996",
      LOC => "SLICE_X28Y1"
    )
    port map (
      ADR0 => b_2_IBUF_7,
      ADR1 => S1A0_IBUF_0,
      ADR2 => XLXI_12_XLXN_2_0,
      ADR3 => a_2_IBUF_3,
      O => R_2_OBUF_13
    );
  Overflow_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y0",
      PATHPULSE => 757 ps
    )
    port map (
      I => XLXI_12_XLXN_3_pack_1,
      O => XLXI_12_XLXN_3
    );
  XLXI_12_XLXI_5_XLXI_5 : X_LUT4
    generic map(
      INIT => X"F660",
      LOC => "SLICE_X28Y0"
    )
    port map (
      ADR0 => b_2_IBUF_7,
      ADR1 => S1A0_IBUF_0,
      ADR2 => XLXI_12_XLXN_2_0,
      ADR3 => a_2_IBUF_3,
      O => XLXI_12_XLXN_3_pack_1
    );
  XLXI_12_XLXI_4_XLXI_5 : X_LUT4
    generic map(
      INIT => X"B2E8",
      LOC => "SLICE_X26Y1"
    )
    port map (
      ADR0 => XLXI_12_XLXN_1,
      ADR1 => S1A0_IBUF_0,
      ADR2 => a_1_IBUF_2,
      ADR3 => b_1_IBUF_6,
      O => XLXI_12_XLXN_2
    );
  XLXI_12_XLXI_6_XLXI_5 : X_LUT4
    generic map(
      INIT => X"BE28",
      LOC => "SLICE_X26Y0"
    )
    port map (
      ADR0 => a_3_IBUF_4,
      ADR1 => S1A0_IBUF_0,
      ADR2 => b_3_IBUF_8,
      ADR3 => XLXI_12_XLXN_3,
      O => Cout_OBUF_10
    );
  XLXI_12_XLXI_6_XLXI_1 : X_LUT4
    generic map(
      INIT => X"6996",
      LOC => "SLICE_X28Y1"
    )
    port map (
      ADR0 => XLXI_12_XLXN_3,
      ADR1 => S1A0_IBUF_0,
      ADR2 => a_3_IBUF_4,
      ADR3 => b_3_IBUF_8,
      O => R_3_OBUF_12
    );
  XLXI_40 : X_LUT4
    generic map(
      INIT => X"1842",
      LOC => "SLICE_X28Y0"
    )
    port map (
      ADR0 => XLXI_12_XLXN_3,
      ADR1 => S1A0_IBUF_0,
      ADR2 => a_3_IBUF_4,
      ADR3 => b_3_IBUF_8,
      O => Overflow_OBUF_14
    );
  Cout_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD175",
      PATHPULSE => 757 ps
    )
    port map (
      I => Cout_OBUF_10,
      O => Cout_O
    );
  R_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD78",
      PATHPULSE => 757 ps
    )
    port map (
      I => R_0_OBUF_9,
      O => R_0_O
    );
  R_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD172",
      PATHPULSE => 757 ps
    )
    port map (
      I => R_1_OBUF_11,
      O => R_1_O
    );
  R_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD165",
      PATHPULSE => 757 ps
    )
    port map (
      I => R_2_OBUF_13,
      O => R_2_O
    );
  R_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD168",
      PATHPULSE => 757 ps
    )
    port map (
      I => R_3_OBUF_12,
      O => R_3_O
    );
  Overflow_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD167",
      PATHPULSE => 757 ps
    )
    port map (
      I => Overflow_OBUF_14,
      O => Overflow_O
    );
  NlwBlock_scazator4biti_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

