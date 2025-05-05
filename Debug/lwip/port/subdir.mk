################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lwip/port/enet_ethernetif.c \
../lwip/port/enet_ethernetif_kinetis.c \
../lwip/port/ethernetif.c \
../lwip/port/ethernetif_mmac.c 

C_DEPS += \
./lwip/port/enet_ethernetif.d \
./lwip/port/enet_ethernetif_kinetis.d \
./lwip/port/ethernetif.d \
./lwip/port/ethernetif_mmac.d 

OBJS += \
./lwip/port/enet_ethernetif.o \
./lwip/port/enet_ethernetif_kinetis.o \
./lwip/port/ethernetif.o \
./lwip/port/ethernetif_mmac.o 


# Each subdirectory must supply rules for building sources it contributes
lwip/port/%.o: ../lwip/port/%.c lwip/port/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -DPRINTF_ADVANCED_ENABLE=1 -D__REDLIB__ -DSDK_I2C_BASED_COMPONENT_USED=1 -DMCUXPRESSO_SDK -DXIP_BOOT_HEADER_ENABLE=1 -DXIP_EXTERNAL_FLASH=1 -DFSL_FEATURE_PHYKSZ8081_USE_RMII50M_MODE -DSDK_DEBUGCONSOLE=1 -DMCUX_META_BUILD -DCPU_MIMXRT1052DVL6B -DCPU_MIMXRT1052DVL6B_cm7 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\xip" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\drivers" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\CMSIS" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\CMSIS\m-profile" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\device" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\device\periph" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\utilities" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\utilities\str" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\component\silicon_id" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\component" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\utilities\debug_console_lite" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\component\gpio" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\component\uart" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\component\phy" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\lwip\port" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\lwip\src\include" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\lwip\port\sys_arch\dynamic" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\lwip\src\apps\http" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\component\i2c" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\lwip\template" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\freertos\freertos-kernel\template" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\freertos\freertos-kernel\template\ARM_CM4F_4_priority_bits" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\source" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\board" -O0 -fno-common -g3 -gdwarf-4 -mthumb -c -ffunction-sections -fdata-sections -fno-builtin -imacros "C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\source\mcux_config.h" -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m7 -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-lwip-2f-port

clean-lwip-2f-port:
	-$(RM) ./lwip/port/enet_ethernetif.d ./lwip/port/enet_ethernetif.o ./lwip/port/enet_ethernetif_kinetis.d ./lwip/port/enet_ethernetif_kinetis.o ./lwip/port/ethernetif.d ./lwip/port/ethernetif.o ./lwip/port/ethernetif_mmac.d ./lwip/port/ethernetif_mmac.o

.PHONY: clean-lwip-2f-port

