################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../kprintf.c \
../main.c 

OBJS += \
./kprintf.o \
./main.o 

C_DEPS += \
./kprintf.d \
./main.d 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.c subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv64-unknown-elf-gcc -march=rv64g -mabi=lp64d -mcmodel=medany -msmall-data-limit=8 -mno-strict-align -msave-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -g1 -I"/home/dolu/Whetstone/LInpack" -I"/home/dolu/Whetstone/LInpack/include" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


