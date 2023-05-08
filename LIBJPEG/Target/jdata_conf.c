/**
  ******************************************************************************
  * @file    LibJPEG/LibJPEG_Decoding/Src/jdata_conf.c
  * @author  MCD Application Team
  * @brief   this file contains the libJPEG abstruction defines for the memory
  *          management routines and IO File operations
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2019 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */

/* Includes ------------------------------------------------------------------*/
#include "jdata_conf.h"

/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
/* Private functions ---------------------------------------------------------*/

size_t read_file (JFILE  *file, uint8_t *buf, uint32_t sizeofbuf)
{
  static ULONG BytesReadfile ;
  fx_file_read (file, buf , sizeofbuf, &BytesReadfile);
  return (size_t)BytesReadfile;
}

size_t write_file (JFILE  *file, uint8_t *buf, uint32_t sizeofbuf)
{
  fx_file_write (file, buf , sizeofbuf);
  return sizeofbuf;
}

