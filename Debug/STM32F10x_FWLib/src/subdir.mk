################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../STM32F10x_FWLib/src/misc.c \
../STM32F10x_FWLib/src/stm32f10x_adc.c \
../STM32F10x_FWLib/src/stm32f10x_bkp.c \
../STM32F10x_FWLib/src/stm32f10x_can.c \
../STM32F10x_FWLib/src/stm32f10x_cec.c \
../STM32F10x_FWLib/src/stm32f10x_crc.c \
../STM32F10x_FWLib/src/stm32f10x_dac.c \
../STM32F10x_FWLib/src/stm32f10x_dbgmcu.c \
../STM32F10x_FWLib/src/stm32f10x_dma.c \
../STM32F10x_FWLib/src/stm32f10x_exti.c \
../STM32F10x_FWLib/src/stm32f10x_flash.c \
../STM32F10x_FWLib/src/stm32f10x_fsmc.c \
../STM32F10x_FWLib/src/stm32f10x_gpio.c \
../STM32F10x_FWLib/src/stm32f10x_i2c.c \
../STM32F10x_FWLib/src/stm32f10x_iwdg.c \
../STM32F10x_FWLib/src/stm32f10x_pwr.c \
../STM32F10x_FWLib/src/stm32f10x_rcc.c \
../STM32F10x_FWLib/src/stm32f10x_rtc.c \
../STM32F10x_FWLib/src/stm32f10x_sdio.c \
../STM32F10x_FWLib/src/stm32f10x_spi.c \
../STM32F10x_FWLib/src/stm32f10x_tim.c \
../STM32F10x_FWLib/src/stm32f10x_usart.c \
../STM32F10x_FWLib/src/stm32f10x_wwdg.c 

OBJS += \
./STM32F10x_FWLib/src/misc.o \
./STM32F10x_FWLib/src/stm32f10x_adc.o \
./STM32F10x_FWLib/src/stm32f10x_bkp.o \
./STM32F10x_FWLib/src/stm32f10x_can.o \
./STM32F10x_FWLib/src/stm32f10x_cec.o \
./STM32F10x_FWLib/src/stm32f10x_crc.o \
./STM32F10x_FWLib/src/stm32f10x_dac.o \
./STM32F10x_FWLib/src/stm32f10x_dbgmcu.o \
./STM32F10x_FWLib/src/stm32f10x_dma.o \
./STM32F10x_FWLib/src/stm32f10x_exti.o \
./STM32F10x_FWLib/src/stm32f10x_flash.o \
./STM32F10x_FWLib/src/stm32f10x_fsmc.o \
./STM32F10x_FWLib/src/stm32f10x_gpio.o \
./STM32F10x_FWLib/src/stm32f10x_i2c.o \
./STM32F10x_FWLib/src/stm32f10x_iwdg.o \
./STM32F10x_FWLib/src/stm32f10x_pwr.o \
./STM32F10x_FWLib/src/stm32f10x_rcc.o \
./STM32F10x_FWLib/src/stm32f10x_rtc.o \
./STM32F10x_FWLib/src/stm32f10x_sdio.o \
./STM32F10x_FWLib/src/stm32f10x_spi.o \
./STM32F10x_FWLib/src/stm32f10x_tim.o \
./STM32F10x_FWLib/src/stm32f10x_usart.o \
./STM32F10x_FWLib/src/stm32f10x_wwdg.o 

C_DEPS += \
./STM32F10x_FWLib/src/misc.d \
./STM32F10x_FWLib/src/stm32f10x_adc.d \
./STM32F10x_FWLib/src/stm32f10x_bkp.d \
./STM32F10x_FWLib/src/stm32f10x_can.d \
./STM32F10x_FWLib/src/stm32f10x_cec.d \
./STM32F10x_FWLib/src/stm32f10x_crc.d \
./STM32F10x_FWLib/src/stm32f10x_dac.d \
./STM32F10x_FWLib/src/stm32f10x_dbgmcu.d \
./STM32F10x_FWLib/src/stm32f10x_dma.d \
./STM32F10x_FWLib/src/stm32f10x_exti.d \
./STM32F10x_FWLib/src/stm32f10x_flash.d \
./STM32F10x_FWLib/src/stm32f10x_fsmc.d \
./STM32F10x_FWLib/src/stm32f10x_gpio.d \
./STM32F10x_FWLib/src/stm32f10x_i2c.d \
./STM32F10x_FWLib/src/stm32f10x_iwdg.d \
./STM32F10x_FWLib/src/stm32f10x_pwr.d \
./STM32F10x_FWLib/src/stm32f10x_rcc.d \
./STM32F10x_FWLib/src/stm32f10x_rtc.d \
./STM32F10x_FWLib/src/stm32f10x_sdio.d \
./STM32F10x_FWLib/src/stm32f10x_spi.d \
./STM32F10x_FWLib/src/stm32f10x_tim.d \
./STM32F10x_FWLib/src/stm32f10x_usart.d \
./STM32F10x_FWLib/src/stm32f10x_wwdg.d 


# Each subdirectory must supply rules for building sources it contributes
STM32F10x_FWLib/src/%.o STM32F10x_FWLib/src/%.su: ../STM32F10x_FWLib/src/%.c STM32F10x_FWLib/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../STM32F10x_FWLib/inc -I../USER -I../System/sys/ -I"/Users/kevin/STM32CubeIDE/workspace_1.11.2/myproject/SYSTEM/delay" -I"/Users/kevin/STM32CubeIDE/workspace_1.11.2/myproject/HARDWARE/EPD" -I"/Users/kevin/STM32CubeIDE/workspace_1.11.2/myproject/core" -I"/Users/kevin/STM32CubeIDE/workspace_1.11.2/myproject/HARDWARE/GUI" -I"/Users/kevin/STM32CubeIDE/workspace_1.11.2/myproject/SYSTEM/sys" -I"/Users/kevin/STM32CubeIDE/workspace_1.11.2/myproject/HARDWARE/Fonts" -I"/Users/kevin/STM32CubeIDE/workspace_1.11.2/myproject/SYSTEM/usart" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-STM32F10x_FWLib-2f-src

clean-STM32F10x_FWLib-2f-src:
	-$(RM) ./STM32F10x_FWLib/src/misc.d ./STM32F10x_FWLib/src/misc.o ./STM32F10x_FWLib/src/misc.su ./STM32F10x_FWLib/src/stm32f10x_adc.d ./STM32F10x_FWLib/src/stm32f10x_adc.o ./STM32F10x_FWLib/src/stm32f10x_adc.su ./STM32F10x_FWLib/src/stm32f10x_bkp.d ./STM32F10x_FWLib/src/stm32f10x_bkp.o ./STM32F10x_FWLib/src/stm32f10x_bkp.su ./STM32F10x_FWLib/src/stm32f10x_can.d ./STM32F10x_FWLib/src/stm32f10x_can.o ./STM32F10x_FWLib/src/stm32f10x_can.su ./STM32F10x_FWLib/src/stm32f10x_cec.d ./STM32F10x_FWLib/src/stm32f10x_cec.o ./STM32F10x_FWLib/src/stm32f10x_cec.su ./STM32F10x_FWLib/src/stm32f10x_crc.d ./STM32F10x_FWLib/src/stm32f10x_crc.o ./STM32F10x_FWLib/src/stm32f10x_crc.su ./STM32F10x_FWLib/src/stm32f10x_dac.d ./STM32F10x_FWLib/src/stm32f10x_dac.o ./STM32F10x_FWLib/src/stm32f10x_dac.su ./STM32F10x_FWLib/src/stm32f10x_dbgmcu.d ./STM32F10x_FWLib/src/stm32f10x_dbgmcu.o ./STM32F10x_FWLib/src/stm32f10x_dbgmcu.su ./STM32F10x_FWLib/src/stm32f10x_dma.d ./STM32F10x_FWLib/src/stm32f10x_dma.o ./STM32F10x_FWLib/src/stm32f10x_dma.su ./STM32F10x_FWLib/src/stm32f10x_exti.d ./STM32F10x_FWLib/src/stm32f10x_exti.o ./STM32F10x_FWLib/src/stm32f10x_exti.su ./STM32F10x_FWLib/src/stm32f10x_flash.d ./STM32F10x_FWLib/src/stm32f10x_flash.o ./STM32F10x_FWLib/src/stm32f10x_flash.su ./STM32F10x_FWLib/src/stm32f10x_fsmc.d ./STM32F10x_FWLib/src/stm32f10x_fsmc.o ./STM32F10x_FWLib/src/stm32f10x_fsmc.su ./STM32F10x_FWLib/src/stm32f10x_gpio.d ./STM32F10x_FWLib/src/stm32f10x_gpio.o ./STM32F10x_FWLib/src/stm32f10x_gpio.su ./STM32F10x_FWLib/src/stm32f10x_i2c.d ./STM32F10x_FWLib/src/stm32f10x_i2c.o ./STM32F10x_FWLib/src/stm32f10x_i2c.su ./STM32F10x_FWLib/src/stm32f10x_iwdg.d ./STM32F10x_FWLib/src/stm32f10x_iwdg.o ./STM32F10x_FWLib/src/stm32f10x_iwdg.su ./STM32F10x_FWLib/src/stm32f10x_pwr.d ./STM32F10x_FWLib/src/stm32f10x_pwr.o ./STM32F10x_FWLib/src/stm32f10x_pwr.su ./STM32F10x_FWLib/src/stm32f10x_rcc.d ./STM32F10x_FWLib/src/stm32f10x_rcc.o ./STM32F10x_FWLib/src/stm32f10x_rcc.su ./STM32F10x_FWLib/src/stm32f10x_rtc.d ./STM32F10x_FWLib/src/stm32f10x_rtc.o ./STM32F10x_FWLib/src/stm32f10x_rtc.su ./STM32F10x_FWLib/src/stm32f10x_sdio.d ./STM32F10x_FWLib/src/stm32f10x_sdio.o ./STM32F10x_FWLib/src/stm32f10x_sdio.su ./STM32F10x_FWLib/src/stm32f10x_spi.d ./STM32F10x_FWLib/src/stm32f10x_spi.o ./STM32F10x_FWLib/src/stm32f10x_spi.su ./STM32F10x_FWLib/src/stm32f10x_tim.d ./STM32F10x_FWLib/src/stm32f10x_tim.o ./STM32F10x_FWLib/src/stm32f10x_tim.su ./STM32F10x_FWLib/src/stm32f10x_usart.d ./STM32F10x_FWLib/src/stm32f10x_usart.o ./STM32F10x_FWLib/src/stm32f10x_usart.su ./STM32F10x_FWLib/src/stm32f10x_wwdg.d ./STM32F10x_FWLib/src/stm32f10x_wwdg.o ./STM32F10x_FWLib/src/stm32f10x_wwdg.su

.PHONY: clean-STM32F10x_FWLib-2f-src

