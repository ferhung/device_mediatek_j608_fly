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

PRODUCT_PACKAGES += \
    libxlog

PRODUCT_PACKAGES += \
    lights.mt6592

PRODUCT_PACKAGES += \
    audio.r_submix.default

PRODUCT_PACKAGES += \
    audio.primary.mt6592

PRODUCT_PACKAGES += \
    audio_policy.default

PRODUCT_PACKAGES += \
    libbt-vendor

PRODUCT_PACKAGES += \
    gsm0710muxd

PRODUCT_COPY_FILES += \
    device/fly/j608_fly/configs/mtk-kpd.kl:system/usr/keylayout/mtk-kpd.kl 

PRODUCT_COPY_FILES += \
    device/fly/j608_fly/audio/audio_policy.conf:system/etc/audio_policy.conf

PRODUCT_COPY_FILES += \
    device/fly/j608_fly/rootdir/fstab.mt6592:root/fstab.mt6592 \
    device/fly/j608_fly/rootdir/init.mt6592.rc:root/init.mt6592.rc \
    device/fly/j608_fly/rootdir/init.recovery.mt6592.rc:root/init.recovery.mt6592.rc \
    device/fly/j608_fly/rootdir/init.mt6592.usb.rc:root/init.mt6592.usb.rc \
    device/fly/j608_fly/rootdir/ueventd.mt6592.rc:root/ueventd.mt6592.rc \
    $(LOCAL_KERNEL):kernel

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml

PRODUCT_COPY_FILES += \
    device/fly/j608_fly/configs/media_codecs.xml:system/etc/media_codecs.xml \
    device/fly/j608_fly/configs/media_profiles.xml:system/etc/media_profile.xml

PRODUCT_PACKAGES += \
    Torch

$(call inherit-product, build/target/product/full.mk)

PRODUCT_DEFAULT_PROPERTY_OVERRIDES := \
	ro.secure=0 \
	ro.allow.mock.location=1 \
	ro.debuggable=1 \
	ro.zygote=zygote32 \
	persist.sys.usb.config=adb

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_j608_fly
PRODUCT_DEVICE := j608_fly

$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)
