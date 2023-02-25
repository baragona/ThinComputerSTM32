################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../HARDWARE/EPD/Display_EPD_W21.c \
../HARDWARE/EPD/Display_EPD_W21_spi.c 

OBJS += \
./HARDWARE/EPD/Display_EPD_W21.o \
./HARDWARE/EPD/Display_EPD_W21_spi.o 

C_DEPS += \
./HARDWARE/EPD/Display_EPD_W21.d \
./HARDWARE/EPD/Display_EPD_W21_spi.d 


# Each subdirectory must supply rules for building sources it contributes
HARDWARE/EPD/%.o HARDWARE/EPD/%.su: ../HARDWARE/EPD/%.c HARDWARE/EPD/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/Users/kevin/STM32CubeIDE/workspace_1.11.2/myproject/HARDWARE/EPD" -I"/Users/kevin/STM32CubeIDE/workspace_1.11.2/myproject/HARDWARE/Fonts" -I"/Users/kevin/STM32CubeIDE/workspace_1.11.2/myproject/HARDWARE/GUI" -I"/Users/kevin/STM32CubeIDE/workspace_1.11.2/myproject/delay" -I"/Users/kevin/STM32CubeIDE/workspace_1.11.2/myproject/sys" -I"/Users/kevin/STM32CubeIDE/workspace_1.11.2/myproject/STM32F10x_FWLib/inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-HARDWARE-2f-EPD

clean-HARDWARE-2f-EPD:
	-$(RM) ./HARDWARE/EPD/Display_EPD_W21.d ./HARDWARE/EPD/Display_EPD_W21.o ./HARDWARE/EPD/Display_EPD_W21.su ./HARDWARE/EPD/Display_EPD_W21_spi.d ./HARDWARE/EPD/Display_EPD_W21_spi.o ./HARDWARE/EPD/Display_EPD_W21_spi.su

.PHONY: clean-HARDWARE-2f-EPD

