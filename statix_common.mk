#
# Copyright 2020 The Android Open-Source Project
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

#
# All components inherited here go to system image
#
ifeq (,$(filter %_64,$(TARGET_PRODUCT)))
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
else
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
endif
$(call inherit-product, $(SRC_TARGET_DIR)/product/mainline_system.mk)

#
# All components inherited here go to system_ext image
#
$(call inherit-product, $(SRC_TARGET_DIR)/product/handheld_system_ext.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony_system_ext.mk)

#
# All components inherited here go to product image
#
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_product.mk)

# Inherit some common StatiX stuff.
$(call inherit-product, vendor/statix/config/common.mk)
$(call inherit-product, vendor/statix/config/gsm.mk)

#
# All components inherited here go to vendor image
#
# TODO(b/136525499): move *_vendor.mk into the vendor makefile later
$(call inherit-product, $(SRC_TARGET_DIR)/product/handheld_vendor.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony_vendor.mk)

PRODUCT_COPY_FILES += $(LOCAL_PATH)/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml

# b/189477034: Bypass build time check on uses_libs until vendor fixes all their apps
PRODUCT_BROKEN_VERIFY_USES_LIBRARIES := true

# Enforce dark boot animation
PRODUCT_PRODUCT_PROPERTIES += \
    ro.boot.theme=1

# Camera
PRODUCT_PACKAGES += \
    GcamPrebuilt

MODULE_BUILD_FROM_SOURCE := true

# Pixel Launcher
INCLUDE_PIXEL_LAUNCHER := true

# Parts
$(call inherit-product-if-exists, vendor/google/pixelparts/pixelparts.mk)

# Overlay packages for APK-type modules
PRODUCT_PACKAGES += \
    GoogleDocumentsUIOverlay \
    ModuleMetadataGoogleOverlay \
    GoogleExtServicesConfigOverlay \
    CaptivePortalLoginFrameworkOverlay

# Mainline modules - APK type
PRODUCT_PACKAGES += \
    com.google.android.modulemetadata \
    DocumentsUIGoogle \
    CaptivePortalLoginGoogle

PRODUCT_PACKAGES += \
    com.google.android.extservices
PRODUCT_ARTIFACT_PATH_REQUIREMENT_ALLOWED_LIST += \
    system/apex/com.google.android.extservices.apex


PRODUCT_PACKAGES += \
    com.google.android.cellbroadcast
PRODUCT_ARTIFACT_PATH_REQUIREMENT_ALLOWED_LIST += \
    system/apex/com.google.android.cellbroadcast.apex


PRODUCT_PACKAGES += \
    com.google.android.ondevicepersonalization
PRODUCT_ARTIFACT_PATH_REQUIREMENT_ALLOWED_LIST += \
    system/apex/com.google.android.ondevicepersonalization.apex

# sysconfig files
PRODUCT_COPY_FILES += \
    vendor/partner_modules/build/google-staged-installer-whitelist.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/google-staged-installer-whitelist.xml \

PRODUCT_ARTIFACT_PATH_REQUIREMENT_ALLOWED_LIST += \
    system/priv-app/DocumentsUIGoogle/DocumentsUIGoogle.apk \
    system/app/CaptivePortalLoginGoogle/CaptivePortalLoginGoogle.apk \
    system/etc/permissions/GoogleDocumentsUI_permissions.xml \

$(call inherit-product, device/google/crosshatch/BoardConfig-vendor.mk)
