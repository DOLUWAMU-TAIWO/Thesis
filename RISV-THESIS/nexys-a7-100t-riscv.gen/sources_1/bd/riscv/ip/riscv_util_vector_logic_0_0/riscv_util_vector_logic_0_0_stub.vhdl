-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Fri Dec  8 15:44:25 2023
-- Host        : CN010 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/vivado-risc-v/workspace/rocket64b1/vivado-nexys-a7-100t-riscv/nexys-a7-100t-riscv.gen/sources_1/bd/riscv/ip/riscv_util_vector_logic_0_0/riscv_util_vector_logic_0_0_stub.vhdl
-- Design      : riscv_util_vector_logic_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity riscv_util_vector_logic_0_0 is
  Port ( 
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end riscv_util_vector_logic_0_0;

architecture stub of riscv_util_vector_logic_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "Op1[0:0],Res[0:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "util_vector_logic_v2_0_2_util_vector_logic,Vivado 2022.2";
begin
end;
