################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Utils/subdir.mk
-include Middlewares/LibJPEG/subdir.mk
-include Middlewares/Interfaces/File\ System/FileX\ SD\ interface/subdir.mk
-include Middlewares/FileX/File\ System/FileX/Core/subdir.mk
-include Drivers/STM32H7xx_HAL_Driver/subdir.mk
-include Drivers/CMSIS/subdir.mk
-include Drivers/BSP/Components/s70kl1281/subdir.mk
-include Drivers/BSP/Components/mx25lm51245g/subdir.mk
-include Drivers/BSP/Components/ft5336/subdir.mk
-include Drivers/BSP/subdir.mk
-include Application/User/Startup/subdir.mk
-include Application/User/LIBJPEG/App/subdir.mk
-include Application/User/FileX/Target/subdir.mk
-include Application/User/FileX/App/subdir.mk
-include Application/User/Core/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := Fx_File_Edit_Standalone
BUILD_ARTIFACT_EXTENSION := elf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
Fx_File_Edit_Standalone.elf \

MAP_FILES += \
Fx_File_Edit_Standalone.map \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
Fx_File_Edit_Standalone.list \


# All Target
all: main-build

# Main-build Target
main-build: Fx_File_Edit_Standalone.elf secondary-outputs

# Tool invocations
Fx_File_Edit_Standalone.elf Fx_File_Edit_Standalone.map: $(OBJS) $(USER_OBJS) C:\Users\chaou\Downloads\Fx_File_Edit_Standalone\STM32CubeIDE\STM32H735IGKX_FLASH.ld makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-gcc -o "Fx_File_Edit_Standalone.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m7 -T"C:\Users\chaou\Downloads\Fx_File_Edit_Standalone\STM32CubeIDE\STM32H735IGKX_FLASH.ld" --specs=nosys.specs -Wl,-Map="Fx_File_Edit_Standalone.map" -Wl,--gc-sections -static --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

Fx_File_Edit_Standalone.list: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "Fx_File_Edit_Standalone.list"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) Fx_File_Edit_Standalone.elf Fx_File_Edit_Standalone.list Fx_File_Edit_Standalone.map default.size.stdout
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST)

fail-specified-linker-script-missing:
	@echo 'Error: Cannot find the specified linker script. Check the linker settings in the build configuration.'
	@exit 2

warn-no-linker-script-specified:
	@echo 'Warning: No linker script specified. Check the linker settings in the build configuration.'

.PHONY: all clean dependents main-build fail-specified-linker-script-missing warn-no-linker-script-specified

-include ../makefile.targets
