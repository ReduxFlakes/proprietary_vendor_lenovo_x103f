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

# Pick up overlay for features that depend on non-open-source files
DEVICE_PACKAGE_OVERLAYS += vendor/lenovo/x103f/overlay

# Dolby DS2 framework jars (required by the Ds2/Ds2UI apps)
PRODUCT_COPY_FILES += \
    vendor/lenovo/x103f/proprietary/framework/dolby_ds2.jar:system/framework/dolby_ds2.jar \
    vendor/lenovo/x103f/proprietary/framework/dolby_ds1.jar:system/framework/dolby_ds1.jar

PRODUCT_BOOT_JARS += \
    dolby_ds2 \
    dolby_ds1

$(call inherit-product, vendor/lenovo/x103f/x103f-vendor-blobs.mk)
