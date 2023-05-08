
/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file    app_filex.c
  * @author  MCD Application Team
  * @brief   FileX applicative file
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2020-2021 STMicroelectronics.
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
#include "app_filex.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "libjpeg.h"
#include "main.h"
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
/* Define FileX global data structures.  */
FX_MEDIA        sdio_disk;
FX_FILE         fx_file;

RGB_typedef *RGB_matrix;
ALIGN_32BYTES(uint8_t  _aucLine[ROW_SIZE]);
uint32_t  offset = 0;
uint32_t line_counter = IMAGE_HEIGHT - 1;
/* Buffer for FileX FX_MEDIA sector cache. this should be 32-Bytes
aligned to avoid cache maintenance issues */
ALIGN_32BYTES(uint32_t media_memory[FX_STM32_SD_DEFAULT_SECTOR_SIZE / sizeof(uint32_t)]);

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/

/* USER CODE BEGIN PFP */
static uint8_t Jpeg_CallbackFunction(uint8_t* Row, uint32_t DataLength);
/* USER CODE END PFP */

/**
  * @brief  Application FileX Initialization.
  * @retval int
  */
UINT MX_FileX_Init(VOID)
{
  UINT ret = FX_SUCCESS;
  /* USER CODE BEGIN MX_FileX_Init */

  /* USER CODE END MX_FileX_Init */

  /* Initialize FileX.  */
  fx_system_initialize();

  /* USER CODE BEGIN MX_FileX_Init 1*/

  /* Open the sdio_disk driver. */
  ret =  fx_media_open(&sdio_disk, "STM32_SDIO_DISK", fx_stm32_sd_driver, 0, (VOID *) media_memory, sizeof(media_memory));

  /* USER CODE END MX_FileX_Init 1*/

  return ret;
}

/* USER CODE BEGIN 1 */
VOID MX_FileX_Process(void)
{
UINT status = FX_SUCCESS;
  /* Open the test file.  */
  status =  fx_file_open(&sdio_disk, &fx_file, IMAGE_FILE, FX_OPEN_FOR_READ);

  /* Check the file open status.  */
  if (status != FX_SUCCESS)
  {
    /* Error opening file, call error handler.  */
    Error_Handler();
  }

  /* Seek to the beginning of the test file.  */
  status =  fx_file_seek(&fx_file, 0);

  /* Check the file seek status.  */
  if (status != FX_SUCCESS)
  {
    /* Error performing file seek, call error handler.  */
    Error_Handler();
  }

  jpeg_decode(&fx_file, IMAGE_WIDTH, _aucLine, Jpeg_CallbackFunction);

  fx_file_close(&fx_file);

  while(1);

}

uint32_t pixel = 0, result = 0;
static uint8_t Jpeg_CallbackFunction(uint8_t* Row, uint32_t DataLength)
{
#ifdef USE_DMA2D
static DMA2D_HandleTypeDef hdma2d_eval;

offset = (LCD_LAYER_0_ADDRESS + (IMAGE_WIDTH * (IMAGE_HEIGHT - line_counter - 1) * 4));

/* Configure the DMA2D Mode, Color Mode and output offset */
hdma2d_eval.Init.Mode         = DMA2D_M2M_PFC;
hdma2d_eval.Init.ColorMode    = DMA2D_OUTPUT_ARGB8888;
hdma2d_eval.Init.OutputOffset = 0;
hdma2d_eval.Init.AlphaInverted = DMA2D_REGULAR_ALPHA;  /* No Output Alpha Inversion*/
#ifdef SWAP_RB
hdma2d_eval.Init.RedBlueSwap   = DMA2D_RB_SWAP;     /* No Output Red & Blue swap */
#else
hdma2d_eval.Init.RedBlueSwap   = DMA2D_RB_REGULAR;     /* No Output Red & Blue swap */
#endif
/* Foreground Configuration */
hdma2d_eval.LayerCfg[1].AlphaMode = DMA2D_NO_MODIF_ALPHA;
hdma2d_eval.LayerCfg[1].InputAlpha = 0xFF;
hdma2d_eval.LayerCfg[1].InputColorMode = DMA2D_INPUT_RGB888;
hdma2d_eval.LayerCfg[1].InputOffset = 0;

hdma2d_eval.Instance = DMA2D;

/* DMA2D Initialization */
if(HAL_DMA2D_Init(&hdma2d_eval) == HAL_OK)
{
if(HAL_DMA2D_ConfigLayer(&hdma2d_eval, 1) == HAL_OK)
{
  /*
   * As the decode is done by the CPU, a cache clean
   * is needed to ensure that the DMA2D will copy the correct data
   */
  SCB_CleanDCache_by_Addr((uint32_t*)Row, ROW_SIZE);
  if (HAL_DMA2D_Start(&hdma2d_eval, (uint32_t)Row, (uint32_t)offset, IMAGE_WIDTH, 1) == HAL_OK)
  {
    /* Polling For DMA transfer */
    HAL_DMA2D_PollForTransfer(&hdma2d_eval, 10);
  }
}
}
#else /* DMA2D not used */
RGB_matrix =  (RGB_typedef*)Row;
uint32_t  ARGB32Buffer[IMAGE_WIDTH];
uint32_t counter = 0;

for(counter = 0; counter < IMAGE_WIDTH; counter++)
{
ARGB32Buffer[counter]  = (uint32_t)
(
 ((RGB_matrix[counter].B)|
  (RGB_matrix[counter].G << 8)|
  (RGB_matrix[counter].R << 16) | 0xFF000000)
);
*(__IO uint32_t *)(LCD_LAYER_0_ADDRESS + (counter*4) + (IMAGE_WIDTH * (IMAGE_HEIGHT - line_counter - 1) * 4)) = ARGB32Buffer[counter];
}

#ifdef SWAP_RB
uint32_t pixel = 0, width_counter, result = 0, result1 = 0;

for(width_counter = 0; width_counter < IMAGE_WIDTH; width_counter++)
{
 pixel = *(__IO uint32_t *)(LCD_LAYER_0_ADDRESS + (width_counter*4) + (IMAGE_WIDTH * (IMAGE_HEIGHT - line_counter - 1) * 4));
 result1 = (((pixel & 0x00FF0000) >> 16) | ((pixel & 0x000000FF) << 16));
 pixel = pixel & 0xFF00FF00;
 result = (result1 | pixel);
 *(__IO uint32_t *)(LCD_LAYER_0_ADDRESS + (width_counter*4) + (IMAGE_WIDTH * (IMAGE_HEIGHT - line_counter - 1) * 4)) = result;

}
#endif
#endif
line_counter--;
return 0;
}
/* USER CODE END 1 */
