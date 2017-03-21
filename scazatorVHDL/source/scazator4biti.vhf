--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2.04i
--  \   \         Application : sch2vhdl
--  /   /         Filename : scazator4biti.vhf
-- /___/   /\     Timestamp : 03/21/2017 10:29:54
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx92i\bin\nt\sch2vhdl.exe -intstyle ise -family spartan3 -flat -suppress -w D:/asdf/scazator4biti/scazator4biti.sch scazator4biti.vhf
--Design Name: scazator4biti
--Device: spartan3
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesis and simulted, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity M2_1_MXILINX_scazator4biti is
   port ( D0 : in    std_logic; 
          D1 : in    std_logic; 
          S0 : in    std_logic; 
          O  : out   std_logic);
end M2_1_MXILINX_scazator4biti;

architecture BEHAVIORAL of M2_1_MXILINX_scazator4biti is
   attribute BOX_TYPE   : string ;
   signal M0 : std_logic;
   signal M1 : std_logic;
   component AND2B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2B1 : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
begin
   I_36_7 : AND2B1
      port map (I0=>S0,
                I1=>D0,
                O=>M0);
   
   I_36_8 : OR2
      port map (I0=>M1,
                I1=>M0,
                O=>O);
   
   I_36_9 : AND2
      port map (I0=>D1,
                I1=>S0,
                O=>M1);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity scazator4biti is
   port ( a        : in    std_logic_vector (3 downto 0); 
          b        : in    std_logic_vector (3 downto 0); 
          S1A0     : in    std_logic; 
          Cout     : out   std_logic; 
          Overflow : out   std_logic; 
          R        : out   std_logic_vector (3 downto 0));
end scazator4biti;

architecture BEHAVIORAL of scazator4biti is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal bnb      : std_logic_vector (3 downto 0);
   signal nb       : std_logic_vector (3 downto 0);
   signal XLXN_59  : std_logic;
   signal XLXN_61  : std_logic;
   signal XLXN_79  : std_logic;
   signal XLXN_84  : std_logic;
   signal XLXN_88  : std_logic;
   signal XLXN_91  : std_logic;
   signal XLXN_92  : std_logic;
   signal R_DUMMY  : std_logic_vector (3 downto 0);
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component M2_1_MXILINX_scazator4biti
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             S0 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component sum4main
      port ( b    : in    std_logic_vector (3 downto 0); 
             a    : in    std_logic_vector (3 downto 0); 
             r    : out   std_logic_vector (3 downto 0); 
             Cout : out   std_logic; 
             Ci   : in    std_logic);
   end component;
   
   component XNOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XNOR2 : component is "BLACK_BOX";
   
   component AND3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3 : component is "BLACK_BOX";
   
   component XOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XOR2 : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_8 : label is "XLXI_8_0";
   attribute HU_SET of XLXI_9 : label is "XLXI_9_1";
   attribute HU_SET of XLXI_10 : label is "XLXI_10_2";
   attribute HU_SET of XLXI_11 : label is "XLXI_11_3";
begin
   R(3 downto 0) <= R_DUMMY(3 downto 0);
   XLXI_3 : INV
      port map (I=>b(3),
                O=>nb(3));
   
   XLXI_5 : INV
      port map (I=>b(2),
                O=>nb(2));
   
   XLXI_6 : INV
      port map (I=>b(1),
                O=>nb(1));
   
   XLXI_7 : INV
      port map (I=>b(0),
                O=>nb(0));
   
   XLXI_8 : M2_1_MXILINX_scazator4biti
      port map (D0=>b(3),
                D1=>nb(3),
                S0=>S1A0,
                O=>bnb(3));
   
   XLXI_9 : M2_1_MXILINX_scazator4biti
      port map (D0=>b(2),
                D1=>nb(2),
                S0=>S1A0,
                O=>bnb(2));
   
   XLXI_10 : M2_1_MXILINX_scazator4biti
      port map (D0=>b(1),
                D1=>nb(1),
                S0=>S1A0,
                O=>bnb(1));
   
   XLXI_11 : M2_1_MXILINX_scazator4biti
      port map (D0=>b(0),
                D1=>nb(0),
                S0=>S1A0,
                O=>bnb(0));
   
   XLXI_12 : sum4main
      port map (a(3 downto 0)=>a(3 downto 0),
                b(3 downto 0)=>bnb(3 downto 0),
                Ci=>S1A0,
                Cout=>Cout,
                r(3 downto 0)=>R_DUMMY(3 downto 0));
   
   XLXI_22 : XNOR2
      port map (I0=>b(3),
                I1=>a(3),
                O=>XLXN_59);
   
   XLXI_27 : INV
      port map (I=>S1A0,
                O=>XLXN_61);
   
   XLXI_28 : AND3
      port map (I0=>XLXN_61,
                I1=>XLXN_79,
                I2=>XLXN_59,
                O=>XLXN_91);
   
   XLXI_34 : XOR2
      port map (I0=>R_DUMMY(3),
                I1=>a(3),
                O=>XLXN_79);
   
   XLXI_35 : AND3
      port map (I0=>S1A0,
                I1=>XLXN_88,
                I2=>XLXN_84,
                O=>XLXN_92);
   
   XLXI_38 : XOR2
      port map (I0=>R_DUMMY(3),
                I1=>a(3),
                O=>XLXN_88);
   
   XLXI_39 : XOR2
      port map (I0=>b(3),
                I1=>a(3),
                O=>XLXN_84);
   
   XLXI_40 : OR2
      port map (I0=>XLXN_92,
                I1=>XLXN_91,
                O=>Overflow);
   
end BEHAVIORAL;


