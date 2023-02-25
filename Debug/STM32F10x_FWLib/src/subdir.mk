################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../STM32F10x_FWLib/src/misc.c \
../STM32F10x_FWLib/src/stm32f10x_gpio.c \
../STM32F10x_FWLib/src/stm32f10x_rcc.c 

OBJS += \
./STM32F10x_FWLib/src/misc.o \
./STM32F10x_FWLib/src/stm32f10x_gpio.o \
./STM32F10x_FWLib/src/stm32f10x_rcc.o 

C_DEPS += \
./STM32F10x_FWLib/src/misc.d \
./STM32F10x_FWLib/src/stm32f10x_gpio.d \
./STM32F10x_FWLib/src/stm32f10x_rcc.d 


# Each subdirectory must supply rules for building sources it contributes
STM32F10x_FWLib/src/%.o STM32F10x_FWLib/src/%.su: ../STM32F10x_FWLib/src/%.c STM32F10x_FWLib/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/Users/kevin/STM32CubeIDE/workspace_1.11.2/myproject/HARDWARE/EPD" -I"/Users/kevin/STM32CubeIDE/workspace_1.11.2/myproject/HARDWARE/Fonts" -I"/Users/kevin/STM32CubeIDE/workspace_1.11.2/myproject/HARDWARE/GUI" -I"/Users/kevin/STM32CubeIDE/workspace_1.11.2/myproject/delay" -I"/Users/kevin/STM32CubeIDE/workspace_1.11.2/myproject/sys" -I"/Users/kevin/STM32CubeIDE/workspace_1.11.2/myproject/STM32F10x_FWLib/inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-STM32F10x_FWLib-2f-src

clean-STM32F10x_FWLib-2f-src:
	-$(RM) ./STM32F10x_FWLib/src/misc.d ./STM32F10x_FWLib/src/misc.o ./STM32F10x_FWLib/src/misc.su ./STM32F10x_FWLib/src/stm32f10x_gpio.d ./STM32F10x_FWLib/src/stm32f10x_gpio.o ./STM32F10x_FWLib/src/stm32f10x_gpio.su ./STM32F10x_FWLib/src/stm32f10x_rcc.d ./STM32F10x_FWLib/src/stm32f10x_rcc.o ./STM32F10x_FWLib/src/stm32f10x_rcc.su

.PHONY: clean-STM32F10x_FWLib-2f-src

