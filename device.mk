#
# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product, vendor/wingtech/wt88047/wt88047-vendor.mk)

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Include package config fragments
include $(LOCAL_PATH)/product/*.mk

# Inherit the rest from msm8916-common
$(call inherit-product, device/cyanogen/msm8916-common/msm8916.mk)

#This keeps time correct across reboots
PRODUCT_PACKAGES += timekeep

# Ubuntu Overlay Files
#
PRODUCT_COPY_FILES += \
    device/wingtech/wt88047/ubuntu/70-android.rules:system/halium/lib/udev/rules.d/70-android.rules \
    device/wingtech/wt88047/ubuntu/android.conf:system/halium/etc/ubuntu-touch-session.d/android.conf \
    device/wingtech/wt88047/ubuntu/adbd.conf:system/halium/etc/init/adbd.conf \
    device/wingtech/wt88047/ubuntu/adbd.conf:system/halium/etc/init/android-tools-adb.conf \
    device/wingtech/wt88047/ubuntu/config.xml:system/halium/usr/share/powerd/device_configs/config-default.xml \
    device/wingtech/wt88047/ubuntu/config.xml:system/halium/usr/share/powerd/device_configs/config-wt88047.xml \
    device/wingtech/wt88047/ubuntu/ofono.override:system/halium/etc/init/ofono.override
