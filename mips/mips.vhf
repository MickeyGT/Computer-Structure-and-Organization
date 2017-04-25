--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2.04i
--  \   \         Application : sch2vhdl
--  /   /         Filename : mips.vhf
-- /___/   /\     Timestamp : 04/25/2017 11:53:27
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx92i\bin\nt\sch2vhdl.exe -intstyle ise -family spartan3 -flat -suppress -w D:/asdf/mips/mips.sch mips.vhf
--Design Name: mips
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

entity mips is
   port ( Clock : in    std_logic; 
          INW0  : in    std_logic_vector (31 downto 0); 
          INW1  : in    std_logic_vector (31 downto 0); 
          OUTW0 : out   std_logic_vector (31 downto 0));
end mips;

architecture BEHAVIORAL of mips is
   signal ALUOP   : std_logic_vector (1 downto 0);
   signal ALUSrc  : std_logic;
   signal ALU_Out : std_logic_vector (31 downto 0);
   signal Instr   : std_logic_vector (31 downto 0);
   signal MemWr   : std_logic;
   signal Mem2Reg : std_logic;
   signal New_PC  : std_logic_vector (31 downto 0);
   signal PC      : std_logic_vector (31 downto 0);
   signal RegDest : std_logic;
   signal RegWr   : std_logic;
   signal WrReg   : std_logic_vector (4 downto 0);
   signal XLXN_33 : std_logic_vector (31 downto 0);
   signal XLXN_34 : std_logic_vector (31 downto 0);
   signal XLXN_66 : std_logic_vector (31 downto 0);
   signal XLXN_68 : std_logic_vector (31 downto 0);
   component MUX2v5
      port ( Sel : in    std_logic; 
             I0  : in    std_logic_vector (4 downto 0); 
             I1  : in    std_logic_vector (4 downto 0); 
             Y   : out   std_logic_vector (4 downto 0));
   end component;
   
   component PC_Update
      port ( PC     : in    std_logic_vector (31 downto 0); 
             New_PC : out   std_logic_vector (31 downto 0));
   end component;
   
   component Program_Counter
      port ( Clock  : in    std_logic; 
             New_PC : in    std_logic_vector (31 downto 0); 
             PC     : out   std_logic_vector (31 downto 0));
   end component;
   
   component File_Regs
      port ( WrReg   : in    std_logic_vector (4 downto 0); 
             WrData  : in    std_logic_vector (31 downto 0); 
             RdData1 : out   std_logic_vector (31 downto 0); 
             RdData2 : out   std_logic_vector (31 downto 0); 
             RdReg1  : in    std_logic_vector (4 downto 0); 
             RdReg2  : in    std_logic_vector (4 downto 0); 
             Clock   : in    std_logic; 
             WrEn    : in    std_logic);
   end component;
   
   component ROM_32x32
      port ( Address : in    std_logic_vector (4 downto 0); 
             DATA    : out   std_logic_vector (31 downto 0));
   end component;
   
   component ALU
      port ( ALUSrc  : in    std_logic; 
             RdData1 : in    std_logic_vector (31 downto 0); 
             RdData2 : in    std_logic_vector (31 downto 0); 
             FAddr   : in    std_logic_vector (15 downto 0); 
             ALUOP   : in    std_logic_vector (1 downto 0); 
             Y       : out   std_logic_vector (31 downto 0));
   end component;
   
   component DataMem
      port ( Clk     : in    std_logic; 
             Wr      : in    std_logic; 
             INW0    : in    std_logic_vector (31 downto 0); 
             INW1    : in    std_logic_vector (31 downto 0); 
             Addr    : in    std_logic_vector (4 downto 0); 
             DataIn  : in    std_logic_vector (31 downto 0); 
             OUTW0   : out   std_logic_vector (31 downto 0); 
             DataOut : out   std_logic_vector (31 downto 0));
   end component;
   
   component MUX_2v32
      port ( Sel : in    std_logic; 
             I0  : in    std_logic_vector (31 downto 0); 
             I1  : in    std_logic_vector (31 downto 0); 
             Y   : out   std_logic_vector (31 downto 0));
   end component;
   
begin
   U_MUXRegD : MUX2v5
      port map (I0(4 downto 0)=>Instr(20 downto 16),
                I1(4 downto 0)=>Instr(15 downto 11),
                Sel=>RegDest,
                Y(4 downto 0)=>WrReg(4 downto 0));
   
   U_New_PC : PC_Update
      port map (PC(31 downto 0)=>PC(31 downto 0),
                New_PC(31 downto 0)=>New_PC(31 downto 0));
   
   U_PC : Program_Counter
      port map (Clock=>Clock,
                New_PC(31 downto 0)=>New_PC(31 downto 0),
                PC(31 downto 0)=>PC(31 downto 0));
   
   U_Regs : File_Regs
      port map (Clock=>Clock,
                RdReg1(4 downto 0)=>Instr(25 downto 21),
                RdReg2(4 downto 0)=>Instr(20 downto 16),
                WrData(31 downto 0)=>XLXN_68(31 downto 0),
                WrEn=>RegWr,
                WrReg(4 downto 0)=>WrReg(4 downto 0),
                RdData1(31 downto 0)=>XLXN_33(31 downto 0),
                RdData2(31 downto 0)=>XLXN_34(31 downto 0));
   
   U_ROM : ROM_32x32
      port map (Address(4 downto 0)=>PC(6 downto 2),
                DATA(31 downto 0)=>Instr(31 downto 0));
   
   XLXI_15 : ALU
      port map (ALUOP(1 downto 0)=>ALUOP(1 downto 0),
                ALUSrc=>ALUSrc,
                FAddr(15 downto 0)=>Instr(15 downto 0),
                RdData1(31 downto 0)=>XLXN_33(31 downto 0),
                RdData2(31 downto 0)=>XLXN_34(31 downto 0),
                Y(31 downto 0)=>ALU_Out(31 downto 0));
   
   XLXI_24 : DataMem
      port map (Addr(4 downto 0)=>ALU_Out(6 downto 2),
                Clk=>Clock,
                DataIn(31 downto 0)=>XLXN_34(31 downto 0),
                INW0(31 downto 0)=>INW0(31 downto 0),
                INW1(31 downto 0)=>INW1(31 downto 0),
                Wr=>MemWr,
                DataOut(31 downto 0)=>XLXN_66(31 downto 0),
                OUTW0(31 downto 0)=>OUTW0(31 downto 0));
   
   XLXI_25 : MUX_2v32
      port map (I0(31 downto 0)=>ALU_Out(31 downto 0),
                I1(31 downto 0)=>XLXN_66(31 downto 0),
                Sel=>Mem2Reg,
                Y(31 downto 0)=>XLXN_68(31 downto 0));
   
end BEHAVIORAL;


