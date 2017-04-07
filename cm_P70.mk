#
# Copyright (C) 2015 The Android Open-Source Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full.mk

# Inherit from our custom product configuration
$(call inherit-product, vendor/cm/config/common.mk)

# Copy additional files
PRODUCT_COPY_FILES += device/lenovo/P70/recovery.fstab:recovery/root/etc/twrp.fstab \
					  device/generic/goldfish/fstab.goldfish:recovery/root/fstab.goldfish \
					  device/generic/goldfish/fstab.ranchu:recovery/root/fstab.ranchu \
					  device/generic/goldfish/ueventd.goldfish.rc:recovery/root/ueventd.goldfish.rc \
					  device/generic/goldfish/ueventd.ranchu.rc:recovery/root/ueventd.ranchu.rc

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := P70
PRODUCT_NAME := cm_P70
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := P70-A
PRODUCT_MANUFACTURER := Lenovo
PRODUCT_RELEASE_NAME := P70-A