--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2.04i
--  \   \         Application : sch2vhdl
--  /   /         Filename : sum4main.vhf
-- /___/   /\     Timestamp : 03/21/2017 10:29:55
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx92i\bin\nt\sch2vhdl.exe -intstyle ise -family spartan3 -flat -suppress -w D:/asdf/scazator4biti/sum4main.sch sum4main.vhf
--Design Name: sum4main
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

entity sum4main is
   port ( a    : in    std_logic_vector (3 downto 0); 
          b    : in    std_logic_vector (3 downto 0); 
          Ci   : in    std_logic; 
          Cout : out   std_logic; 
          r    : out   std_logic_vector (3 downto 0));
end sum4main;

architecture BEHAVIORAL of sum4main is
   signal XLXN_1 : std_logic;
   signal XLXN_2 : std_logic;
   signal XLXN_3 : std_logic;
   component main
      port ( A  : in    std_logic; 
             B  : in    std_logic; 
             Ci : in    std_logic; 
             Co : out   std_logic; 
             S  : out   std_logic);
   end component;
   
begin
   XLXI_3 : main
      port map (A=>a(0),
                B=>b(0),
                Ci=>Ci,
                Co=>XLXN_1,
                S=>r(0));
   
   XLXI_4 : main
      port map (A=>a(1),
                B=>b(1),
                Ci=>XLXN_1,
                Co=>XLXN_2,
                S=>r(1));
   
   XLXI_5 : main
      port map (A=>a(2),
                B=>b(2),
                Ci=>XLXN_2,
                Co=>XLXN_3,
                S=>r(2));
   
   XLXI_6 : main
      port map (A=>a(3),
                B=>b(3),
                Ci=>XLXN_3,
                Co=>Cout,
                S=>r(3));
   
end BEHAVIORAL;


