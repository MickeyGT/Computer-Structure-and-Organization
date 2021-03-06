--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2.04i
--  \   \         Application : ISE
--  /   /         Filename : WaveMips.vhw
-- /___/   /\     Timestamp : Tue Mar 28 11:26:42 2017
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: WaveMips
--Device: Xilinx
--

library UNISIM;
use UNISIM.Vcomponents.ALL;
library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE STD.TEXTIO.ALL;

ENTITY WaveMips IS
END WaveMips;

ARCHITECTURE testbench_arch OF WaveMips IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT mips
        PORT (
            Clock : In std_logic
        );
    END COMPONENT;

    SIGNAL Clock : std_logic := '0';

    constant PERIOD : time := 20 ns;
    constant DUTY_CYCLE : real := 0.5;
    constant OFFSET : time := 100 ns;

    BEGIN
        UUT : mips
        PORT MAP (
            Clock => Clock
        );

        PROCESS    -- clock process for Clock
        BEGIN
            WAIT for OFFSET;
            CLOCK_LOOP : LOOP
                Clock <= '0';
                WAIT FOR (PERIOD - (PERIOD * DUTY_CYCLE));
                Clock <= '1';
                WAIT FOR (PERIOD * DUTY_CYCLE);
            END LOOP CLOCK_LOOP;
        END PROCESS;

        PROCESS
            BEGIN
                WAIT FOR 1020 ns;

            END PROCESS;

    END testbench_arch;

