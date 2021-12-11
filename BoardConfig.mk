# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

-include device/Unihertz/Jelly2/BoardConfigCommon.mk

DEVICE_REGION_PATH := device/Unihertz/Jelly2_TEE

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := g55v71c2k_dfl_tee

# Kernel
TARGET_PREBUILT_KERNEL := $(DEVICE_REGION_PATH)/prebuilt/Image.gz
TARGET_PREBUILT_RECOVERY_KERNEL := $(LOCAL_PATH)/prebuilt/Image.gz
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_REGION_PATH)/prebuilt/dtbo.img
BOARD_PREBUILT_DTBIMAGE_DIR := $(DEVICE_REGION_PATH)/prebuilt/dtb

BOARD_MKBOOTIMG_ARGS += --recovery_dtbo $(BOARD_PREBUILT_DTBOIMAGE)
