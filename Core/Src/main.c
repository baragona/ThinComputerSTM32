/* USER CODE BEGIN Header */
/**
 ******************************************************************************
 * @file           : main.c
 * @brief          : Main program body
 ******************************************************************************
 * @attention
 *
 * Copyright (c) 2023 STMicroelectronics.
 * All rights reserved.
 *
 * This software is licensed under terms that can be found in the LICENSE file
 * in the root directory of this software component.
 * If no LICENSE file comes with this software, it is provided AS-IS.
 *
 ******************************************************************************
 */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "main.h"
// #include "stm32f10x.h"
#include "my_delay.h"
//#include "sys.h"
//EPD
#include "Display_EPD_W21_spi.h"
#include "Display_EPD_W21.h"
#include "Ap_29demo.h"
//GUI
#include "GUI_Paint.h"
#include "fonts.h"


unsigned char BlackImage[4736]; //Define canvas space

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/

/* USER CODE BEGIN PV */

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
//static void MX_GPIO_Init(void);
/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

/* USER CODE END 0 */

static void MX_GPIO_Init(void)
{
  GPIO_InitTypeDef GPIO_InitStruct = {0};

  /* GPIO Ports Clock Enable */
  __HAL_RCC_GPIOE_CLK_ENABLE();

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOE, GPIO_PIN_12, GPIO_PIN_RESET);

  /*Configure GPIO pin : PE12 */
  GPIO_InitStruct.Pin = GPIO_PIN_12;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOE, &GPIO_InitStruct);

}


/**
 * @brief  The application entry point.
 * @retval int
 */
int main(void) {
	/* USER CODE BEGIN 1 */

	/* USER CODE END 1 */

	/* MCU Configuration--------------------------------------------------------*/

	/* Reset of all peripherals, Initializes the Flash interface and the Systick. */
	HAL_Init();

	/* USER CODE BEGIN Init */

	/* USER CODE END Init */

	/* Configure the system clock */
	SystemClock_Config();

	/* USER CODE BEGIN SysInit */

	/* USER CODE END SysInit */

	/* Initialize all configured peripherals */
	MX_GPIO_Init();
	/* USER CODE BEGIN 2 */

	/* USER CODE END 2 */

	/* Infinite loop */
	/* USER CODE BEGIN WHILE */
//	while (1) {
//		HAL_GPIO_TogglePin(GPIOE, GPIO_PIN_12);
//		HAL_Delay(100); /* Insert delay 100 ms */
//		/* USER CODE END WHILE */
//
//		/* USER CODE BEGIN 3 */
//	}
	delay_init();	    	     //Delay function initialization
	NVIC_Configuration(); 	//Set NVIC interrupt grouping 2
	EPD_GPIO_Init();       //EPD GPIO  initialization
	EPD_init(); //EPD init

	while (1) {
///////////////////////////Normal picture display/////////////////////////////////////////////////////////////////
		/************Normal picture display*******************/
		EPD_init(); //EPD init
		PIC_display(gImage_1); //EPD_picture1
		EPD_sleep(); //EPD_sleep,Sleep instruction is necessary, please do not delete!!!
		delay_s(1); //2s
		HAL_GPIO_TogglePin(GPIOE, GPIO_PIN_12);


		//Clear
		EPD_init(); //EPD init
		PIC_display_Clear(); //EPD Clear
		EPD_sleep(); //EPD_sleep,Sleep instruction is necessary, please do not delete!!!
		delay_s(1); //2s
		HAL_GPIO_TogglePin(GPIOE, GPIO_PIN_12);


///////////////////////////GUI///////////////////////////////////////////////////////////////////////////////////
//Data initialization settings
		Paint_NewImage(BlackImage, EPD_WIDTH, EPD_HEIGHT, 270, WHITE); //Set screen size and display orientation
		Paint_SelectImage(BlackImage); //Set the virtual canvas data storage location

		/**************Drawing**********************/
		EPD_init(); //EPD init
		Paint_Clear(WHITE);
		//Point
		Paint_DrawPoint(5, 10, BLACK, DOT_PIXEL_1X1, DOT_STYLE_DFT);
		Paint_DrawPoint(5, 25, BLACK, DOT_PIXEL_2X2, DOT_STYLE_DFT);
		Paint_DrawPoint(5, 40, BLACK, DOT_PIXEL_3X3, DOT_STYLE_DFT);
		Paint_DrawPoint(5, 55, BLACK, DOT_PIXEL_4X4, DOT_STYLE_DFT);
		//Line
		Paint_DrawLine(20, 10, 70, 60, BLACK, LINE_STYLE_SOLID, DOT_PIXEL_1X1);
		Paint_DrawLine(70, 10, 20, 60, BLACK, LINE_STYLE_SOLID, DOT_PIXEL_1X1);
		Paint_DrawLine(170, 15, 170, 55, BLACK, LINE_STYLE_DOTTED,
				DOT_PIXEL_1X1);
		Paint_DrawLine(150, 35, 190, 35, BLACK, LINE_STYLE_DOTTED,
				DOT_PIXEL_1X1);
		//Rectangle
		Paint_DrawRectangle(20, 10, 70, 60, BLACK, DRAW_FILL_EMPTY,
				DOT_PIXEL_1X1);
		Paint_DrawRectangle(85, 10, 130, 60, BLACK, DRAW_FILL_FULL,
				DOT_PIXEL_1X1);
//Circle
		Paint_DrawCircle(230, 35, 25, BLACK, DRAW_FILL_EMPTY, DOT_PIXEL_1X1);
		Paint_DrawCircle(260, 35, 25, BLACK, DRAW_FILL_FULL, DOT_PIXEL_1X1);
		EPD_Display(BlackImage); //display image
		EPD_sleep(); //EPD_sleep,Sleep instruction is necessary, please do not delete!!!
		delay_s(1); //2s
		HAL_GPIO_TogglePin(GPIOE, GPIO_PIN_12);


		/***********String***************************/
		EPD_init(); //EPD init
		Paint_Clear(WHITE);
		Paint_DrawString_EN(0, 0, "Good Display", &Font8, WHITE, BLACK);  //5*8
		Paint_DrawString_EN(0, 10, "Good Display", &Font12, WHITE, BLACK); //7*12
		Paint_DrawString_EN(0, 25, "Good Display", &Font16, WHITE, BLACK); //11*16
		Paint_DrawString_EN(0, 45, "Good Display", &Font20, WHITE, BLACK); //14*20
		Paint_DrawString_EN(0, 70, "Good Display", &Font24, WHITE, BLACK); //17*24
		EPD_Display(BlackImage); //display image
		EPD_sleep(); //EPD_sleep,Sleep instruction is necessary, please do not delete!!!
		delay_s(1); //2s
		HAL_GPIO_TogglePin(GPIOE, GPIO_PIN_12);

		/*************Number************************/
		EPD_init(); //EPD init
		Paint_Clear(WHITE);
		Paint_DrawNum(0, 0, 123456789, &Font8, WHITE, BLACK);  //5*8
		Paint_DrawNum(0, 10, 123456789, &Font12, WHITE, BLACK); //7*12
		Paint_DrawNum(0, 25, 123456789, &Font16, WHITE, BLACK); //11*16
		Paint_DrawNum(0, 45, 123456789, &Font20, WHITE, BLACK); //14*20
		Paint_DrawNum(0, 70, 123456789, &Font24, WHITE, BLACK); //17*24
		EPD_Display(BlackImage); //display image
		EPD_sleep(); //EPD_sleep,Sleep instruction is necessary, please do not delete!!!
		delay_s(1); //2s
		HAL_GPIO_TogglePin(GPIOE, GPIO_PIN_12);


		//Clear
		EPD_init(); //EPD init
		PIC_display_Clear(); //EPD Clear
		EPD_sleep(); //EPD_sleep,Sleep instruction is necessary, please do not delete!!!
		delay_s(1); //2s
		HAL_GPIO_TogglePin(GPIOE, GPIO_PIN_12);

//		while (1)
//			;
	}

	/* USER CODE END 3 */

}

/**
 * @brief System Clock Configuration
 * @retval None
 */
void SystemClock_Config(void) {

	RCC_OscInitTypeDef RCC_OscInitStruct = { 0 };
	RCC_ClkInitTypeDef RCC_ClkInitStruct = { 0 };

	/** Initializes the RCC Oscillators according to the specified parameters
	 * in the RCC_OscInitTypeDef structure.
	 */
	RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI;
	RCC_OscInitStruct.HSIState = RCC_HSI_ON;
	RCC_OscInitStruct.HSICalibrationValue = RCC_HSICALIBRATION_DEFAULT;
	RCC_OscInitStruct.PLL.PLLState = RCC_PLL_NONE;
	if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK) {
		Error_Handler();
	}

	/** Initializes the CPU, AHB and APB buses clocks
	 */
	RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK | RCC_CLOCKTYPE_SYSCLK
			| RCC_CLOCKTYPE_PCLK1 | RCC_CLOCKTYPE_PCLK2;
	RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_HSI;
	RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
	RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV1;
	RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

	if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_0) != HAL_OK) {
		Error_Handler();
	}

}

/* USER CODE BEGIN 4 */

/* USER CODE END 4 */

/**
 * @brief  This function is executed in case of error occurrence.
 * @retval None
 */
void Error_Handler(void) {
	/* USER CODE BEGIN Error_Handler_Debug */
	/* User can add his own implementation to report the HAL error return state */
	__disable_irq();
	while (1) {
	}
	/* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */
