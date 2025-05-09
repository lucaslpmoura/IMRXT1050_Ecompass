################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lwip/src/core/ipv4/acd.c \
../lwip/src/core/ipv4/autoip.c \
../lwip/src/core/ipv4/dhcp.c \
../lwip/src/core/ipv4/etharp.c \
../lwip/src/core/ipv4/icmp.c \
../lwip/src/core/ipv4/igmp.c \
../lwip/src/core/ipv4/ip4.c \
../lwip/src/core/ipv4/ip4_addr.c \
../lwip/src/core/ipv4/ip4_frag.c 

C_DEPS += \
./lwip/src/core/ipv4/acd.d \
./lwip/src/core/ipv4/autoip.d \
./lwip/src/core/ipv4/dhcp.d \
./lwip/src/core/ipv4/etharp.d \
./lwip/src/core/ipv4/icmp.d \
./lwip/src/core/ipv4/igmp.d \
./lwip/src/core/ipv4/ip4.d \
./lwip/src/core/ipv4/ip4_addr.d \
./lwip/src/core/ipv4/ip4_frag.d 

OBJS += \
./lwip/src/core/ipv4/acd.o \
./lwip/src/core/ipv4/autoip.o \
./lwip/src/core/ipv4/dhcp.o \
./lwip/src/core/ipv4/etharp.o \
./lwip/src/core/ipv4/icmp.o \
./lwip/src/core/ipv4/igmp.o \
./lwip/src/core/ipv4/ip4.o \
./lwip/src/core/ipv4/ip4_addr.o \
./lwip/src/core/ipv4/ip4_frag.o 


# Each subdirectory must supply rules for building sources it contributes
lwip/src/core/ipv4/%.o: ../lwip/src/core/ipv4/%.c lwip/src/core/ipv4/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -DPRINTF_ADVANCED_ENABLE=1 -D__REDLIB__ -DSDK_I2C_BASED_COMPONENT_USED=1 -DMCUXPRESSO_SDK -DXIP_BOOT_HEADER_ENABLE=1 -DXIP_EXTERNAL_FLASH=1 -DFSL_FEATURE_PHYKSZ8081_USE_RMII50M_MODE -DSDK_DEBUGCONSOLE=1 -DMCUX_META_BUILD -DCPU_MIMXRT1052DVL6B -DCPU_MIMXRT1052DVL6B_cm7 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\IMRXT1050_Ecompass\xip" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\IMRXT1050_Ecompass\drivers" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\IMRXT1050_Ecompass\CMSIS" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\IMRXT1050_Ecompass\CMSIS\m-profile" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\IMRXT1050_Ecompass\device" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\IMRXT1050_Ecompass\device\periph" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\IMRXT1050_Ecompass\utilities" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\IMRXT1050_Ecompass\utilities\str" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\IMRXT1050_Ecompass\component\silicon_id" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\IMRXT1050_Ecompass\component" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\IMRXT1050_Ecompass\utilities\debug_console_lite" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\IMRXT1050_Ecompass\component\gpio" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\IMRXT1050_Ecompass\component\uart" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\IMRXT1050_Ecompass\component\phy" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\IMRXT1050_Ecompass\lwip\port" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\IMRXT1050_Ecompass\lwip\src\include" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\IMRXT1050_Ecompass\lwip\port\sys_arch\dynamic" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\IMRXT1050_Ecompass\lwip\src\apps\http" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\IMRXT1050_Ecompass\component\i2c" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\IMRXT1050_Ecompass\freertos\freertos-kernel\template" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\IMRXT1050_Ecompass\freertos\freertos-kernel\template\ARM_CM4F_4_priority_bits" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\IMRXT1050_Ecompass\source" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\IMRXT1050_Ecompass\board" -O0 -fno-common -g3 -gdwarf-4 -mthumb -c -ffunction-sections -fdata-sections -fno-builtin -imacros "C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\IMRXT1050_Ecompass\source\mcux_config.h" -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m7 -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-lwip-2f-src-2f-core-2f-ipv4

clean-lwip-2f-src-2f-core-2f-ipv4:
	-$(RM) ./lwip/src/core/ipv4/acd.d ./lwip/src/core/ipv4/acd.o ./lwip/src/core/ipv4/autoip.d ./lwip/src/core/ipv4/autoip.o ./lwip/src/core/ipv4/dhcp.d ./lwip/src/core/ipv4/dhcp.o ./lwip/src/core/ipv4/etharp.d ./lwip/src/core/ipv4/etharp.o ./lwip/src/core/ipv4/icmp.d ./lwip/src/core/ipv4/icmp.o ./lwip/src/core/ipv4/igmp.d ./lwip/src/core/ipv4/igmp.o ./lwip/src/core/ipv4/ip4.d ./lwip/src/core/ipv4/ip4.o ./lwip/src/core/ipv4/ip4_addr.d ./lwip/src/core/ipv4/ip4_addr.o ./lwip/src/core/ipv4/ip4_frag.d ./lwip/src/core/ipv4/ip4_frag.o

.PHONY: clean-lwip-2f-src-2f-core-2f-ipv4

