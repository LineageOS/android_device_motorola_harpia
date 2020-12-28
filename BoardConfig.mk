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

include device/motorola/msm8916-common/BoardConfigCommon.mk

-include vendor/motorola/harpia/BoardConfigVendor.mk

DEVICE_PATH := device/motorola/harpia

# Asserts
TARGET_OTA_ASSERT_DEVICE := harpia,harpia_retail

# Camera
TARGET_HAS_LEGACY_CAMERA_HAL1 := true

TARGET_PROCESS_SDK_VERSION_OVERRIDE := \
    /system/bin/cameraserver=25 \
    /system/bin/mediaserver=25 \
    /vendor/bin/mm-qcamera-daemon=25

# Kernel
TARGET_KERNEL_CONFIG := harpia_defconfig

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216     # 16384 * 1024 mmcblk0p31
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456   # 262144 * 1024 mmcblk0p38
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16879616 # 16484 * 1024 mmcblk0p32
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2684354560 # 2621440 * 1024 mmcblk0p41
BOARD_PERSISTIMAGE_PARTITION_SIZE := 8388608   # 8192 * 1024 mmcblk0p29
BOARD_USERDATAIMAGE_PARTITION_SIZE := 11775377408 # 11499392 * 1024 mmcblk0p42

# UI
TARGET_ADDITIONAL_GRALLOC_10_USAGE_BITS += | 0x2002000

# SHIMS
TARGET_LD_SHIM_LIBS += \
    /vendor/lib/libmot_sensorlistener.so|libshims_sensorlistener.so

