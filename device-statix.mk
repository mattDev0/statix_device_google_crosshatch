#
# Copyright (C) 2022 Raphielscape LLC.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#	  http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    vendor/qcom/opensource/commonsys-intf/display \
    vendor/qcom/opensource/display

# IMS/GMS Support Declaration
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.hardware.telephony.gsm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.gsm.xml \
	frameworks/native/data/etc/android.hardware.telephony.ims.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.ims.xml \
	frameworks/native/data/etc/android.hardware.telephony.ims.singlereg.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.ims.singlereg.xml

# IMS System Service
PRODUCT_PACKAGES += \
	ImsServiceEntitlement \
	Iwlan

# EUICC
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.euicc.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/android.hardware.telephony.euicc.xml

# Display
PRODUCT_PACKAGES += \
    vendor.display.config@1.0 \
    vendor.display.config@1.1 \
    vendor.display.config@1.2 \
    vendor.display.config@1.3 \
    vendor.display.config@1.4 \
    vendor.display.config@1.5 \
    vendor.display.config@1.6 \
    vendor.display.config@1.7 \
    vendor.display.config@1.8

# Bluetooth
PRODUCT_PACKAGES += \
    android.hardware.bluetooth@1.0.vendor \
    android.hardware.bluetooth@1.1.vendor \
    hardware.google.bluetooth.bt_channel_avoidance@1.0.vendor \
    hardware.google.bluetooth.sar@1.0.vendor \
    vendor.qti.hardware.bluetooth_audio@2.0.vendor

# Camera
PRODUCT_PACKAGES += \
    libcamera2ndk_vendor

# CHRE
PRODUCT_PACKAGES += \
    chre

# Codec2
PRODUCT_PACKAGES += \
    android.hardware.media.c2@1.0.vendor \
    libavservices_minijail.vendor \
    libcodec2_hidl@1.0.vendor \
    libcodec2_vndk.vendor \
    libmedia_ecoservice.vendor \
    libstagefright_bufferpool@2.0.1.vendor

# Confirmation UI
PRODUCT_PACKAGES += \
    android.hardware.confirmationui@1.0.vendor:64 \
    libteeui_hal_support.vendor:64

# Display
PRODUCT_PACKAGES += \
    libdisplayconfig.qti \
    vendor.display.config@2.0.vendor \
    vendor.qti.hardware.display.mapper@1.1.vendor \
    vendor.qti.hardware.display.mapper@2.0.vendor

# GPS
PRODUCT_PACKAGES += \
    flp.conf

# HIDL
PRODUCT_PACKAGES += \
    libhwbinder.vendor

# Identity credential
PRODUCT_PACKAGES += \
    android.hardware.identity-support-lib.vendor:64 \
    android.hardware.identity_credential.xml

# Json
PRODUCT_PACKAGES += \
    libjson

# Nos
PRODUCT_PACKAGES += \
    libnos:64 \
    libnosprotos:64 \
    libnos_client_citadel:64 \
    libnos_datagram:64 \
    libnos_datagram_citadel:64 \
    libnos_transport:64 \
    nos_app_avb:64 \
    nos_app_identity:64 \
    nos_app_keymaster:64 \
    nos_app_weaver:64

# Protobuf
PRODUCT_PACKAGES += \
    libprotobuf-cpp-full-vendorcompat

# Sensors
PRODUCT_PACKAGES += \
    libsensorndkbridge

# Sensor listener
PRODUCT_PACKAGES += \
    lib_sensor_listener:64

# Sound trigger
PRODUCT_PACKAGES += \
    sound_trigger.primary.msmnile

# Text classifier
PRODUCT_PACKAGES += \
    libtextclassifier_hash.vendor:64

# Tinycompress
PRODUCT_PACKAGES += \
    libtinycompress

# VNDK FWK detect
PRODUCT_PACKAGES += \
    libqti_vndfwk_detect.vendor \
    libvndfwk_detect_jni.qti.vendor

# Wi-Fi
PRODUCT_PACKAGES += \
    libwifi-hal:64 \
    libwifi-hal-qcom

# Interfaces
PRODUCT_PACKAGES += \
    android.frameworks.sensorservice@1.0.vendor \
    android.hardware.authsecret@1.0.vendor \
    android.hardware.biometrics.face@1.0.vendor:64 \
    android.hardware.camera.common@1.0.vendor:64 \
    android.hardware.camera.device@1.0.vendor:64 \
    android.hardware.camera.device@3.2.vendor:64 \
    android.hardware.camera.provider@2.4.vendor:64 \
    android.hardware.gatekeeper@1.0.vendor \
    android.hardware.input.common-V1-ndk.vendor:64 \
    android.hardware.input.processor-V1-ndk.vendor:64 \
    android.hardware.keymaster@3.0.vendor \
    android.hardware.keymaster@4.0.vendor \
    android.hardware.keymaster@4.1.vendor \
    android.hardware.neuralnetworks@1.0.vendor:64 \
    android.hardware.neuralnetworks@1.1.vendor:64 \
    android.hardware.neuralnetworks@1.2.vendor:64 \
    android.hardware.neuralnetworks@1.3.vendor:64 \
    android.hardware.oemlock@1.0.vendor:64 \
    android.hardware.power-V1-ndk.vendor \
    android.hardware.radio.config@1.0.vendor:64 \
    android.hardware.radio.config@1.1.vendor:64 \
    android.hardware.radio.config@1.2.vendor:64 \
    android.hardware.radio.deprecated@1.0.vendor:64 \
    android.hardware.radio@1.2.vendor:64 \
    android.hardware.radio@1.3.vendor:64 \
    android.hardware.radio@1.4.vendor:64 \
    android.hardware.radio@1.5.vendor:64 \
    android.hardware.secure_element@1.1.vendor:64 \
    android.hardware.secure_element@1.2.vendor:64 \
    android.hardware.sensors@1.0.vendor \
    android.hardware.sensors@2.0-ScopedWakelock.vendor \
    android.hardware.sensors@2.0.vendor \
    android.hardware.sensors@2.1.vendor \
    android.hardware.weaver@1.0.vendor:64 \
    android.hardware.wifi@1.1.vendor:64 \
    android.hardware.wifi@1.2.vendor:64 \
    android.hardware.wifi@1.3.vendor:64 \
    android.hardware.wifi@1.4.vendor:64 \
    android.hardware.wifi@1.5.vendor:64 \
    android.hardware.wifi@1.6.vendor:64 \
    android.system.net.netd@1.1.vendor:64

# Force voLTE/voWIFI
PRODUCT_PRODUCT_PROPERTIES += \
    persist.dbg.volte_avail_ovr=1 \
    persist.dbg.wfc_avail_ovr=1

# UWB Calibration
PRODUCT_PROPERTY_OVERRIDES += \
	ro.vendor.uwb.calibration.calibrationpaths=/vendor/etc/calib_paths

# CameraX extention
PRODUCT_PRODUCT_PROPERTIES += \
	ro.vendor.camera.extensions.package=com.google.android.apps.camera.services \
	ro.vendor.camera.extensions.service=com.google.android.apps.camera.services.extensions.service.PixelExtensions

# Include Flipendo/TurboAdapter sepolicy on AOSP builds
ifneq (,$(filter aosp_%,$(TARGET_PRODUCT)))
BOARD_VENDOR_SEPOLICY_DIRS += \
	hardware/google/pixel-sepolicy/flipendo \
	hardware/google/pixel-sepolicy/turbo_adapter
endif

# Google Battery/Toshay Sepolicy
BOARD_VENDOR_SEPOLICY_DIRS += \
	hardware/google/pixel-sepolicy/googlebattery \
	hardware/google/pixel-sepolicy/input

# Pixel Launcher
INCLUDE_PIXEL_LAUNCHER := true

# Parts
$(call inherit-product-if-exists, vendor/google/pixelparts/pixelparts.mk)