#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from devonf device
$(call inherit-product, device/motorola/devonf/device.mk)

PRODUCT_DEVICE := devonf
PRODUCT_NAME := omni_devonf
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g73 5G
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="devonf_g_vext-user 12 T1TN33.14-63-2 dc5e1 release-keys"

BUILD_FINGERPRINT := motorola/devonf_g_vext/devonf:12/T1TN33.14-63-2/dc5e1:user/release-keys
