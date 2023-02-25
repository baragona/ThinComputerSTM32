################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../delay/my_delay.c 

OBJS += \
./delay/my_delay.o 

C_DEPS += \
./delay/my_delay.d 


# Each subdirectory must supply rules for building sources it contributes
delay/%.o delay/%.su: ../delay/%.c delay/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/Users/kevin/STM32CubeIDE/workspace_1.11.2/myproject/HARDWARE/EPD" -I"/Users/kevin/STM32CubeIDE/workspace_1.11.2/myproject/HARDWARE/Fonts" -I"/Users/kevin/STM32CubeIDE/workspace_1.11.2/myproject/HARDWARE/GUI" -I"/Users/kevin/STM32CubeIDE/workspace_1.11.2/myproject/delay" -I"/Users/kevin/STM32CubeIDE/workspace_1.11.2/myproject/sys" -I"/Users/kevin/STM32CubeIDE/workspace_1.11.2/myproject/STM32F10x_FWLib/inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-delay

clean-delay:
	-$(RM) ./delay/my_delay.d ./delay/my_delay.o ./delay/my_delay.su

.PHONY: clean-delay

