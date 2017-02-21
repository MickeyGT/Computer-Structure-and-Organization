--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2.04i
--  \   \         Application : ISE
--  /   /         Filename : rezultat.vhw
-- /___/   /\     Timestamp : Mon Feb 20 12:51:40 2017
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: rezultat
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY rezultat IS
END rezultat;

ARCHITECTURE testbench_arch OF rezultat IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT sumator
        PORT (
            iaX : In std_logic_vector (7 DownTo 0);
            iaY : In std_logic_vector (7 DownTo 0);
            oaS : Out std_logic_vector (7 DownTo 0);
            oCout : Out std_logic;
            iCin : In std_logic
        );
    END COMPONENT;

    SIGNAL iaX : std_logic_vector (7 DownTo 0) := "00000000";
    SIGNAL iaY : std_logic_vector (7 DownTo 0) := "00000000";
    SIGNAL oaS : std_logic_vector (7 DownTo 0) := "00000000";
    SIGNAL oCout : std_logic := '0';
    SIGNAL iCin : std_logic := '0';

    constant PERIOD : time := 200 ns;
    constant DUTY_CYCLE : real := 0.5;
    constant OFFSET : time := 100 ns;

    BEGIN
        UUT : sumator
        PORT MAP (
            iaX => iaX,
            iaY => iaY,
            oaS => oaS,
            oCout => oCout,
            iCin => iCin
        );

        PROCESS    -- clock process for iCin
        BEGIN
            WAIT for OFFSET;
            CLOCK_LOOP : LOOP
                iCin <= '0';
                WAIT FOR (PERIOD - (PERIOD * DUTY_CYCLE));
                iCin <= '1';
                WAIT FOR (PERIOD * DUTY_CYCLE);
            END LOOP CLOCK_LOOP;
        END PROCESS;

        PROCESS
            BEGIN
                -- -------------  Current Time:  100ns
                WAIT FOR 100 ns;
                iaY <= "00000100";
                -- -------------------------------------
                -- -------------  Current Time:  185ns
                WAIT FOR 85 ns;
                iaX <= "01010100";
                iaY <= "10010100";
                -- -------------------------------------
                -- -------------  Current Time:  385ns
                WAIT FOR 200 ns;
                iaX <= "00011110";
                iaY <= "10010101";
                -- -------------------------------------
                -- -------------  Current Time:  585ns
                WAIT FOR 200 ns;
                iaX <= "00111110";
                iaY <= "10010111";
                -- -------------------------------------
                WAIT FOR 615 ns;

            END PROCESS;

    END testbench_arch;

