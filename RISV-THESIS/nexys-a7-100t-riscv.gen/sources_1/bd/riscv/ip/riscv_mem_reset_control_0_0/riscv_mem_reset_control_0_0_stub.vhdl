-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Fri Dec  8 15:38:54 2023
-- Host        : CN010 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/vivado-risc-v/workspace/rocket64b1/vivado-nexys-a7-100t-riscv/nexys-a7-100t-riscv.gen/sources_1/bd/riscv/ip/riscv_mem_reset_control_0_0/riscv_mem_reset_control_0_0_stub.vhdl
-- Design      : riscv_mem_reset_control_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity riscv_mem_reset_control_0_0 is
  Port ( 
    clock : in STD_LOGIC;
    clock_ok : in STD_LOGIC;
    mmcm_locked : in STD_LOGIC;
    calib_complete : in STD_LOGIC;
    ui_clk_sync_rst : in STD_LOGIC;
    sys_reset : in STD_LOGIC;
    mem_reset : out STD_LOGIC;
    aresetn : out STD_LOGIC;
    ui_clk : in STD_LOGIC;
    mem_ok : out STD_LOGIC
  );

end riscv_mem_reset_control_0_0;

architecture stub of riscv_mem_reset_control_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clock,clock_ok,mmcm_locked,calib_complete,ui_clk_sync_rst,sys_reset,mem_reset,aresetn,ui_clk,mem_ok";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "mem_reset_control,Vivado 2022.2";
begin
end;
