################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
../src/aes256.c \
../src/audiogen_drv.c \
../src/dp159.c \
../src/platform.c \
../src/sha256.c \
../src/si5324drv.c \
../src/xhdcp.c \
../src/xhdmi_edid.c \
../src/xhdmi_example.c \
../src/xhdmi_hdcp_keys.c \
../src/xhdmi_menu.c \
../src/xvidframe_crc.c 

OBJS += \
./src/aes256.o \
./src/audiogen_drv.o \
./src/dp159.o \
./src/platform.o \
./src/sha256.o \
./src/si5324drv.o \
./src/xhdcp.o \
./src/xhdmi_edid.o \
./src/xhdmi_example.o \
./src/xhdmi_hdcp_keys.o \
./src/xhdmi_menu.o \
./src/xvidframe_crc.o 

C_DEPS += \
./src/aes256.d \
./src/audiogen_drv.d \
./src/dp159.d \
./src/platform.d \
./src/sha256.d \
./src/si5324drv.d \
./src/xhdcp.d \
./src/xhdmi_edid.d \
./src/xhdmi_example.d \
./src/xhdmi_hdcp_keys.d \
./src/xhdmi_menu.d \
./src/xvidframe_crc.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -IC:/Projects/Stereovision/stereo_fpga/v_hdmi_rx_ss_0_ex/vitis_workspace/hdmi20_exdes/export/hdmi20_exdes/sw/hdmi20_exdes/standalone_domain/bspinclude/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


