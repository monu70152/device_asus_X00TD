#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit some common ArcaneOS stuff
$(call inherit-product, vendor/aosp/common.mk)

# Inherit from X00TD device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosp_X00TD
PRODUCT_DEVICE := X00TD
PRODUCT_BRAND := asus
PRODUCT_MODEL := Zenfone Max Pro M1
PRODUCT_MANUFACTURER := asus

# Aosp Stuff 
TARGET_BOOT_ANIMATION_RES := 1080
ARCANA_DEVICE := X00TD
TARGET_BUILD_GRAPHENEOS_CAMERA=true
COPY_APN_SYSTEM := true
TARGET_GAPPS_ARCH := arm64
WITH_GAPPS := true

PRODUCT_GMS_CLIENTID_BASE := android-asus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=ASUS_X00T \
    PRODUCT_NAME=WW_X00T \
    PRIVATE_BUILD_DESC="raven-user 12 SP2A.220405.003 8210211 release-keys"

# Build fingerprint
BUILD_FINGERPRINT := "google/raven/raven:12/SP2A.220405.003/8210211:user/release-keys"

# MAINTAINER STUFF
ARCANA_MAINTAINER := 🥰Monu_Ohlyan🥰
ARCANA_OFFICIAL := false
