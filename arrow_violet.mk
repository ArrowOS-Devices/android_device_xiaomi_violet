#
# Copyright (C) 2019-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from violet device
$(call inherit-product, device/xiaomi/violet/device.mk)

# Inherit some common ArrowOS stuff.
$(call inherit-product, vendor/arrow/config/common.mk)

TARGET_BOOT_ANIMATION_RES := 1080
TARGET_GAPPS_ARCH := arm64

# Device identifier. This must come after all inclusions.
DEVICE_MAINTAINER := Aftab Ashrafi
PRODUCT_NAME := arrow_violet
PRODUCT_DEVICE := violet
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 7 Pro
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT := "google/coral/coral:11/RP1A.201105.002/6869500:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="violet-user 9 PKQ1.181203.001 V11.0.8.0.PFHINXM release-keys" \
    PRODUCT_NAME="violet"
    
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=google/coral/coral:11/RP1A.201105.002/6869500:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
