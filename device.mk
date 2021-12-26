#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Dynamic Partitions
BOARD_DYNAMIC_PARTITION_ENABLE := true
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Include GSI
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# API level
BOARD_SHIPPING_API_LEVEL := 29

# Audio
PRODUCT_PACKAGES += \
    libvolumelistener

# Fastboot
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    fastbootd

# Enable incremental FS feature
PRODUCT_PROPERTY_OVERRIDES += \
    ro.incremental.enable=1

# Manufacturer
PRODUCT_PROPERTY_OVERRIDES += \
    ro.soc.manufacturer=QTI

# RRO configuration
TARGET_USES_RRO := true

# Kernel configurations
TARGET_KERNEL_VERSION := 4.19
KERNEL_LLVM_SUPPORT := true
KERNEL_SD_LLVM_SUPPORT := true

# QSPM
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.qspm.enable=true

# Treble flag
PRODUCT_FULL_TREBLE_OVERRIDE := true
PRODUCT_COMPATIBLE_PROPERTY_OVERRIDE := true
BOARD_VNDK_VERSION := current

# Telephony
PRODUCT_PACKAGES += \
    telephony-ext

PRODUCT_BOOT_JARS += \
    telephony-ext

# Vendor property to enable advanced network scanning
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.radio.enableadvancedscan=true

# Property to disable ZSL mode
PRODUCT_PROPERTY_OVERRIDES += \
    camera.disable_zsl_mode=1

PRODUCT_PROPERTY_OVERRIDES += \
    ro.crypto.volume.filenames_mode = "aes-256-cts" \
    ro.crypto.allow_encrypt_override = true

# Inherit the proprietary files
$(call inherit-product, vendor/xiaomi/juice/juice-vendor.mk)