# Inherit some common Lineage stuff.
$(call inherit-product, vendor/aim/config/common_full_phone.mk)

$(call inherit-product, device/samsung/ja3gxx/full_ja3gxx.mk)

PRODUCT_NAME := aim_ja3gxx

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=ja3gxx \
    BUILD_FINGERPRINT="samsung/ja3gxx/ja3g:5.0.1/LRX22C/I9500XXUHOG1:user/release-keys" \
    PRIVATE_BUILD_DESC="ja3gxx-user 5.0.1 LRX22C I9500XXUHOG1 release-keys"

# AIM OTA
ifeq ($(AIM_BUILDTYPE),OFFICIAL)
ifneq ($(RECOVERY_VARIANT),twrp)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.ota.romname=AIMROM \
    ro.ota.version=$(shell date -u +"%Y%m%d") \
    ro.aim.maintainer=krasCGQ \
    ro.ota.manifest=https://raw.githubusercontent.com/AIMROM/AIM_OTA/N/ja3gxx.xml
endif
endif
