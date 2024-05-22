#
# Copyright (C) 2023 ReloadedOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from lime device
$(call inherit-product, device/xiaomi/juice/device.mk)

# Inherit common ReloadedOS configuration
$(call inherit-product, vendor/reloaded/config/product.mk)

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := juice
PRODUCT_DEVICE := juice
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := sm6115
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Reloaded Flags
VANILLA_BUILD := true

PRODUCT_SYSTEM_EXT_PROPERTIES += \
    ro.reloaded.device_maintainer=scaledzdn
