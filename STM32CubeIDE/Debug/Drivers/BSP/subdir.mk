################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/chaou/Downloads/Fx_File_Edit_Standalone/Drivers/STM32H735G-DK/stm32h735g_discovery.c \
C:/Users/chaou/Downloads/Fx_File_Edit_Standalone/Drivers/STM32H735G-DK/stm32h735g_discovery_bus.c \
C:/Users/chaou/Downloads/Fx_File_Edit_Standalone/Drivers/STM32H735G-DK/stm32h735g_discovery_lcd.c \
C:/Users/chaou/Downloads/Fx_File_Edit_Standalone/Drivers/STM32H735G-DK/stm32h735g_discovery_ospi.c \
C:/Users/chaou/Downloads/Fx_File_Edit_Standalone/Drivers/STM32H735G-DK/stm32h735g_discovery_ts.c 

OBJS += \
./Drivers/BSP/stm32h735g_discovery.o \
./Drivers/BSP/stm32h735g_discovery_bus.o \
./Drivers/BSP/stm32h735g_discovery_lcd.o \
./Drivers/BSP/stm32h735g_discovery_ospi.o \
./Drivers/BSP/stm32h735g_discovery_ts.o 

C_DEPS += \
./Drivers/BSP/stm32h735g_discovery.d \
./Drivers/BSP/stm32h735g_discovery_bus.d \
./Drivers/BSP/stm32h735g_discovery_lcd.d \
./Drivers/BSP/stm32h735g_discovery_ospi.d \
./Drivers/BSP/stm32h735g_discovery_ts.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/BSP/stm32h735g_discovery.o: C:/Users/chaou/Downloads/Fx_File_Edit_Standalone/Drivers/STM32H735G-DK/stm32h735g_discovery.c Drivers/BSP/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DFX_INCLUDE_USER_DEFINE_FILE -DUSE_HAL_DRIVER -DSTM32H735xx -c -I../../FileX/App -I../../FileX/Target -I../../Core/Inc -I../../Utils -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/STM32H735G-DK -I../../Drivers/Components/mx25lm51245g -I../../Drivers/Components/s70kl1281 -I../../Drivers/Components/ft5336 -I../../Drivers/Components/Common -I../../Middlewares/ST/filex/common/inc/ -I../../Middlewares/ST/filex/ports/generic/inc/ -I../../LIBJPEG/App -I../../LIBJPEG/Target -I../../Middlewares/Third_Party/LibJPEG/include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/BSP/stm32h735g_discovery_bus.o: C:/Users/chaou/Downloads/Fx_File_Edit_Standalone/Drivers/STM32H735G-DK/stm32h735g_discovery_bus.c Drivers/BSP/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DFX_INCLUDE_USER_DEFINE_FILE -DUSE_HAL_DRIVER -DSTM32H735xx -c -I../../FileX/App -I../../FileX/Target -I../../Core/Inc -I../../Utils -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/STM32H735G-DK -I../../Drivers/Components/mx25lm51245g -I../../Drivers/Components/s70kl1281 -I../../Drivers/Components/ft5336 -I../../Drivers/Components/Common -I../../Middlewares/ST/filex/common/inc/ -I../../Middlewares/ST/filex/ports/generic/inc/ -I../../LIBJPEG/App -I../../LIBJPEG/Target -I../../Middlewares/Third_Party/LibJPEG/include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/BSP/stm32h735g_discovery_lcd.o: C:/Users/chaou/Downloads/Fx_File_Edit_Standalone/Drivers/STM32H735G-DK/stm32h735g_discovery_lcd.c Drivers/BSP/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DFX_INCLUDE_USER_DEFINE_FILE -DUSE_HAL_DRIVER -DSTM32H735xx -c -I../../FileX/App -I../../FileX/Target -I../../Core/Inc -I../../Utils -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/STM32H735G-DK -I../../Drivers/Components/mx25lm51245g -I../../Drivers/Components/s70kl1281 -I../../Drivers/Components/ft5336 -I../../Drivers/Components/Common -I../../Middlewares/ST/filex/common/inc/ -I../../Middlewares/ST/filex/ports/generic/inc/ -I../../LIBJPEG/App -I../../LIBJPEG/Target -I../../Middlewares/Third_Party/LibJPEG/include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/BSP/stm32h735g_discovery_ospi.o: C:/Users/chaou/Downloads/Fx_File_Edit_Standalone/Drivers/STM32H735G-DK/stm32h735g_discovery_ospi.c Drivers/BSP/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DFX_INCLUDE_USER_DEFINE_FILE -DUSE_HAL_DRIVER -DSTM32H735xx -c -I../../FileX/App -I../../FileX/Target -I../../Core/Inc -I../../Utils -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/STM32H735G-DK -I../../Drivers/Components/mx25lm51245g -I../../Drivers/Components/s70kl1281 -I../../Drivers/Components/ft5336 -I../../Drivers/Components/Common -I../../Middlewares/ST/filex/common/inc/ -I../../Middlewares/ST/filex/ports/generic/inc/ -I../../LIBJPEG/App -I../../LIBJPEG/Target -I../../Middlewares/Third_Party/LibJPEG/include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/BSP/stm32h735g_discovery_ts.o: C:/Users/chaou/Downloads/Fx_File_Edit_Standalone/Drivers/STM32H735G-DK/stm32h735g_discovery_ts.c Drivers/BSP/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DFX_INCLUDE_USER_DEFINE_FILE -DUSE_HAL_DRIVER -DSTM32H735xx -c -I../../FileX/App -I../../FileX/Target -I../../Core/Inc -I../../Utils -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/STM32H735G-DK -I../../Drivers/Components/mx25lm51245g -I../../Drivers/Components/s70kl1281 -I../../Drivers/Components/ft5336 -I../../Drivers/Components/Common -I../../Middlewares/ST/filex/common/inc/ -I../../Middlewares/ST/filex/ports/generic/inc/ -I../../LIBJPEG/App -I../../LIBJPEG/Target -I../../Middlewares/Third_Party/LibJPEG/include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-BSP

clean-Drivers-2f-BSP:
	-$(RM) ./Drivers/BSP/stm32h735g_discovery.cyclo ./Drivers/BSP/stm32h735g_discovery.d ./Drivers/BSP/stm32h735g_discovery.o ./Drivers/BSP/stm32h735g_discovery.su ./Drivers/BSP/stm32h735g_discovery_bus.cyclo ./Drivers/BSP/stm32h735g_discovery_bus.d ./Drivers/BSP/stm32h735g_discovery_bus.o ./Drivers/BSP/stm32h735g_discovery_bus.su ./Drivers/BSP/stm32h735g_discovery_lcd.cyclo ./Drivers/BSP/stm32h735g_discovery_lcd.d ./Drivers/BSP/stm32h735g_discovery_lcd.o ./Drivers/BSP/stm32h735g_discovery_lcd.su ./Drivers/BSP/stm32h735g_discovery_ospi.cyclo ./Drivers/BSP/stm32h735g_discovery_ospi.d ./Drivers/BSP/stm32h735g_discovery_ospi.o ./Drivers/BSP/stm32h735g_discovery_ospi.su ./Drivers/BSP/stm32h735g_discovery_ts.cyclo ./Drivers/BSP/stm32h735g_discovery_ts.d ./Drivers/BSP/stm32h735g_discovery_ts.o ./Drivers/BSP/stm32h735g_discovery_ts.su

.PHONY: clean-Drivers-2f-BSP

