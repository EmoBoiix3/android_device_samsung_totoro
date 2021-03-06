#!/bin/sh

# Copyright (C) 2010 The Android Open Source Project
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

DEVICE=totoro
MANUFACTURER=samsung

mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/egl
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/hw
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin

# rill
adb pull /system/lib/libril.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libreference-ril.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libreference-cdma-sms.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libbrcm_ril.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/liburilclient.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/bin/rild ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin

# omx libs
adb pull /system/lib/libBRCM_omx_core.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libBRCM_omx_core_plugin.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libstagefright_omx.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib

# opencore libs
adb pull /system/lib/libopencore_author.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libopencore_common.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libopencore_mp4local.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libopencore_mp4localreg.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libopencore_net_support.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libopencore_player.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libopencore_rtsp.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libopencore_rtspreg.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOpenSLES.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib

# omx shared libs
adb pull /system/lib/libomx_aacdec_sharedlibrary.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libomx_amrdec_sharedlibrary.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libomx_avcdec_sharedlibrary.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libomx_m4vdec_sharedlibrary.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libomx_mp3dec_sharedlibrary.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libomx_sharedlibrary.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib

# opencore

adb pull /system/lib/libopencore_common.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libopencore_author.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libopencore_mp4local.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libopencore_mp4localreg.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libopencore_net_support.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libopencore_player.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libopencore_rtsp.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libopencore_rtspreg.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib

# camera
adb pull /system/lib/libarccamera.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libCaMotion.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libcaps.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libsoc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libbrcmjpeg.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libPanoraMax1.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libseccamera.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libseccameraadaptor.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libcamera.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libcamera_client.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libcameraservice.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib

# bluetooth
adb pull /system/bin/BCM4330B1_002.001.003.0634.0652.hcd ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin

# wifi
adb pull /system/bin/mfgloader ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin
adb pull /system/bin/wlandutservice ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin

# audio
adb pull /system/lib/liba2dp.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libaudio.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libaudiopolicy.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/hw/acoustics.default.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/hw
adb pull /system/lib/hw/alsa.default.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/hw

# gps
adb pull /system/lib/hw/gps.bcm21553.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/hw
adb pull /system/lib/hw/gps.goldfish.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/hw
adb pull /system/bin/glgps ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin
adb pull /system/bin/gps.cer ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin

# lights
adb pull /system/lib/hw/lights.bcm21553.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/hw

# gralloc
adb pull /system/lib/hw/gralloc.default.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/hw

# sensor
adb pull /system/lib/hw/sensors.default.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/hw
adb pull /system/lib/hw/sensors.goldfish.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/hw
adb pull /system/bin/memsicd ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin

# egl
adb pull /system/lib/egl/libGLES_hgl.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/egl
adb pull /system/lib/egl/egl.cfg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/egl
adb pull /system/lib/libdhwr.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libDHWRCN.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libdprw.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libdrm2_jni.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libDWP.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libomadrm.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libsisodrm.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/bcmtest_copy.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libat.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g | sed s/__MANUFACTURER__/$MANUFACTURER/g > ../../../vendor/$MANUFACTURER/$DEVICE/$DEVICE-vendor-blobs.mk
# Copyright (C) 2010 The Android Open Source Project
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

## RIL related stuff
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/liburilclient.so:system/lib/liburilclient.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libbrcm_ril.so:system/lib/libbrcm_ril.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libreference-ril.so:system/lib/libreference-ril.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libreference-cdma-sms.so:system/lib/libreference-cdma-sms.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libril.so:system/lib/libril.so 


## OMX proprietaries
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libBRCM_omx_core.so:system/lib/libBRCM_omx_core.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libBRCM_omx_core_plugin.so:system/lib/libBRCM_omx_core_plugin.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libstagefright_omx.so:system/lib/libstagefright_omx.so

## Opencore proprietaries
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libopencore_common.so:system/lib/libopencore_common.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libopencore_author.so:system/lib/libopencore_author.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libopencore_mp4local.so:system/lib/libopencore_mp4local.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libopencore_mp4localreg.so:system/lib/libopencore_mp4localreg.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libopencore_net_support.so:system/lib/libopencore_net_support.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libopencore_player.so:system/lib/libopencore_player.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libopencore_rtsp.so:system/lib/libopencore_rtsp.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libopencore_rtspreg.so:system/lib/libopencore_rtspreg.so

## OMX shared
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libomx_aacdec_sharedlibrary.so:system/lib/libomx_aacdec_sharedlibrary.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libomx_amrdec_sharedlibrary.so:system/lib/libomx_amrdec_sharedlibrary.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libomx_avcdec_sharedlibrary.so:system/lib/libomx_avcdec_sharedlibrary.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libomx_m4vdec_sharedlibrary.so:system/lib/libomx_m4vdec_sharedlibrary.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libomx_mp3dec_sharedlibrary.so:system/lib/libomx_mp3dec_sharedlibrary.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libomx_sharedlibrary.so:system/lib/libomx_sharedlibrary.so

## Camera proprietaries
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libarccamera.so:system/lib/libarccamera.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libCaMotion.so:system/lib/libCaMotion.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libcaps.so:system/lib/libcaps.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libsoc.so:system/lib/libsoc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libbrcmjpeg.so:system/lib/libbrcmjpeg.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libPanoraMax1.so:system/lib/libPanoraMax1.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libseccamera.so:system/lib/libseccamera.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libseccameraadaptor.so:system/lib/libseccameraadaptor.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libcamera.so:system/lib/libcamera.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libcamera_client.so:system/lib/libcamera_client.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libcameraservice.so:system/lib/libcameraservice.so

## Bluetooth
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/bin/BCM4330B1_002.001.003.0634.0652.hcd:system/bin/BCM4330B1_002.001.003.0634.0652.hcd

## Wifi
PRODUCT_COPY_FILES += \
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/bin/mfgloader:system/bin/mfgloader \
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/bin/wlandutservice:system/bin/wlandutservice
	
## Audio
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/liba2dp.so:system/lib/liba2dp.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libaudio.so:system/lib/libaudio.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libaudiopolicy.so:system/lib/libaudiopolicy.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/hw/acoustics.default.so:system/lib/hw/acoustics.default.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/hw/alsa.default.so:system/lib/hw/alsa.default.so

##GPS
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/hw/gps.bcm21553.so:system/lib/hw/gps.totoro.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/hw/gps.bcm21553.so:system/lib/hw/gps.bcm21553.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/hw/gps.goldfish.so:system/lib/hw/gps.goldfish.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/bin/gps.cer:system/bin/gps.cer \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/bin/glgps:system/bin/glgps

## Light
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/hw/lights.bcm21553.so:system/lib/hw/lights.bcm21553.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/hw/lights.bcm21553.so:system/lib/hw/lights.totoro.so

## Gralloc
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/hw/gralloc.default.so:system/lib/hw/gralloc.default.so

## 3D
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/egl/libGLES_hgl.so:system/lib/egl/libGLES_hgl.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/egl/egl.cfg:system/lib/egl/egl.cfg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libdhwr.so:system/lib/libdhwr.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libDHWRCN.so:system/lib/libDHWRCN.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libdprw.so:system/lib/libdprw.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libdrm2_jni.so:system/lib/libdrm2_jni.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libDWP.so:system/lib/libDWP.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libomadrm.so:system/lib/libomadrm.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libsisodrm.so:system/lib/libsisodrm.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/bcmtest_copy.so:system/lib/bcmtest_copy.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libat.so:system/lib/libat.so

## Sensor
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/hw/sensors.default.so:system/lib/hw/sensors.default.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/hw/sensors.goldfish.so:system/lib/hw/sensors.goldfish.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/bin/memsicd:system/bin/memsicd 
EOF

./setup-makefiles.sh
