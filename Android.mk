ifneq ($(filter Atom_L_TEE ,$(TARGET_DEVICE)),)

LOCAL_PATH := device/Unihertz/Atom_L_TEE

include $(call all-makefiles-under,$(LOCAL_PATH))

endif
