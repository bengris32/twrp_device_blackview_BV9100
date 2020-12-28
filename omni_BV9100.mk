#
# Copyright 2017 The Android Open Source Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, build/target/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_DEVICE := BV9100
PRODUCT_NAME := omni_BV9100
PRODUCT_BRAND := Blackview
PRODUCT_MODEL := BV9100
PRODUCT_MANUFACTURER := Blackview

# Override build fingerprint and desc for encryption blobs
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=BV9100 \
    PRODUCT_NAME=BV9100_EEA \
    PRIVATE_BUILD_DESC="full_k65v1_64_bsp-user 9 PPR1.180610.011 eng.releas.20190824.110901 release-keys"

BUILD_FINGERPRINT := Blackview/BV9100_EEA/BV9100:9/PPR1.180610.011/1563181284:user/release-keys

PLATFORM_SECURITY_PATCH := 2019-08-05

# Resolution
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 2340
