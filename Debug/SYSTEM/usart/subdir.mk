################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../SYSTEM/usart/usart.c 

OBJS += \
./SYSTEM/usart/usart.o 

C_DEPS += \
./SYSTEM/usart/usart.d 


# Each subdirectory must supply rules for building sources it contributes
SYSTEM/usart/%.o SYSTEM/usart/%.su: ../SYSTEM/usart/%.c SYSTEM/usart/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../STM32F10x_FWLib/inc -I../USER -I../SYSTEM/sys/ -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-SYSTEM-2f-usart

clean-SYSTEM-2f-usart:
	-$(RM) ./SYSTEM/usart/usart.d ./SYSTEM/usart/usart.o ./SYSTEM/usart/usart.su

.PHONY: clean-SYSTEM-2f-usart

