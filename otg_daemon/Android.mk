# Copyright 2017 Jonathan Jason Dennis [Meticulus]
#			theonejohnnyd@gmail.com
#
# Android.mk for OTG Daemon
#
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_STATIC_LIBRARIES := libcutils
LOCAL_SRC_FILES := main.c
LOCAL_MODULE := devotgd
LOCAL_FORCE_STATIC_EXECUTABLE := true
LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT_SBIN)
LOCAL_UNSTRIPPED_PATH := $(TARGET_ROOT_OUT_SBIN_UNSTRIPPED)
include $(BUILD_EXECUTABLE)

