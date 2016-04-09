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

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml

# Root
PRODUCT_PACKAGES += \
    fstab.mt6735 \
    init.mt6735.rc \
    init.mt6735.modem.rc \
    init.mt6735.usb.rc \
    ueventd.mt6735.rc

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.r_submix.default \
    tinymix \
    libfs_mgr

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio_device.xml:system/etc/audio_device.xml

# GPS
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/agps_profiles_conf2.xml:system/etc/agps_profiles_conf2.xml

# Power
PRODUCT_PACKAGES += \
    power.default \
    power.mt6735

# Radio dependencies
PRODUCT_PACKAGES += \
    muxreport \
    terservice

# Wifi
PRODUCT_PACKAGES += \
    libwpa_client \
    hostapd \
    dhcpcd.conf \
    wpa_supplicant \
    wpa_supplicant.conf \
    wpa_supplicant_overlay.conf \
    p2p_supplicant_overlay.conf

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/WMT_SOC.cfg:system/etc/firmware/WMT_SOC.cfg

# Charger Mode
PRODUCT_PACKAGES += \
    charger_res_images

# Mediatek logging service
PRODUCT_PACKAGES += \
    MTKLogger \
    emdlogger1 \
    mdlogger \
    mobile_log_d \
    netdiag

# Key Layouts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayouts/ACCDET.kl:system/usr/keylayouts/ACCDET.kl \
    $(LOCAL_PATH)/keylayouts/mtk-kpd.kl:system/usr/keylayouts/mtk-kpd.kl

# Media
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:system/etc/media_codecs_google_video_le.xml \
    $(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media_codecs_mediatek_audio.xml:system/etc/media_codecs_mediatek_audio.xml \
    $(LOCAL_PATH)/configs/media_codecs_mediatek_video.xml:system/etc/media_codecs_mediatek_video.xml \
    $(LOCAL_PATH)/configs/mtk_omx_core.cfg:system/etc/mtk_omx_core.cfg \
    $(LOCAL_PATH)/configs/audio_policy.conf:system/etc/audio_policy.conf

# Build proprietary bits when available
ifneq ($(MTKPATH),)
$(call inherit-product-if-exists, $(MTKPATH)/config/mt6735.mk)
endif
