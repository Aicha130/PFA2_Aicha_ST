################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/chaou/Downloads/Fx_File_Edit_Standalone/FileX/App/app_filex.c 

OBJS += \
./Application/User/FileX/App/app_filex.o 

C_DEPS += \
./Application/User/FileX/App/app_filex.d 


# Each subdirectory must supply rules for building sources it contributes
Application/User/FileX/App/app_filex.o: C:/Users/chaou/Downloads/Fx_File_Edit_Standalone/FileX/App/app_filex.c Application/User/FileX/App/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DFX_INCLUDE_USER_DEFINE_FILE -DUSE_HAL_DRIVER -DSTM32H735xx -c -I../../FileX/App -I../../FileX/Target -I../../Core/Inc -I../../Utils -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/STM32H735G-DK -I../../Drivers/Components/mx25lm51245g -I../../Drivers/Components/s70kl1281 -I../../Drivers/Components/ft5336 -I../../Drivers/Components/Common -I../../Middlewares/ST/filex/common/inc/ -I../../Middlewares/ST/filex/ports/generic/inc/ -I../../LIBJPEG/App -I../../LIBJPEG/Target -I../../Middlewares/Third_Party/LibJPEG/include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Application-2f-User-2f-FileX-2f-App

clean-Application-2f-User-2f-FileX-2f-App:
	-$(RM) ./Application/User/FileX/App/app_filex.cyclo ./Application/User/FileX/App/app_filex.d ./Application/User/FileX/App/app_filex.o ./Application/User/FileX/App/app_filex.su

.PHONY: clean-Application-2f-User-2f-FileX-2f-App

