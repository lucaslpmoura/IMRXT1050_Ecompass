################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../source/rest_api/rest_api.c 

C_DEPS += \
./source/rest_api/rest_api.d 

OBJS += \
./source/rest_api/rest_api.o 


# Each subdirectory must supply rules for building sources it contributes
source/rest_api/%.o: ../source/rest_api/%.c source/rest_api/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -DPRINTF_ADVANCED_ENABLE=1 -D__REDLIB__ -DSDK_I2C_BASED_COMPONENT_USED=1 -DMCUXPRESSO_SDK -DXIP_BOOT_HEADER_ENABLE=1 -DXIP_EXTERNAL_FLASH=1 -DFSL_FEATURE_PHYKSZ8081_USE_RMII50M_MODE -DSDK_DEBUGCONSOLE=1 -DMCUX_META_BUILD -DCPU_MIMXRT1052DVL6B -DCPU_MIMXRT1052DVL6B_cm7 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\IMRXT1050_Ecompass\xip" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\IMRXT1050_Ecompass\drivers" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\IMRXT1050_Ecompass\CMSIS" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\IMRXT1050_Ecompass\CMSIS\m-profile" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\IMRXT1050_Ecompass\device" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\IMRXT1050_Ecompass\device\periph" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\IMRXT1050_Ecompass\utilities" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\IMRXT1050_Ecompass\utilities\str" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\IMRXT1050_Ecompass\component\silicon_id" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\IMRXT1050_Ecompass\component" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\IMRXT1050_Ecompass\utilities\debug_console_lite" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\IMRXT1050_Ecompass\component\gpio" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\IMRXT1050_Ecompass\component\uart" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\IMRXT1050_Ecompass\component\phy" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\IMRXT1050_Ecompass\lwip\port" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\IMRXT1050_Ecompass\lwip\src\include" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\IMRXT1050_Ecompass\lwip\port\sys_arch\dynamic" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\IMRXT1050_Ecompass\lwip\src\apps\http" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\IMRXT1050_Ecompass\component\i2c" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\IMRXT1050_Ecompass\freertos\freertos-kernel\template" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\IMRXT1050_Ecompass\freertos\freertos-kernel\template\ARM_CM4F_4_priority_bits" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\IMRXT1050_Ecompass\source" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\IMRXT1050_Ecompass\board" -O0 -fno-common -g3 -gdwarf-4 -mthumb -c -ffunction-sections -fdata-sections -fno-builtin -imacros "C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\IMRXT1050_Ecompass\source\mcux_config.h" -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m7 -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-source-2f-rest_api

clean-source-2f-rest_api:
	-$(RM) ./source/rest_api/rest_api.d ./source/rest_api/rest_api.o

.PHONY: clean-source-2f-rest_api

