# Copyright (C) 2014 The CyanogenMod Project
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

# inherit from common tblte
-include device/samsung/tblte-common/BoardConfigCommon.mk

TARGET_OTA_ASSERT_DEVICE := tblte,tbltedcm

# Partitions
BOARD_FLASH_BLOCK_SIZE := 262144
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 17825792 
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 19922944 
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3774873600 #910T uses: 3984588800
BOARD_USERDATAIMAGE_PARTITION_SIZE := 27019685888 #910T uses: 26558312448

# Kernel
TARGET_KERNEL_VARIANT_CONFIG := apq8084_sec_tblte_dcm_defconfig
BOARD_KERNEL_CMDLINE := console=null androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37 dwc3_msm.cpu_to_affin=1 androidboot.selinux=permissive

# Camera
TARGET_FIXUP_PREVIEW := true

# Init
TARGET_INIT_VENDOR_LIB := libinit_tbltedcm
TARGET_UNIFIED_DEVICE := true

# Radio
BOARD_RIL_CLASS := ../../../device/samsung/tbltedcm/ril

# inherit from the proprietary version
-include vendor/samsung/tbltedcm/BoardConfigVendor.mk
