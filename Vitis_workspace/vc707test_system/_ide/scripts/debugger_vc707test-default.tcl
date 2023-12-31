# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: /home/dolu/Documents/GitHub/Thesis/Vitis_workspace/vc707test_system/_ide/scripts/debugger_vc707test-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source /home/dolu/Documents/GitHub/Thesis/Vitis_workspace/vc707test_system/_ide/scripts/debugger_vc707test-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-SMT1 210203A257D9A" && level==0 && jtag_device_ctx=="jsn-JTAG-SMT1-210203A257D9A-33687093-0"}
fpga -file /home/dolu/Documents/GitHub/Thesis/Vitis_workspace/vc707test/_ide/bitstream/Virtex_wrapper.bit
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
loadhw -hw /home/dolu/Documents/GitHub/Thesis/Vitis_workspace/Virtex_wrapper/export/Virtex_wrapper/hw/Virtex_wrapper.xsa -regs
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
rst -system
after 3000
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
dow /home/dolu/Documents/GitHub/Thesis/Vitis_workspace/vc707test/Debug/vc707test.elf
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
con
