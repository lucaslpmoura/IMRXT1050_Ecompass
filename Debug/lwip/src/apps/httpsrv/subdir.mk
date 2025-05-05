################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lwip/src/apps/httpsrv/httpsrv.c \
../lwip/src/apps/httpsrv/httpsrv_base64.c \
../lwip/src/apps/httpsrv/httpsrv_fs.c \
../lwip/src/apps/httpsrv/httpsrv_script.c \
../lwip/src/apps/httpsrv/httpsrv_sha1.c \
../lwip/src/apps/httpsrv/httpsrv_supp.c \
../lwip/src/apps/httpsrv/httpsrv_task.c \
../lwip/src/apps/httpsrv/httpsrv_tls.c \
../lwip/src/apps/httpsrv/httpsrv_utf8.c \
../lwip/src/apps/httpsrv/httpsrv_ws.c \
../lwip/src/apps/httpsrv/httpsrv_ws_api.c 

C_DEPS += \
./lwip/src/apps/httpsrv/httpsrv.d \
./lwip/src/apps/httpsrv/httpsrv_base64.d \
./lwip/src/apps/httpsrv/httpsrv_fs.d \
./lwip/src/apps/httpsrv/httpsrv_script.d \
./lwip/src/apps/httpsrv/httpsrv_sha1.d \
./lwip/src/apps/httpsrv/httpsrv_supp.d \
./lwip/src/apps/httpsrv/httpsrv_task.d \
./lwip/src/apps/httpsrv/httpsrv_tls.d \
./lwip/src/apps/httpsrv/httpsrv_utf8.d \
./lwip/src/apps/httpsrv/httpsrv_ws.d \
./lwip/src/apps/httpsrv/httpsrv_ws_api.d 

OBJS += \
./lwip/src/apps/httpsrv/httpsrv.o \
./lwip/src/apps/httpsrv/httpsrv_base64.o \
./lwip/src/apps/httpsrv/httpsrv_fs.o \
./lwip/src/apps/httpsrv/httpsrv_script.o \
./lwip/src/apps/httpsrv/httpsrv_sha1.o \
./lwip/src/apps/httpsrv/httpsrv_supp.o \
./lwip/src/apps/httpsrv/httpsrv_task.o \
./lwip/src/apps/httpsrv/httpsrv_tls.o \
./lwip/src/apps/httpsrv/httpsrv_utf8.o \
./lwip/src/apps/httpsrv/httpsrv_ws.o \
./lwip/src/apps/httpsrv/httpsrv_ws_api.o 


# Each subdirectory must supply rules for building sources it contributes
lwip/src/apps/httpsrv/%.o: ../lwip/src/apps/httpsrv/%.c lwip/src/apps/httpsrv/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -DPRINTF_ADVANCED_ENABLE=1 -D__REDLIB__ -DSDK_I2C_BASED_COMPONENT_USED=1 -DMCUXPRESSO_SDK -DXIP_BOOT_HEADER_ENABLE=1 -DXIP_EXTERNAL_FLASH=1 -DFSL_FEATURE_PHYKSZ8081_USE_RMII50M_MODE -DSDK_DEBUGCONSOLE=1 -DMCUX_META_BUILD -DCPU_MIMXRT1052DVL6B -DCPU_MIMXRT1052DVL6B_cm7 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\xip" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\drivers" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\CMSIS" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\CMSIS\m-profile" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\device" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\device\periph" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\utilities" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\utilities\str" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\component\silicon_id" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\component" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\utilities\debug_console_lite" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\component\gpio" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\component\uart" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\component\phy" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\lwip\port" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\lwip\src\include" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\lwip\port\sys_arch\dynamic" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\lwip\src\apps\http" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\component\i2c" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\lwip\src\apps\httpsrv" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\lwip\template" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\freertos\freertos-kernel\template" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\freertos\freertos-kernel\template\ARM_CM4F_4_priority_bits" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\source" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\board" -O0 -fno-common -g3 -gdwarf-4 -mthumb -c -ffunction-sections -fdata-sections -fno-builtin -imacros "C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\source\mcux_config.h" -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m7 -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-lwip-2f-src-2f-apps-2f-httpsrv

clean-lwip-2f-src-2f-apps-2f-httpsrv:
	-$(RM) ./lwip/src/apps/httpsrv/httpsrv.d ./lwip/src/apps/httpsrv/httpsrv.o ./lwip/src/apps/httpsrv/httpsrv_base64.d ./lwip/src/apps/httpsrv/httpsrv_base64.o ./lwip/src/apps/httpsrv/httpsrv_fs.d ./lwip/src/apps/httpsrv/httpsrv_fs.o ./lwip/src/apps/httpsrv/httpsrv_script.d ./lwip/src/apps/httpsrv/httpsrv_script.o ./lwip/src/apps/httpsrv/httpsrv_sha1.d ./lwip/src/apps/httpsrv/httpsrv_sha1.o ./lwip/src/apps/httpsrv/httpsrv_supp.d ./lwip/src/apps/httpsrv/httpsrv_supp.o ./lwip/src/apps/httpsrv/httpsrv_task.d ./lwip/src/apps/httpsrv/httpsrv_task.o ./lwip/src/apps/httpsrv/httpsrv_tls.d ./lwip/src/apps/httpsrv/httpsrv_tls.o ./lwip/src/apps/httpsrv/httpsrv_utf8.d ./lwip/src/apps/httpsrv/httpsrv_utf8.o ./lwip/src/apps/httpsrv/httpsrv_ws.d ./lwip/src/apps/httpsrv/httpsrv_ws.o ./lwip/src/apps/httpsrv/httpsrv_ws_api.d ./lwip/src/apps/httpsrv/httpsrv_ws_api.o

.PHONY: clean-lwip-2f-src-2f-apps-2f-httpsrv

