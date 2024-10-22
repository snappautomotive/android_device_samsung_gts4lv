#
# Copyright (C) 2020-2021 The LineageOS Project
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

# The first boot animation to be set wins
OVERRIDE_BOOT_ANIMATION := true
$(call inherit-product-if-exists, vendor/$(BUILD_VARIANT)/bootanimation/bootanimation.mk)

## Inherit from gts4lv device
$(call inherit-product, device/samsung/gts4lv/lineage_gts4lv.mk)

# Inherit Snapp modifications
$(call inherit-product, device/snappautomotive/common/additions.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_car.mk)
$(call inherit-product, device/lineage/car/lineage_car_vendor.mk)

## Device identifier, this must come after all inclusions
PRODUCT_NAME := lineage_gts4lv_car
PRODUCT_MODEL := SnappOS on SM-T725
