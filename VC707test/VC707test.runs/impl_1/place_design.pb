
Q
Command: %s
53*	vivadotcl2 
place_design2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
	xc7vx485t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
	xc7vx485t2default:defaultZ17-349h px� 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px� 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
place_design2default:defaultZ4-22h px� 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px� 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
U

Starting %s Task
103*constraints2
Placer2default:defaultZ18-103h px� 
}
BMultithreading enabled for place_design using a maximum of %s CPUs12*	placeflow2
82default:defaultZ30-611h px� 
v

Phase %s%s
101*constraints2
1 2default:default2)
Placer Initialization2default:defaultZ18-101h px� 
�

Phase %s%s
101*constraints2
1.1 2default:default29
%Placer Initialization Netlist Sorting2default:defaultZ18-101h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.012default:default2
00:00:00.012default:default2
3661.4412default:default2
0.0002default:default2
49712default:default2
257182default:defaultZ17-722h px� 
s
%s*common2Z
FPhase 1.1 Placer Initialization Netlist Sorting | Checksum: 16bc69fee
2default:defaulth px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.03 ; elapsed = 00:00:00.05 . Memory (MB): peak = 3661.441 ; gain = 0.000 ; free physical = 4971 ; free virtual = 257182default:defaulth px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.012default:default2
00:00:00.012default:default2
3661.4412default:default2
0.0002default:default2
49712default:default2
257182default:defaultZ17-722h px� 
�

Phase %s%s
101*constraints2
1.2 2default:default2F
2IO Placement/ Clock Placement/ Build Placer Device2default:defaultZ18-101h px� 
�
,%s replication was created for %s IDELAYCTRL922*place2�
uVirtex_i/mig_7series_0/u_Virtex_mig_7series_0_0_mig/u_iodelay_ctrl/idelayctrl_gen_1.u_idelayctrl_300_400_REPLICATED_02default:default2|
hVirtex_i/mig_7series_0/u_Virtex_mig_7series_0_0_mig/u_iodelay_ctrl/idelayctrl_gen_1.u_idelayctrl_300_4002default:defaultZ30-1907h px� 
�

BSub-optimal placement for a clock-capable IO pin and MMCM pair. %s522*place2�

�This is normally an ERROR but the CLOCK_DEDICATED_ROUTE constraint is set to FALSE allowing your design to continue. The use of this override is highly discouraged as it may lead to very poor timing results. It is recommended that this error condition be corrected in the design.

	<MSGMETA::BEGIN::BLOCK>Virtex_i/mig_7series_0/u_Virtex_mig_7series_0_0_mig/u_ddr3_clk_ibuf/diff_input_clk.u_ibufg_sys_clk<MSGMETA::END> (IBUFDS.O) is locked to IOB_X1Y276
	<MSGMETA::BEGIN::BLOCK>Virtex_i/mig_7series_0/u_Virtex_mig_7series_0_0_mig/u_iodelay_ctrl/clk_ref_mmcm_gen.mmcm_i<MSGMETA::END> (MMCME2_ADV.CLKIN1) is provisionally placed by clockplacer on MMCME2_ADV_X1Y0
"�
bVirtex_i/mig_7series_0/u_Virtex_mig_7series_0_0_mig/u_ddr3_clk_ibuf/diff_input_clk.u_ibufg_sys_clk2�This is normally an ERROR but the CLOCK_DEDICATED_ROUTE constraint is set to FALSE allowing your design to continue. The use of this override is highly discouraged as it may lead to very poor timing results. It is recommended that this error condition be corrected in the design.

	:% (IBUFDS.O) is locked to IOB_X1Y276
	"�
ZVirtex_i/mig_7series_0/u_Virtex_mig_7series_0_0_mig/u_iodelay_ctrl/clk_ref_mmcm_gen.mmcm_i:O (MMCME2_ADV.CLKIN1) is provisionally placed by clockplacer on MMCME2_ADV_X1Y0
2default:default8Z30-575h px� 

%s*common2f
RPhase 1.2 IO Placement/ Clock Placement/ Build Placer Device | Checksum: d6276390
2default:defaulth px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:09 ; elapsed = 00:00:05 . Memory (MB): peak = 3661.441 ; gain = 0.000 ; free physical = 4964 ; free virtual = 257192default:defaulth px� 
}

Phase %s%s
101*constraints2
1.3 2default:default2.
Build Placer Netlist Model2default:defaultZ18-101h px� 
h
%s*common2O
;Phase 1.3 Build Placer Netlist Model | Checksum: 25079e782
2default:defaulth px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:40 ; elapsed = 00:00:17 . Memory (MB): peak = 3661.441 ; gain = 0.000 ; free physical = 4944 ; free virtual = 256872default:defaulth px� 
z

Phase %s%s
101*constraints2
1.4 2default:default2+
Constrain Clocks/Macros2default:defaultZ18-101h px� 
e
%s*common2L
8Phase 1.4 Constrain Clocks/Macros | Checksum: 25079e782
2default:defaulth px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:40 ; elapsed = 00:00:17 . Memory (MB): peak = 3661.441 ; gain = 0.000 ; free physical = 4944 ; free virtual = 256872default:defaulth px� 
a
%s*common2H
4Phase 1 Placer Initialization | Checksum: 25079e782
2default:defaulth px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:40 ; elapsed = 00:00:17 . Memory (MB): peak = 3661.441 ; gain = 0.000 ; free physical = 4944 ; free virtual = 256872default:defaulth px� 
q

Phase %s%s
101*constraints2
2 2default:default2$
Global Placement2default:defaultZ18-101h px� 
p

Phase %s%s
101*constraints2
2.1 2default:default2!
Floorplanning2default:defaultZ18-101h px� 
[
%s*common2B
.Phase 2.1 Floorplanning | Checksum: 225f8f3a5
2default:defaulth px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:59 ; elapsed = 00:00:22 . Memory (MB): peak = 3661.441 ; gain = 0.000 ; free physical = 4881 ; free virtual = 256312default:defaulth px� 
�

Phase %s%s
101*constraints2
2.2 2default:default25
!Update Timing before SLR Path Opt2default:defaultZ18-101h px� 
o
%s*common2V
BPhase 2.2 Update Timing before SLR Path Opt | Checksum: 16874015a
2default:defaulth px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:13 ; elapsed = 00:00:27 . Memory (MB): peak = 3661.441 ; gain = 0.000 ; free physical = 4854 ; free virtual = 256192default:defaulth px� 
�

Phase %s%s
101*constraints2
2.3 2default:default24
 Post-Processing in Floorplanning2default:defaultZ18-101h px� 
n
%s*common2U
APhase 2.3 Post-Processing in Floorplanning | Checksum: 16874015a
2default:defaulth px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:13 ; elapsed = 00:00:27 . Memory (MB): peak = 3661.441 ; gain = 0.000 ; free physical = 4853 ; free virtual = 256182default:defaulth px� 
x

Phase %s%s
101*constraints2
2.4 2default:default2)
Global Placement Core2default:defaultZ18-101h px� 
�

Phase %s%s
101*constraints2
2.4.1 2default:default2:
&UpdateTiming Before Physical Synthesis2default:defaultZ18-101h px� 
v
%s*common2]
IPhase 2.4.1 UpdateTiming Before Physical Synthesis | Checksum: 21e7195ab
2default:defaulth px� 
�

%s
*constraints2�
�Time (s): cpu = 00:04:49 ; elapsed = 00:01:32 . Memory (MB): peak = 3661.441 ; gain = 0.000 ; free physical = 3521 ; free virtual = 245832default:defaulth px� 
�

Phase %s%s
101*constraints2
2.4.2 2default:default20
Physical Synthesis In Placer2default:defaultZ18-101h px� 
�
FFound %s LUTNM shape to break, %s LUT instances to create LUTNM shape
553*physynth2
1102default:default2
30632default:defaultZ32-1035h px� 
�
YBreak lutnm for timing: one critical %s, two critical %s, total %s, new lutff created %s
561*physynth2
372default:default2
732default:default2
1102default:default2
92default:defaultZ32-1044h px� 
�
^End %s Pass. Optimized %s %s. Breaked %s %s, combined %s existing %s and moved %s existing %s
576*physynth2
12default:default2
14972default:default2 
nets or LUTs2default:default2
1102default:default2
LUTs2default:default2
13872default:default2
LUTs2default:default2
02default:default2
LUT2default:defaultZ32-1138h px� 
�
=Pass %s. Identified %s candidate %s for fanout optimization.
76*physynth2
12default:default2
102default:default2
nets2default:defaultZ32-76h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
nVirtex_i/mig_7series_0/u_Virtex_mig_7series_0_0_mig/u_memc_ui_top_axi/u_axi_mc/axi_mc_w_channel_0/wready_reg_0nVirtex_i/mig_7series_0/u_Virtex_mig_7series_0_0_mig/u_memc_ui_top_axi/u_axi_mc/axi_mc_w_channel_0/wready_reg_02default:default2
32default:default8Z32-81h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
fVirtex_i/mig_7series_0/u_Virtex_mig_7series_0_0_mig/u_memc_ui_top_axi/u_ui_top/ui_wr_data0/app_wdf_rdyfVirtex_i/mig_7series_0/u_Virtex_mig_7series_0_0_mig/u_memc_ui_top_axi/u_ui_top/ui_wr_data0/app_wdf_rdy2default:default2
62default:default8Z32-81h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
�Virtex_i/microblaze_0_axi_periph/s01_couplers/auto_us/inst/gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst/r.r_pipe/s_ready_i_reg_0�Virtex_i/microblaze_0_axi_periph/s01_couplers/auto_us/inst/gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst/r.r_pipe/s_ready_i_reg_02default:default2
72default:default8Z32-81h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
nVirtex_i/mig_7series_0/u_Virtex_mig_7series_0_0_mig/u_memc_ui_top_axi/u_ui_top/ui_wr_data0/app_wdf_rdy_r_copy2nVirtex_i/mig_7series_0/u_Virtex_mig_7series_0_0_mig/u_memc_ui_top_axi/u_ui_top/ui_wr_data0/app_wdf_rdy_r_copy22default:default2
62default:default8Z32-81h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
{Virtex_i/microblaze_0_axi_periph/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[0].reg_slice_mi/r.r_pipe/s_ready_i_reg_0{Virtex_i/microblaze_0_axi_periph/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[0].reg_slice_mi/r.r_pipe/s_ready_i_reg_02default:default2
52default:default8Z32-81h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
{Virtex_i/microblaze_0_axi_periph/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].reg_slice_mi/r.r_pipe/s_ready_i_reg_0{Virtex_i/microblaze_0_axi_periph/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].reg_slice_mi/r.r_pipe/s_ready_i_reg_02default:default2
62default:default8Z32-81h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
�Virtex_i/microblaze_0_axi_periph/s02_couplers/auto_us/inst/gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst/r.r_pipe/s_ready_i_reg_0�Virtex_i/microblaze_0_axi_periph/s02_couplers/auto_us/inst/gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst/r.r_pipe/s_ready_i_reg_02default:default2
62default:default8Z32-81h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
{Virtex_i/microblaze_0_axi_periph/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[1].reg_slice_mi/r.r_pipe/s_ready_i_reg_0{Virtex_i/microblaze_0_axi_periph/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[1].reg_slice_mi/r.r_pipe/s_ready_i_reg_02default:default2
62default:default8Z32-81h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
�Virtex_i/microblaze_0_axi_periph/s00_couplers/auto_us/inst/gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst/r.r_pipe/s_ready_i_reg_0�Virtex_i/microblaze_0_axi_periph/s00_couplers/auto_us/inst/gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst/r.r_pipe/s_ready_i_reg_02default:default2
62default:default8Z32-81h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
5Virtex_i/microblaze_0/U0/MicroBlaze_Core_I/sync_reset5Virtex_i/microblaze_0/U0/MicroBlaze_Core_I/sync_reset2default:default2
82default:default8Z32-81h px� 
�
$Optimized %s %s. Created %s new %s.
216*physynth2
102default:default2
nets2default:default2
592default:default2
	instances2default:defaultZ32-232h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
102default:default2!
nets or cells2default:default2
592default:default2
cells2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.272default:default2
00:00:00.292default:default2
3661.4412default:default2
0.0002default:default2
35152default:default2
245692default:defaultZ17-722h px� 
j
FNo candidate cells for DSP register optimization found in the design.
274*physynthZ32-456h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
22default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
i
DNo candidate cells found for Shift Register to Pipeline optimization564*physynthZ32-1123h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
22default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
h
DNo candidate cells for SRL register optimization found in the design349*physynthZ32-677h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
i
ENo candidate cells for BRAM register optimization found in the design297*physynthZ32-526h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
j
FNo candidate cells for URAM register optimization found in the design
437*physynthZ32-846h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
22default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
o
KNo candidate nets found for dynamic/static region interface net replication521*physynthZ32-949h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.012default:default2
00:00:00.012default:default2
3661.4412default:default2
0.0002default:default2
35142default:default2
245682default:defaultZ17-722h px� 
I
'No nets found for fanout-optimization.
64*physynthZ32-64h px� 
�
$Optimized %s %s. Created %s new %s.
216*physynth2
02default:default2
net2default:default2
02default:default2
instance2default:defaultZ32-232h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
P
.No nets found for critical-cell optimization.
68*physynthZ32-68h px� 
�
$Optimized %s %s. Created %s new %s.
216*physynth2
02default:default2
net2default:default2
02default:default2
instance2default:defaultZ32-232h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.012default:default2
00:00:00.012default:default2
3661.4412default:default2
0.0002default:default2
35142default:default2
245682default:defaultZ17-722h px� 
B
-
Summary of Physical Synthesis Optimizations
*commonh px� 
B
-============================================
*commonh px� 


*commonh px� 


*commonh px� 
�
�-----------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px� 
�
�|  Optimization                                     |  Added Cells  |  Removed Cells  |  Optimized Cells/Nets  |  Dont Touch  |  Iterations  |  Elapsed   |
-----------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px� 
�
�|  LUT Combining                                    |          110  |           1387  |                  1497  |           0  |           1  |  00:00:02  |
|  Retime                                           |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Very High Fanout                                 |           59  |              0  |                    10  |           0  |           1  |  00:00:02  |
|  DSP Register                                     |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Shift Register to Pipeline                       |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Shift Register                                   |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  BRAM Register                                    |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  URAM Register                                    |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Dynamic/Static Region Interface Net Replication  |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Fanout                                           |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Critical Cell                                    |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Total                                            |          169  |           1387  |                  1507  |           0  |          11  |  00:00:04  |
-----------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px� 


*commonh px� 


*commonh px� 
l
%s*common2S
?Phase 2.4.2 Physical Synthesis In Placer | Checksum: 1e3f3ea47
2default:defaulth px� 
�

%s
*constraints2�
�Time (s): cpu = 00:05:10 ; elapsed = 00:01:43 . Memory (MB): peak = 3661.441 ; gain = 0.000 ; free physical = 3506 ; free virtual = 245612default:defaulth px� 
b
%s*common2I
5Phase 2.4 Global Placement Core | Checksum: 7fd48ede
2default:defaulth px� 
�

%s
*constraints2�
�Time (s): cpu = 00:07:20 ; elapsed = 00:02:07 . Memory (MB): peak = 3661.441 ; gain = 0.000 ; free physical = 3294 ; free virtual = 243512default:defaulth px� 
[
%s*common2B
.Phase 2 Global Placement | Checksum: 7fd48ede
2default:defaulth px� 
�

%s
*constraints2�
�Time (s): cpu = 00:07:20 ; elapsed = 00:02:07 . Memory (MB): peak = 3661.441 ; gain = 0.000 ; free physical = 3322 ; free virtual = 243792default:defaulth px� 
q

Phase %s%s
101*constraints2
3 2default:default2$
Detail Placement2default:defaultZ18-101h px� 
}

Phase %s%s
101*constraints2
3.1 2default:default2.
Commit Multi Column Macros2default:defaultZ18-101h px� 
h
%s*common2O
;Phase 3.1 Commit Multi Column Macros | Checksum: 1060e16d3
2default:defaulth px� 
�

%s
*constraints2�
�Time (s): cpu = 00:07:36 ; elapsed = 00:02:13 . Memory (MB): peak = 3661.441 ; gain = 0.000 ; free physical = 3063 ; free virtual = 241202default:defaulth px� 


Phase %s%s
101*constraints2
3.2 2default:default20
Commit Most Macros & LUTRAMs2default:defaultZ18-101h px� 
j
%s*common2Q
=Phase 3.2 Commit Most Macros & LUTRAMs | Checksum: 1a877ecac
2default:defaulth px� 
�

%s
*constraints2�
�Time (s): cpu = 00:08:08 ; elapsed = 00:02:28 . Memory (MB): peak = 3661.441 ; gain = 0.000 ; free physical = 2744 ; free virtual = 239142default:defaulth px� 
y

Phase %s%s
101*constraints2
3.3 2default:default2*
Area Swap Optimization2default:defaultZ18-101h px� 
d
%s*common2K
7Phase 3.3 Area Swap Optimization | Checksum: 19a2b150a
2default:defaulth px� 
�

%s
*constraints2�
�Time (s): cpu = 00:08:11 ; elapsed = 00:02:29 . Memory (MB): peak = 3661.441 ; gain = 0.000 ; free physical = 2725 ; free virtual = 238962default:defaulth px� 
�

Phase %s%s
101*constraints2
3.4 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px� 
l
%s*common2S
?Phase 3.4 Pipeline Register Optimization | Checksum: 16d3d7e28
2default:defaulth px� 
�

%s
*constraints2�
�Time (s): cpu = 00:08:11 ; elapsed = 00:02:29 . Memory (MB): peak = 3661.441 ; gain = 0.000 ; free physical = 2724 ; free virtual = 238952default:defaulth px� 
t

Phase %s%s
101*constraints2
3.5 2default:default2%
Fast Optimization2default:defaultZ18-101h px� 
_
%s*common2F
2Phase 3.5 Fast Optimization | Checksum: 12e23118a
2default:defaulth px� 
�

%s
*constraints2�
�Time (s): cpu = 00:08:55 ; elapsed = 00:02:57 . Memory (MB): peak = 3661.441 ; gain = 0.000 ; free physical = 2589 ; free virtual = 237842default:defaulth px� 


Phase %s%s
101*constraints2
3.6 2default:default20
Small Shape Detail Placement2default:defaultZ18-101h px� 
j
%s*common2Q
=Phase 3.6 Small Shape Detail Placement | Checksum: 177eb6617
2default:defaulth px� 
�

%s
*constraints2�
�Time (s): cpu = 00:09:36 ; elapsed = 00:03:36 . Memory (MB): peak = 3661.441 ; gain = 0.000 ; free physical = 2190 ; free virtual = 235062default:defaulth px� 
u

Phase %s%s
101*constraints2
3.7 2default:default2&
Re-assign LUT pins2default:defaultZ18-101h px� 
`
%s*common2G
3Phase 3.7 Re-assign LUT pins | Checksum: 15b4b634f
2default:defaulth px� 
�

%s
*constraints2�
�Time (s): cpu = 00:09:40 ; elapsed = 00:03:41 . Memory (MB): peak = 3661.441 ; gain = 0.000 ; free physical = 2167 ; free virtual = 235002default:defaulth px� 
�

Phase %s%s
101*constraints2
3.8 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px� 
k
%s*common2R
>Phase 3.8 Pipeline Register Optimization | Checksum: d68bcdfb
2default:defaulth px� 
�

%s
*constraints2�
�Time (s): cpu = 00:09:41 ; elapsed = 00:03:42 . Memory (MB): peak = 3661.441 ; gain = 0.000 ; free physical = 2166 ; free virtual = 235002default:defaulth px� 
t

Phase %s%s
101*constraints2
3.9 2default:default2%
Fast Optimization2default:defaultZ18-101h px� 
_
%s*common2F
2Phase 3.9 Fast Optimization | Checksum: 13b795990
2default:defaulth px� 
�

%s
*constraints2�
�Time (s): cpu = 00:10:37 ; elapsed = 00:04:09 . Memory (MB): peak = 3661.441 ; gain = 0.000 ; free physical = 1855 ; free virtual = 231762default:defaulth px� 
\
%s*common2C
/Phase 3 Detail Placement | Checksum: 13b795990
2default:defaulth px� 
�

%s
*constraints2�
�Time (s): cpu = 00:10:37 ; elapsed = 00:04:10 . Memory (MB): peak = 3661.441 ; gain = 0.000 ; free physical = 1855 ; free virtual = 231762default:defaulth px� 
�

Phase %s%s
101*constraints2
4 2default:default2<
(Post Placement Optimization and Clean-Up2default:defaultZ18-101h px� 
{

Phase %s%s
101*constraints2
4.1 2default:default2,
Post Commit Optimization2default:defaultZ18-101h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
�

Phase %s%s
101*constraints2
4.1.1 2default:default2/
Post Placement Optimization2default:defaultZ18-101h px� 
V
APost Placement Optimization Initialization | Checksum: 1c8e9d4b3
*commonh px� 
u

Phase %s%s
101*constraints2
4.1.1.1 2default:default2"
BUFG Insertion2default:defaultZ18-101h px� 
a

Starting %s Task
103*constraints2&
Physical Synthesis2default:defaultZ18-103h px� 
�

Phase %s%s
101*constraints2
1 2default:default25
!Physical Synthesis Initialization2default:defaultZ18-101h px� 
�
EMultithreading enabled for phys_opt_design using a maximum of %s CPUs380*physynth2
82default:defaultZ32-721h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-1.9432default:default2
	-2312.0732default:defaultZ32-619h px� 
m
%s*common2T
@Phase 1 Physical Synthesis Initialization | Checksum: 196405106
2default:defaulth px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:08 ; elapsed = 00:00:03 . Memory (MB): peak = 3684.262 ; gain = 0.000 ; free physical = 1660 ; free virtual = 229202default:defaulth px� 
�
�BUFG insertion identified %s candidate nets. Inserted BUFG: %s, Replicated BUFG Driver: %s, Skipped due to Placement/Routing Conflicts: %s, Skipped due to Timing Degradation: %s, Skipped due to Illegal Netlist: %s.43*	placeflow2
02default:default2
02default:default2
02default:default2
02default:default2
02default:default2
02default:defaultZ46-56h px� 
b
%s*common2I
5Ending Physical Synthesis Task | Checksum: 18434b3a5
2default:defaulth px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:10 ; elapsed = 00:00:04 . Memory (MB): peak = 3684.262 ; gain = 0.000 ; free physical = 1651 ; free virtual = 229222default:defaulth px� 
`
%s*common2G
3Phase 4.1.1.1 BUFG Insertion | Checksum: 1c8e9d4b3
2default:defaulth px� 
�

%s
*constraints2�
�Time (s): cpu = 00:11:30 ; elapsed = 00:04:33 . Memory (MB): peak = 3684.262 ; gain = 22.820 ; free physical = 1649 ; free virtual = 229202default:defaulth px� 
�

Phase %s%s
101*constraints2
4.1.1.2 2default:default26
"Post Placement Timing Optimization2default:defaultZ18-101h px� 
�
hPost Placement Timing Summary WNS=%s. For the most accurate timing information please run report_timing.610*place2
-0.8122default:defaultZ30-746h px� 
t
%s*common2[
GPhase 4.1.1.2 Post Placement Timing Optimization | Checksum: 252001ac2
2default:defaulth px� 
�

%s
*constraints2�
�Time (s): cpu = 00:12:16 ; elapsed = 00:05:17 . Memory (MB): peak = 3684.262 ; gain = 22.820 ; free physical = 1133 ; free virtual = 224482default:defaulth px� 
�

%s
*constraints2�
�Time (s): cpu = 00:12:16 ; elapsed = 00:05:17 . Memory (MB): peak = 3684.262 ; gain = 22.820 ; free physical = 1133 ; free virtual = 224482default:defaulth px� 
f
%s*common2M
9Phase 4.1 Post Commit Optimization | Checksum: 252001ac2
2default:defaulth px� 
�

%s
*constraints2�
�Time (s): cpu = 00:12:16 ; elapsed = 00:05:18 . Memory (MB): peak = 3684.262 ; gain = 22.820 ; free physical = 1136 ; free virtual = 224492default:defaulth px� 
y

Phase %s%s
101*constraints2
4.2 2default:default2*
Post Placement Cleanup2default:defaultZ18-101h px� 
d
%s*common2K
7Phase 4.2 Post Placement Cleanup | Checksum: 252001ac2
2default:defaulth px� 
�

%s
*constraints2�
�Time (s): cpu = 00:12:17 ; elapsed = 00:05:19 . Memory (MB): peak = 3684.262 ; gain = 22.820 ; free physical = 1141 ; free virtual = 224542default:defaulth px� 
s

Phase %s%s
101*constraints2
4.3 2default:default2$
Placer Reporting2default:defaultZ18-101h px� 


Phase %s%s
101*constraints2
4.3.1 2default:default2.
Print Estimated Congestion2default:defaultZ18-101h px� 
�
'Post-Placement Estimated Congestion %s
38*	placeflow2�
�
 ____________________________________________________
|           | Global Congestion | Short Congestion  |
| Direction | Region Size       | Region Size       |
|___________|___________________|___________________|
|      North|                2x2|                2x2|
|___________|___________________|___________________|
|      South|                1x1|                2x2|
|___________|___________________|___________________|
|       East|                4x4|                2x2|
|___________|___________________|___________________|
|       West|                1x1|                1x1|
|___________|___________________|___________________|
2default:defaultZ30-612h px� 
j
%s*common2Q
=Phase 4.3.1 Print Estimated Congestion | Checksum: 252001ac2
2default:defaulth px� 
�

%s
*constraints2�
�Time (s): cpu = 00:12:18 ; elapsed = 00:05:19 . Memory (MB): peak = 3684.262 ; gain = 22.820 ; free physical = 1094 ; free virtual = 224072default:defaulth px� 
^
%s*common2E
1Phase 4.3 Placer Reporting | Checksum: 252001ac2
2default:defaulth px� 
�

%s
*constraints2�
�Time (s): cpu = 00:12:18 ; elapsed = 00:05:20 . Memory (MB): peak = 3684.262 ; gain = 22.820 ; free physical = 1011 ; free virtual = 223222default:defaulth px� 
z

Phase %s%s
101*constraints2
4.4 2default:default2+
Final Placement Cleanup2default:defaultZ18-101h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.012default:default2
00:00:00.012default:default2
3684.2622default:default2
0.0002default:default2
10062default:default2
223172default:defaultZ17-722h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:12:19 ; elapsed = 00:05:20 . Memory (MB): peak = 3684.262 ; gain = 22.820 ; free physical = 1006 ; free virtual = 223172default:defaulth px� 
t
%s*common2[
GPhase 4 Post Placement Optimization and Clean-Up | Checksum: 2782ee359
2default:defaulth px� 
�

%s
*constraints2�
�Time (s): cpu = 00:12:19 ; elapsed = 00:05:20 . Memory (MB): peak = 3684.262 ; gain = 22.820 ; free physical = 971 ; free virtual = 222812default:defaulth px� 
V
%s*common2=
)Ending Placer Task | Checksum: 1891e0cc9
2default:defaulth px� 
�

%s
*constraints2�
�Time (s): cpu = 00:12:19 ; elapsed = 00:05:20 . Memory (MB): peak = 3684.262 ; gain = 22.820 ; free physical = 922 ; free virtual = 222222default:defaulth px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
2042default:default2
12default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
place_design2default:defaultZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
place_design: 2default:default2
00:12:252default:default2
00:05:232default:default2
3684.2622default:default2
22.8202default:default2
10492default:default2
223492default:defaultZ17-722h px� 
H
&Writing timing data to binary archive.266*timingZ38-480h px� 
=
Writing XDEF routing.
211*designutilsZ20-211h px� 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px� 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2)
Write XDEF Complete: 2default:default2
00:00:212default:default2
00:00:082default:default2
3700.2702default:default2
8.0042default:default2
7812default:default2
221622default:defaultZ17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2p
\/home/dolu/Documents/GitHub/Thesis/VC707test/VC707test.runs/impl_1/Virtex_wrapper_placed.dcp2default:defaultZ17-1381h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2&
write_checkpoint: 2default:default2
00:00:352default:default2
00:00:172default:default2
3708.2732default:default2
24.0122default:default2
8032default:default2
221362default:defaultZ17-722h px� 
i
%s4*runtcl2M
9Executing : report_io -file Virtex_wrapper_io_placed.rpt
2default:defaulth px� 
�
�report_io: Time (s): cpu = 00:00:00.65 ; elapsed = 00:00:00.79 . Memory (MB): peak = 3708.273 ; gain = 0.000 ; free physical = 757 ; free virtual = 22091
*commonh px� 
�
%s4*runtcl2�
tExecuting : report_utilization -file Virtex_wrapper_utilization_placed.rpt -pb Virtex_wrapper_utilization_placed.pb
2default:defaulth px� 
�
%s4*runtcl2j
VExecuting : report_control_sets -verbose -file Virtex_wrapper_control_sets_placed.rpt
2default:defaulth px� 
�
�report_control_sets: Time (s): cpu = 00:00:00.41 ; elapsed = 00:00:00.54 . Memory (MB): peak = 3708.273 ; gain = 0.000 ; free physical = 804 ; free virtual = 22139
*commonh px� 


End Record