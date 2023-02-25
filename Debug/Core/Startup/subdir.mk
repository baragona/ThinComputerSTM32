################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../Core/Startup/startup_stm32f103vbtx.s 

OBJS += \
./Core/Startup/startup_stm32f103vbtx.o 

S_DEPS += \
./Core/Startup/startup_stm32f103vbtx.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Startup/%.o: ../Core/Startup/%.s Core/Startup/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m3 -g3 -DDEBUG -c -I"/Users/kevin/STM32CubeIDE/workspace_1.11.2/myproject/HARDWARE/EPD" -I"/Users/kevin/STM32CubeIDE/workspace_1.11.2/myproject/HARDWARE/Fonts" -I"/Users/kevin/STM32CubeIDE/workspace_1.11.2/myproject/HARDWARE/GUI" -I"/Users/kevin/STM32CubeIDE/workspace_1.11.2/myproject/delay" -I"/Users/kevin/STM32CubeIDE/workspace_1.11.2/myproject/sys" -I"/Users/kevin/STM32CubeIDE/workspace_1.11.2/myproject/Drivers/STM32F1xx_HAL_Driver/Inc" -I"/Users/kevin/STM32CubeIDE/workspace_1.11.2/myproject/STM32F10x_FWLib/inc" -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@" "$<"

clean: clean-Core-2f-Startup

clean-Core-2f-Startup:
	-$(RM) ./Core/Startup/startup_stm32f103vbtx.d ./Core/Startup/startup_stm32f103vbtx.o

.PHONY: clean-Core-2f-Startup

