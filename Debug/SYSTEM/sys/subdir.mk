################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../SYSTEM/sys/sys.c 

OBJS += \
./SYSTEM/sys/sys.o 

C_DEPS += \
./SYSTEM/sys/sys.d 


# Each subdirectory must supply rules for building sources it contributes
SYSTEM/sys/%.o SYSTEM/sys/%.su: ../SYSTEM/sys/%.c SYSTEM/sys/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../STM32F10x_FWLib/inc -I../USER -I../SYSTEM/sys/ -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-SYSTEM-2f-sys

clean-SYSTEM-2f-sys:
	-$(RM) ./SYSTEM/sys/sys.d ./SYSTEM/sys/sys.o ./SYSTEM/sys/sys.su

.PHONY: clean-SYSTEM-2f-sys

