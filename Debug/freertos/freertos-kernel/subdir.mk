################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../freertos/freertos-kernel/croutine.c \
../freertos/freertos-kernel/event_groups.c \
../freertos/freertos-kernel/list.c \
../freertos/freertos-kernel/queue.c \
../freertos/freertos-kernel/stream_buffer.c \
../freertos/freertos-kernel/tasks.c \
../freertos/freertos-kernel/timers.c 

C_DEPS += \
./freertos/freertos-kernel/croutine.d \
./freertos/freertos-kernel/event_groups.d \
./freertos/freertos-kernel/list.d \
./freertos/freertos-kernel/queue.d \
./freertos/freertos-kernel/stream_buffer.d \
./freertos/freertos-kernel/tasks.d \
./freertos/freertos-kernel/timers.d 

OBJS += \
./freertos/freertos-kernel/croutine.o \
./freertos/freertos-kernel/event_groups.o \
./freertos/freertos-kernel/list.o \
./freertos/freertos-kernel/queue.o \
./freertos/freertos-kernel/stream_buffer.o \
./freertos/freertos-kernel/tasks.o \
./freertos/freertos-kernel/timers.o 


# Each subdirectory must supply rules for building sources it contributes
freertos/freertos-kernel/%.o: ../freertos/freertos-kernel/%.c freertos/freertos-kernel/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -DPRINTF_ADVANCED_ENABLE=1 -D__REDLIB__ -DPRINTF_FLOAT_ENABLE=1 -DSDK_I2C_BASED_COMPONENT_USED=1 -DMCUXPRESSO_SDK -DXIP_BOOT_HEADER_ENABLE=1 -DXIP_EXTERNAL_FLASH=1 -DFSL_FEATURE_PHYKSZ8081_USE_RMII50M_MODE -DSDK_DEBUGCONSOLE=1 -DMCUX_META_BUILD -DCPU_MIMXRT1052DVL6B -DCPU_MIMXRT1052DVL6B_cm7 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -DMBEDTLS_THREADING_C -DMBEDTLS_THREADING_ALT -DMBEDTLS_CONFIG_FILE='"ksdk_mbedtls_config.h"' -DSDK_OS_FREE_RTOS -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\xip" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\drivers" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\CMSIS" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\CMSIS\m-profile" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\device" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\device\periph" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\utilities" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\utilities\str" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\component\silicon_id" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\component" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\utilities\debug_console_lite" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\component\gpio" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\component\uart" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\component\phy" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\lwip\port" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\lwip\src\include" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\lwip\port\sys_arch\dynamic" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\lwip\src\apps\http" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\component\i2c" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\mbedtls\port\ksdk" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\lwip\src\apps\httpsrv" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\freertos\freertos-kernel\include" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\freertos\freertos-kernel\portable\GCC\ARM_CM4F" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\mbedtls\include" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\mbedtls\library" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\lwip\template" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\freertos\freertos-kernel\template" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\freertos\freertos-kernel\template\ARM_CM4F_4_priority_bits" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\source" -I"C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\board" -O0 -fno-common -g3 -gdwarf-4 -mthumb -c -ffunction-sections -fdata-sections -fno-builtin -imacros "C:\Users\xlouzal00\Documents\MCUXpressoIDE_24.12.148\workspace\evkbimxrt1050_tst_lwip_dhcp_bm\source\mcux_config.h" -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m7 -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-freertos-2f-freertos-2d-kernel

clean-freertos-2f-freertos-2d-kernel:
	-$(RM) ./freertos/freertos-kernel/croutine.d ./freertos/freertos-kernel/croutine.o ./freertos/freertos-kernel/event_groups.d ./freertos/freertos-kernel/event_groups.o ./freertos/freertos-kernel/list.d ./freertos/freertos-kernel/list.o ./freertos/freertos-kernel/queue.d ./freertos/freertos-kernel/queue.o ./freertos/freertos-kernel/stream_buffer.d ./freertos/freertos-kernel/stream_buffer.o ./freertos/freertos-kernel/tasks.d ./freertos/freertos-kernel/tasks.o ./freertos/freertos-kernel/timers.d ./freertos/freertos-kernel/timers.o

.PHONY: clean-freertos-2f-freertos-2d-kernel

