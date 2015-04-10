$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/fly/j608_fly/j608_fly-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/fly/j608_fly/overlay

LOCAL_PATH := device/fly/j608_fly
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
	frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
	frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
	frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
	frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
	frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml

PRODUCT_PACKAGES += \
    libxlog

PRODUCT_PACKAGES += \
    lights.mt6592

PRODUCT_PACKAGES += \
    libmtkrilw

PRODUCT_PACKAGES += \
    audio.r_submix.default

PRODUCT_PACKAGES += \
    audio.primary.mt6592

PRODUCT_PACKAGES += \
    audio_policy.default

PRODUCT_PACKAGES += \
    lib_driver_cmd_mt66xx

PRODUCT_PACKAGES += \
	Torch

PRODUCT_PROPERTY_OVERRIDES := \
	service.adb.root=1 \
	ro.mediatek.wlan.wsc=1 \
	ro.mediatek.wlan.p2p=1 \
	mediatek.wlan.ctia=0 \
	wifi.tethering.interface=ap0 \
	ro.opengles.version=131072 \
	wifi.direct.interface=p2p0 \
	ro.sys.usb.mtp.whql.enable=0 \
	sys.ipo.pwrdncap=2 \
	ro.sys.usb.storage.type=mtp,adb \
	ro.sys.usb.bicr=yes \
	ro.camera.sound.forced=0 \
	ro.audio.silent=0 \
	ro.zygote.preload.enable=0 \
	ro.boot.selinux=disable \
	debug.hwui.render_dirty_regions=false \
	ro.mediatek.chip_ver=S01 \
	ro.mediatek.version.release=ALPS.KK1.MP3DS.V1.40 \
	ro.mediatek.platform=MT6592 \
	ro.mediatek.version.sdk=2


PRODUCT_COPY_FILES += \
    device/fly/j608_fly/mtk-kpd.kl:system/usr/keylayout/mtk-kpd.kl

PRODUCT_COPY_FILES += \
    device/fly/j608_fly/init.recovery.mt6592.rc:root/init.recovery.mt6592.rc

PRODUCT_COPY_FILES += \
    device/fly/j608_fly/audio/audio_policy.conf:system/etc/audio_policy.conf

PRODUCT_COPY_FILES += \
    device/fly/j608_fly/fstab.mt6592:root/fstab.mt6592 \
    device/fly/j608_fly/init.mt6592.rc:root/init.mt6592.rc \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_j608_fly
PRODUCT_DEVICE := j608_fly

$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)
