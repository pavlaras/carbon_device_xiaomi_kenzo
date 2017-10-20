#
# Copyright (C) 2015 The Android Open-Source Project
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

DEVICE_PACKAGE_OVERLAYS := $(LOCAL_PATH)/overlay

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi
# A list of dpis to select prebuilt apk, in precedence order.
PRODUCT_AAPT_PREBUILT_DPI := xxhdpi xhdpi hdpi

# kernel
#PRODUCT_PACKAGES += \
#    kernel

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom \
    vold.fstab \
    init.class_main.sh \
    init.qcom.power.rc \
    init.qcom.qseecomd.sh \
    init.qcom.zram.sh \
    init.qcom.rc \
    init.qcom.sh \
    init.qcom.syspart_fixup.sh \
    init.qcom.usb.rc \
    init.qcom.usb.sh \
    init.qcom.bt.sh \
    init.qcom.fm.sh \
    init.target.rc \
    ueventd.qcom.rc

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.full.xml:system/etc/permissions/android.hardware.camera.full.xml \
    frameworks/native/data/etc/android.hardware.camera.raw.xml:system/etc/permissions/android.hardware.camera.raw.xml \
    frameworks/native/data/etc/android.hardware.consumerir.xml:system/etc/permissions/android.hardware.consumerir.xml \
    frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:system/etc/permissions/android.hardware.fingerprint.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:system/etc/permissions/android.hardware.opengles.aep.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.vr.high_performance.xml:system/etc/permissions/android.hardware.vr.high_performance.xml \
    frameworks/native/data/etc/android.hardware.vulkan.level-0.xml:system/etc/permissions/android.hardware.vulkan.level.xml \
    frameworks/native/data/etc/android.hardware.vulkan.version-1_0_3.xml:system/etc/permissions/android.hardware.vulkan.version.xml \
    frameworks/native/data/etc/android.software.midi.xml:system/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# ANT+ stack
PRODUCT_PACKAGES += \
    AntHalService \
    libantradio \
    antradio_app

PRODUCT_COPY_FILES += \
    external/ant-wireless/antradio-library/com.dsi.ant.antradio_library.xml:system/etc/permissions/com.dsi.ant.antradio_library.xml

# Audio configuration file
PRODUCT_COPY_FILES += \
    device/xiaomi/kenzo/audio/audio_output_policy.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio_output_policy.conf \
    device/xiaomi/kenzo/audio/audio_effects.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.conf \
    device/xiaomi/kenzo/audio/mixer_paths_mtp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_mtp.xml \
    device/xiaomi/kenzo/audio/mixer_paths_wcd9326.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_wcd9326.xml \
    device/xiaomi/kenzo/audio/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml \
    device/xiaomi/kenzo/audio/audio_platform_info_extcodec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_extcodec.xml \
    device/xiaomi/kenzo/audio/sound_trigger_mixer_paths_wcd9335.xml:system/etc/sound_trigger_mixer_paths_wcd9335.xml \
    device/xiaomi/kenzo/audio/sound_trigger_platform_info.xml:system/etc/sound_trigger_platform_info.xml \
    device/xiaomi/kenzo/audio/aanc_tuning_mixer_wcd9335.txt:system/etc/aanc_tuning_mixer_wcd9335.txt


PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/a2dp_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml \
    frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usb_audio_policy_configuration.xml

# Audio ACDB stuff
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/acdbdata/MTP/MTP_Speaker_cal.acdb:system/etc/acdbdata/MTP/MTP_Speaker_cal.acdb \
    $(LOCAL_PATH)/audio/acdbdata/MTP/MTP_Hdmi_cal.acdb:system/etc/acdbdata/MTP/MTP_Hdmi_cal.acdb \
    $(LOCAL_PATH)/audio/acdbdata/MTP/MTP_Bluetooth_cal.acdb:system/etc/acdbdata/MTP/MTP_Bluetooth_cal.acdb \
    $(LOCAL_PATH)/audio/acdbdata/MTP/MTP_General_cal.acdb:system/etc/acdbdata/MTP/MTP_General_cal.acdb \
    $(LOCAL_PATH)/audio/acdbdata/MTP/MTP_Global_cal.acdb:system/etc/acdbdata/MTP/MTP_Global_cal.acdb \
    $(LOCAL_PATH)/audio/acdbdata/MTP/MTP_Headset_cal.acdb:system/etc/acdbdata/MTP/MTP_Headset_cal.acdb \
    $(LOCAL_PATH)/audio/acdbdata/MTP/MTP_Handset_cal.acdb:system/etc/acdbdata/MTP/MTP_Handset_cal.acdb \
    $(LOCAL_PATH)/audio/acdbdata/QRD/QRD_Speaker_cal.acdb:system/etc/acdbdata/QRD/QRD_Speaker_cal.acdb \
    $(LOCAL_PATH)/audio/acdbdata/QRD/QRD_Hdmi_cal.acdb:system/etc/acdbdata/QRD/QRD_Hdmi_cal.acdb \
    $(LOCAL_PATH)/audio/acdbdata/QRD/QRD_Bluetooth_cal.acdb:system/etc/acdbdata/QRD/QRD_Bluetooth_cal.acdb \
    $(LOCAL_PATH)/audio/acdbdata/QRD/QRD_General_cal.acdb:system/etc/acdbdata/QRD/QRD_General_cal.acdb \
    $(LOCAL_PATH)/audio/acdbdata/QRD/QRD_Global_cal.acdb:system/etc/acdbdata/QRD/QRD_Global_cal.acdb \
    $(LOCAL_PATH)/audio/acdbdata/QRD/QRD_Headset_cal.acdb:system/etc/acdbdata/QRD/QRD_Headset_cal.acdb \
    $(LOCAL_PATH)/audio/acdbdata/QRD/QRD_Handset_cal.acdb:system/etc/acdbdata/QRD/QRD_Handset_cal.acdb \
    $(LOCAL_PATH)/audio/acdbdata/MTP/msm8952-tomtom-snd-card/MTP_WCD9330_Handset_cal.acdb:system/etc/acdbdata/MTP/msm8952-tomtom-snd-card/MTP_WCD9330_Handset_cal.acdb \
    $(LOCAL_PATH)/audio/acdbdata/MTP/msm8952-tomtom-snd-card/MTP_WCD9330_Bluetooth_cal.acdb:system/etc/acdbdata/MTP/msm8952-tomtom-snd-card/MTP_WCD9330_Bluetooth_cal.acdb \
    $(LOCAL_PATH)/audio/acdbdata/MTP/msm8952-tomtom-snd-card/MTP_WCD9330_Hdmi_cal.acdb:system/etc/acdbdata/MTP/msm8952-tomtom-snd-card/MTP_WCD9330_Hdmi_cal.acdb \
    $(LOCAL_PATH)/audio/acdbdata/MTP/msm8952-tomtom-snd-card/MTP_WCD9330_Headset_cal.acdb:system/etc/acdbdata/MTP/msm8952-tomtom-snd-card/MTP_WCD9330_Headset_cal.acdb \
    $(LOCAL_PATH)/audio/acdbdata/MTP/msm8952-tomtom-snd-card/MTP_WCD9330_General_cal.acdb:system/etc/acdbdata/MTP/msm8952-tomtom-snd-card/MTP_WCD9330_General_cal.acdb \
    $(LOCAL_PATH)/audio/acdbdata/MTP/msm8952-tomtom-snd-card/MTP_WCD9330_Global_cal.acdb:system/etc/acdbdata/MTP/msm8952-tomtom-snd-card/MTP_WCD9330_Global_cal.acdb \
    $(LOCAL_PATH)/audio/acdbdata/MTP/msm8952-tomtom-snd-card/MTP_WCD9330_Speaker_cal.acdb:system/etc/acdbdata/MTP/msm8952-tomtom-snd-card/MTP_WCD9330_Speaker_cal.acdb \
    $(LOCAL_PATH)/audio/acdbdata/MTP/msm8976-tasha-snd-card/MTP_WCD9335_Handset_cal.acdb:system/etc/acdbdata/MTP/msm8976-tasha-snd-card/MTP_WCD9335_Handset_cal.acdb \
    $(LOCAL_PATH)/audio/acdbdata/MTP/msm8976-tasha-snd-card/MTP_WCD9335_Bluetooth_cal.acdb:system/etc/acdbdata/MTP/msm8976-tasha-snd-card/MTP_WCD9335_Bluetooth_cal.acdb \
    $(LOCAL_PATH)/audio/acdbdata/MTP/msm8976-tasha-snd-card/MTP_WCD9335_Hdmi_cal.acdb:system/etc/acdbdata/MTP/msm8976-tasha-snd-card/MTP_WCD9335_Hdmi_cal.acdb \
    $(LOCAL_PATH)/audio/acdbdata/MTP/msm8976-tasha-snd-card/MTP_WCD9335_Headset_cal.acdb:system/etc/acdbdata/MTP/msm8976-tasha-snd-card/MTP_WCD9335_Headset_cal.acdb \
    $(LOCAL_PATH)/audio/acdbdata/MTP/msm8976-tasha-snd-card/MTP_WCD9335_General_cal.acdb:system/etc/acdbdata/MTP/msm8976-tasha-snd-card/MTP_WCD9335_General_cal.acdb \
    $(LOCAL_PATH)/audio/acdbdata/MTP/msm8976-tasha-snd-card/MTP_WCD9335_Global_cal.acdb:system/etc/acdbdata/MTP/msm8976-tasha-snd-card/MTP_WCD9335_Global_cal.acdb \
    $(LOCAL_PATH)/audio/acdbdata/MTP/msm8976-tasha-snd-card/MTP_WCD9335_Speaker_cal.acdb:system/etc/acdbdata/MTP/msm8976-tasha-snd-card/MTP_WCD9335_Speaker_cal.acdb \
    $(LOCAL_PATH)/audio/acdbdata/QRD/msm8976-skun-snd-card/QRD_SKUN_Handset_cal.acdb:system/etc/acdbdata/QRD/msm8976-skun-snd-card/QRD_SKUN_Handset_cal.acdb \
    $(LOCAL_PATH)/audio/acdbdata/QRD/msm8976-skun-snd-card/QRD_SKUN_Bluetooth_cal.acdb:system/etc/acdbdata/QRD/msm8976-skun-snd-card/QRD_SKUN_Bluetooth_cal.acdb \
    $(LOCAL_PATH)/audio/acdbdata/QRD/msm8976-skun-snd-card/QRD_SKUN_Hdmi_cal.acdb:system/etc/acdbdata/QRD/msm8976-skun-snd-card/QRD_SKUN_Hdmi_cal.acdb \
    $(LOCAL_PATH)/audio/acdbdata/QRD/msm8976-skun-snd-card/QRD_SKUN_Headset_cal.acdb:system/etc/acdbdata/QRD/msm8976-skun-snd-card/QRD_SKUN_Headset_cal.acdb \
    $(LOCAL_PATH)/audio/acdbdata/QRD/msm8976-skun-snd-card/QRD_SKUN_General_cal.acdb:system/etc/acdbdata/QRD/msm8976-skun-snd-card/QRD_SKUN_General_cal.acdb \
    $(LOCAL_PATH)/audio/acdbdata/QRD/msm8976-skun-snd-card/QRD_SKUN_Global_cal.acdb:system/etc/acdbdata/QRD/msm8976-skun-snd-card/QRD_SKUN_Global_cal.acdb \
    $(LOCAL_PATH)/audio/acdbdata/QRD/msm8976-skun-snd-card/QRD_SKUN_Speaker_cal.acdb:system/etc/acdbdata/QRD/msm8976-skun-snd-card/QRD_SKUN_Speaker_cal.acdb


PRODUCT_PACKAGES += \
    audiod \
    audio.a2dp.default \
    audio.primary.msm8952 \
    audio.r_submix.default \
    audio.usb.default \
    tinymix

PRODUCT_PACKAGES += \
    libaudio-resampler \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessing

PRODUCT_PACKAGES += \
    android.hardware.audio@2.0-impl \
    android.hardware.audio.effect@2.0-impl \
    android.hardware.broadcastradio@1.0-impl \
    android.hardware.soundtrigger@2.0-impl

# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm@1.0-impl \

# Bluetooth HAL
PRODUCT_PACKAGES += \
    libbt-vendor \
    android.hardware.bluetooth@1.0-impl

# Display
PRODUCT_PACKAGES += \
    copybit.msm8952 \
    gralloc.msm8952 \
    hwcomposer.msm8952 \
    memtrack.msm8952 \
    liboverlay \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.mapper@2.0-impl \
    android.hardware.memtrack@1.0-impl \
    android.hardware.graphics.composer@2.1-impl

# new gatekeeper HAL
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-impl

# Keymaster HAL
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-impl

# Doze mode
PRODUCT_PACKAGES += \
    XiaomiDoze

# Light
PRODUCT_PACKAGES += \
    lights.msm8952 \
    android.hardware.light@2.0-impl

# GNSS HAL
PRODUCT_PACKAGES += \
    android.hardware.gnss@1.0-impl

# Power
#PRODUCT_PACKAGES += \
#    power.msm8952

# GPS
PRODUCT_PACKAGES += \
    com.android.location.provider \
    gps.msm8952

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/gps.conf:system/etc/gps.conf \
    $(LOCAL_PATH)/configs/flp.conf:system/etc/flp.conf \
    $(LOCAL_PATH)/configs/izat.conf:system/etc/izat.conf \
    $(LOCAL_PATH)/configs/lowi.conf:system/etc/lowi.conf \
    $(LOCAL_PATH)/configs/sap.conf:system/etc/sap.conf \
    $(LOCAL_PATH)/configs/xtwifi.conf:system/etc/xtwifi.conf \
    $(LOCAL_PATH)/configs/sec_config:system/etc/sec_config

PRODUCT_COPY_FILES += \
    device/xiaomi/kenzo/configs/msm_irqbalance.conf:system/vendor/etc/msm_irqbalance.conf \
    device/xiaomi/kenzo/configs/msm_irqbalance_little_big.conf:system/vendor/etc/msm_irqbalance_little_big.conf

# Input
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/idc/uinput-fpc.idc:system/usr/idc/uinput-fpc.idc \
    $(LOCAL_PATH)/idc/uinput-fpc.idc:system/usr/idc/gf318m.idc

# Keylayouts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/Atmel_maXTouch_Touchscreen.kl:system/usr/keylayout/Atmel_maXTouch_Touchscreen.kl \
    $(LOCAL_PATH)/keylayout/ft5x06_ts.kl:system/usr/keylayout/ft5x06_ts.kl \
    $(LOCAL_PATH)/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/keylayout/msm8976-tashalite-snd-card_Button_Jack.kl:system/usr/keylayout/msm8976-tashalite-snd-card_Button_Jack.kl \
    $(LOCAL_PATH)/keylayout/uinput-fpc.kl:system/usr/keylayout/uinput-fpc.kl \
    $(LOCAL_PATH)/keylayout/gf318m.kl:system/usr/keylayout/gf318m.kl

# Media profile
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml \
    $(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml

# Media
PRODUCT_PACKAGES += \
    libc2dcolorconvert \
    libdivxdrmdecrypt \
    libdashplayer \
    libstagefrighthw \
    libOmxCore \
    libmm-omxcore \
    libOmxVdec \
    libOmxVdecHevc \
    libOmxVenc

# Sensors
PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-impl \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sensor_def_qcomdev.conf:system/etc/sensors/sensor_def_qcomdev.conf \
    $(LOCAL_PATH)/configs/hals.conf:system/vendor/etc/sensors/hals.conf

# USB HAL
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service

# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.0-impl

# Wifi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/WCNSS_cfg.dat:$(TARGET_COPY_OUT_VENDOR)/firmware/wlan/prima/WCNSS_cfg.dat \
    $(LOCAL_PATH)/wifi/WCNSS_qcom_wlan_nv.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin \
    $(LOCAL_PATH)/wifi/WCNSS_wlan_dictionary.dat:$(TARGET_COPY_OUT_VENDOR)/firmware/wlan/prima/WCNSS_wlan_dictionary.dat

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/WCNSS_qcom_cfg.ini:system/etc/wifi/WCNSS_qcom_cfg.ini \
    $(LOCAL_PATH)/wifi/WCNSS_qcom_sdio_cfg.ini:system/etc/wifi/WCNSS_qcom_sdio_cfg.ini

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/p2p_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/wifi/wpa_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant_overlay.conf

PRODUCT_PACKAGES += \
    android.hardware.wifi@1.0-service \
    libqsap_sdk \
    libQWiFiSoftApCfg \
    libwpa_client \
    hostapd \
    wificond \
    wpa_supplicant \
    wpa_supplicant.conf

# Camera
PRODUCT_PACKAGES += \
    Snap \
    camera.msm8952 \
    camera.device@3.2-impl \
    android.hardware.camera.provider@2.4-impl \

# Fingerprint
PRODUCT_PACKAGES += \

    fingerprintd \
    fingerprint.msm8952


# FM radio
PRODUCT_PACKAGES += \
    FM2 \
    libqcomfm_jni \
    qcom.fmradio \
    qcom.fmradio.xml \
    android.hardware.broadcastradio@1.0-impl

# Consumerir
PRODUCT_PACKAGES += \
    android.hardware.ir@1.0-impl \
    consumerir.msm8952

# RenderScript HAL
PRODUCT_PACKAGES += \
    android.hardware.renderscript@1.0-impl

# RIL
PRODUCT_PACKAGES += \
    android.hardware.radio@1.0-impl \
    libril_proxy \
    librmnetctl \
    libxml2 \
    Stk

# HIDL
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/manifest.xml:system/vendor/manifest.xml

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/mbn_ota.txt:system/etc/mbn_ota.txt

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/dsi_config.xml:system/etc/data/dsi_config.xml \
    $(LOCAL_PATH)/configs/netmgr_config.xml:system/etc/data/netmgr_config.xml \
    $(LOCAL_PATH)/configs/qmi_config.xml:system/etc/data/qmi_config.xml

# Seccomp policy
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/seccomp_policy/mediacodec.policy:system/vendor/etc/seccomp_policy/mediacodec.policy

# IPACM
PRODUCT_PACKAGES += \
    IPACM_cfg.xml \
    ipacm \
    libipanat

# Thermal
#PRODUCT_PACKAGES += \
#    thermal.kenzo

#PRODUCT_COPY_FILES += \
#    device/xiaomi/kenzo/configs/thermal-engine-8956.conf:system/etc/thermal-engine-8956.conf

# for off charging mode
PRODUCT_PACKAGES += \
    charger_res_images

# Filesystem management tools
PRODUCT_PACKAGES += \
    e2fsck \
    make_ext4fs \
    setup_fs

# Misc dependency packages
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes \
    curl \
    libcurl \
    libnl_2 \
    libbson \
    libcnefeatureconfig \
    libtinyxml

# Libshims
PRODUCT_PACKAGES += \
    libshims_ims

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=480

# Default OMX service to non-Treble
PRODUCT_PROPERTY_OVERRIDES += \
    persist.media.treble_omx=false

# Telephony packages
PRODUCT_PACKAGES += \
    ims-ext-common \
    telephony-ext

# setup dalvik vm and hwui configs.
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-dalvik-heap.mk)
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)


# Board platforms lists to be used for
# TARGET_BOARD_PLATFORM specific featurization
QCOM_BOARD_PLATFORMS := msm8952

# List of targets that use video hw
MSM_VIDC_TARGET_LIST := msm8952

$(call inherit-product, device/xiaomi/kenzo/utils.mk)

# Doze mode
PRODUCT_PACKAGES += \
    XiaomiDoze

