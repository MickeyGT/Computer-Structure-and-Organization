--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2.04i
--  \   \         Application : sch2vhdl
--  /   /         Filename : as4v.vhf
-- /___/   /\     Timestamp : 03/21/2017 10:35:11
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx92i\bin\nt\sch2vhdl.exe -intstyle ise -family spartan3 -flat -suppress -w D:/asdf/scazatorVHDL/source/as4v.sch as4v.vhf
--Design Name: as4v
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

entity as4v is
   port ( A    : in    std_logic_vector (3 downto 0); 
          B    : in    std_logic_vector (3 downto 0); 
          S1A0 : in    std_logic; 
          R    : out   std_logic_vector (3 downto 0));
end as4v;

architecture BEHAVIORAL of as4v is
   component VHDLSource
      port ( S1A0 : in    std_logic; 
             A    : in    std_logic_vector (3 downto 0); 
             B    : in    std_logic_vector (3 downto 0); 
             R    : out   std_logic_vector (3 downto 0));
   end component;
   
begin
   XLXI_1 : VHDLSource
      port map (A(3 downto 0)=>A(3 downto 0),
                B(3 downto 0)=>B(3 downto 0),
                S1A0=>S1A0,
                R(3 downto 0)=>R(3 downto 0));
   
end BEHAVIORAL;


