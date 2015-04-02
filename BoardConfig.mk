#
# Copyright 2013 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_FOLDER := device/mediatek/j608_fly

-include vendor/mediatek/j608_fly/BoardConfigVendor.mk

# board
TARGET_BOARD_PLATFORM := mt6592
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
ARCH_ARM_HAVE_VFP := true
ARCH_ARM_HAVE_NEON := true
TARGET_CPU_SMP := true
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a7
TARGET_CPU_VARIANT := cortex-a7

# blob hacks
COMMON_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true

# BT
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_MTK := true
BOARD_BLUETOOTH_DOES_NOT_USE_RFKILL := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/mediatek/j608_fly/bluetooth

# power
TARGET_POWERHAL_VARIANT := cm

# boot
TARGET_NO_BOOTLOADER := true
BOARD_CUSTOM_BOOTIMG_MK := $(DEVICE_FOLDER)/boot.mk

# EGL settings
BOARD_EGL_CFG := device/mediatek/j608_fly/egl.cfg
USE_OPENGL_RENDERER := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true

# kernel
TARGET_PREBUILT_KERNEL := $(DEVICE_FOLDER)/prebuilt/kernel

# partition info
BOARD_BOOTIMAGE_PARTITION_SIZE := 10485760
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1048576000
BOARD_USERDATAIMAGE_PARTITION_SIZE:= 4613734400
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760
BOARD_KERNEL_PAGESIZE := 2048
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_EXT4 := true

# recovery TWRP
DEVICE_RESOLUTION := 720x1280
TARGET_RECOVERY_FSTAB := $(DEVICE_FOLDER)/recovery/recovery.fstab
TARGET_PREBUILT_RECOVERY_KERNEL := $(DEVICE_FOLDER)/recovery/kernel
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_EXTERNAL_STORAGE_PATH := "/sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_INTERNAL_STORAGE_PATH := "/emmc"
TW_INTERNAL_STORAGE_MOUNT_POINT := "internal_sd"
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_INCLUDE_JB_CRYPTO := true
TW_CRYPTO_FS_TYPE := "ext4"
TW_CRYPTO_REAL_BLKDEV := "/dev/block/mmcblk0p7"
TW_CRYPTO_MNT_POINT := "/data"
TW_CRYPTO_FS_OPTIONS := "nosuid,nodev,noatime,discard,noauto_da_alloc,data=ordered"
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_MAX_BRIGHTNESS := 255
TW_CUSTOM_CPU_TEMP_PATH := /proc/mtktscpu/mtktscpu_read_temperature

# wifi
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_WLAN_DEVICE := mediatek
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mt66xx
BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM:="/dev/wmtWifi"
WIFI_DRIVER_FW_PATH_STA:=STA
WIFI_DRIVER_FW_PATH_AP:=AP
WIFI_DRIVER_FW_PATH_P2P:=P2P

# telephony
BOARD_RIL_CLASS := ../../../device/mediatek/j608_fly/ril/

# allow more than one lun file
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/virtual/android_usb/android0/f_mass_storage/lun%d/file"
