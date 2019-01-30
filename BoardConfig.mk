#
# Copyright (C) 2020 The LineageOS Project
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

DEVICE_PATH := device/asus/X00I

# Assert
TARGET_OTA_ASSERT_DEVICE := X00I,X00ID,ASUS_X00ID_4
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Kernel
TARGET_KERNEL_CONFIG := X00I_defconfig

# Partitions
BOARD_VENDORIMAGE_PARTITION_SIZE := 367001600
BOARD_VENDORIMAGE_EXTFS_INODE_COUNT := 4096
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := squashfs
BOARD_VENDORIMAGE_JOURNAL_SIZE := 0
BOARD_VENDORIMAGE_SQUASHFS_COMPRESSOR := lz4
TARGET_COPY_OUT_VENDOR := vendor

# Recovery 
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom 

# Sepolicy
BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy

# Inherit from common msm8937-common
-include device/asus/msm8937-common/BoardConfigCommon.mk

# Inherit from the proprietary version
-include vendor/asus/X00I/BoardConfigVendor.mk
