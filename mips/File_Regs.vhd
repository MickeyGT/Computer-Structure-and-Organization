----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:12:22 04/25/2017 
-- Design Name: 
-- Module Name:    File_Regs - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity File_Regs is
    Port ( RdReg1 : in  STD_LOGIC_VECTOR (4 downto 0);
           RdReg2 : in  STD_LOGIC_VECTOR (4 downto 0);
           WrReg : in  STD_LOGIC_VECTOR (4 downto 0);
           WrData : in  STD_LOGIC_VECTOR (31 downto 0);
           WrEn : in  STD_LOGIC;
           RdData1 : out  STD_LOGIC_VECTOR (31 downto 0);
           RdData2 : out  STD_LOGIC_VECTOR (31 downto 0);
           Clock : in  STD_LOGIC);
end File_Regs;

architecture Behavioral of File_Regs is

	type tRegs is array (0 to 31) of std_logic_vector(31 downto 0);
	signal Regs : tRegs;
	
	signal RdData1_local : STD_LOGIC_VECTOR (31 downto 0);
	signal RdData2_local : STD_LOGIC_VECTOR (31 downto 0);
	
begin

	RdData1_local <= Regs( conv_integer(RdReg1) );
	RdData2_local <= Regs( conv_integer(RdReg2) );
	
	Regs( conv_integer(WrReg) ) <= WrData when rising_edge(Clock) and WrEn = '1' ; 
	
	RdData1 <= x"0000_0000" when conv_integer(RdReg1) = 0 else
				  RdData1_local;

	RdData2 <= x"0000_0000" when conv_integer(RdReg2) = 0 else
				  RdData2_local;

end Behavioral;

