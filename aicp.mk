﻿#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit device configuration
$(call inherit-product, device/huawei/hi6250/device.mk)

# Inherit some common AICP stuff.
$(call inherit-product, vendor/aicp/configs/common.mk)

# Inherit telephony stuff
$(call inherit-product, vendor/aicp/configs/telephony.mk)

# overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Device identifier
PRODUCT_DEVICE := hi6250
PRODUCT_NAME := aicp_hi6250
PRODUCT_BRAND := huawei
PRODUCT_MODEL := hi6250
PRODUCT_MANUFACTURER := huawei

PRODUCT_PACKAGES += \
	Snap \
	mkyaffs2image \
	mkuserimg.sh

ADDITIONAL_DEFAULT_PROPERTIES += \
	ro.zygote=zygote64_32 \
	ro.secure=0 \
	ro.adb.secure=0 \
	sys.usb.configfs=1 \
	sys.usb.controller=hisi-usb-otg

# recovery init rc
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/recovery/init.recovery.device.rc:root/init.recovery.device.rc

# recovery checks
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/recovery/stock-check.sh:install/bin/stock-check.sh \
	$(LOCAL_PATH)/recovery/finalize.sh:install/bin/finalize.sh \
	$(LOCAL_PATH)/recovery/data-formatter.sh:install/bin/data-formatter.sh

# AICP Device Maintainers
PRODUCT_BUILD_PROP_OVERRIDES += \
	DEVICE_MAINTAINERS="null"

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080
-include vendor/aicp/configs/bootanimation.mk