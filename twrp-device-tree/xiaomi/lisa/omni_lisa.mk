#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from lisa device
$(call inherit-product, device/xiaomi/lisa/device.mk)

PRODUCT_DEVICE := lisa
PRODUCT_NAME := omni_lisa
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 2109119DG
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="lisa_global-user 12 RKQ1.211001.001 V13.0.8.0.SKOMIXM release-keys"

BUILD_FINGERPRINT := Xiaomi/lisa_global/lisa:12/RKQ1.211001.001/V13.0.8.0.SKOMIXM:user/release-keys
