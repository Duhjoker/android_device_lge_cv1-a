#
# Copyright (C) 2016 The CyanogenMod Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/lge/cv1/cv1-vendor.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# System properties
-include $(LOCAL_PATH)/system_prop.mk

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.full.xml:system/etc/permissions/android.hardware.camera.full.xml \
    frameworks/native/data/etc/android.hardware.camera.raw.xml:system/etc/permissions/android.hardware.camera.raw.xml \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:system/etc/permissions/android.hardware.fingerprint.xml \
    frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.software.midi.xml:system/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.vulkan.level-0.xml:system/etc/permissions/android.hardware.vulkan.level-0.xml \
    frameworks/native/data/etc/android.hardware.vulkan.version-1_0_3.xml:system/etc/permissions/android.hardware.vulkan.version-1_0_3.xml \


# Added to make camera work
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.hdmi.cec.xml:system/etc/permissions/android.hardware.hdmi.cec.xml \
    frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/android.hardware.nfc.hcef.xml:system/etc/permissions/android.hardware.nfc.hcef.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.screen.landscape.xml:system/etc/permissions/android.hardware.screen.landscape.xml \
    frameworks/native/data/etc/android.hardware.screen.portrait.xml:system/etc/permissions/android.hardware.screen.portrait.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    #frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    #frameworks/native/data/etc/android.hardware.camera.external.xml:system/etc/permissions/android.hardware.camera.external.xml \
    #frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    #frameworks/native/data/etc/android.hardware.camera.manual_postprocessing.xml:system/etc/permissions/android.hardware.camera.manual_postprocessing.xml \
    #frameworks/native/data/etc/android.hardware.camera.manual_sensor.xml:system/etc/permissions/android.hardware.camera.manual_sensor.xml \
    #frameworks/native/data/etc/android.hardware.camera.raw.xml:system/etc/permissions/android.hardware.camera.raw.xml \

# Audio
PRODUCT_PACKAGES += \
    audiod \
    audio.a2dp.default \
    audio.primary.msm8937 \
    audio.r_submix.default \
    audio.usb.default \
    libaudio-resampler \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    libvolumelistener \
    tinymix

PRODUCT_COPY_FILES += \
    hardware/qcom/audio-caf/msm8996/configs/msm8937/audio_platform_info.xml:system/etc/audio_platform_info.xml \
	hardware/qcom/audio-caf/msm8996/configs/msm8937/audio_platform_info_extcodec.xml:system/etc/audio_platform_info_extcodec.xml \
    $(LOCAL;_PATH)/audio/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL;_PATH)/audio/sound_trigger_platform_info.xml:system/etc/sound_trigger_platform_info.xml \
    $(LOCAL;_PATH)/audio/sound_trigger_mixer_paths.xml:system/etc/sound_trigger_mixer_paths.xml
    $(LOCAL_PATH)/audio/mixer_paths.xml:system/etc/mixer_paths.xml

#XML Audio configuration files
PRODUCT_COPY_FILES += \
    $(LOCAL;_PATH)/audio/audio_policy_configuration.xml:system/etc/audio_policy_configuration.xml \
    $(TOPDIR)frameworks/av/services/audiopolicy/config/a2dp_audio_policy_configuration.xml:/system/etc/a2dp_audio_policy_configuration.xml \
    $(TOPDIR)frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:/system/etc/audio_policy_volumes.xml \
    $(TOPDIR)frameworks/av/services/audiopolicy/config/default_volume_tables.xml:/system/etc/default_volume_tables.xml \
    $(TOPDIR)frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:/system/etc/r_submix_audio_policy_configuration.xml \
    $(TOPDIR)frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:/system/etc/usb_audio_policy_configuration.xml

# Camera
PRODUCT_PACKAGES += \
    camera.msm8937 \
    Snap \

# Shim libs
PRODUCT_PACKAGES += \
   camera.qcom_shim

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/camera/camera_config.xml:system/etc/camera/camera_config.xml \
    $(LOCAL_PATH)/configs/camera/ov5675_d5v15b_chromatix.xml:system/etc/camera/ov5675_d5v15b_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/ov5670_f5670bq_chromatix.xml:system/etc/camera/ov5670_f5670bq_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/ov8856_chromatix.xml:system/etc/camera/ov8856_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/s5k3p3sm_chromatix.xml:system/etc/camera/s5k3p3sm_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/s5k3p3_chromatix.xml:system/etc/camera/s5k3p3_chromatix.xml

PRODUCT_DEFAULT_PROPERTY_OVERRIDES  += \
     persist.camera.shutter.disable=1 \
     camera.disable_zsl_mode=1 \
     ro.lirc.dev=/dev/peel_ir

# Display
PRODUCT_PACKAGES += \
    copybit.msm8937 \
    gralloc.msm8937 \
    hwcomposer.msm8937 \
    memtrack.msm8937 \
    liboverlay

# Data
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/data/dsi_config.xml:system/etc/data/dsi_config.xml \
    $(LOCAL_PATH)/configs/data/netmgr_config.xml:system/etc/data/netmgr_config.xml

# Fingerprint
PRODUCT_PACKAGES += \
    fingerprint.msm8937 \
    lib_fpc_tac_shared \
    fingerprintd

PRODUCT_PROPERTY_OVERRIDES += \
    persist.qfp=false


# For android_filesystem_config.h
PRODUCT_PACKAGES += \
    fs_config_files

# FM radio
PRODUCT_PACKAGES += \
    FM2 \
    FMRecord \
    libqcomfm_jni \
    qcom.fmradio

# Gps
PRODUCT_PACKAGES += \
    gps.msm8937 \
    libgps.utils \
    libloc_core \
    libloc_eng \
    libgnsspps

PRODUCT_COPY_FILES += \
    $(LOCAL;_PATH)/gps/etc/flp.conf:system/etc/flp.conf \
    $(LOCAL;_PATH)/gps/etc/gps.conf:system/etc/gps.conf \
    $(LOCAL;_PATH)/gps/etc/izat.conf:system/etc/izat.conf \
    $(LOCAL;_PATH)/gps/etc/lowi.conf:system/etc/lowi.conf \
    $(LOCAL;_PATH)/gps/etc/sap.conf:system/etc/sap.conf \
    $(LOCAL;_PATH)/gps/etc/xtwifi.conf:system/etc/xtwifi.conf

# IMS
PRODUCT_PACKAGES += \
    libshims_ims

# Init
PRODUCT_PACKAGES += \
    init.baseband.sh \
    init.class_main.sh \
    init.lge.rc \
    init.qcom.bt.sh \
    init.qcom.early_boot.sh \
    init.qcom.power.rc \
    init.qcom.rc \
    init.qcom.sensors.sh \
    init.qcom.sh \
    init.qcom.usb.rc \
    init.target.rc \
    fstab.qcom \
    ueventd.qcom.rc

# IPA Manager
PRODUCT_PACKAGES += \
    ipacm \
    IPACM_cfg.xml

# Lights
PRODUCT_PACKAGES += \
    lights.msm8937

# IRSC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sec_config:system/etc/sec_config

# IRQ Balancer
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/msm_irqbalance.conf:system/vendor/etc/msm_irqbalance.conf

# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/msg2xxx.kl:system/usr/keylayout/msg2xxx.kl \
    $(LOCAL_PATH)/keylayout/qpnp_pon.kl:system/usr/keylayout/qpnp_pon.kl

# Lights
PRODUCT_PACKAGES += \
    lights.msm8937

# Misc
PRODUCT_PACKAGES += \
    libcurl

# OMX
PRODUCT_PACKAGES += \
    libmm-omxcore \
    libc2dcolorconvert \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxVdec \
    libOmxVenc \
    libstagefrighthw

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL;_PATH)/configs/media/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL;_PATH)/configs/media/media_codecs_8956.xml:system/etc/media_codecs_8956.xml \
    $(LOCAL;_PATH)/configs/media/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
    $(LOCAL;_PATH)/configs/media/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL;_PATH)/configs/media/media_profiles_8956.xml:system/etc/media_profiles_8956.xml

PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml


# Power
PRODUCT_PACKAGES += \
    power.msm8937

# Qualcomm dependencies
PRODUCT_PACKAGES += \
    libtinyxml


# RIL
PRODUCT_PACKAGES += \
    libcnefeatureconfig \
    librmnetctl \
    liblge \
    libxml2

# Snap
PRODUCT_PACKAGES += \
    Snap

# Sensors
PRODUCT_PACKAGES += \
    sensors.msm8937

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sensors/hals.conf:system/etc/sensors/hals.conf \
    $(LOCAL_PATH)/configs/sensors/sensor_def_LOCAL;.conf:system/etc/sensors/sensor_def_LOCAL;.conf \
    $(LOCAL_PATH)/configs/sensors/sensor_def_variable.conf:system/etc/sensors/sensor_def_variable.conf

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/camera/camera_config.xml:system/etc/camera/camera_config.xml \
    $(LOCAL_PATH)/configs/camera/ov5670_f5670bq_chromatix.xml:system/etc/camera/ov5670_f5670bq_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/ov5675_d5v15b_chromatix.xml:system/etc/camera/ov5675_d5v15b_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/s5k3p3sm_chromatix.xml:system/etc/camera/s5k3p3sm_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/s5k3p3_chromatix.xml:system/etc/camera/s5k3p3_chromatix.xml

# Vulkan
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.vulkan.level-1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.level.xml \
    frameworks/native/data/etc/android.hardware.vulkan.version-1_0_3.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.version.xml \


# Wakelock
    use.voice.path.for.pcm.voip=true \
    ro.qc.sensors.wl_dis=true

# Wifi
PRODUCT_PACKAGES += \
    libqsap_sdk \
    libQWiFiSoftApCfg \
    libwpa_client \
    hostapd \
    wpa_supplicant \
    wpa_supplicant.conf \
    wpa_supplicant_overlay.conf \
    p2p_supplicant_overlay.conf \
    hostapd_default.conf

# WCNSS
PRODUCT_COPY_FILES += \
    $(LOCAL;_PATH)/wifi/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    $(LOCAL;_PATH)/wifi/WCNSS_qcom_cfg.ini:system/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini \
    $(LOCAL;_PATH)/wifi/WCNSS_qcom_cfg.ini:system/etc/wifi/WCNSS_qcom_cfg.ini

# Thermal Configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermal/thermal-engine-8937.conf:system/etc/thermal-engine-8937.conf

# UBPorts config files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/system/halium/70-tenshi.rules:system/halium/lib/udev/rules.d/70-android.rules \
    $(LOCAL_PATH)/system/halium/tenshi.conf:system/halium/etc/ubuntu-touch-session.d/tenshi.conf \
    $(LOCAL_PATH)/system/halium/fix_pulseaudio.sh:system/halium/usr/share/fixup/fix_pulseaudio.sh \
    $(LOCAL_PATH)/system/halium/fix_prop.sh:system/halium/usr/share/fixup/fix_prop.sh \
    $(LOCAL_PATH)/system/halium/libs/libizat_core.so:system/halium/lib/libizat_core.so \
    $(LOCAL_PATH)/system/halium/libs/libOmxVdec.so:system/halium/lib/libOmxVdec.so \
    $(LOCAL_PATH)/system/halium/switch:system/halium/usr/share/h2w/switch \
    $(LOCAL_PATH)/system/halium/droid-hcismd-up.sh:system/halium/usr/share/bluetooth-touch/tenshi \
    $(LOCAL_PATH)/system/halium/wifi_up.sh:system/halium/usr/share/bluetooth-touch/wifi_tenshi \
    $(LOCAL_PATH)/system/halium/apparmor.d/local/usr.bin.media-hub-server:system/halium/etc/apparmor.d/local/usr.bin.media-hub-server \
    $(LOCAL_PATH)/system/halium/apparmor.d/abstractions/base:system/halium/etc/apparmor.d/abstractions/base \
    $(LOCAL_PATH)/system/halium/ofono.override:system/halium/etc/init/ofono.override \
    $(LOCAL_PATH)/system/halium/unblock_wakelock.sh:system/halium/etc/unblock_wakelock.sh \
    $(LOCAL_PATH)/system/halium/timekeeper.conf:system/halium/etc/init/timekeeper.conf \
    $(LOCAL_PATH)/system/halium/charger/images/battery_fail.png:system/halium/charger/images/battery_fail.png \
    $(LOCAL_PATH)/system/halium/charger/images/battery_scale.png:system/halium/charger/images/battery_scale.png \
    $(LOCAL_PATH)/system/halium/wlan_restart.py:system/halium/usr/share/fixup/wlan_restart/wlan_restart.py \
    $(LOCAL_PATH)/system/halium/mtp-state.conf:system/halium/etc/init/mtp-state.conf \
    $(LOCAL_PATH)/system/halium/setupusb:system/halium/usr/share/usbinit/setupusb \

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.qti_bsp.abi=1 \
    ubuntu.widi.supported=1 \
    ro.qc.sensors.wl_dis=true \

# Ubuntu
PRODUCT_PACKAGES += \
    libubuntu_application_api \
    direct_ubuntu_application_sensors_c_api_for_hybris_test \
    direct_ubuntu_application_sensors_for_hybris_test \
    direct_ubuntu_application_gps_c_api_for_hybris_test \
    libcameraservice \
    libdroidmedia \
    libcamera_compat_layer \
    camera_service \
    gst-droid \
    libmedia_compat_layer \
    libui_compat_layer \
    libsf_compat_layer \
    minimediaservice \
    minisfservice \
    libminisf \
    libaudioflingerglue \
    miniafservice

#PRODUCT_PACKAGES += \
    charger_res_images

# Droidmedia
MINIMEDIA_SENSORSERVER_DISABLE := 1

# telepathy-ofono quirks
PRODUCT_PROPERTY_OVERRIDES += \
    ro.t-o.quirk.forcesink=sink.primary_output \
    ro.t-o.quirk.forcesource=source.primary_input \


