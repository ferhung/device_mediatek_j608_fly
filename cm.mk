$(call inherit-product, device/mediatek/j608_fly/full_j608_fly.mk)
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Release name
PRODUCT_RELEASE_NAME := j608_fly

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := j608_fly
PRODUCT_NAME := cm_j608_fly
PRODUCT_BRAND := mediatek
PRODUCT_MODEL := j608_fly
PRODUCT_MANUFACTURER := mediatek
