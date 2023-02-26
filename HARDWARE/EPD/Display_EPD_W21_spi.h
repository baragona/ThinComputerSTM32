#ifndef _DISPLAY_EPD_W21_SPI_
#define _DISPLAY_EPD_W21_SPI_
#include "stm32f1xx_hal_conf.h"
#include "stm32f10x_gpio.h"


#define EPD_W21_MOSI_0	GPIO_ResetBits(GPIOD, GPIO_Pin_10)
#define EPD_W21_MOSI_1	GPIO_SetBits(GPIOD, GPIO_Pin_10)

#define EPD_W21_CLK_0	GPIO_ResetBits(GPIOD, GPIO_Pin_9)
#define EPD_W21_CLK_1	GPIO_SetBits(GPIOD, GPIO_Pin_9)

#define EPD_W21_CS_0	GPIO_ResetBits(GPIOD, GPIO_Pin_8)
#define EPD_W21_CS_1	GPIO_SetBits(GPIOD, GPIO_Pin_8)

#define EPD_W21_DC_0	GPIO_ResetBits(GPIOE, GPIO_Pin_15)
#define EPD_W21_DC_1	GPIO_SetBits(GPIOE, GPIO_Pin_15)

#define EPD_W21_RST_0	GPIO_ResetBits(GPIOE, GPIO_Pin_14)
#define EPD_W21_RST_1	GPIO_SetBits(GPIOE, GPIO_Pin_14)

#define isEPD_W21_BUSY GPIO_ReadInputDataBit(GPIOE, GPIO_Pin_13) // for solomen solutions


void SPI_Write(unsigned char value);
void EPD_W21_WriteDATA(unsigned char data);
void EPD_W21_WriteCMD(unsigned char command);
void EPD_GPIO_Init(void);
void EPD_W21_WriteDATA_array(const uint8_t* data, uint16_t n, int16_t fill_with_zeroes);

#endif  //#ifndef _MCU_SPI_H_

/***********************************************************
						end file
***********************************************************/
