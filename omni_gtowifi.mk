# Release name
PRODUCT_RELEASE_NAME := gtowifi

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := gtowifi
PRODUCT_NAME := omni_gtowifi
PRODUCT_MODEL := SM-T290
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp,adb
