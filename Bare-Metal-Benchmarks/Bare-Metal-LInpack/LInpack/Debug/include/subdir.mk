################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_UPPER_SRCS += \
../include/head.S 

OBJS += \
./include/head.o 

S_UPPER_DEPS += \
./include/head.d 


# Each subdirectory must supply rules for building sources it contributes
include/%.o: ../include/%.S include/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross Assembler'
	riscv64-unknown-elf-gcc -march=rv64g -mabi=lp64d -mcmodel=medany -msmall-data-limit=8 -mno-strict-align -msave-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -g1 -x assembler-with-cpp -I"/home/dolu/Whetstone/LInpack" -I"/home/dolu/Whetstone/LInpack/include" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


