@echo off
REM ****************************************************************************
REM Vivado (TM) v2024.1.2 (64-bit)
REM
REM Filename    : simulate.bat
REM Simulator   : AMD Vivado Simulator
REM Description : Script for simulating the design by launching the simulator
REM
REM Generated by Vivado on Wed Nov 13 10:21:30 +0900 2024
REM SW Build 5164865 on Thu Sep  5 14:37:11 MDT 2024
REM
REM Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
REM Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
REM
REM usage: simulate.bat
REM
REM ****************************************************************************
REM simulate design
echo "xsim axi_sim_func_impl -key {Post-Implementation:sim_1:Functional:axi_sim} -tclbatch axi_sim.tcl -protoinst "protoinst_files/bd_36cd.protoinst" -protoinst "protoinst_files/design_1.protoinst" -log simulate.log"
call xsim  axi_sim_func_impl -key {Post-Implementation:sim_1:Functional:axi_sim} -tclbatch axi_sim.tcl -protoinst "protoinst_files/bd_36cd.protoinst" -protoinst "protoinst_files/design_1.protoinst" -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
