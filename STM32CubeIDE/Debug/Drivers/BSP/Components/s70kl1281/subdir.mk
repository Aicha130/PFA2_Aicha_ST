################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/chaou/Downloads/Fx_File_Edit_Standalone/Drivers/Components/s70kl1281/s70kl1281.c 

OBJS += \
./Drivers/BSP/Components/s70kl1281/s70kl1281.o 

C_DEPS += \
./Drivers/BSP/Components/s70kl1281/s70kl1281.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/BSP/Components/s70kl1281/s70kl1281.o: C:/Users/chaou/Downloads/Fx_File_Edit_Standalone/Drivers/Components/s70kl1281/s70kl1281.c Drivers/BSP/Components/s70kl1281/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DFX_INCLUDE_USER_DEFINE_FILE -DUSE_HAL_DRIVER -DSTM32H735xx -c -I../../FileX/App -I../../FileX/Target -I../../Core/Inc -I../../Utils -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/STM32H735G-DK -I../../Drivers/Components/mx25lm51245g -I../../Drivers/Components/s70kl1281 -I../../Drivers/Components/ft5336 -I../../Drivers/Components/Common -I../../Middlewares/ST/filex/common/inc/ -I../../Middlewares/ST/filex/ports/generic/inc/ -I../../LIBJPEG/App -I../../LIBJPEG/Target -I../../Middlewares/Third_Party/LibJPEG/include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-BSP-2f-Components-2f-s70kl1281

clean-Drivers-2f-BSP-2f-Components-2f-s70kl1281:
	-$(RM) ./Drivers/BSP/Components/s70kl1281/s70kl1281.cyclo ./Drivers/BSP/Components/s70kl1281/s70kl1281.d ./Drivers/BSP/Components/s70kl1281/s70kl1281.o ./Drivers/BSP/Components/s70kl1281/s70kl1281.su

.PHONY: clean-Drivers-2f-BSP-2f-Components-2f-s70kl1281

