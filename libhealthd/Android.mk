# Copyright 2013 The Android Open Source Project
# Copyright 2015-2016 The CyanogenMod Project

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := healthd_board_fusion3.cpp
LOCAL_MODULE := libhealthd.fusion3
LOCAL_C_INCLUDES := system/core/healthd
LOCAL_CFLAGS := -Werror

ifneq ($(SECONDARY_BACKLIGHT_PATH),)
    LOCAL_CFLAGS += -DHEALTHD_SECONDARY_BACKLIGHT_PATH
endif

include $(BUILD_STATIC_LIBRARY)
