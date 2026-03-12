#
# Copyright (C) 2025 Paranoid Android
#
# SPDX-License-Identifier: Apache-2.0
#

ifeq (aospa_asteroids,$(TARGET_PRODUCT))

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from the device configuration.
$(call inherit-product, device/nothing/asteroids/device.mk)

# Inherit from the AOSPA configuration.
$(call inherit-product, vendor/aospa/target/product/aospa-target.mk)

PRODUCT_BRAND := Nothing
PRODUCT_DEVICE := asteroids
PRODUCT_MANUFACTURER := Nothing
PRODUCT_MODEL := A059
PRODUCT_NAME := aospa_asteroids

PRODUCT_GMS_CLIENTID_BASE := android-nothing

# Boot Animation
TARGET_BOOT_ANIMATION_RES := 1080

endif
