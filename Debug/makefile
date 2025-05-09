################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include xip/subdir.mk
-include utilities/str/subdir.mk
-include utilities/debug_console_lite/subdir.mk
-include utilities/subdir.mk
-include startup/subdir.mk
-include source/rest_api/subdir.mk
-include source/networking/subdir.mk
-include source/globals/subdir.mk
-include source/ecompass/subdir.mk
-include source/button/subdir.mk
-include source/subdir.mk
-include lwip/src/netif/ppp/polarssl/subdir.mk
-include lwip/src/netif/ppp/subdir.mk
-include lwip/src/netif/subdir.mk
-include lwip/src/core/ipv6/subdir.mk
-include lwip/src/core/ipv4/subdir.mk
-include lwip/src/core/subdir.mk
-include lwip/src/apps/http/subdir.mk
-include lwip/src/api/subdir.mk
-include lwip/port/sys_arch/dynamic/subdir.mk
-include lwip/port/subdir.mk
-include lwip/contrib/apps/udpecho_raw/subdir.mk
-include lwip/contrib/apps/udpecho/subdir.mk
-include lwip/contrib/apps/tcpecho_raw/subdir.mk
-include lwip/contrib/apps/tcpecho/subdir.mk
-include lwip/contrib/apps/ping/subdir.mk
-include drivers/subdir.mk
-include device/subdir.mk
-include component/uart/subdir.mk
-include component/silicon_id/subdir.mk
-include component/phy/subdir.mk
-include component/i2c/subdir.mk
-include component/gpio/subdir.mk
-include board/subdir.mk
ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := IMRXT1050_Ecompass
BUILD_ARTIFACT_EXTENSION := axf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all:
	+@$(MAKE) --no-print-directory main-build && $(MAKE) --no-print-directory post-build

# Main-build Target
main-build: IMRXT1050_Ecompass.axf

# Tool invocations
IMRXT1050_Ecompass.axf: $(OBJS) $(USER_OBJS) makefile $(OPTIONAL_TOOL_DEPS)
	@echo 'Building target: $@'
	@echo 'Invoking: MCU Linker'
	arm-none-eabi-gcc -nostdlib -Xlinker -no-warn-rwx-segments -Xlinker -Map="IMRXT1050_Ecompass.map" -Xlinker --gc-sections -Xlinker -print-memory-usage -Xlinker --sort-section=alignment -Xlinker --cref -mcpu=cortex-m7 -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -T IMRXT1050_Ecompass_Debug.ld -o "IMRXT1050_Ecompass.axf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) IMRXT1050_Ecompass.axf
	-@echo ' '

post-build:
	-@echo 'Performing post-build steps'
	-arm-none-eabi-size "IMRXT1050_Ecompass.axf"; # arm-none-eabi-objcopy -v -O binary "IMRXT1050_Ecompass.axf" "IMRXT1050_Ecompass.bin" ; # checksum -p MIMXRT1052xxxxB -d "IMRXT1050_Ecompass.bin";
	-@echo ' '

.PHONY: all clean dependents main-build post-build

-include ../makefile.targets
