#
# Copyright (C) 2018-2021 Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit common products
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configurations
$(call inherit-product, device/xiaomi/vayu/device.mk)

# Inherit common EverestOs configurations
$(call inherit-product, vendor/everest/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_CALL_RECORDING := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true

# EverestOs Settings
EVEREST_BUILD_TYPE := UNOFFICIAL
EVEREST_MAINTAINER := Spacemk × °•GЖC2356•°
TARGET_SUPPORTS_BLUR := true
TARGET_HAS_UDFPS := true
WITH_GAPPS := true
TARGET_INCLUDE_PIXEL_LAUNCHER := true

# Boot Animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

PRODUCT_NAME := everest_vayu
PRODUCT_DEVICE := vayu
PRODUCT_BRAND := POCO
PRODUCT_MODEL := Poco X3 Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vayu_global-user 13 TKQ1.221013.002 V14.0.1.0.TJUMIXM release-keys" \
    PRODUCT_NAME=vayu_global \
    PRODUCT_MODEL=M2102J20SG

BUILD_FINGERPRINT := Xiaomi/vayu_global/vayu:13/TKQ1.221013.002/V14.0.1.0.TJUMIXM:user/release-keys
