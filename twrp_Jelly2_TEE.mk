PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherrit common TWRP stuff
$(call inherit-product, vendor/twrp/config/common.mk)
#$(call inherit-product, vendor/twrp/config/gsm.mk)

# Inherit from vendor
$(call inherit-product-if-exists, vendor/Unihertz/Jelly2_TEE/Jelly2_TEE-vendor.mk)

# Files under $(LOCAL_PATH)/recovery/root/ get automatically copied into recovery
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,device/Unihertz/Jelly2/recovery/root,recovery/root)

PRODUCT_NAME := twrp_Jelly2_TEE
PRODUCT_DEVICE := Jelly2_TEE
PRODUCT_BRAND := Unihertz
PRODUCT_MODEL := Jelly2
PRODUCT_MANUFACTURER := Unihertz

PRODUCT_BOARD := g55v71c2k_dfl_tee

# Add fingerprint from Stock ROM build.prop
BUILD_FINGERPRINT := "Unihertz/Jelly2/Jelly2:11/RP1A.200720.011/root.20210722.142613:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=Jelly2_TEE \
    PRODUCT_NAME=Jelly2 \
    PRIVATE_BUILD_DESC="Jelly2-user 11 RP1A.200720.011 root.20210722.142613 release-keys"
