################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../USER/main.c \
../USER/stm32f10x_it.c \
../USER/system_stm32f10x.c 

OBJS += \
./USER/main.o \
./USER/stm32f10x_it.o \
./USER/system_stm32f10x.o 

C_DEPS += \
./USER/main.d \
./USER/stm32f10x_it.d \
./USER/system_stm32f10x.d 


# Each subdirectory must supply rules for building sources it contributes
USER/%.o USER/%.su: ../USER/%.c USER/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../STM32F10x_FWLib/inc -I../USER -I../System/sys/ -I"/Users/kevin/STM32CubeIDE/workspace_1.11.2/myproject/SYSTEM/delay" -I"/Users/kevin/STM32CubeIDE/workspace_1.11.2/myproject/HARDWARE/EPD" -I"/Users/kevin/STM32CubeIDE/workspace_1.11.2/myproject/core" -I"/Users/kevin/STM32CubeIDE/workspace_1.11.2/myproject/HARDWARE/GUI" -I"/Users/kevin/STM32CubeIDE/workspace_1.11.2/myproject/SYSTEM/sys" -I"/Users/kevin/STM32CubeIDE/workspace_1.11.2/myproject/HARDWARE/Fonts" -I"/Users/kevin/STM32CubeIDE/workspace_1.11.2/myproject/SYSTEM/usart" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-USER

clean-USER:
	-$(RM) ./USER/main.d ./USER/main.o ./USER/main.su ./USER/stm32f10x_it.d ./USER/stm32f10x_it.o ./USER/stm32f10x_it.su ./USER/system_stm32f10x.d ./USER/system_stm32f10x.o ./USER/system_stm32f10x.su

.PHONY: clean-USER

