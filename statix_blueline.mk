# Boot animation
TARGET_SCREEN_HEIGHT := 2160
TARGET_SCREEN_WIDTH := 1080

# Inherit some common StatiX stuff.
$(call inherit-product, vendor/statix/config/common.mk)
$(call inherit-product, vendor/statix/config/gsm.mk)

# Inherit device configuration
$(call inherit-product, device/google/crosshatch/aosp_blueline.mk)
-include device/google/crosshatch/device-statix.mk

PRODUCT_MANUFACTURER := Google
PRODUCT_NAME := statix_blueline
PRODUCT_DEVICE := blueline
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 3

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=blueline \
    PRIVATE_BUILD_DESC="blueline-user 12 SP1A.210812.016.C2 8618562 release-keys"

BUILD_FINGERPRINT := google/blueline/blueline:12/SP1A.210812.016.C2/8618562:user/release-keys

$(call inherit-product, vendor/google/blueline/blueline-vendor.mk)