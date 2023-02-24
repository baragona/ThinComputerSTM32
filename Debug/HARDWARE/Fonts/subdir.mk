################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../HARDWARE/Fonts/font12.c \
../HARDWARE/Fonts/font12CN.c \
../HARDWARE/Fonts/font16.c \
../HARDWARE/Fonts/font20.c \
../HARDWARE/Fonts/font24.c \
../HARDWARE/Fonts/font24CN.c \
../HARDWARE/Fonts/font8.c 

OBJS += \
./HARDWARE/Fonts/font12.o \
./HARDWARE/Fonts/font12CN.o \
./HARDWARE/Fonts/font16.o \
./HARDWARE/Fonts/font20.o \
./HARDWARE/Fonts/font24.o \
./HARDWARE/Fonts/font24CN.o \
./HARDWARE/Fonts/font8.o 

C_DEPS += \
./HARDWARE/Fonts/font12.d \
./HARDWARE/Fonts/font12CN.d \
./HARDWARE/Fonts/font16.d \
./HARDWARE/Fonts/font20.d \
./HARDWARE/Fonts/font24.d \
./HARDWARE/Fonts/font24CN.d \
./HARDWARE/Fonts/font8.d 


# Each subdirectory must supply rules for building sources it contributes
HARDWARE/Fonts/%.o HARDWARE/Fonts/%.su: ../HARDWARE/Fonts/%.c HARDWARE/Fonts/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../STM32F10x_FWLib/inc -I../USER -I../System/sys/ -I"/Users/kevin/STM32CubeIDE/workspace_1.11.2/myproject/SYSTEM/delay" -I"/Users/kevin/STM32CubeIDE/workspace_1.11.2/myproject/HARDWARE/EPD" -I"/Users/kevin/STM32CubeIDE/workspace_1.11.2/myproject/core" -I"/Users/kevin/STM32CubeIDE/workspace_1.11.2/myproject/HARDWARE/GUI" -I"/Users/kevin/STM32CubeIDE/workspace_1.11.2/myproject/SYSTEM/sys" -I"/Users/kevin/STM32CubeIDE/workspace_1.11.2/myproject/HARDWARE/Fonts" -I"/Users/kevin/STM32CubeIDE/workspace_1.11.2/myproject/SYSTEM/usart" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-HARDWARE-2f-Fonts

clean-HARDWARE-2f-Fonts:
	-$(RM) ./HARDWARE/Fonts/font12.d ./HARDWARE/Fonts/font12.o ./HARDWARE/Fonts/font12.su ./HARDWARE/Fonts/font12CN.d ./HARDWARE/Fonts/font12CN.o ./HARDWARE/Fonts/font12CN.su ./HARDWARE/Fonts/font16.d ./HARDWARE/Fonts/font16.o ./HARDWARE/Fonts/font16.su ./HARDWARE/Fonts/font20.d ./HARDWARE/Fonts/font20.o ./HARDWARE/Fonts/font20.su ./HARDWARE/Fonts/font24.d ./HARDWARE/Fonts/font24.o ./HARDWARE/Fonts/font24.su ./HARDWARE/Fonts/font24CN.d ./HARDWARE/Fonts/font24CN.o ./HARDWARE/Fonts/font24CN.su ./HARDWARE/Fonts/font8.d ./HARDWARE/Fonts/font8.o ./HARDWARE/Fonts/font8.su

.PHONY: clean-HARDWARE-2f-Fonts

