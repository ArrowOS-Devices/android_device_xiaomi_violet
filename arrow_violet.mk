#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Inherit from violet device
$(call inherit-product, device/xiaomi/violet/device.mk)

# Inherit some common ArrowOS stuff.
TARGET_BOOT_ANIMATION_RES := 1080
$(call inherit-product, vendor/arrow/config/common.mk)

# Device identifier. This must come after all inclusions.
DEVICE_MAINTAINER := Abhay Kshatriya
PRODUCT_NAME := arrow_violet
PRODUCT_DEVICE := violet
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 7 Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="violet-user 9 PKQ1.181203.001 V10.3.9.0.PFHINXM release-keys" \
    PRODUCT_NAME="violet" \
    TARGET_DEVICE="violet"

BUILD_FINGERPRINT := "google/sunfish/sunfish:11/RP1A.200720.010/6722941:user/release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# for Launcher3
TARGET_EXCLUDE_LAWNCHAIR := true
