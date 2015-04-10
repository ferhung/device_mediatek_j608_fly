## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := j608_fly

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

$(call inherit-product, device/fly/j608_fly/device_j608_fly.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := j608_fly
PRODUCT_NAME := cm_j608_fly
PRODUCT_BRAND := Fly
PRODUCT_MODEL := IQ4511
PRODUCT_MANUFACTURER := fly
