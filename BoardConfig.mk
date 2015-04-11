USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/fly/j608_fly/BoardConfigVendor.mk

# Flags
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
COMMON_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK


# board
TARGET_BOARD_PLATFORM := mt6592
TARGET_NO_BOOTLOADER := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a7
ARCH_ARM_HAVE_VFP := true
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := cortex-a7
TARGET_BOOTLOADER_BOARD_NAME := mt6592
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_KERNEL_CMDLINE :=
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048

# make_ext4fs requires numbers in dec format
BOARD_BOOTIMAGE_PARTITION_SIZE := 10485760
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1048576000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 4613734400
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_SEPOLICY_DIRS := \
       device/fly/j608_fly/sepolicy

BOARD_SEPOLICY_UNION := \
       device.te \
       app.te \
       system.te \
       file_contexts

TARGET_PREBUILT_KERNEL := device/fly/j608_fly/kernel
TARGET_RECOVERY_FSTAB := device/fly/j608_fly/rootdir/root/recovery.fstab

BOARD_CUSTOM_BOOTIMG_MK := device/fly/j608_fly/bootimg.mk
BOARD_MKBOOTIMG_ARGS := --board 1419997733

TARGET_KMODULES := true

BOARD_EGL_CFG := device/fly/j608_fly/rootdir/configs/egl.cfg

BOARD_RIL_CLASS := ../../../device/fly/j608_fly/ril/

BOARD_CONNECTIVITY_VENDOR := MediaTek
BOARD_CONNECTIVITY_MODULE := conn_soc

WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_mt66xx
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM:="/dev/wmtWifi"
WIFI_DRIVER_FW_PATH_STA:=STA
WIFI_DRIVER_FW_PATH_AP:=AP
WIFI_DRIVER_FW_PATH_P2P:=P2P

BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_MTK := true
BOARD_BLUETOOTH_DOES_NOT_USE_RFKILL := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/fly/j608_fly/bluetooth
