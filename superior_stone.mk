#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Superior stuff.
$(call inherit-product, vendor/superior/config/common.mk)

# Inherit from stone device
$(call inherit-product, device/xiaomi/stone/device.mk)

# Device props
TARGET_SUPPORTS_BLUR := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_FACE_UNLOCK_SUPPORTED := true

# Charging Animation
TARGET_INCLUDE_PIXEL_CHARGER := true

# Maintainer
PRODUCT_SYSTEM_PROPERTIES += \
     ro.spos.maintainer=Dr.Opto

#Superior stuff
TARGET_INCLUDE_MATLOG := false
USE_MOTO_CALCULATOR := true
USE_MOTO_CLOCK := true
SYSTEM_OPTIMIZE_JAVA := true
SYSTEMUI_OPTIMIZE_JAVA := true
BUILD_WITH_GAPPS := true
TARGET_CORE_GMS := true
USE_QUICKPIC := true
USE_DUCKDUCKGO := false

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := superior_stone
PRODUCT_DEVICE := stone
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := holi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="moonstone-user 13 TKQ1.221114.001 V14.0.5.0.TMPMIXM release-keys"

BUILD_FINGERPRINT := POCO/moonstone_p_global/moonstone:13/TKQ1.221114.001/V14.0.5.0.TMPMIXM:user/release-keys
