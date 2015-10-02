# Copyright (C) 2013 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := device/zopo/zp999

USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/zopo/zp999/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := zp999
TARGET_OTA_ASSERT_DEVICE := ZP999

# Platform
TARGET_BOARD_PLATFORM := mt6595
TARGET_BOARD_PLATFORM_GPU := SGX351_110

# Architecture
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a7
TARGET_CPU_VARIANT:= cortex-a7
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_VFP := true
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_GLOBAL_CFLAGS   += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD

BOARD_HAS_NO_SELECT_BUTTON := true

BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x40000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --base 0x40000000 --pagesize 2048 --kernel_offset 0x00008000 --ramdisk_offset 0x04000000 --tags_offset 0x0e000000 --board CARLIV

# Partition sizes
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1375731712
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1237319680
BOARD_CACHEIMAGE_PARTITION_SIZE := 117440512
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 512
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := false
BOARD_HAS_LARGE_FILESYSTEM := true

# Recovery
#RECOVERY_VARIANT := cwm
#RECOVERY_VARIANT := carliv
#RECOVERY_VARIANT := philz
#RECOVERY_VARIANT := swipe
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/kernel
#TARGET_RECOVERY_INITRC := $(LOCAL_PATH)/recovery/init.mt6595.rc
#TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/recovery.fstab

BOARD_HAS_MTK := true
BOARD_CUSTOM_BOOTIMG_MK := $(LOCAL_PATH)/mkmtkbootimg.mk

#BOARD_USE_CUSTOM_RECOVERY_FONT := \"font40_24x48.h\"
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
DEVICE_RESOLUTION := 1080x1920
DEVICE_SCREEN_WIDTH := 1080
DEVICE_SCREEN_HEIGHT := 1920
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/musb-mtu3d/musb-hdrc/gadget/lun%d/file
TARGET_RECOVERY_LCD_BACKLIGHT_PATH := \"/sys/class/leds/lcd-backlight/brightness\"

# EGL settings
BOARD_EGL_CFG := $(LOCAL_PATH)/egl.cfg
USE_OPENGL_RENDERER := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"
BOARD_USE_FRAMEBUFFER_ALPHA_CHANNEL := true
TARGET_DISABLE_TRIPLE_BUFFERING := false
#BOARD_CUSTOM_GRAPHICS := ../../../device/zopo/zp999/recovery/graphics.cwm.c
#BOARD_CUSTOM_GRAPHICS := ../../../device/zopo/zp999/recovery/graphics.cwmt.c

#TWRP
RECOVERY_VARIANT := twrp
TARGET_RECOVERY_INITRC := $(LOCAL_PATH)/recovery/recovery.twrp.rc
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/recovery.twrp.fstab
TW_BOARD_CUSTOM_GRAPHICS := ../../../device/zopo/zp999/recovery/graphics.twrp.c
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_CUSTOM_BATTERY_PATH := /sys/devices/platform/battery/power_supply/battery
TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone0/temp
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA := true
TW_USE_TOOLBOX := true
TWHAVE_SELINUX := true
TW_MAX_BRIGHTNESS := 255
TW_FLASH_FROM_STORAGE := true
