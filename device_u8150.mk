# Copyright (C) 2011 The Android Open Source Project
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

DEVICE_PACKAGE_OVERLAYS += device/huawei/u8150/overlay

PRODUCT_PACKAGES += \
    libRS \
    hwprops \
    rzscontrol \
    Gallery \
    copybit.u8150 \
    gps.u8150 \
    lights.msm7k

# Vold config
PRODUCT_COPY_FILES += \
    device/huawei/u8150/prebuilt/etc/vold.fstab:system/etc/vold.fstab

# Hardware permissions
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Init files
PRODUCT_COPY_FILES += \
    device/huawei/u8150/prebuilt/init.u8150.rc:root/init.u8150.rc \
    device/huawei/u8150/prebuilt/ueventd.u8150.rc:root/ueventd.u8150.rc

# OEM logo and boot splash
PRODUCT_COPY_FILES += \
    device/huawei/u8150/prebuilt/initlogo.rle:root/initlogo.rle \
    device/huawei/u8150/prebuilt/installlogo:system/media/installlogo \
    device/huawei/u8150/prebuilt/media/oemlogo.mbn:system/media/oemlogo.mbn

# Wi-Fi releated
PRODUCT_COPY_FILES += \
    device/huawei/u8150/prebuilt/etc/firmware/fw_bcm4319_apsta.bin:system/etc/firmware/fw_bcm4319_apsta.bin \
    device/huawei/u8150/prebuilt/etc/firmware/fw_bcm4319.bin:system/etc/firmware/fw_bcm4319.bin \
    device/huawei/u8150/prebuilt/etc/firmware/nvram.txt:system/etc/firmware/nvram.txt \
    device/huawei/u8150/prebuilt/lib/modules/bcm4319.ko:system/lib/modules/bcm4319.ko \
    device/huawei/u8150/prebuilt/lib/modules/ramzswap.ko:system/lib/modules/ramzswap.ko \
    device/huawei/u8150/prebuilt/etc/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/huawei/u8150/prebuilt/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

# Bluetooth
PRODUCT_COPY_FILES += \
    device/huawei/u8150/prebuilt/bin/brcm_patchram_plus:system/bin/brcm_patchram_plus

# Other
PRODUCT_COPY_FILES += \
    device/huawei/u8150/prebuilt/lib/egl/egl.cfg:system/lib/egl/egl.cfg \
    device/huawei/u8150/prebuilt/etc/sysctl.conf:system/etc/sysctl.conf

PRODUCT_COPY_FILES += device/huawei/u8150/prebuilt/kernel:kernel

$(call inherit-product-if-exists, vendor/huawei/u8150/u8150-vendor.mk)

$(call inherit-product, build/target/product/full_base.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

# Broadcom FM radio
$(call inherit-product, vendor/cyanogen/products/bcm_fm_radio.mk)

# LDPI assets
PRODUCT_LOCALES += ldpi mdpi

PRODUCT_NAME := huawei_u8150
PRODUCT_DEVICE := u8150
PRODUCT_MODEL := U8150
PRODUCT_BRAND := huawei
PRODUCT_MANUFACTURER := huawei
