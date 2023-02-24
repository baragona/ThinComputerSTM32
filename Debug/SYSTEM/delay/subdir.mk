################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../SYSTEM/delay/delay.c 

OBJS += \
./SYSTEM/delay/delay.o 

C_DEPS += \
./SYSTEM/delay/delay.d 


# Each subdirectory must supply rules for building sources it contributes
SYSTEM/delay/%.o SYSTEM/delay/%.su: ../SYSTEM/delay/%.c SYSTEM/delay/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../STM32F10x_FWLib/inc -I../USER -I../SYSTEM/sys/ -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-SYSTEM-2f-delay

clean-SYSTEM-2f-delay:
	-$(RM) ./SYSTEM/delay/delay.d ./SYSTEM/delay/delay.o ./SYSTEM/delay/delay.su

.PHONY: clean-SYSTEM-2f-delay

