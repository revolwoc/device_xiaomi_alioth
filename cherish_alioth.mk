# Copyright (C) 2021 The sparkOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common spark stuff.
$(call inherit-product, vendor/cherish/config/common_full_phone.mk)

# Inherit from alioth device
$(call inherit-product, device/xiaomi/alioth/device.mk)

PRODUCT_NAME := cherish_alioth
TARGET_BOOT_ANIMATION_RES := 1080
PRODUCT_DEVICE := alioth
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO F3

TARGET_WITH_MATLOGX := false

TARGET_BUILD_WITH_LTO := true

TARGET_SUPPORTS_QUICK_TAP := true

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

BUILD_FINGERPRINT := POCO/alioth_global/alioth:12/SKQ1.211006.001/V13.0.3.0.SKHMIXM:user/release-keys

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
ro.cherish.maintainer=hungphan2001&revolwoc
CHERISH_BUILD_TYPE := OFFICIAL
