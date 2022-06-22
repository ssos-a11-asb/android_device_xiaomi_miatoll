#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common ShapeShiftOS stuff.
$(call inherit-product, vendor/ssos/config/common.mk)

# Inherit from miatoll device
$(call inherit-product, device/xiaomi/miatoll/device.mk)

# Inherit Google Camera
$(call inherit-product, vendor/xiaomi/miatoll-gcam/miatoll-gcam-vendor.mk)

PRODUCT_NAME := ssos_miatoll
PRODUCT_DEVICE := miatoll
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := SM6250

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_BOOT_ANIMATION_RES := 1080
TARGET_INCLUDE_GOOGLE_RECORDER := true
TARGET_INCLUDE_STOCK_ARCORE := true

PRODUCT_PRODUCT_PROPERTIES += \
  ro.ssos.cpu=SD720G

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="miatoll_global-user 11 RKQ1.200826.002 V12.5.5.0.RJWMIXM release-keys"

BUILD_FINGERPRINT := Redmi/miatoll_global/miatoll:11/RKQ1.200826.002/V12.5.5.0.RJWMIXM:user/release-keys
