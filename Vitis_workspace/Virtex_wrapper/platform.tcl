# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /home/dolu/Documents/GitHub/Thesis/Vitis_workspace/Virtex_wrapper/platform.tcl
# 
# OR launch xsct and run below command.
# source /home/dolu/Documents/GitHub/Thesis/Vitis_workspace/Virtex_wrapper/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {Virtex_wrapper}\
-hw {/home/dolu/Documents/GitHub/Thesis/VC707test/Virtex_wrapper.xsa}\
-out {/home/dolu/Documents/GitHub/Thesis/Vitis_workspace}

platform write
domain create -name {standalone_microblaze_0} -display-name {standalone_microblaze_0} -os {standalone} -proc {microblaze_0} -runtime {cpp} -arch {32-bit} -support-app {hello_world}
platform generate -domains 
platform active {Virtex_wrapper}
platform generate -quick
platform generate
