#$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, vendor/omni/config/common.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

PRODUCT_COPY_FILES := \
    device/zte/v0820/prebuilt/kernel:kernel \
    bionic/libc/zoneinfo/tzdata:recovery/root/system/usr/share/zoneinfo/tzdata

PRODUCT_RELEASE_NAME := ZTE
PRODUCT_NAME := omni_v0820
PRODUCT_DEVICE := v0820
PRODUCT_BRAND := ZTE
PRODUCT_MODEL := ZTE_BLADE_V0820
PRODUCT_MANUFACTURER := ZTE
