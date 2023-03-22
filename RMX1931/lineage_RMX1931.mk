#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from RMX1931 device
$(call inherit-product, device/realme/RMX1931/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_RMX1931
PRODUCT_DEVICE := RMX1931
PRODUCT_MANUFACTURER := Realme
PRODUCT_MODEL := X2 PRO
PRODUCT_BRAND := Realme

PRODUCT_SYSTEM_NAME := Realme X2 Pro
PRODUCT_SYSTEM_DEVICE := Realme X2 Pro

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="msmnile-user 11 RKQ1.200928.002 1631956620804 release-keys"
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := qti/msmnile/msmnile:11/RKQ1.200928.002/1631956620804:user/release-keys