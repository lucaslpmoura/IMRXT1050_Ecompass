################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/fsl_cache.c \
../drivers/fsl_clock.c \
../drivers/fsl_common.c \
../drivers/fsl_common_arm.c \
../drivers/fsl_dcdc.c \
../drivers/fsl_dcp.c \
../drivers/fsl_enet.c \
../drivers/fsl_gpc.c \
../drivers/fsl_gpio.c \
../drivers/fsl_lpi2c.c \
../drivers/fsl_lpuart.c \
../drivers/fsl_pmu.c \
../drivers/fsl_src.c \
../drivers/fsl_trng.c 

C_DEPS += \
./drivers/fsl_cache.d \
./drivers/fsl_clock.d \
./drivers/fsl_common.d \
./drivers/fsl_common_arm.d \
./drivers/fsl_dcdc.d \
./drivers/fsl_dcp.d \
./drivers/fsl_enet.d \
./drivers/fsl_gpc.d \
./drivers/fsl_gpio.d \
./drivers/fsl_lpi2c.d \
./drivers/fsl_lpuart.d \
./drivers/fsl_pmu.d \
./drivers/fsl_src.d \
./drivers/fsl_trng.d 

OBJS += \
./drivers/fsl_cache.o \
./drivers/fsl_clock.o \
./drivers/fsl_common.o \
./drivers/fsl_common_arm.o \
./drivers/fsl_dcdc.o \
./drivers/fsl_dcp.o \
./drivers/fsl_enet.o \
./drivers/fsl_gpc.o \
./drivers/fsl_gpio.o \
./drivers/fsl_lpi2c.o \
./drivers/fsl_lpuart.o \
./drivers/fsl_pmu.o \
./drivers/fsl_src.o \
./drivers/fsl_trng.o 


# Each subdirectory must supply rules for building sources it contributes
drivers/%.o: ../drivers/%.c drivers/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -DPRINTF_ADVANCED_ENABLE=1 -D__REDLIB__ -DSDK_I2C_BASED_COMPONENT_USED=1 -DMCUXPRESSO_SDK -DXIP_BOOT_HEADER_ENABLE=1 -DXIP_EXTERNAL_FLASH=1 -DFSL_FEATURE_PHYKSZ8081_USE_RMII50M_MODE -DSDK_DEBUGCONSOLE=1 -DMCUX_META_BUILD -DCPU_MIMXRT1052DVL6B -DCPU_MIMXRT1052DVL6B_cm7 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\IMRXT1050_Ecompass\xip" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\IMRXT1050_Ecompass\drivers" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\IMRXT1050_Ecompass\CMSIS" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\IMRXT1050_Ecompass\CMSIS\m-profile" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\IMRXT1050_Ecompass\device" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\IMRXT1050_Ecompass\device\periph" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\IMRXT1050_Ecompass\utilities" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\IMRXT1050_Ecompass\utilities\str" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\IMRXT1050_Ecompass\component\silicon_id" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\IMRXT1050_Ecompass\component" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\IMRXT1050_Ecompass\utilities\debug_console_lite" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\IMRXT1050_Ecompass\component\gpio" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\IMRXT1050_Ecompass\component\uart" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\IMRXT1050_Ecompass\component\phy" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\IMRXT1050_Ecompass\lwip\port" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\IMRXT1050_Ecompass\lwip\src\include" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\IMRXT1050_Ecompass\lwip\port\sys_arch\dynamic" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\IMRXT1050_Ecompass\lwip\src\apps\http" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\IMRXT1050_Ecompass\component\i2c" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\IMRXT1050_Ecompass\freertos\freertos-kernel\template" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\IMRXT1050_Ecompass\freertos\freertos-kernel\template\ARM_CM4F_4_priority_bits" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\IMRXT1050_Ecompass\source" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\IMRXT1050_Ecompass\board" -O0 -fno-common -g3 -gdwarf-4 -mthumb -c -ffunction-sections -fdata-sections -fno-builtin -imacros "C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\IMRXT1050_Ecompass\source\mcux_config.h" -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m7 -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-drivers

clean-drivers:
	-$(RM) ./drivers/fsl_cache.d ./drivers/fsl_cache.o ./drivers/fsl_clock.d ./drivers/fsl_clock.o ./drivers/fsl_common.d ./drivers/fsl_common.o ./drivers/fsl_common_arm.d ./drivers/fsl_common_arm.o ./drivers/fsl_dcdc.d ./drivers/fsl_dcdc.o ./drivers/fsl_dcp.d ./drivers/fsl_dcp.o ./drivers/fsl_enet.d ./drivers/fsl_enet.o ./drivers/fsl_gpc.d ./drivers/fsl_gpc.o ./drivers/fsl_gpio.d ./drivers/fsl_gpio.o ./drivers/fsl_lpi2c.d ./drivers/fsl_lpi2c.o ./drivers/fsl_lpuart.d ./drivers/fsl_lpuart.o ./drivers/fsl_pmu.d ./drivers/fsl_pmu.o ./drivers/fsl_src.d ./drivers/fsl_src.o ./drivers/fsl_trng.d ./drivers/fsl_trng.o

.PHONY: clean-drivers

