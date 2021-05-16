PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from common device
#$(call inherit-product, device/Unihertz/Jelly2/deviceCommon.mk)

# Another common config inclusion
#$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)

# If you are building from OmniROM's minimal source, Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit from vendor
$(call inherit-product-if-exists, vendor/Unihertz/Jelly2_TEE/Jelly2_TEE-vendor.mk)

# Files under $(LOCAL_PATH)/recovery/root/ get automatically copied into recovery
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,device/Unihertz/Jelly2/recovery/root,recovery/root)

PRODUCT_NAME := omni_Jelly2_TEE
PRODUCT_DEVICE := Jelly2_TEE
PRODUCT_BRAND := Unihertz
PRODUCT_MODEL := Jelly2
PRODUCT_MANUFACTURER := Unihertz

PRODUCT_BOARD := g55v71c2k_dfl_tee

# Add fingerprint from Stock ROM build.prop
BUILD_FINGERPRINT := "Unihertz/Jelly2/Jelly2:10/QP1A.190711.020/root.20200617.180704:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=Jelly2_TEE \
    PRODUCT_NAME=Jelly2 \
    PRIVATE_BUILD_DESC="Jelly2-user 10 QP1A.190711.020 root.20200617.180704 release-keys"
