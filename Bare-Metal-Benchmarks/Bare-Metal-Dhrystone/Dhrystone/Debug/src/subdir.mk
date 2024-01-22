################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/dhrystone.c \
../src/dhrystone_main.c 

OBJS += \
./src/dhrystone.o \
./src/dhrystone_main.o 

C_DEPS += \
./src/dhrystone.d \
./src/dhrystone_main.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv64-unknown-elf-gcc -march=rv64gc -mabi=lp64d -mcmodel=medany -msmall-data-limit=8 -mno-strict-align -mno-save-restore -O3 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -g3 -I"/home/dolu/DHrstone bare/dolu" -I"/home/dolu/DHrstone bare/dolu/include" -I"/home/dolu/DHrstone bare/dolu/src" -std=gnu11 -Wstrict-prototypes -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


